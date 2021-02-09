package com.muluo.crm.settings.service.impl;

import com.muluo.crm.exception.LoginException;
import com.muluo.crm.settings.dao.UserDao;
import com.muluo.crm.settings.domain.User;
import com.muluo.crm.settings.service.UserService;
import com.muluo.crm.utils.DateTimeUtil;
import com.muluo.crm.utils.SqlSessionUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-03 8:53
 */
public class UserServiceImpl implements UserService {

    private UserDao userDao = SqlSessionUtil.getSqlSession().getMapper(UserDao.class);

    public User login(String loginAct, String loginPwd, String ip) throws LoginException {
        Map<String, String> map = new HashMap<String, String>();
        map.put("loginAct", loginAct);
        map.put("loginPwd", loginPwd);

        User user =  userDao.login(map);

        if (user == null) {
            throw new LoginException("账号密码错误");
        }

        // 验证失效时间
        String expireTime = user.getExpireTime();
        String currentTime = DateTimeUtil.getSysTime();

        if (expireTime.compareTo(currentTime) < 0) {
            throw new LoginException("账号已失效");
        }

        // 判断锁定状态
        String localeState = user.getLockState();
        if ("0".equals(localeState)) {
            throw new LoginException("账号已锁定");
        }

        // 判断IP状态
        String allowIps = user.getAllowIps();
        if (!allowIps.contains(ip)) {
            throw new LoginException("Ip地址受限");
        }
        return user;
    }

    public List<User> getUserList() {
        List<User> uList = userDao.getUserList();
        return uList;
    }
}
