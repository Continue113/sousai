<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>出错提示页</title>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body> 
<table width=780 align="center"
	background="${pageContext.request.contextPath}/images/bodybg.jpg">
<tr> 
<td height="39"><br>
<div align="center"><font color="#FF0000" size="+1"><b>系统处理过程中发生了一个错误，信息如下：</b></font></div>
</td>
</tr>
<tr>
<td height="315">
<s:property value="exception.message"/>
</td>
</tr>
<tr>
<td><div align="center" style="font:large;color:#333333">
出现错误了~~~~~
</div><br></td>
</tr>
</table>
</body>
</html>

