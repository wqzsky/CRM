package com.muluo.settings.test;

import org.junit.Test;

/**
 * @author Muluo
 * @create 2021-02-03 11:07
 */
public class Test1 {
    @Test
    public void test() {

        // 验证失效时间
//        String  expireTime = "2021-02-12 10:10:10";
////
////        Date date = new Date();
////
////        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
////        String format = simpleDateFormat.format(date);
////
////        int cout = expireTime.compareTo(format);
////
////        System.out.println(cout);


//        String lockState = "0";
//        if ("0".equals(lockState)) {
//            System.out.println("账号已锁定");
//
//        }

        // 浏览器端的IP地址
        String ip = "192.168.1.2";
        String allowIps = "192.168.1.2,192.168.1.3";
        if (allowIps.contains(ip)) {
            System.out.println("有效ip地址，允许访问");
        } else {
            System.out.println("ip地址受限");
        }
    }
}
