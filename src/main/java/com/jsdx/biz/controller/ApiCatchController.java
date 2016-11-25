package com.jsdx.biz.controller;


import com.jsdx.biz.entity.ApiHelps;
import com.jsdx.biz.entity.ApiType;
import com.jsdx.biz.service.ApiHelpsService;
import com.jsdx.biz.service.ApiTypeService;
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

		for (ApiType apiHelps : apiList) {

			if(apiHelps.getUrl()==null||apiHelps.getUrl().length()<1) continue;


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
				//logger.debug(s);


				List<String> patternString = HTMLUtil.getPatternString(s,
						"<div class=\"board\">.*?</div>    </div>");

				int order = 0;
				for (String tips : patternString) {
					//logger.debug(tips);

					spileTips(tips,apiHelps,order);
					order++;


				}


		}

		return new Result(Result.Status.OK,apiList.size());
	}

	private void spileTips(String tipsDiv,ApiType apiType,int order) {

		//
		String helpName = HTMLUtil.getBetweenString(tipsDiv, "<h2 class=\"board-title\">", "</h2>");
		ApiHelps ah = new ApiHelps(helpName,order,apiType);
		ah.setNeedTran(true);
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

			List<String> liList = HTMLUtil.getPatternString(cardTitle, "<li.*?</li>");
			for (int i = 0; i < liList.size(); i++) {
				String tipDiv = liList.get(i);



				String name = HTMLUtil.getBetweenString(tipDiv, "\">","</");

				if(name==null||name.length()<1)
					name = HTMLUtil.getBetweenString(tipDiv, ">","</");


				String ahref = HTMLUtil.getBetweenString(tipDiv, "a href=\"","\"");
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
		//<h3class="board-card-title">Download</h3>

		//<li><ahref="/static/cs/mysql_cheat_sheet.pdf">MySQLCheatSheet[.pdf]</a></li>
//		 <li>FLOAT</li>
//                <li class="tip">Decimal (precise to 23 digits)</li>



	}


}
