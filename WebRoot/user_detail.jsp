<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>

<%@ taglib prefix="html"  uri="http://struts.apache.org/tags-html"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/header2_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_text.css" />
  <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
  <title>用 户 信 息 确 认</title>
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
        <div class="column1-unit">
        <h1>&nbsp;&nbsp;用 户 信 息 确 认</h1><br/>                           
          <font color="red">&nbsp;&nbsp;&nbsp;&nbsp;* 请认真核实下述信息，以免出错</font><br/><br/>
          
          <form action="user_detail.do" method="post">
          
          <table cellspacing="20%">
          	
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</th>
          		<td>&nbsp;&nbsp;<input type="text" name="username" value="${user.username }" size="35"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;真实姓名：</th>
          		<td>&nbsp;&nbsp;<input type="text" name="truename" value="${user.truename }" size="35"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;详细住址：</th>
          		<td>&nbsp;&nbsp;<input type="text" name="address" value="${user.address }" size="35"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;联系方式：</th>
          		<td>&nbsp;&nbsp;<input type="text" name="tel" value="${user.tel }" size="35"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;地址邮编：</th>
          		<td>&nbsp;&nbsp;<input type="text" name="zip" value="${user.zip }" size="35"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;Email：</th>
          		<td>&nbsp;&nbsp;<input type="text" name="email" value="${user.email }" size="35"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</th>
          		<td>&nbsp;&nbsp;<textarea name="bak" cols="35" rows="4"></textarea></td>
          	</tr>
          	<tr align="center">
          		<td></td>
          		<td><input type="submit" value="提 交"/>
          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          		<input type="reset" value="重 置"/></td>
          		<td></td>
          	</tr>
          </table>
          </form>
        </div>

      </div>
      
      <center>
	  	<div class="footer" >
	      <p>Copyright &copy; 2009 Severus Shop | All Rights Reserved</p>
	      <p class="credits">Design by Severus.</p>
	    </div>
    </center>
   
</body>
</html>