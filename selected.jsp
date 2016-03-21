<%@ page contentType="text/html;charset=utf-8" language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="select.factory.*"%>
<%@ page import="select.vo.Problem"%>
<%@ page import="select.vo.*"%>
<%
    request.setCharacterEncoding("utf-8");
    int  uid = Integer.parseInt((String)session.getAttribute("uid"));
    String  name = (String)session.getAttribute("name");
	if(session.getAttribute("uid")==null)
   {
   %>
   <jsp:forward page="login.jsp"/>
   <%
   }
   if(!Gettime.isTime())
   {
   %>
   <jsp:forward page="clock.jsp"/>
   <%
   }
%>
<html  lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="images/bootstrap3/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="images/bootstrap3/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="images/bootstrap3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="images/bootstrap3/js/jquery-1.10.1.min.js"></script>
<link href="images/style.css" rel="stylesheet" type="text/css"> 

</head>
<%if(uid==2012508001){%>
<body background="images/love_it.jpg">
<%}else{%>
<body background="images/240162.jpg">
<%}%>
<center>
<div class="alert alert-success" role="alert"><h2>
<%out.print("你已经选择了第"+DAOFactory.getProblemCRUD().queryByUser_id(uid).getId()+"题："+DAOFactory.getProblemCRUD().queryByUser_id(uid).getPtitle());%><br>
</h2></div><br>
<a  href="update.jsp"  type="button" class="btn btn-info">修改选择</a>&nbsp;   <a href="logout.jsp"  type="button" class="btn btn-danger">退出</a>
</center>
</body>
</html>