<%@ page contentType="text/html; charset=UTF-8" %>

<% 
//response.sendRedirect(request.getContextPath());
//System.out.println(request.getServletContext().getContextPath());
//System.out.println(application.getContextPath());

//경로 자동으로 해주기
response.sendRedirect(application.getContextPath()+"/ch01/content");
%>