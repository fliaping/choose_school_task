<%@ page contentType="text/html;charset=gb2312" language="java"%>
<html>
<head>
<title>退出</title>
<link href="images/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
session.invalidate();
out.println("你已成功退出");
%>
<a href="login.jsp">重新登录</a>
</body>
</html>