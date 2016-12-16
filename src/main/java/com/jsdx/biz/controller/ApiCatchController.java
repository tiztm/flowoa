package com.jsdx.biz.controller;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.jsdx.biz.entity.ApiHelps;
import com.jsdx.biz.entity.ApiType;
import com.jsdx.biz.entity.FanyiCache;
import com.jsdx.biz.service.ApiHelpsService;
import com.jsdx.biz.service.ApiTypeService;
import com.jsdx.biz.service.FanyiCacheService;
import com.jsdx.core.controller.BaseController;
import com.jsdx.core.entity.Result;
import com.jsdx.core.utils.HTMLUtil;
import com.jsdx.core.utils.HttpclientUtil;
import org.apache.http.impl.client.DefaultHttpClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping ( "/api" )
public class ApiCatchController extends BaseController {

	/**
	 * 平台的日志输入
	 * ！！！不允许使用System.out！！！！
	 */
	Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * 用来传递ajax结果
	 */
	Result result;

	@Resource
	private ApiHelpsService apiHelpsService;


	@Resource
	private ApiTypeService apiTypeService;


	/**
	 * 抓取
	 */
	@RequestMapping("/apiCatch")
	public Result apiCatch(){

		List<ApiType> apiList = apiTypeService.findAll();


		DefaultHttpClient defaultHttpClient = HttpclientUtil.getDefaultHttpClient();
		defaultHttpClient.getParams().setParameter("http.connection.timeout", Integer.valueOf(10000));
		defaultHttpClient.getParams().setParameter("http.socket.timeout", Integer.valueOf(10000));
		int numCount = 0;
		for (ApiType apiHelps : apiList) {

			if(apiHelps.getNeedCatch().equals("0")||apiHelps.getUrl()==null||apiHelps.getUrl().length()<1) continue;


			String s = null;
			while (s == null)
			{
				try {

					s = HttpclientUtil.get(apiHelps.getUrl(),null,null,defaultHttpClient);
				} catch (Exception e) {
					e.printStackTrace();
					try {
						Thread.sleep(500);
					} catch (InterruptedException e1) {
						e1.printStackTrace();
					}
				}
			}


			s=s.replaceAll("\n", "").replaceAll("\r", "");//.replaceAll(" ", "");
			apiHelps.setFromOverAPi(s);
			numCount++;


		}

		apiTypeService.save(apiList);

		return new Result(Result.Status.OK,"操作关键词:"+numCount);
	}

	/**
	 * 分析
	 */
	@RequestMapping("/apiAna")
	public Result apiAna(){

		List<ApiType> apiList = apiTypeService.findAll();


		int numCount = 0;
		for (ApiType apiHelps : apiList) {

			if(apiHelps.getNeedCatch().equals("0")||apiHelps.getFromOverAPi()==null||apiHelps.getFromOverAPi().length()<1||apiHelps.getUrl()==null||apiHelps.getUrl().length()<1) continue;


			String s = apiHelps.getFromOverAPi();

			//curVersion


				List<String> patternString = HTMLUtil.getPatternString(s,
						"<div class=\"board.*?</div>    </div>");



				if(patternString.size()<1) continue;

			Integer curVersion = apiHelps.getCurVersion()==null?0:apiHelps.getCurVersion();

			curVersion = curVersion+1;



			//删除该Type下所有无用的
			//apiHelpsService.deleteByApiType(apiType);

			List<ApiHelps> apiHelpsList = apiHelps.getApiHelpsList();

			for (ApiHelps helps : apiHelpsList) {
				if(helps.getCurVersion()!=-1)
					helps.setCurVersion(curVersion);
			}

			apiHelpsService.save(apiHelpsList);



			apiHelps.setCurVersion(curVersion);

			numCount++;

			int order = 0;



				for (String tips : patternString) {
					//logger.debug(tips);
					spileTips(tips,apiHelps,order);
					order++;
				}



		}

		apiTypeService.save(apiList);


		return new Result(Result.Status.OK,"操作关键词:"+numCount);
	}


