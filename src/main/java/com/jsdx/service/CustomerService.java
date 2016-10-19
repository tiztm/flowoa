package com.jsdx.service;

import java.util.List;

import com.jsdx.entity.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomerService extends CrudRepository<Customer, Long> {

    List<Customer> findByLastName(String lastName);


    List<Customer> findByFirstName(String firstName);
}