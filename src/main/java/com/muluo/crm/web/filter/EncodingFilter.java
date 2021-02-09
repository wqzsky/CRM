package com.muluo.crm.web.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * @author Muluo
 * @create 2021-02-04 8:37
 */
public class EncodingFilter implements Filter {


    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {

        System.out.println("进入到过滤字符编码的过滤器");

        // 过滤post请求中文参数乱码的问题
        req.setCharacterEncoding("UTF-8");

        // 过滤器响应流中文乱码
        resp.setContentType("text/html;charset=utf-8");

        // 将请求放行
        chain.doFilter(req,resp);

    }

    public void destroy() {

    }
}
