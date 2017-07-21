<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>Insert title here</title>
		<link href="./css/style.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			查询并删除用户
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>用户编号</th>
				<th>用户昵称</th>
				<th>真实姓名</th>
				<th>查看用户详细信息</th>
				<th>删除该用户</th>
			</tr>
			<c:forEach items="${back_userList}" var="bu">
				<tr>
					<td>${bu.user_id}</td>
					<td>${bu.username }</td>
					<td>${bu.truename }</td>
					<td align="center"><a href="searchUserDetail.do?user_id=${bu.user_id }">查看用户详细信息</a></td>
					<td align="center"><a href="deleteUser.do?user_id=${bu.user_id }">删除该用户</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>