package com.core.service;

import com.core.dao.CommonSQLDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by IDEA
 * User:    tiztm
 * Date:    2016/10/19.
 */
@Service
public class CommonSQLService {

    @Autowired
    private CommonSQLDao commonSQLDao;

    @Transactional
    public String rtnCount()
    {
        return commonSQLDao.rtnCount();
    }
}
