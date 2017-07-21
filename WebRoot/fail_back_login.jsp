<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>Insert title here</title>
		<link href="./css/style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<form action="back_login.do" id="loginForm" method="post">
			<h3>
				后台管理员登录
			</h3>
			<center>
				<font color="red">*对不起 您的用户名或密码或管理员类型错误！</font>
				<br>
				<br>
				<font size="4">用&nbsp;&nbsp;户&nbsp;&nbsp;名:</font>
				<input name="manager_name" type="text" size="25" />
				<br>
				<br>
				<font size="4">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</font>
				<input type="password" name="manager_password" size="27" />
				<br>
				<br>
				<font size="4">管理员类型:</font>
				<select name="manager_type" size="1">
					<option value="super_admin">
						----超级管理员----
					</option>
					<option value="order_admin">
						----订单管理员----
					</option>
					<option value="product_admin">
						----产品管理员----
					</option>
					<option value="user_admin">
						----用户管理员----
					</option>
					<option value="pay_type_admin">
						---付款方式管理员--
					</option>
					<option value="product_type_admin">
						---商品类别管理员--
					</option>
				</select>
				<br>
				<br>
				<br>
				<input type="submit" value="提&nbsp;&nbsp;&nbsp;&nbsp;交">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="重&nbsp;&nbsp;&nbsp;&nbsp;置">
			</center>
		</form>
	</body>
</html>