<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%@ taglib  prefix="bean" uri="http://struts.apache.org/tags-bean"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/header2_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_text.css" />
  <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
  <title><bean:message key="user.login.fail"/></title>
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
           <li><a href="index.do" title="Go to Start page"><bean:message key="index.page"/></a></li>
            <li><a href="showAll.do"><bean:message key="all.product"/></a></li>
            <li><a href="#"><bean:message key="goke.bbs"/></a></li>	
            <li><a href="buy.do?method=add"><bean:message key="myshopping.cart"/></a></li>																	
            <li><a href="about.do"><bean:message key="about"/></a></li>
          </ul>
        </div>              
      </div>
      
      <div class="header-middle">    
   
        <div class="sitemessage">
          <h1><bean:message key="easy"/> &bull; <bean:message key="convenience"/> &bull; <bean:message key="fashion"/> &bull; <bean:message key="facility"/> </h1>
          <h2><a href="buy.do?method=add"><img src="./img/shoppingcart.png"></img></a></h2>
          <h2>&rsaquo;&rsaquo;&nbsp;<bean:message key="myshopping.cart"/></h2>
        </div>       
      </div>
      
      <div class="header-breadcrumbs">
        <ul>
          <li><a href="index.do" title="Go to Start page"><bean:message key="index.page"/></a></li>
            <li><a href="showAll.do"><bean:message key="all.product"/></a></li>
            <li><a href="#"><bean:message key="goke.bbs"/></a></li>	
            <li><a href="buy.do?method=add"><bean:message key="myshopping.cart"/></a></li>
          <li><a href="advice.do"><bean:message key="advice"/></a></li>																	
            <li><a href="about.do"><bean:message key="about"/></a></li>
        </ul>
      </div>
    </div>
    
    <hr/>                    
        <div >
        <h1>&nbsp;&nbsp;<bean:message key="welcom.joinus"/></h1><br/>                           
          <font color="red">&nbsp;&nbsp;&nbsp;&nbsp;<bean:message key="insure.info"/></font><br/><br/>
          
          <form action="modifying.do" method="post">
          
          <table cellspacing="15%" width="90%">
          	
          	<tr>
          		<th><bean:message key="user.register.username"/></th>
          		<td><input type="text" name="username" size="35" value="${user.username }"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.password"/></th>
          		<td><input type="password" name="password1" size="39"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.password"/></th>
          		<td><input type="password" name="password2" size="39"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.truename"/></th>
          		<td><input type="text" name="truename" size="35" value="${user.truename }"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.cartType"/></th>
          		<td>
          			<select name="certificate_type" size="1">
          				<option value="身份证" selected="selected"><bean:message key="user.register.idcard"/></option>
          				<option value="学生证"><bean:message key="user.register.studentcard"/></option>
          				<option value="工作证"><bean:message key="user.register.wordcard"/></option>
          				<option value="其他"><bean:message key="user.register.other"/></option>
          			</select>
          		</td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;<bean:message key="user.register.cardno"/></th>
          		<td><input type="text" name="certificate_num" size="35" value="${user.certificate_num }"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.sex"/></th>
          		<td>&nbsp;&nbsp;&nbsp;&nbsp;
          			<bean:message key="user.register.male"/><input type="radio" name="sex" value="男">
          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          			<bean:message key="user.register.female"/><input type="radio" name="sex" value="女"> 
          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          			<bean:message key="user.register.sexother"/><input type="radio" name="sex" value="其他"> 
          		</td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.address"/></th>
          		<td><input type="text" name="address" size="35" value="${user.address}"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.tel"/></th>
          		<td><input type="text" name="tel" size="35" value="${user.tel }"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.zip"/></th>
          		<td><input type="text" name="zip" size="35" value="${user.zip }"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;Email：</th>
          		<td><input type="text" name="email" size="35" value="${user.email }"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.password.hint"/></th>
          		<td><input type="text" name="password_hint" size="35" value="${user.password_hint }"/></td>
          	</tr>
          	<tr>
          		<th><bean:message key="user.register.hintresult"/></th>
          		<td><input type="text" name="password_result" size="35" value="${user.password_result }"/></td>
          	</tr>
          	<tr align="center">
          		<td></td>
          		<td><input type="submit" value="<bean:message key="ok"/>"/>
          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          		<input type="reset" value="<bean:message key="reset"/>"/></td>
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