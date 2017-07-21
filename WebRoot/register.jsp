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
  <title>购 客 注 册</title>
   <Script type="text/javascript">
	function check() {
		if(document.aaa.password1.value != document.aaa.password2.value) {
			alert("警告！密码与确认密码不一致");
			return false;
		}
		return true;
	}
  </Script>
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
        <div >
        <h1>&nbsp;&nbsp;欢迎您成为我们的一员</h1><br/>                           
          <font color="red">&nbsp;&nbsp;&nbsp;&nbsp;* 请如实填写下述信息，以免出错</font><br/><br/>
          
          <form name="aaa" action="registing.do" method="post" onsubmit="return check();">
          
          <table cellspacing="15%" width="90%">
          	
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</th>
          		<td><input type="text" name="username" size="35"/></td>
          		<td><html:errors property="username"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</th>
          		<td><input type="password" name="password1" size="39"/></td>
          		<td><html:errors property="password1"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;确认密码：</th>
          		<td><input type="password" name="password2" size="39"/></td>
          		<td><html:errors property="password2"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;真实姓名：</th>
          		<td><input type="text" name="truename" size="35"/></td>
          		<td><html:errors property="truename"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;证件类型：</th>
          		<td>
          			<select name="certificate_type" size="1">
          				<option value="身份证" selected="selected">------------身 份 证------------</option>
          				<option value="学生证">------学 生 证------</option>
          				<option value="工作证">------工 作 证------</option>
          				<option value="其他">------其 &nbsp;&nbsp; 他------</option>
          			</select>
          		</td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;证件号码：</th>
          		<td><input type="text" name="certificate_num" size="35"/></td>
          		<td><html:errors property="certificate_num"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</th>
          		<td>&nbsp;&nbsp;&nbsp;&nbsp;
          			男：<input type="radio" name="sex" value="男">
          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          			女：<input type="radio" name="sex" value="女"> 
          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          			其他：<input type="radio" name="sex" value="其他"> 
          		</td>
          		<td><html:errors property="sex"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;详细住址：</th>
          		<td><input type="text" name="address" size="35"/></td>
          		<td><html:errors property="address"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;联系方式：</th>
          		<td><input type="text" name="tel" size="35"/></td>
          		<td><html:errors property="tel"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;地址邮编：</th>
          		<td><input type="text" name="zip" size="35"/></td>
          		<td><html:errors property="zip"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;Email：</th>
          		<td><input type="text" name="email" size="35"/></td>
          		<td><html:errors property="email"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;密码提示问题：</th>
          		<td><input type="text" name="password_hint" size="35"/></td>
          		<td><html:errors property="password_hint"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;提示问题答案：</th>
          		<td><input type="text" name="password_result" size="35"/></td>
          		<td><html:errors property="password_result"/></td>
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