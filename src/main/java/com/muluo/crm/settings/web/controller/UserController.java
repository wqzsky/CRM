package com.muluo.crm.settings.web.controller;

import com.muluo.crm.settings.domain.User;
import com.muluo.crm.settings.service.UserService;
import com.muluo.crm.settings.service.impl.UserServiceImpl;
import com.muluo.crm.utils.MD5Util;
import com.muluo.crm.utils.PrintJson;
import com.muluo.crm.utils.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-03 10:04
 */

// 模板模式
public class UserController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("用户进入主控制器");

        String path = request.getServletPath();


        // 注意 / 和常量写前面
        if ("/settings/user/login.do".equals(path)) {
            login(request,response);
        } else {

        }

    }

    private void login(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("进入到验证登录操作");
        String loginAct = request.getParameter("loginAct");
        String loginPwd = request.getParameter("loginPwd");


        loginPwd = MD5Util.getMD5(loginPwd);
        System.out.println(loginPwd);


        String ip = request.getRemoteAddr();
        System.out.println("ip: " + ip);

        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());

        try {
            User user = us.login(loginAct, loginPwd, ip);

            request.getSession().setAttribute("user", user);


            PrintJson.printJsonFlag(response, true);


        } catch (Exception e) {
            e.printStackTrace();

            String msg = e.getMessage();

            Map<String,Object> map = new HashMap<String, Object>();
            map.put("success", false);
            map.put("msg", msg);

            PrintJson.printJsonObj(response, map);

        }

    }
}
