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
			用户详细信息
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					用户编号：
				</th>
				<td colspan="2">
					<c:out value="${back_user.user_id}"/>
				</td>
			</tr>
			<tr>
				<th>
					用户昵称：
				</th>
				<td colspan="2">
					<c:out value="${back_user.username}"/>
				</td>
			</tr>
			<tr>
				<th>
					用户真实姓名：
				</th>
				<td colspan="2">
					<c:out value="${back_user.truename}"/>
				</td>
			</tr>
			<tr>
				<th>
					用户证件类型：
				</th>
				<td colspan="2">
					<c:out value="${back_user.certificate_type}"/>
				</td>
			</tr>
			<tr>
				<th>
					用户证件号码：
				</th>
				<td colspan="2">
					<c:out value="${back_user.certificate_num}"/>
				</td>
			</tr>
			<tr>
				<th>
					用户性别：
				</th>
				<td colspan="2">
					<c:out value="${back_user.sex}"/>
				</td>
			</tr>
			<tr>
				<th>
					用户地址：
				</th>
				<td>
					<c:out value="${back_user.address}"/>
				</td>
				
			</tr>
			<tr>
				<th>
					用户联系方式：
				</th>
				<td colspan="2">
					<c:out value="${back_user.tel}"/>
				</td>
			</tr>
			
			<tr>
				<th>
					用户Email：
				</th>
				<td colspan="2">
				<c:out value="${back_user.email}"/>
				</td>
			</tr>
			<tr>
				<th>
					用户卡级别：
				</th>
				<td colspan="2">
				<c:out value="${back_user.card_level}"/>
				</td>
			</tr>
			<tr>
				<th>
					用户积分：
				</th>
				<td colspan="2">
				<c:out value="${back_user.member_score}分"/>
				</td>
			</tr>
			<tr>
				<th>
					密码提示问题：
				</th>
				<td colspan="2">
				<c:out value="${back_user.password_hint}"/>
				</td>
			</tr>
			<tr>
				<th>
					提示问题答案：
				</th>
				<td colspan="2">
				<c:out value="${back_user.password_result}"/>
				</td>
			</tr>
		
		</table>
		<center>
			<a href="userManager.do">返回到列表</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="deleteUser.do?user_id=${back_user.user_id }">删除该用户</a>
		</center>
	</body>
</html>