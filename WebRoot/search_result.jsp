<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/header2_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_text.css" />
  <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
  <title>搜 索 产 品 结 果</title>
</head>

<body>
  <div class="page-container">
    <div class="header">
      <div class="header-top">
         <div class="sitename">
          <h1><a href="index.do" title="Go to Start page">SEVERUS&bull;SHOP<span style="font-weight:normal;font-size:50%;">&nbsp;购客之家</span></a></h1>
          <h2>********************************************</h2>
        </div>

        <!-- Navigation Level 0 -->
        <div class="nav0">
          <ul>
             <li><a href="#" title="Pagina home in China"><img src="./img/china.bmp" alt="Image description" /></a></li>
            <li><a href="#" title="Homepage auf American"><img src="./img/usa.bmp" alt="Image description" /></a></li>
          </ul>
        </div>			

        <!-- Navigation Level 1 -->
        <div class="nav1">
          <ul>
           <li><a href="index.do" title="Go to Start page">主页</a></li>
            <li><a href="showAll.do">全部商品</a></li>
            <li><a href="#">购客论坛</a></li>	
            <li><a href="buy.do?method=add">我的购物车</a></li>																	
            <li><a href="about.do">关于</a></li>
          </ul>
        </div>              
      </div>
      
      <div class="header-middle">    
   
        <div class="sitemessage">
          <h1>简单 &bull; 方便 &bull; 时尚 &bull; 便捷 </h1>
          <h2><a href="buy.do?method=add"><img src="./img/shoppingcart.png"></img></a></h2>
          <h2>&rsaquo;&rsaquo;&nbsp;我的购物车</h2>
        </div>       
      </div>
      
      <div class="header-breadcrumbs">
        <ul>
          <li><a href="index.do" title="Go to Start page">主页</a></li>
            <li><a href="showAll.do">全部商品</a></li>
            <li><a href="#">购客论坛</a></li>	
            <li><a href="buy.do?method=add">我的购物车</a></li>
          <li><a href="advice.do">我要投诉</a></li>																	
            <li><a href="about.do">关于</a></li>
        </ul>
      </div>
    </div>
    
    <hr/>                    
        <div>
        <h1>&nbsp;&nbsp;搜 索 产 品 结 果 列 表</h1><br/>                           
          <center>
          
          <table border="1" align="center" width="90%">
          	<tr>
          		<th>
          			<font size="4"> 商品图片 </font>
          		</th>
          		<th>
          			<font size="4"> 商品名称 </font>
          		</th>
          		<th>
          			<font size="4"> 商品类型 </font>
          		</th>
          		<th>
          			<font size="4"> 商品市场价 </font>
          		</th>
          		<th>
          			<font size="4"> 商品会员价 </font>
          		</th>
          		<th>
          			<font size="4"> 商品点击率 </font>
          		</th>
          		<th>
          			<font size="4"> 商品概要 </font>
          		</th>
          		<th>
          			<font size="4"> 商品详细信息 </font>
          		</th>
          		<th>
          			<font size="4"> 购买该商品 </font>
          		</th>
          	</tr>
          	<c:forEach items="${productList3}" var="p">
          
	          	<tr align="center">
	          		<td>
	          			<font size="2"><img src="${p.product_image_path }"></font>
	          		</td>
	          		<td>
	          			<font size="2">${p.product_name}</font>
	          		</td>
	          		<td>
	          			<font size="2">${p.productType.product_type_id}</font>
	          		</td>
	          		<td>
	          			<font size="2">${p.product_price }</font>
	          		</td>
	          		<td>
	          			<font size="2">${p.product_vip_price }</font>
	          		</td>
	          		<td>
	          			<font size="2">${p.product_hit }</font>
	          		</td>
	          		<td>
	          			<font size="2">${p.product_command_info }</font>
	          		</td>
	          		<td>
	          			<a href="product_detail.do?product_id=${p.product_id }"><font size="2">查看详细信息</font></a>
	          		</td>
	          		<td>
	          			<a href="buy.do?method=add&product_id=${p.product_id }"><font size="2">添加到购物车</font></a>
	          		</td>
	          	</tr>
          	</c:forEach>
          </table>
          </center>
        </div>
		<br/><br/><br/><br/><br/><br/><br/>
      </div>
      
      <center>
	  	<div class="footer" >
	      <p>Copyright &copy; 2009 Severus Shop | All Rights Reserved</p>
	      <p class="credits">Design by.</p>
	    </div>
    </center>
   
</body>
</html>