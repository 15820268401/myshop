<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>后台主页</title>
		<link href="./css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="./css/js.js"></script>
		<style type="text/css">
<!--
.STYLE1 {
	color: #999999
}
-->
</style>
	</head>
	<body id="index">
		<h1 class="STYLE1">
			Severus网络商城<br>&nbsp;&nbsp;后台管理系统
		</h1>
		<ul id="globalNav">
			<li>
				<a href="#">订单管理</a>
				<ul>
					<li>
						<a href="go_edit_orderItem.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑订单</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">产品管理</a>
				<ul>
					<li>
						<a href="back_add_product.jsp" target="frameBord">&nbsp;&nbsp;&nbsp;添加产品</a>
					</li>
					<li>
						<a href="back_modify_product.jsp" target="frameBord">&nbsp;&nbsp;&nbsp;修改产品信息</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">用户管理</a>
				<ul>
					<li>
						<a href="userManager.do" target="frameBord">&nbsp;&nbsp;&nbsp;用户操作</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">管理员管理</a>
				<ul>
					<li>
						<a href="back_addManager.do" target="frameBord">&nbsp;&nbsp;&nbsp;添加管理员</a>
					</li>
					<li>
						<a href="back_modifyManager.do" target="frameBord">&nbsp;&nbsp;&nbsp;修改管理员</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">付款方式管理</a>
				<ul>
					<li>
						<a href="go_addPayType.do" target="frameBord">&nbsp;&nbsp;&nbsp;添加付款方式</a>
					</li>
					<li>
						<a href="go_modifyPayType.do" target="frameBord">&nbsp;&nbsp;&nbsp;修改付款方式</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">产品类型管理</a>
				<ul>
					<li>
						<a href="go_addProductType.do" target="frameBord">&nbsp;&nbsp;&nbsp;添加产品类型</a>
					</li>
					<li>
						<a href="go_modifyProductType.do" target="frameBord">&nbsp;&nbsp;&nbsp;修改产品类型</a>
					</li>
				</ul>
			</li>
			
		</ul>
		<iframe id="frameBord" name="frameBord" frameborder="0" width="100%"
			height="100%" src="site_back_Info.jsp"></iframe>
	</body>

</html>