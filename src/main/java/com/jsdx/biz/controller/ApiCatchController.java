package com.jsdx.biz.controller;


import com.jsdx.biz.entity.ApiHelps;
import com.jsdx.biz.entity.ApiType;
import com.jsdx.biz.service.ApiHelpsService;
import com.jsdx.biz.service.ApiTypeService;
import com.jsdx.core.controller.BaseController;
import com.jsdx.core.entity.Result;
import core.util.HTMLUtil;
import core.util.HttpclientUtil;
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

		for (ApiType apiHelps : apiList) {
			//logger.debug();

			String s = null;
			while (s == null)
			{
			try {
				 s = HttpclientUtil.get(apiHelps.getUrl());
			} catch (Exception e) {
				e.printStackTrace();
				try {
					Thread.sleep(500);
				} catch (InterruptedException e1) {
					e1.printStackTrace();
				}
			}
			}


				s=s.replaceAll("\n", "").replaceAll("\r", "").replaceAll(" ", "");

				List<String> patternString = HTMLUtil.getPatternString(s,
						"<divclass=\"board\">.*?</div></div>");



				int order = 0;
				for (String tips : patternString) {
					//logger.debug(tips);

					spileTips(tips,apiHelps,order);
					order++;

				}

				//String tipsDiv = "<divclass=\"board\"><h2class=\"board-title\">Resource</h2><divclass=\"board-card\"><h3class=\"board-card-title\">Online</h3><ul><li><ahref=\"http://www.mysql.com/\">OfficialWebsite</a></li></ul></div><divclass=\"board-card\"><h3class=\"board-card-title\">Download</h3><ul><li><ahref=\"/static/cs/mysql_cheat_sheet.pdf\">MySQLCheatSheet[.pdf]</a></li><li><ahref=\"/static/cs/MySQL_QuickRef.pdf\">MySQLDatabaseQuickReference[.pdf]</a></li></ul></div><divclass=\"board-card\"><h3class=\"board-card-title\">Related</h3><ul><li><ahref=\"/db2\"title=\"DB2CheatSheet\">DB2</a></li><li><ahref=\"/oracle\"title=\"OracleCheatSheet\">Oracle</a></li><li><ahref=\"/postgresql\"title=\"PostgreSQLCheatSheet\">PostgreSQL</a></li><li><ahref=\"/sql\"title=\"SQLCheatSheet\">SQL</a></li><li><ahref=\"/sqlite\"title=\"SQLiteCheatSheet\">SQLite</a></li><li><ahref=\"/sybase\"title=\"SybaseCheatSheet\">Sybase</a></li></ul></div></div>";



				logger.debug(patternString.size()+"");


		}

		return new Result(Result.Status.OK,apiList.size());
	}

	private void spileTips(String tipsDiv,ApiType apiType,int order) {

		//
		String helpName = HTMLUtil.getBetweenString(tipsDiv, "<h2class=\"board-title\">", "</h2>");
		ApiHelps ah = new ApiHelps();
		ah.setName(helpName);
		ah.setApiType(apiType);
		ah.setOrder(order);
		ah.setNeedTran(true);
		apiHelpsService.saveAndFlush(ah);

		// <divclass="board-card">   </div>
		List<String> patternString = HTMLUtil.getPatternString(tipsDiv, "<divclass=\"board-card\">.*?</div>");
		int orderCard = 0;
		for (String cardTitle : patternString) {
			String cardName = HTMLUtil.getBetweenString(cardTitle, "<h3class=\"board-card-title\">", "</h3>");

			ApiHelps ah2 = new ApiHelps();
			ah2.setName(cardName);
			ah2.setApiType(apiType);
			ah.setOrder(orderCard);
			ah2.setParentHelps(ah);
			apiHelpsService.saveAndFlush(ah2);

			orderCard++;

			List<String> liList = HTMLUtil.getPatternString(cardTitle, "<li>.*?</li>");
			for (int i = 0; i < liList.size(); i++) {
				String name = liList.get(i);

				ApiHelps ah3 = new ApiHelps();
				ah3.setName(name);
				ah3.setApiType(apiType);
				ah3.setOrder(i);
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
