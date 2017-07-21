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
			查询订单
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>订单编号</th>
				<th>订单号</th>
				<th>发货地址</th>
				<th>订单日期</th>
				<th>订单状态</th>
				<th>收货人</th>
				<th>收货人邮编</th>
				<th>收货人电话</th>
				<th>收货人邮箱</th>
				<th>备注</th>
				<th>用户主键</th>
				<th>付款方式主键</th>
			</tr>
			<c:forEach items="${back_order}" var="bu">
				<tr>
					<td>${bu.order_id}</td>
					<td>${bu.send_place }</td>
					<td>${bu.order_time}</td>
					<td>${bu.order_status }</td>
					<td>${bu.send_zip }</td>
					<td>${bu.send_phone }</td>
					<td>${bu.send_email }</td>
					<td>${bu.bak }</td>
					<td>${bu.user.user_id }</td>
					<td>${bu.payType.pay_type_id }</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>