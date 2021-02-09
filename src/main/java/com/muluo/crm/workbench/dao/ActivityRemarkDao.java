package com.muluo.crm.workbench.dao;

import com.muluo.crm.workbench.domain.ActivityRemark;

/**
 * @author Muluo
 * @create 2021-02-04 10:21
 */
public interface ActivityRemarkDao {
    int getCountByIds(String[] ids);

    int deleteCountByIds(String[] ids);

    int saveRemark(ActivityRemark ar);

    int updateRemark(ActivityRemark ar);
}