	/**
	 * 翻译单词
	 */
	@RequestMapping("/apiFanyi")
	public Result apiFanyi(){

		List<ApiType> apiList = apiTypeService.findAll();


		int numCount = 0;
		for (ApiType apiHelps : apiList) {

			List<ApiHelps> apiHelpsList = apiHelps.getApiHelpsList();

			for (ApiHelps helps : apiHelpsList) {
				//翻译需要翻译的help;
				Fanyi(helps);
				List<ApiHelps> childHelpsList = helps.getChildHelpsList();
				for (ApiHelps apiHelps1 : childHelpsList) {
					Fanyi(apiHelps1);
				}

			}


			numCount++;

		}

		apiTypeService.save(apiList);

		return new Result(Result.Status.OK,"操作关键词:"+numCount);

	}

	@Resource
	private FanyiCacheService fanyiCacheService;

	//
	private static String FANYI_URL = "http://fanyi.youdao.com/openapi.do?keyfrom=JavaAPI&key=155246472&type=data&doctype=json&version=1.1&q=";
	ObjectMapper objectMapper = new ObjectMapper();
	public void Fanyi(ApiHelps helps) {
		if(true)//helps.isNeedTran())
		{

			try {
			FanyiCache byEng = fanyiCacheService.findByEng(helps.getName());

			if(byEng!=null)
				helps.setTranName(byEng.getChinese());
			else {

				//调用API翻译原名
				String url = FANYI_URL + helps.getName().replaceAll(" ","%20");


					String tranInfo = HttpclientUtil.get(url);

					HashMap hashMap = objectMapper.readValue(tranInfo, HashMap.class);

					System.out.println(hashMap);

					//查到以后，写入缓存及原help
					String translation = hashMap.get("translation")+"";


					translation = translation.substring(1,translation.length()-1);

					byEng = new FanyiCache();
					byEng.setEng( helps.getName());
					byEng.setChinese(translation);
					byEng.setBeixuan(hashMap.get("web")+"");

					fanyiCacheService.saveAndFlush(byEng);

					helps.setTranName(translation);




			}

			if(helps.getTranName()!=null&&helps.getTranName().length()>0)
			{
				apiHelpsService.save(helps);
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 分析页面
	 * TODO:
	 * Related  暂时不显示
	 *
	 *
	 */
	private void spileTips(String tipsDiv,ApiType apiType,int order) {




		String helpName = HTMLUtil.getBetweenString(tipsDiv, "board-title\">", "</h2>");
		ApiHelps ah = new ApiHelps(helpName,order,apiType);
		ah.setNeedTran(true);
		ah.setCurVersion(0);
		apiHelpsService.saveAndFlush(ah);

		// <divclass="board-card">   </div>
		List<String> patternString = HTMLUtil.getPatternString(tipsDiv, "<div class=\"board-card\">.*?</div>");
		int orderCard = 0;
		for (String cardTitle : patternString) {
			String cardName = HTMLUtil.getBetweenString(cardTitle, "<h3 class=\"board-card-title\">", "</h3>");

			ApiHelps ah2 = new ApiHelps(cardName,orderCard,null);
			ah2.setParentHelps(ah);
			apiHelpsService.saveAndFlush(ah2);

			orderCard++;

			List<String> liList = HTMLUtil.getPatternString(cardTitle, "<li.*?</li>\\s");
			for (int i = 0; i < liList.size(); i++) {
				String tipDiv = liList.get(i);



				String name = HTMLUtil.getBetweenString(tipDiv, "\">","</a><");

				if(name==null||name.length()<1)
					name = HTMLUtil.getBetweenString(tipDiv, "\">","</li>\\s");

				if(name==null||name.length()<1)
					name = HTMLUtil.getBetweenString(tipDiv, "\">","</");

				if(name==null||name.length()<1)
					name = HTMLUtil.getBetweenString(tipDiv, ">","</");


				String ahref = HTMLUtil.getBetweenString(tipDiv, "href=\"","\"");
				String title = HTMLUtil.getBetweenString(tipDiv, "title=\"","\"");



				String tips = HTMLUtil.getBetweenString(tipDiv, "<li class=\"tip\">","</li>");


				ApiHelps ah3 = new ApiHelps(name,i,null);

				ah3.setaHref(ahref);
				ah3.setaTitle(title);
				ah3.setAtip(tips);

				ah3.setParentHelps(ah2);
				apiHelpsService.saveAndFlush(ah3);
			}


		}



	}


}
