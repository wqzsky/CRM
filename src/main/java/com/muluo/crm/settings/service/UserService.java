package com.muluo.crm.settings.service;

import com.muluo.crm.exception.LoginException;
import com.muluo.crm.settings.domain.User;

import java.util.List;

/**
 * @author Muluo
 * @create 2021-02-03 8:52
 */
public interface UserService {

    User login(String loginAct, String loginPwd, String ip) throws LoginException;

    List<User> getUserList();
}
