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
			查询修改删除付款方式
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>付款方式编号</th>
				<th>付款方式名称</th>
				<th>修改付款方式</th>
				<th>删除该付款方式</th>
			</tr>
			<c:forEach items="${back_payTypeList}" var="bu">
				<tr>
					<td>${bu.pay_type_id}</td>
					<td>${bu.pay_type_name }</td>
					<td align="center"><a href="go_modifyPayTypeDetail.do?pay_type_id=${bu.pay_type_id }">修改付款方式</a></td>
					<td align="center"><a href="deletePayType.do?pay_type_id=${bu.pay_type_id }">删除该付款方式</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>