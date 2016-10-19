package com.core.dao;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 * Created by IDEA
 * User:    tiztm
 * Date:    2016/10/19.
 */
@Repository
public class CommonSQLDao {

    @Autowired()
    @Qualifier("sessionFactory")
    private SessionFactory sessionFactory;


    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public String rtnCount()
    {
        SQLQuery sqlQuery = getSession().createSQLQuery("select count(*) from customer");

        Object o = sqlQuery.uniqueResult();

        return o+"";
    }
}
