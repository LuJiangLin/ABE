<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path %>/FRAMEWORK/css/assembly.css">

  </head>
  
<body>
  	
	<div class="left" style="background-color: #9B9B9B;">
  		<ul>
		<li>
			<a href="<%=path %>/">返回</a>
  		</li>
  		<li>档案管理</li>
  		<ul>
  			<li>
  				<a href="<%=path %>/web/student!queryOfFenYe?cz=yes">学生管理</a>
  			</li>
  			<li>
  				<a href="<%=path %>/web/parents!queryOfFenYe?cz=yes">家长档案管理</a>
  			</li>
  			<li>
  				<a href="<%=path %>/web/teacher!queryOfFenYe?cz=yes">教师档案管理</a>
  			</li>
  			<li>
  				<a href="<%=path %>/web/rel!queryOfFenYe?cz=yes">学生家长关系管理</a>
  			</li>
  		</ul>
  		<li>课程表管理</li>
  		<ul>
  			<li>
  				<a href="<%=path %>/web/timetables!gotoQuery">课程表管理</a>
  			</li>
  			<li>
  				<a href="<%=path %>/web/course!gotoQuery">科目管理</a>
  			</li>
  		</ul>
  		<li>组织架构管理</li>
  		<ul>
  			<li>
  				<a href="<%=path %>/web/school!queryOfFenYe?cz=yes">学校管理</a>
  			</li>
  			<li>
  				<a href="<%=path %>/web/grade!queryOfFenYe?cz=yes">年级管理</a>
  			</li>
  			<li>
  				<a href="<%=path %>/web/class!queryOfFenYe?cz=yes">班级管理</a>
  			</li>
  			<li>
  				<a href="<%=path %>/web/schoolStructure!queryOfFenYe">班级架构</a>
  			</li>
  		</ul>
  		<li>新闻管理</li>
  		<ul>
  			<li>
  				<a href="<%=path %>/backstage/news/edit.jsp">编辑新闻</a>
  			</li>
  			<li>
  				<a href="<%=path %>/web/news!queryOfFenYe?pageNo=1">新闻列表</a>
  			</li>
  		</ul>
  		<li>卡片与考勤管理</li>
  		<ul>
  			<li>
  				<a href="<%=path %>/web/card!gotoQuery">卡片管理</a>
  			</li>
  		</ul>
  		<li>系统管理</li>
  		<ul>
  			<li>
  				<a href="<%=path %>/web/users!queryOfFenYe?cz=yes">用户管理</a>
  			</li>
  		</ul>
  		</ul>
  	
	</div>
  
</body>
</html>
