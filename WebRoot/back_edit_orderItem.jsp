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
			查询修改删除订单项
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>订单项编号</th>
				<th>购买数量</th>
				<th>商品主键</th>
				<th>订单主键</th>
				<th>查询订单</th>
				<th>查询商品</th>
			</tr>
			<c:forEach items="${bakc_orderItemList}" var="bu">
				<tr>
					<td>${bu.order_item_id}</td>
					<td>${bu.sale_count }</td>
					<td>${bu.product.product_id }</td>
					<td>${bu.orders.order_id }</td>
					<td align="center"><a href="go_queryOrderDetail.do?order_id=${bu.orders.order_id }">查询订单</a></td>
					<td align="center"><a href="go_queryProductDetail.do?product_id=${bu.product.product_id }">查询商品</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>