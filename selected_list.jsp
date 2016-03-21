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

</head>
<body style="width:900px;margin:0px auto;color:black; font-family:微软雅黑;" background="images/240162.jpg">
<div class="jumbotron" style="margin-bottom:5px;padding-bottom:20px;">
  <h1>已选题名单</h1>
</div>

<div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">Panel heading</div>

		  <!-- Table -->
		  <table class="table">
			<tr>
				<th>学号</th><th>姓名</th><th>题号</th><th>标题</th>
			</tr>
		
<%
   List ef= DAOFactory.getProblemCRUD().queryAll();
   Iterator tsk=ef.iterator();
   while(tsk.hasNext())
   {
	   Problem problem=(Problem)tsk.next();
	   %>
        
		<%if(problem.getUser_id()!=0){%>
		  <tr>
		  <td><%=problem.getUser_id()%></td>
		  <td><%=DAOFactory.getPersonCRUD().queryById(Integer.toString(problem.getUser_id())).getName()%></td>
		  <td><%=problem.getId()%></td>
		  <td><a href="show_problem.jsp?pid=<%=problem.getId()%>" target="_blank"><%=problem.getPtitle()%></a></td>
		  </tr>
		<%
	}
   }
%>
	
	</table>
</div>
</body>
</html>