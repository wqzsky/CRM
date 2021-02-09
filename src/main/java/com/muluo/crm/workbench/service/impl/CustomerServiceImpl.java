package com.muluo.crm.workbench.service.impl;

import com.muluo.crm.utils.SqlSessionUtil;
import com.muluo.crm.workbench.dao.CustomerDao;
import com.muluo.crm.workbench.service.CustomerService;

import java.util.List;

/**
 * @author Muluo
 * @create 2021-02-08 8:46
 */
public class CustomerServiceImpl implements CustomerService {

    private CustomerDao customerDao = SqlSessionUtil.getSqlSession().getMapper(CustomerDao.class);

    public List<String> CustomerDao(String name) {


        List<String> sList = customerDao.getCustomerName(name);

        return sList;
    }
}
