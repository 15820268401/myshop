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
			修改管理员 
		</h2>
		<form action="back_modifying_manager.do" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					管理员用户名：
				</th>
				<td colspan="2">
					<input type="text" name="manager_name" value="${back_manager.manager_name }" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					管理员密码：
				</th>
				<td colspan="2">
					<input type="text" name="manager_password" value="${back_manager.manager_password }" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					管理员类型：
				</th>
				<td colspan="2">
					<input type="text" name="manager_type" value="${back_manager.manager_type }" size="130" align="middle"/>
				</td>
			</tr>
			
			<tr>
				<td colspan="3" align="center">
					<input type="submit" value="提交" />
					&nbsp;&nbsp;
					<input type="reset" value="重置" />
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>