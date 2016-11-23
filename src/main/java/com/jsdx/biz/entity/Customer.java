package com.jsdx.biz.entity;

import com.jsdx.core.entity.BaseJPAModel;

import javax.persistence.Entity;
import java.util.Date;

@Entity
public class Customer extends BaseJPAModel {


    private String firstName;

    private String lastName;

    private Integer age;

    private Date birthday;


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return firstName+"-"+lastName;
    }
}