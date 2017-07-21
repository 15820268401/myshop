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
			修改产品信息
		</h2>
		<form action="modifyingProduct.do" method="post"> 
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					产品名称：
				</th>
				<td colspan="2">
					<input type="text" name="product_name" value="${back_modifyList.product_name}">
				</td>
			</tr>
			<tr>
				<th>
					产品市场价：
				</th>
				<td colspan="2">
					<input type="text" name="product_price" value="${back_modifyList.product_price}">
				</td>
			</tr>
			<tr>
				<th>
					产品会员价：
				</th>
				<td colspan="2">
					<input type="text" name="product_vip_price" value="${back_modifyList.product_vip_price}">
				</td>
			</tr>
			<tr>
				<th>
					概要信息：
				</th>
				<td colspan="2">
					<input type="text" name="product_command_info" value="${back_modifyList.product_command_info}">
				</td>
			</tr>
			<tr>
				<th>
					产品库存量：
				</th>
				<td colspan="2">
					<input type="text" name="product_count" value="${back_modifyList.product_count}" />
				</td>
			</tr>
			<tr>
				<th>
					产品图片：
				</th>
				<td align="center">
					<img src="${back_modifyList.product_image_path}"/>
				</td>
				<td>
					图片路径：<input type="text" name="product_image_path"  value="${back_modifyList.product_image_path}">
					<a href="back_modifyPicture.do">修改产品图片</a>
				</td>
			</tr>
			<tr>
				<th>
					产品类别：
				</th>
				<td colspan="2">
					<input type="text" name="product_type_id" value="${back_modifyList.productType.product_type_id }">
				</td>
			</tr>
			<tr>
				<th>
					详细信息：
				</th>
				<td colspan="2">
					<input type="text" name="product_detail_info" value="${back_modifyList.product_detail_info}">
				</td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="提交"></td>
				<td colspan="2" align="center"><input type="reset" value="重置"></td>
			</tr>
		
		</table>
		</form>
	</body>
</html>