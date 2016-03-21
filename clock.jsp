<% 
	request.setCharacterEncoding("utf-8");
    int  uid = Integer.parseInt((String)session.getAttribute("uid"));
    String  name = (String)session.getAttribute("name");
%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html> 
<head> 
<title>计时</title> 
<link href="images/style.css" rel="stylesheet" type="text/css">
</head> 
<body> 
<center>
<br><br>欢迎 <font style="color:red"><%=name%></font><br><br>
当前系统时间为：<br>
<br><br>
<h1>

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
</h1>
<h3>12月7日13:00开始 -- 12月10日00:00结束</h3>
还未到选题时间，请等待。。。。。
<br/><br><br>
或者已经过了选题时间，请联系徐平 <a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=103f4205f6e38883372eefa2284f7131772190be81e243ae"><img border="0" src="http://wpa.qq.com/imgd?IDKEY=103f4205f6e38883372eefa2284f7131772190be81e243ae&pic=52" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
<br>
<table>
<tr>
<td><a href="user_index.jsp">刷新</a>&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/></td><td><a href="login.jsp">返回登陆页</a><br><br></td>
</tr>

 </table>
</center>

</body> 
</html> 