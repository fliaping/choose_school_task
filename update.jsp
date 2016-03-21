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
   if(DAOFactory.getProblemCRUD().queryByUser_id(uid)==null){
    %>
    <jsp:forward page="user_index.jsp"/>
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
<script language="Javascript">
function CheckForm()
{
  if($("input[name=p_id]:checked").length < 1) {alert("亲，请选择题目");return false;}
  if(confirm("确认要选择吗？")==true)
    return true;
  else
    return false;
} 
</script>
</head>
<body style="width:900px;margin:0px auto;color:black;">
    
<div class="jumbotron" style="margin-bottom:5px;padding-bottom:20px;">
  <h1>选题修改</h1>
</div>
<form action="selected_do.jsp" mathod="post" onSubmit="return CheckForm();">
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
		   <span class="input-group-addon"><input type="radio" name="p_id" value="<%=problem.getId()%>" ></span>
		   <a href="show_problem.jsp?pid=<%=problem.getId()%>" target="_blank" class="list-group-item"><%=problem.getId()%>.&nbsp;<%=problem.getPtitle()%></a>
		</div>
		<%}else {%>
		
		<div class="input-group">
		   <span class="input-group-addon"><input type="radio" disabled="disabled" ></span>
		   <a href="show_problem.jsp?pid=<%=problem.getId()%>" target="_blank" class="list-group-item  alert alert-danger"><%=problem.getId()%>.&nbsp;<%=problem.getPtitle()%></a>
		</div>
	   <%
		}
   }
%>
</div>
<div class="content">
	<div class="bgimage">
	<!--这是背景层，只设置背景值，用绝对定位-->
	</div>
	<div class="text">
		<button  type="button submit" name="submit" class="btn btn-success">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="selected_list.jsp" type="button" class="btn btn-info">选题单</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="logout.jsp" type="button" class="btn btn-danger">退出</a>
	</div>
</div>


</form>


</body>
</html>