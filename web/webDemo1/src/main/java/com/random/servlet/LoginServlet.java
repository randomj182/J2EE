package com.random.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;character=UTF-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("userName");
        String password = request.getParameter("password");
        String result = null;
        if("qaz".equals(username)){
            result = "用户名已存在";
        }else{
            result = "用户名可用";
        }
        System.out.println(username+password);
        out.print(result);
        out.flush();
        out.close();
    }
}
