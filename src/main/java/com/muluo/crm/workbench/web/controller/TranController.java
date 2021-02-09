package com.muluo.crm.workbench.web.controller;

import com.muluo.crm.settings.domain.User;
import com.muluo.crm.settings.service.UserService;
import com.muluo.crm.settings.service.impl.UserServiceImpl;
import com.muluo.crm.utils.DateTimeUtil;
import com.muluo.crm.utils.PrintJson;
import com.muluo.crm.utils.ServiceFactory;
import com.muluo.crm.utils.UUIDUtil;
import com.muluo.crm.workbench.domain.Tran;
import com.muluo.crm.workbench.domain.TranHistory;
import com.muluo.crm.workbench.service.CustomerService;
import com.muluo.crm.workbench.service.TranService;
import com.muluo.crm.workbench.service.impl.CustomerServiceImpl;
import com.muluo.crm.workbench.service.impl.TranServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-03 10:04
 */

// 模板模式
public class TranController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("进入交易主控制器");

        String path = request.getServletPath();


        // 注意 / 和常量写前面
        if ("/workbench/transaction/add.do".equals(path)) {

            add(request, response);


        } else if ("/workbench/transaction/getCustomerName.do".equals(path)) {

            getCustomerName(request, response);

        } else if ("/workbench/transaction/save.do".equals(path)) {

            save(request, response);

        } else if ("/workbench/transaction/detail.do".equals(path)) {

            detail(request, response);

        } else if ("/workbench/transaction/getHistoryListByTranId.do".equals(path)) {

            getHistoryListByTranId(request, response);

        } else if ("/workbench/transaction/changeStage.do".equals(path)) {

            changeStage(request, response);

        } else if ("/workbench/transaction/getCharts.do".equals(path)) {

            getCharts(request, response);


        }


    }

    private void getCharts(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("取得交易阶段数量统计图标");
        TranService ts = (TranService) ServiceFactory.getService(new TranServiceImpl());
        Map<String, Object> map = ts.getCharts();

        PrintJson.printJsonObj(response, map);


    }

    private void changeStage(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("执行改变阶段的操作");

        String id = request.getParameter("id");
        String stage = request.getParameter("stage");
        String money = request.getParameter("money");
        String expectedDate = request.getParameter("expectedDate");
        String editTime = DateTimeUtil.getSysTime();
        String editBy = ((User)request.getSession().getAttribute("user")).getName();

        Tran t = new Tran();
        t.setId(id);
        t.setStage(stage);
        t.setMoney(money);
        t.setExpectedDate(expectedDate);
        t.setEditBy(editBy);
        t.setEditBy(editBy);

        TranService ts = (TranService) ServiceFactory.getService(new TranServiceImpl());

        boolean flag = ts.changeStage(t);

        Map<String, String> pMap = (Map<String, String>)this.getServletContext().getAttribute("pMap");
        t.setPossibility(pMap.get(stage));

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("success", flag);
        map.put("t", t);

        PrintJson.printJsonObj(response, map);

    }

    private void getHistoryListByTranId(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("根据交易Id取得历史列表");

        String tranId = request.getParameter("tranId");
        TranService ts = (TranService) ServiceFactory.getService(new TranServiceImpl());

        // 阶段和可能性的对应关系
        Map<String, String> pMap = (Map<String, String>)this.getServletContext().getAttribute("pMap");
        List<TranHistory> thList = ts.getHistoryListByTranId(tranId);

        for (TranHistory th : thList) {

            String stage = th.getStage();
            String possibility = pMap.get(stage);
            th.setPossibility(possibility);

        }


        PrintJson.printJsonObj(response, thList);

    }

    private void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("跳转到详细页");

        String id = request.getParameter("id");
        System.out.println(id);

        TranService ts = (TranService) ServiceFactory.getService(new TranServiceImpl());



        Tran t = ts.detail(id);

        // 处理可能性

        String stage = t.getStage();
        Map<String, String> pMap = (Map<String, String>)this.getServletContext().getAttribute("pMap");
        String possibility= pMap.get(stage);

        t.setPossibility(possibility);

        request.setAttribute("t", t);
//        request.setAttribute("possibility", possibility);
        request.getRequestDispatcher("/workbench/transaction/detail.jsp").forward(request, response);

    }

    private void save(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println("执行添加的交易操作");
        String id = UUIDUtil.getUUID();
        String owner = request.getParameter("owner");
        String money = request.getParameter("money");
        String name = request.getParameter("name");
        String expectedDate = request.getParameter("expectedDate");
        String customerName = request.getParameter("customerName"); //此处我们暂时只有客户名称，还没有id
        String stage = request.getParameter("stage");
        String type = request.getParameter("type");
        String source = request.getParameter("source");
        String activityId = request.getParameter("activityId");
        String contactsId = request.getParameter("contactsId");
        String createTime = DateTimeUtil.getSysTime();
        String createBy = ((User)request.getSession().getAttribute("user")).getName();
        String description = request.getParameter("description");
        String contactSummary = request.getParameter("contactSummary");
        String nextContactTime = request.getParameter("nextContactTime");

        Tran t = new Tran();
        t.setId(id);
        t.setOwner(owner);
        t.setMoney(money);
        t.setName(name);
        t.setExpectedDate(expectedDate);
        t.setStage(stage);
        t.setType(type);
        t.setSource(source);
        t.setActivityId(activityId);
        t.setContactsId(contactsId);
        t.setCreateTime(createTime);
        t.setCreateBy(createBy);
        t.setDescription(description);
        t.setContactSummary(contactSummary);
        t.setNextContactTime(nextContactTime);

        TranService ts = (TranService) ServiceFactory.getService(new TranServiceImpl());

        boolean flag = ts.save(t,customerName);

        if(flag){

            //如果添加交易成功，跳转到列表页
            response.sendRedirect(request.getContextPath() + "/workbench/transaction/index.jsp");

        }

    }

    private void getCustomerName(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("取得客户名称列表");

        String  name = request.getParameter("name");
        CustomerService cs = (CustomerService) ServiceFactory.getService(new CustomerServiceImpl());
        List<String> sList = cs.CustomerDao(name);
        PrintJson.printJsonObj(response, sList);

    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("进入并跳转到交易添加的操作");

        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());

        List<User> uList= us.getUserList();

        request.setAttribute("uList", uList);
        request.getRequestDispatcher("/workbench/transaction/save.jsp").forward(request, response);

    }


}
