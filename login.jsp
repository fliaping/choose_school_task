<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@page import="java.text.SimpleDateFormat;"%> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
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
<body style="width:900px;margin:0px auto;">
<center>
<div id="body">
<h1 style="color:#0FC">欢迎进入“计算机网络课程设计”选题系统</h1><br><br>
<h3><font color=red>默认密码为身份证号后四位，有字母的大写<br/>有改过密码的请用新密码,有任何疑问请联系徐平 
<a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=103f4205f6e38883372eefa2284f7131772190be81e243ae"><img border="0" src="http://wpa.qq.com/imgd?IDKEY=103f4205f6e38883372eefa2284f7131772190be81e243ae&pic=52" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
</font></h3>
<h4 style="color:white">用户登陆</h4>
<div style="width:250px;">
 <form class="form-horizontal" role="form" action="login_do.jsp" method="post">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"></label>
    <div class="col-sm-10">
      <input name="uid" type="text" class="form-control" id="inputEmail3" placeholder="请输入学号">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"></label>
    <div class="col-sm-10">
      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="请输入密码">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">登录</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <a href="problem.jsp" type="button" class="btn btn-info">题目列表</a>
    </div>
  </div>
</form> 
</div>

<br><br>当前系统时间为：<br><br>
<% 
Calendar rightNow = Calendar.getInstance(); 
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm"); 
%> 
<script language="javascript"> 
//从服务器上获取初始时间 
var currentDate = new Date(<%=new java.util.Date().getTime()%>); 
function run() 
{ 
currentDate.setSeconds(currentDate.getSeconds()+1); 
var time = ""; 
var year = currentDate.getFullYear(); 
var month = currentDate.getMonth() + 1; 
var day = currentDate.getDate(); 
var hour = currentDate.getHours(); 
var minute = currentDate.getMinutes(); 
var second = currentDate.getSeconds(); 
if(hour < 10){ 
time += "0" + hour; 
}else{ 
time += hour; 
} 
time += ":"; 
if(minute < 10){ 
time += "0" + minute; 
}else{ 
time += minute; 
} 
time += ":"; 
if(second < 10){ 
time += "0" + second; 
}else{ 
time += second; 
} 
document.getElementById("dt").innerHTML = year+"年"+month+"月"+day+"日" + time; 
} 
window.setInterval("run();", 1000); 
</script>
<div id="dt"></div>
</div>
</center>
</body>
</html>