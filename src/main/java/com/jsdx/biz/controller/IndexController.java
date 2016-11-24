package com.jsdx.biz.controller;

import com.jsdx.biz.entity.ApiType;
import com.jsdx.biz.service.ApiHelpsService;
import com.jsdx.biz.service.ApiTypeService;
import com.jsdx.core.controller.BaseController;
import com.jsdx.core.entity.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;


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

	@Resource
	private ApiHelpsService apiHelpsService;


	@Resource
	private ApiTypeService apiTypeService;
	/**
	 * 首页
	 */
	@RequestMapping("/")
	public ModelAndView index(){

		List<ApiType> all = apiTypeService.findAll();
		return new ModelAndView("myapi").addObject("apiTypeList", all);
	}

	/**
	 * 首页
	 */
	@RequestMapping("/{apiTypeName}")
	public ModelAndView index(@PathVariable("apiTypeName") String apiTypeName){
		List<ApiType> all = apiTypeService.findAll();
			return new ModelAndView("templetapi").addObject("apiTypeList", all).addObject("nowType", apiTypeName);

	}







}
