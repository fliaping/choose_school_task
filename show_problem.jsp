<%@ page contentType="text/html;charset=utf-8" language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="select.factory.*"%>
<%@ page import="select.vo.Problem"%>
<%@ page import="select.vo.*"%>
<%
	int pid= Integer.parseInt(request.getParameter("pid"));
	
   
   String title = DAOFactory.getProblemCRUD().queryById(pid).getPtitle();
   String ptype = DAOFactory.getProblemCRUD().queryById(pid).getPtype();
   String source = DAOFactory.getProblemCRUD().queryById(pid).getSource();
   String gist = DAOFactory.getProblemCRUD().queryById(pid).getGist();
   String goal = DAOFactory.getProblemCRUD().queryById(pid).getGoal();
   
%>
<html  lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link href="images/style.css" rel="stylesheet" type="text/css">
</head>
<body style="width:1024px;margin:0px auto;">

<div class="panel panel-success" style="margin-top:10px;color:black;">
  <div class="panel-heading"><h3><%=pid%>.&nbsp;<%=title%></h3></div>
  <div class="panel-body">
    <h4><span class="glyphicon glyphicon-star"></span>&nbsp;立题依据:</h4>
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=gist%></p>
	<h4><span class="glyphicon glyphicon-star"></span>&nbsp;预期目标：</h4>
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=goal%></p>
  </div>

  <!-- List group -->
  <ul class="list-group">
    <li class="list-group-item">类型：<%=ptype%></li>
    <li class="list-group-item">来源：<%=source%></li>
  </ul>
</div>

</body>
<html>