package com.ztm.service;

import java.util.List;

import com.ztm.entity.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomerService extends CrudRepository<Customer, Long> {

    List<Customer> findByLastName(String lastName);


    List<Customer> findByFirstName(String firstName);
}