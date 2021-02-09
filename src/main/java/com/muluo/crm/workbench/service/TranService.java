package com.muluo.crm.workbench.service;

import com.muluo.crm.workbench.domain.Tran;
import com.muluo.crm.workbench.domain.TranHistory;

import java.util.List;
import java.util.Map;

/**
 * @author Muluo
 * @create 2021-02-07 22:27
 */
public interface TranService {
    boolean save(Tran t, String customerName);

    Tran detail(String id);

    List<TranHistory> getHistoryListByTranId(String tranId);

    boolean changeStage(Tran t);

    Map<String, Object> getCharts();

}
