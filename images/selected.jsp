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
%>
<html>
<head> 
<link href="images/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<%out.print("你已经选择了第"+DAOFactory.getProblemCRUD().queryByUser_id(uid).getId()+"题："+DAOFactory.getProblemCRUD().queryByUser_id(uid).getPtitle());%><br>
<br>
<a href="update.jsp">修改</a>&nbsp;
<a href="logout.jsp">退出</a>
</center>
</body>
</html>