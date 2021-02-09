package com.muluo.crm.workbench.service;

import com.muluo.crm.workbench.domain.Clue;
import com.muluo.crm.workbench.domain.Tran;

/**
 * @author Muluo
 * @create 2021-02-06 8:51
 */
public interface ClueService {
    boolean save(Clue c);

    Clue detail(String id);

    boolean unbund(String id);

    boolean bund(String cid, String[] aids);

    boolean convert(String clueId, Tran t, String createBy);
}
