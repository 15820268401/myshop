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
			产品详细信息
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					产品名称：
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_name}"/>
				</td>
			</tr>
			<tr>
				<th>
					产品市场价：
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_price}"/>
				</td>
			</tr>
			<tr>
				<th>
					产品会员价：
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_vip_price}"/>
				</td>
			</tr>
			<tr>
				<th>
					概要信息：
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_command_info}"/>
				</td>
			</tr>
			<tr>
				<th>
					产品库存量：
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_count}"/>
				</td>
			</tr>
			<tr>
				<th>
					产品点击率：
				</th>
				<td colspan="2">
					<c:out value="${back_productDetail.product_hit}"/>
				</td>
			</tr>
			<tr>
				<th>
					产品图片：
				</th>
				<td align="center">
					<img src="${back_productDetail.product_image_path}"/>
				</td>
				<td>
					图片路径：<c:out value="${back_productDetail.product_image_path}"/>
				</td>
			</tr>
			<tr>
				<th>
					产品类别：
				</th>
				<td colspan="2">
					${back_productDetail.productType.product_type_id }
				</td>
			</tr>
			
			<tr>
				<th>
					详细信息：
				</th>
				<td colspan="2">
				<c:out value="${back_productDetail.product_detail_info}"/>
				</td>
			</tr>
		
		</table>
		<center>
			<a href="back_modify_product.jsp">返回到列表</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="modifyProduct.do?product_id=${bp.product_id }">修改商品信息</a>
		</center>
	</body>
</html>