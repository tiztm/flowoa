package com.jsdx.biz.controller;

import com.jsdx.biz.entity.Customer;
import com.jsdx.biz.service.CustomerService;
import com.jsdx.core.controller.BaseController;
import com.jsdx.core.entity.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@RestController
@RequestMapping ( "/customer" )
public class CustomerController extends BaseController {

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
	private CustomerService customerService;

	/**
	 * 测试用页面，显示总数

	@RequestMapping("/cusCount")
	public ModelAndView cusCount() {

		List<Customer> all = customerService.findAll();
		String count = all.size()+"";
		//logger.error(count);
		return new ModelAndView("cusCount","count",count);
	}*/

	/**
	 * 分页列表数据
	 * @param pageable
	 * 	page，第几页，从0开始，默认为第0页
	 * 	size，每一页的大小，默认为10
	 * 	sort，排序相关的信息，以property,property(,ASC|DESC)的方式组织，例如sort=firstname&sort=lastname,desc表示在按firstname正序排列基础上按lastname倒序排列
	 */
	@RequestMapping("/listData")
	public Page<Customer> listData(@PageableDefault(sort = { "id" }, direction = Sort.Direction.DESC)
										 Pageable pageable){
		Page<Customer> all = customerService.findAll(pageable);
		return all;
	}


	@RequestMapping("/editSubmit")
	public Result editSubmit(Customer cus){

		//logger.error(cus.toString());

		customerService.saveAndFlush(cus);

		result = new Result(Result.Status.OK);

		return result;
	}






	/**
	 * 分页列表
	 */
	@RequestMapping("/list")
	public ModelAndView list(){
		return new ModelAndView();
	}


	/**
	 * 添加页面
	 */
	@RequestMapping("/edit")
	public ModelAndView edit(){
		return new ModelAndView();
	}




}
