<%@ page contentType="text/html;charset=utf-8" language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="select.factory.*"%>
<%@ page import="select.vo.Problem"%>
<%@ page import="select.vo.*"%>
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
<script src="images/bootstrap3/js/jquery-1.10.1.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="images/bootstrap3/bootstrap.min.js"></script>
<link href="images/style.css" rel="stylesheet" type="text/css">
</head>
<body style="width:900px;margin:0px auto;color:black;">
<div class="jumbotron" style="margin-bottom:5px;padding-bottom:20px;">
  <h2>题目列表</h2>
</div>

<div class="list-group">
<%
   List ef= DAOFactory.getProblemCRUD().queryAll();
   Iterator tsk=ef.iterator();
   while(tsk.hasNext())
   {
	   Problem problem=(Problem)tsk.next();
	   %>
        
		<%if(problem.getUser_id()==0){%>
		<div class="input-group">
		   <span class="input-group-addon"></span>
		   <a href="show_problem.jsp?pid=<%=problem.getId()%>" target="_blank" class="list-group-item"><%=problem.getId()%>.&nbsp;<%=problem.getPtitle()%></a>
		</div>
		<%}else {%>
		<div class="input-group">
		   <span class="input-group-addon"></span>
		   <a href="show_problem.jsp?pid=<%=problem.getId()%>" target="_blank" class="list-group-item alert alert-danger"><%=problem.getId()%>.&nbsp;<%=problem.getPtitle()%></a>
		</div>
	   <%
		}
   }
%>
</div>
</body>
</html>