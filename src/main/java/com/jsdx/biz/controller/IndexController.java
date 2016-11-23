package com.jsdx.biz.controller;

import com.jsdx.core.controller.BaseController;
import com.jsdx.core.entity.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class IndexController extends BaseController {

	/**
	 * 平台的日志输入
	 * ！！！不允许使用System.out！！！！
	 */
	Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * 用来传递ajax结果
	 */
	Result result;


	/**
	 * 添加页面
	 */
	@RequestMapping("/")
	public ModelAndView edit(){
		return new ModelAndView("myapi");
	}




}
