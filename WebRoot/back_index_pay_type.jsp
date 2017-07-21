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
				<a href="#">付款方式管理</a>
				<ul>
					<li>
						<a href="playPlan.html" target="frameBord">&nbsp;&nbsp;&nbsp;添加</a>
					</li>
					<li>
						<a href="playList.html" target="frameBord">&nbsp;&nbsp;&nbsp;修改</a>
					</li>
				</ul>
			</li>
		</ul>
		<iframe id="frameBord" name="frameBord" frameborder="0" width="100%"
			height="100%" src="site_back_Info.jsp"></iframe>
	</body>

</html>