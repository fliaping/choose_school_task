<%@ page contentType="text/html;charset=utf-8" language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="select.factory.*"%>
<%@ page import="select.vo.Problem"%>
<%@ page import="select.vo.*"%>
<%@ page import="select.vo.Person"%>
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
   //////这里的判断刚开始没有加，出现覆盖
   if(DAOFactory.getProblemCRUD().queryById(p_id).getUser_id()!=0)
   {
	   out.println("亲，你来晚了，本题已经被选了。");
       response.setHeader("refresh","3;URL=user_index.jsp") ;
   %>
   <br>
   <a href="user_index.jsp">重新选择</a>
   <%
   }
    else
	{
   Problem problem= new Problem();
   problem.setId(p_id);
   problem.setUser_id(uid);
   DAOFactory.getProblemCRUD().update(problem);
   %>
   <jsp:forward page="user_index.jsp"/>
   <%
   }
   %>

