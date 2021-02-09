package com.muluo.crm.workbench.web.controller;

import com.muluo.crm.settings.domain.User;
import com.muluo.crm.settings.service.UserService;
import com.muluo.crm.settings.service.impl.UserServiceImpl;
import com.muluo.crm.utils.DateTimeUtil;
import com.muluo.crm.utils.PrintJson;
import com.muluo.crm.utils.ServiceFactory;
import com.muluo.crm.utils.UUIDUtil;
import com.muluo.crm.vo.PaginationVO;
import com.muluo.crm.workbench.domain.Activity;
import com.muluo.crm.workbench.domain.ActivityRemark;
import com.muluo.crm.workbench.service.ActivityService;
import com.muluo.crm.workbench.service.impl.ActivityServiceImpl;

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
public class ActivityController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("进入市场活动主控制器");

        String path = request.getServletPath();


        // 注意 / 和常量写前面
        if ("/workbench/activity/getUserList.do".equals(path)) {

            getUserList(request, response);


        } else if ("/workbench/activity/save.do".equals(path)) {

            save(request, response);
        } else if ("/workbench/activity/pageList.do".equals(path)) {

            pageList(request, response);
        } else if ("/workbench/activity/delete.do".equals(path)) {

            delete(request, response);
        } else if ("/workbench/activity/getUserListAndActivity.do".equals(path)) {

            getUserListAndActivity(request, response);
        } else if ("/workbench/activity/update.do".equals(path)) {

            update(request, response);
        } else if ("/workbench/activity/detail.do".equals(path)) {

            detail(request, response);
        } else if ("/workbench/activity/getRemarkListByAid.do".equals(path)) {

            getRemarkListByAid(request, response);
        } else if ("/workbench/activity/deleteRemark.do".equals(path)) {

            deleteRemark(request, response);

        } else if ("/workbench/activity/saveRemark.do".equals(path)) {

            saveRemark(request, response);

        } else if ("/workbench/activity/updateRemark.do".equals(path)) {

            updateRemark(request, response);


        }


    }

    private void updateRemark(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("进入修改备注的操作");
        String id = request.getParameter("id");
        String noteContent = request.getParameter("noteContent");

        String editTime = DateTimeUtil.getSysTime();
        String editBy = ((User)request.getSession().getAttribute("user")).getName();
        String editFlag = "1";

        ActivityRemark ar = new ActivityRemark();
        ar.setEditFlag(editFlag);
        ar.setId(id);
        ar.setNoteContent(noteContent);
        ar.setEditTime(editTime);
        ar.setCreateBy(editBy);


        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());
        boolean flag = as.updateRemark(ar);

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("success", flag);
        map.put("ar", ar);
        PrintJson.printJsonObj(response, map);


    }

    private void saveRemark(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("执行备注的操作");

        String noteContent = request.getParameter("noteContent");
        String activityId =request.getParameter("activityId");



        String id = UUIDUtil.getUUID();
        String createTime = DateTimeUtil.getSysTime();
        String cretaeBy = ((User)request.getSession().getAttribute("user")).getName();
        String editFlag = "0";

        ActivityRemark ar = new ActivityRemark();
        ar.setId(id);
        ar.setNoteContent(noteContent);
        ar.setActivityId(activityId);
        ar.setCreateBy(cretaeBy);
        ar.setCreateTime(createTime);
        ar.setEditFlag(editFlag);

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());
        boolean flag = as.saveRemark(ar);

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("success", flag);
        map.put("ar", ar);

        PrintJson.printJsonObj(response, map);


    }

    private void deleteRemark(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("删除备注操作");
        String id = request.getParameter("id");

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());
        boolean flag = as.deleteRemark(id);
        PrintJson.printJsonFlag(response, flag);
    }

    private void getRemarkListByAid(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("市场活动备注");

        String activityId = request.getParameter("activityId");

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());

        List<ActivityRemark> arList = as.getRemarkListByAid(activityId);
        PrintJson.printJsonObj(response, arList);

    }

    private void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("跳转到详细信息页面");
        String id = request.getParameter("id");

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());
        Activity a = as.detail(id);

        request.setAttribute("a", a);
        request.getRequestDispatcher("/workbench/activity/detail.jsp").forward(request, response);

    }

    private void update(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("执行市场活动修改操作");


        String id = request.getParameter("id");
        String owner = request.getParameter("owner");
        String name = request.getParameter("name");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String cost = request.getParameter("cost");
        String description = request.getParameter("description");

        // 修改人修改事件
        String editTime = DateTimeUtil.getSysTime();
        String editBy = ((User) request.getSession().getAttribute("user")).getName();

        Activity activity = new Activity();
        activity.setId(id);
        activity.setOwner(owner);
        activity.setName(name);
        activity.setStartDate(startDate);
        activity.setEndDate(endDate);
        activity.setCost(cost);
        activity.setDescription(description);
        activity.setEditBy(editBy);
        activity.setEditTime(editTime);

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());
        boolean flag =  as.update(activity);
        PrintJson.printJsonFlag(response, flag);
    }

    private void getUserListAndActivity(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("查询用户信息列表，并根据id查询列表");

        String id = request.getParameter("id");

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());

        Map<String, Object> map = as.getUserListAndActivity(id);
        PrintJson.printJsonObj(response, map);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("执行市场活动的删除操作");

        String ids[] = request.getParameterValues("id");
        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());

        boolean flag = as.delete(ids);
        PrintJson.printJsonFlag(response, flag);
    }

    private void pageList(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("进入到查询市场模块");

        String name = request.getParameter("name");
        String owner = request.getParameter("owner");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String pageNoStr = request.getParameter("pageNo");
        int pageNo = Integer.valueOf(pageNoStr);

        String pageSizeStr = request.getParameter("pageSize");
        int pageSize = Integer.valueOf(pageSizeStr);
        int skipCount = (pageNo - 1) * pageSize;

        Map<String, Object> map= new HashMap<String, Object>();

        map.put("name", name);
        map.put("owner", owner);
        map.put("startDate", startDate);
        map.put("endDate", endDate);
        map.put("skipCount", skipCount);
        map.put("pageSize", pageSize);

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());

        PaginationVO<Activity> vo = as.pageList(map);

        // {"total":xxx,"dataList":[{},{}]
        PrintJson.printJsonObj(response, vo);


    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("执行市场活动的添加操作");

        String id = UUIDUtil.getUUID();
        String owner = request.getParameter("owner");
        String name = request.getParameter("name");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String cost = request.getParameter("cost");
        String description = request.getParameter("description");

        // 创建时间，创建人
        String createTime = DateTimeUtil.getSysTime();
        String createBy = ((User) request.getSession().getAttribute("user")).getName();

        Activity activity = new Activity();
        activity.setId(id);
        activity.setOwner(owner);
        activity.setName(name);
        activity.setStartDate(startDate);
        activity.setEndDate(endDate);
        activity.setCost(cost);
        activity.setDescription(description);
        activity.setCreateTime(createTime);
        activity.setCreateBy(createBy);

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());
        boolean flag =  as.save(activity);
        PrintJson.printJsonFlag(response, flag);



    }

    private void getUserList(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("取得用户消息列表");

        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        List<User> uList = us.getUserList();

        PrintJson.printJsonObj(response, uList);
    }


}
