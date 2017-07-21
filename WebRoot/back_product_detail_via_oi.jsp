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
			查询购买商品的详细信息
		</h2>
		<table border="1" width="90%">
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;产品图片</font>
				</th>
				<td>
					&nbsp;&nbsp;
					<img src="${product.product_image_path }" />
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;产品名称</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_name }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;产品市场价</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_price }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;产品会员价</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_vip_price }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;产品概要信息</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_command_info }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;产品详细信息</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_detail_info }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;产品点击率</font>
				</th>
				<td>
					<font size="2"> &nbsp;&nbsp;${product.product_hit }</font>
				</td>
			</tr>
			<tr align="left">
				<th>
					<font size="4"> &nbsp;&nbsp;购买该商品</font>
				</th>
				<td>
					&nbsp;&nbsp;
					<a href="buy.do?method=add&product_id=${product.product_id }">
					<font size="2">添加到购物车</font>
					</a>
				</td>
			</tr>
		</table>

	</body>
</html>