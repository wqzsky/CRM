package com.muluo.crm.workbench.dao;

import com.muluo.crm.workbench.domain.Activity;
import com.muluo.crm.workbench.domain.ActivityRemark;

import java.util.List;
import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-04 10:21
 */
public interface ActivityDao {
    int save(Activity activity);

    List<Activity> getActivityByCondition(Map<String, Object> map);

    int getTotalByCondition(Map<String, Object> map);

    int delete(String[] ids);

    Activity getById(String id);

    int update(Activity activity);

    Activity detail(String id);

    List<ActivityRemark> getRemarkListByAid(String activityId);

    int deleteById(String id);

    List<Activity> getActivityListByClueId(String clueId);

    List<Activity> getActivityListByNameAndNotByClueId(Map<String, String> map);

    List<Activity> getActivityListByName(String aname);
}
