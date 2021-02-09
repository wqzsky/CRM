package com.muluo.crm.settings.service.impl;

import com.muluo.crm.settings.dao.DicTypeDao;
import com.muluo.crm.settings.dao.DicValueDao;
import com.muluo.crm.settings.domain.DicType;
import com.muluo.crm.settings.domain.DicValue;
import com.muluo.crm.settings.service.DicService;
import com.muluo.crm.utils.SqlSessionUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-06 9:04
 */
public class DicServiceImpl implements DicService {

    private DicTypeDao dicTypeDao = SqlSessionUtil.getSqlSession().getMapper(DicTypeDao.class);
    private DicValueDao dicValueDao = SqlSessionUtil.getSqlSession().getMapper(DicValueDao.class);

    public Map<String, List<DicValue>> getAll() {

        Map<String, List<DicValue>> map = new HashMap<String, List<DicValue>>();
        // 将字典类型列表取出
        List<DicType> dtList = dicTypeDao.getTypeList();

        // 将字典类型列表列出
        for (DicType dt : dtList) {

            // 取得每一种类型的字典编码
            String code = dt.getCode();

            // 根据每一个字典类型来取得字典值得列表
            List<DicValue> dvList = dicValueDao.getListByCode(code);

            map.put(code + "List", dvList);

        }



        return map;
    }
}
