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
			查询并修改产品
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>商品编号</th>
				<th>商品名称</th>
				<th>商品市场价</th>
				<th>商品概要信息</th>
				<th>商品库存量</th>
				<th>商品点击率</th>
				<th>查看详细信息</th>
				<th>修改商品信息</th>
				<th>删除该商品</th>
			</tr>
			<c:forEach items="${back_allProduct}" var="bp">
				<tr>
					<td>${bp.product_id }</td>
					<td>${bp.product_name }</td>
					<td>${bp.product_price }</td>
					<td>${bp.product_command_info }</td>
					<td>${bp.product_count }</td>
					<td>${bp.product_hit }</td>
					<td align="center"><a href="searchDetail.do?product_id=${bp.product_id }">查看详细信息</a></td>
					<td align="center"><a href="modifyProduct.do?product_id=${bp.product_id }">修改商品信息</a></td>
					<td align="center"><a href="deleteProduct.do?product_id=${bp.product_id }">删除该商品</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>