package com.muluo.crm.workbench.service.impl;

import com.muluo.crm.settings.dao.UserDao;
import com.muluo.crm.settings.domain.User;
import com.muluo.crm.utils.SqlSessionUtil;
import com.muluo.crm.vo.PaginationVO;
import com.muluo.crm.workbench.dao.ActivityDao;
import com.muluo.crm.workbench.dao.ActivityRemarkDao;
import com.muluo.crm.workbench.domain.Activity;
import com.muluo.crm.workbench.domain.ActivityRemark;
import com.muluo.crm.workbench.service.ActivityService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-04 10:23
 */
public class ActivityServiceImpl implements ActivityService {
    private ActivityDao activityDao = SqlSessionUtil.getSqlSession().getMapper(ActivityDao.class);
    private ActivityRemarkDao activityRemarkDao = SqlSessionUtil.getSqlSession().getMapper(ActivityRemarkDao.class);
    private UserDao userDao = SqlSessionUtil.getSqlSession().getMapper(UserDao.class);

    public boolean save(Activity activity) {

        boolean flag = true;

        int count = activityDao.save(activity);

        if (count != 1) {
            flag = false;
        }

        return flag;
    }

    public PaginationVO<Activity> pageList(Map<String, Object> map) {

        // 取得total
        int total =  activityDao.getTotalByCondition(map);

        // 取得dataList
        List<Activity> dataList = activityDao.getActivityByCondition(map);

        // 将total 和dataList封装到vo
        PaginationVO<Activity> vo = new PaginationVO<Activity>();
        vo.setTotal(total);
        vo.setDataList(dataList);

        return vo;
    }

    public boolean delete(String[] ids) {

        boolean flag = true;

        // 查询出要删除的备注的数量
        int count1 = activityRemarkDao.getCountByIds(ids);


        // 实际删除的数量
        int count2 = activityRemarkDao.deleteCountByIds(ids);

        if (count1 != count2) {

            flag = false;
        }



        //删除市场活动
        int count3 = activityDao.delete(ids);

        if (count3 != ids.length) {

            flag = false;
        }



        return flag;
    }

    public Map<String, Object> getUserListAndActivity(String id) {

        // 取uList
       List<User> uList = userDao.getUserList();

        // 取a
        Activity a = activityDao.getById(id);

        // 将a和uList存放到map中

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("uList", uList);
        map.put("a", a);

        // 返回map
        return map;
    }

    public boolean update(Activity activity) {

        boolean flag = true;

        int count = activityDao.update(activity);

        if (count != 1) {
            flag = false;
        }

        return flag;
    }

    public Activity detail(String id) {

        Activity a = activityDao.detail(id);

        return a;
    }

    public List<ActivityRemark> getRemarkListByAid(String activityId) {

        List<ActivityRemark> arList = activityDao.getRemarkListByAid(activityId);

        return arList;
    }

    public boolean deleteRemark(String id) {

        boolean flag = true;
        int count = activityDao.deleteById(id);

        if (count != 1) {
            flag = false;
        }

        return flag;
    }

    public boolean saveRemark(ActivityRemark ar) {

        boolean flag = true;
        int count = activityRemarkDao.saveRemark(ar);

        if (count != 1) {
            flag = false;
        }


        return flag;
    }

    public boolean updateRemark(ActivityRemark ar) {

        boolean flag = true;
        int count = activityRemarkDao.updateRemark(ar);

        if (count != 1) {
            flag = false;
        }


        return flag;
    }

    public List<Activity> getActivityListByClueId(String clueId) {

        List<Activity> aList =  activityDao.getActivityListByClueId(clueId);

        return aList;
    }

    public List<Activity> getActivityListByNameAndNotByClueId(Map<String, String> map) {

        List<Activity> aList = activityDao.getActivityListByNameAndNotByClueId(map);


        return aList;
    }

    public List<Activity> getActivityListByName(String aname) {

        List<Activity> aList = activityDao.getActivityListByName(aname);


        return aList;
    }

}



































