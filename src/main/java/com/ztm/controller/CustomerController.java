package com.ztm.controller;

import com.ztm.entity.Customer;
import com.ztm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

@RestController
public class CustomerController {



	@Autowired
	private CustomerService customerService;


	@RequestMapping("/cus")
	String cusTest() {
		Customer cus = new Customer("1",new Date().getTime()+"");



		customerService.save(cus);

		return "1";

	}

	@RequestMapping("/cusFind")
	String cusFind(@ModelAttribute Customer bankAccountInfo ) {

		List<Customer> byLastName = customerService.findByFirstName("1");

		return byLastName.get(1).toString();

	}






}
