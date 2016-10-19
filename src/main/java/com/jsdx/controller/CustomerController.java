package com.jsdx.controller;

import com.core.dao.CommonSQLDao;
import com.core.service.CommonSQLService;
import com.jsdx.entity.Customer;
import com.jsdx.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@RestController
public class CustomerController {



	@Autowired
	private CustomerService customerService;

	@Autowired
	private CommonSQLService commonSQLService;


	/**
	 * 前后台传值示例
	 * 直接调用sql示例
	 * @return
	 */
	@RequestMapping("/")
	@Transactional
	ModelAndView index() {

		String count = commonSQLService.rtnCount();

		return new ModelAndView("index1.jsp","count",count);
	}


	/**
	 * SpringJPA示例
	 * @return
	 */
	@RequestMapping("/cus")
	String cusTest() {
		Customer cus = new Customer("1",new Date().getTime()+"");
		customerService.save(cus);
		return "1";
	}

	/**
	 * SpringJPA示例
	 * @return
	 */
	@RequestMapping("/cusFind")
	String cusFind(@ModelAttribute Customer bankAccountInfo ) {
		List<Customer> byLastName = customerService.findByFirstName("1");
		return byLastName.get(1).toString();
	}






}
