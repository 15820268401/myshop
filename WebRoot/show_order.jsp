<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print"
			href="./css/header2_setup.css" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print"
			href="./css/layout4_setup.css" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print"
			href="./css/layout4_text.css" />
		<link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
		<title>购 客 订 单</title>
	</head>

	<body>
		<div class="page-container">
			<div class="header">
				<div class="header-top">
					<a class="sitelogo" href="index.do" title="Go to Start page"></a>
					<div class="sitename">
						<h1>
							<a href="index.do" title="Go to Start page">SEVERUS&bull;SHOP<span
								style="font-weight: normal; font-size: 50%;">&nbsp;购客之家</span>
							</a>
						</h1>
						<h2>
							********************************************
						</h2>
					</div>

					<!-- Navigation Level 0 -->
					<div class="nav0">
						<ul>
							<li>
								<a href="#" title="Pagina home in China"><img
										src="./img/china.bmp" alt="Image description" />
								</a>
							</li>
							<li>
								<a href="#" title="Homepage auf American"><img
										src="./img/usa.bmp" alt="Image description" />
								</a>
							</li>
						</ul>
					</div>

					<!-- Navigation Level 1 -->
					<div class="nav1">
						<ul>
							<li>
								<a href="index.do" title="Go to Start page">主页</a>
							</li>
							<li>
								<a href="showAll.do">全部商品</a>
							</li>
							<li>
								<a href="#">购客论坛</a>
							</li>
							<li>
								<a href="buy.do?method=add">我的购物车</a>
							</li>
							<li>
								<a href="about.do">关于</a>
							</li>
						</ul>
					</div>
				</div>

				<div class="header-middle">

					<div class="sitemessage">
						<h1>
							简单 &bull; 方便 &bull; 时尚 &bull; 便捷
						</h1>
						<h2>
							<a href="buy.do?method=add"><img src="./img/shoppingcart.png"></img>
							</a>
						</h2>
						<h2>
							&rsaquo;&rsaquo;&nbsp;我的购物车
						</h2>
					</div>
				</div>

				<div class="header-breadcrumbs">
					<ul>
						<li>
							<a href="index.do" title="Go to Start page">主页</a>
						</li>
						<li>
							<a href="showAll.do">全部商品</a>
						</li>
						<li>
							<a href="#">购客论坛</a>
						</li>
						<li>
							<a href="buy.do?mehtod=add">我的购物车</a>
						</li>
						<li>
							<a href="advice.do">我要投诉</a>
						</li>
						<li>
							<a href="about.do">关于</a>
						</li>
					</ul>
				</div>
			</div>

			<hr />
			<div class="">
				<h1>
					&nbsp;&nbsp;请核实您的定单
				</h1>
				<br />
				<font color="red">&nbsp;&nbsp;&nbsp;&nbsp;* 请尽快付款，收到货款后我们会以迅雷不及掩耳盗铃之势将货物送到！</font>
				<br />
				<br />
				<center>
				<table border="1">
					<tr>
						<td><font size="5">用户名</font></td>
						<td><font size="5">${user.username }</font></td>
					</tr>
					<tr>
						<td><font size="5">订单号</font></td>
						<td><font size="5">${orders.order_num}</font></td>
					</tr> 
					<tr>
						<td><font size="5">发货地址</font></td>
						<td><font size="5">${orders.send_place}</font></td>
					</tr>
					<tr>
						<td><font size="5">订单日期</font></td>
						<td><font size="5">${orders.order_time }</font></td>
					</tr>
					<tr>
						<td><font size="5">订单状态</font></td>
						<td><font size="5">${orders.order_status }</font></td>
					</tr>
					<tr>
						<td><font size="5">收货人</font></td>
						<td><font size="5">${orders.send_man }</font></td>
					</tr>
					<tr>
						<td><font size="5">收货人电话</font></td>
						<td><font size="5">${orders.send_phone }</font></td>
					</tr>
					<tr>
						<td><font size="5">收货人邮箱</font></td>
						<td><font size="5">${orders.send_email }</font></td>
					</tr>
					<tr>
						<td><font size="5">备注</font></td>
						<td><font size="5">${orders.bak }</font></td>
					</tr>
				</table>
				</center>
			</div>
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
		</div>

		<center>
			<div class="footer">
				<p>
					Copyright &copy; 2009 Severus Shop | All Rights Reserved
				</p>
				<p class="credits">
					Design by Severus.
				</p>
			</div>
		</center>

	</body>
</html>