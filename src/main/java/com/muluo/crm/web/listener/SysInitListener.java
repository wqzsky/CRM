package com.muluo.crm.web.listener;

import com.muluo.crm.settings.domain.DicValue;
import com.muluo.crm.settings.service.DicService;
import com.muluo.crm.settings.service.impl.DicServiceImpl;
import com.muluo.crm.utils.ServiceFactory;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.*;

/**
 * @author Muluo
 * @create 2021-02-06 10:15
 */
public class SysInitListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent event) {

        System.out.println("服务器缓存处理数据字典开始");

        ServletContext application = event.getServletContext();

        DicService ds = (DicService) ServiceFactory.getService(new DicServiceImpl());
//        application.setAttribute("", 数据字典);

         /*

            应该管业务层要
            7个list

            可以打包成为一个map
            业务层应该是这样来保存数据的：
                map.put("appellationList",dvList1);
                map.put("clueStateList",dvList2);
                map.put("stageList",dvList3);
                ....
                ...


         */
        Map<String, List<DicValue>> map = ds.getAll();
        // 将map解析为上下文域对象中的键值对

        Set<String> set = map.keySet();

        for (String key : set) {

            application.setAttribute(key, map.get(key));

        }


        // ---------------------------------------------------------

        // 数据字典处理完毕后，需要处理stage2properties
        // 将属性文件中的键值对，处理成Java中的键值对的关系


        Map<String, String> pMap = new HashMap<String, String>();
        // 解析properties文件
        ResourceBundle rb = ResourceBundle.getBundle("Stage2Possibility");
        Enumeration<String> e = rb.getKeys();

        while (e.hasMoreElements()) {

            String key = e.nextElement();
            String value = rb.getString(key);
            pMap.put(key, value);

        }

        // 将篇Map保存到服务器缓存中
        application.setAttribute("pMap", pMap);

    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
