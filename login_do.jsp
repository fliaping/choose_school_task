<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="select.factory.*"%>
<%@ page import="java.util.*"%>
<%@ page import="select.vo.*"%>
<jsp:useBean id="user" scope="page" class="select.vo.Person"/>
<jsp:setProperty name="user" property="*"/>
<html>
<head>
    <title>登陆验证</title>
	<link href="images/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%=user.getUid()%>
<%
   //PersonDAO dao=new PersonDAOImpl();
   String uid=user.getUid();
   String password=user.getPassword();
 try
 {
	 
	 //dao.insert(person);
	 if(DAOFactory.getPersonCRUD().logincheck(uid,password))
	 {
		 out.println("成功");
		 session.setAttribute("uid",uid);
		 session.setAttribute("name",DAOFactory.getPersonCRUD().queryById(uid).getName());
		 
		 response.sendRedirect("user_index.jsp");
	 }
	 else
		 out.println("错误的用户名及密码！！！");
 }
 catch(Exception e)
 {}
%>
</body>
</html>