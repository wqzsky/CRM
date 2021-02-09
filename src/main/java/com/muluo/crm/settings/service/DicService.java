package com.muluo.crm.settings.service;

import com.muluo.crm.settings.domain.DicValue;

import java.util.List;
import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-06 9:04
 */
public interface DicService {
    Map<String, List<DicValue>> getAll();
}
