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
  <title>我的购物车</title>
</head>

<body>
  <div class="page-container">
    <div class="header">
      <div class="header-top">
        <a class="sitelogo" href="index.do" title="Go to Start page"></a>
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
        <h1>&nbsp;&nbsp;您所购商品信息</h1><br/>                           
         <form action="buying.do" method="post">
         <table cellspacing="20%" align="center">
          	<tr>
	          	<th><font size="4">商品名称</font></th>
	          	<th><font size="4">商品数量</font></th>
	          	<th><font size="4">商品单价</font></th>
	          	<th><font size="4">购买商品</font></th>
          	</tr>
          	<c:forEach items="${productList1}" var="p">
	          	<tr >
	          		<td><font size="3">
	          			<input type="text" name="product_name" value="${p.product_name}"/>
	          		</font></td>
	          		<td><font size="3">
	          			<input type="text" name="sale_count" value="1">
	          		</font></td>
	          		<td><font size="3">
	          			<input type="text" name="product_price" value="${p.product_price }"/>
	          		</font></td>
	          		<td align="center">
	          			<input type="checkbox" name="product_id" value="${p.product_id}"/>
	          		</td>
	          	</tr>
          	</c:forEach>
          	<tr>
          		<td colspan="4" align="right"><input type="submit" value="提交购买商品信息"/></td>
          	</tr>
          </table>
          </form>
        </div>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
      </div>
      
      <center>
	  	<div class="footer" >
	      <p>Copyright &copy; 2009 Severus Shop | All Rights Reserved</p>
	      <p class="credits">Design by Severus.</p>
	    </div>
    </center>
   
</body>
</html>