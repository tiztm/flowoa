package com.jsdx.biz.service;

import com.jsdx.biz.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CustomerService extends JpaRepository<Customer, String> {

    List<Customer> findByLastName(String lastName);


    List<Customer> findByFirstName(String firstName);
}