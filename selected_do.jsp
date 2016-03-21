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
<script src="images/bootstrap3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="images/bootstrap3/js/jquery-1.10.1.min.js"></script>
<link href="images/style.css" rel="stylesheet" type="text/css"> 

</head>
<body>
<center>
<%
    request.setCharacterEncoding("utf-8");
    int  uid = Integer.parseInt((String)session.getAttribute("uid"));
    String  name = (String)session.getAttribute("name");
	int  p_id= Integer.parseInt((String)request.getParameter("p_id"));
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
   if(DAOFactory.getProblemCRUD().queryById(p_id).getUser_id()!=0)
   {
   %>
	   <div class="alert alert-warning" role="alert"><h2>亲，你来晚了，本题已经被选了。。</h2></div>
	<%
       response.setHeader("refresh","3;URL=user_index.jsp") ;
   %>
   <br>
   <a href="user_index.jsp">重新选择</a>
   <%
   }
    else
	{
   Problem problem= new Problem();
   problem.setId(DAOFactory.getProblemCRUD().queryByUser_id(uid).getId());
   problem.setUser_id(0);
   DAOFactory.getProblemCRUD().update(problem);
   problem.setId(p_id);
   problem.setUser_id(uid);
   DAOFactory.getProblemCRUD().update(problem);
%>
<jsp:forward page="user_index.jsp"/>
<%}%>
</center>
</body>
</html>