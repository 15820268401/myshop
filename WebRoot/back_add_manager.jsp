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
			添加管理员 
		</h2>
		<form action="back_adding_manager.do" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					管理员用户名：
				</th>
				<td colspan="2">
					<input type="text" name="manager_name" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					管理员密码：
				</th>
				<td colspan="2">
					<input type="text" name="manager_password" size="130" align="middle"/>
				</td>
			</tr>
			<tr>
				<th>
					管理员类型：
				</th>
				<td colspan="2">
					<select name="manager_type" size="1">
							<option value="super_admin">------超级管理员------</option>
							<option value="order_admin">------订单管理员------</option>
							<option value="product_admin">------产品管理员------</option>
							<option value="user_admin">------用户管理员------</option>
							<option value="pay_type_admin">------付款方式管理员------</option>
							<option value="product_type_admin">------产品类型管理员------</option>
					</select>
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