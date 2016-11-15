package com.jsdx.controller;

import com.jsdx.entity.Customer;
import com.jsdx.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
public class CustomerController {

	@Autowired
	private CustomerService customerService;


	@Autowired
	private Date dat;

	@Bean(name = "fromDate")
	public Date date() throws ParseException {
		return new SimpleDateFormat("yyyy-MM-dd").parse("2007-09-11");
	}



	/**
	 * 前后台传值示例
	 * 直接调用sql示例
	 * @return
	 */
	@RequestMapping("/cusCount")
	@Transactional
	ModelAndView index() {

		List<Customer> byFirstName = customerService.findByFirstName("1");
		String count = byFirstName.size()+"";

		return new ModelAndView("custom.jsp","count",count);
	}


	/**
	 * SpringJPA示例
	 * @return
	 */
	@RequestMapping("/cus")
	String cusTest() {
		Customer cus = new Customer("1",new Date().getTime()+"");
		customerService.save(cus);
		return "123";
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
