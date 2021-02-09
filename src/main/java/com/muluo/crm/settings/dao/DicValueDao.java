package com.muluo.crm.settings.dao;

import com.muluo.crm.settings.domain.DicValue;

import java.util.List;

/**
 * @author Muluo
 * @create 2021-02-06 9:01
 */
public interface DicValueDao {
    List<DicValue> getListByCode(String code);
}
