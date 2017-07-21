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
			查询修改删除产品类型
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>产品类型编号</th>
				<th>产品类型名称</th>
				<th>修改产品类型</th>
				<th>删除该产品类型</th>
			</tr>
			<c:forEach items="${back_productTypeList}" var="bu">
				<tr>
					<td>${bu.product_type_id}</td>
					<td>${bu.product_type_name }</td>
					<td align="center"><a href="go_modifyProductTypeDetail.do?product_type_id=${bu.product_type_id }">修改产品类型</a></td>
					<td align="center"><a href="deleteProductType.do?product_type_id=${bu.product_type_id }">删除该产品类型</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>