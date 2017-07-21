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
  <title>�� �� ע ��</title>
   <Script type="text/javascript">
	function check() {
		if(document.aaa.password1.value != document.aaa.password2.value) {
			alert("���棡������ȷ�����벻һ��");
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
          <h1><a href="index.do" title="Go to Start page">SEVERUS&bull;SHOP<span style="font-weight:normal;font-size:50%;">&nbsp;����֮��</span></a></h1>
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
           <li><a href="index.do" title="Go to Start page">��ҳ</a></li>
            <li><a href="showAll.do">ȫ����Ʒ</a></li>
            <li><a href="#">������̳</a></li>	
            <li><a href="buy.do?method=add">�ҵĹ��ﳵ</a></li>																	
            <li><a href="about.do">����</a></li>
          </ul>
        </div>              
      </div>
      
      <div class="header-middle">    
   
        <div class="sitemessage">
          <h1>�� &bull; ���� &bull; ʱ�� &bull; ��� </h1>
          <h2><a href="buy.do?method=add"><img src="./img/shoppingcart.png"></img></a></h2>
          <h2>&rsaquo;&rsaquo;&nbsp;�ҵĹ��ﳵ</h2>
        </div>       
      </div>
      
      <div class="header-breadcrumbs">
        <ul>
          <li><a href="index.do" title="Go to Start page">��ҳ</a></li>
            <li><a href="showAll.do">ȫ����Ʒ</a></li>
            <li><a href="#">������̳</a></li>	
            <li><a href="buy.do?method=add">�ҵĹ��ﳵ</a></li>
          <li><a href="advice.do">��ҪͶ��</a></li>																	
            <li><a href="about.do">����</a></li>
        </ul>
      </div>
    </div>
    
    <hr/>                    
        <div >
        <h1>&nbsp;&nbsp;��ӭ����Ϊ���ǵ�һԱ</h1><br/>                           
          <font color="red">&nbsp;&nbsp;&nbsp;&nbsp;* ����ʵ��д������Ϣ���������</font><br/><br/>
          
          <form name="aaa" action="registing.do" method="post" onsubmit="return check();">
          
          <table cellspacing="15%" width="90%">
          	
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ƣ�</th>
          		<td><input type="text" name="username" size="35"/></td>
          		<td><html:errors property="username"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�룺</th>
          		<td><input type="password" name="password1" size="39"/></td>
          		<td><html:errors property="password1"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;ȷ�����룺</th>
          		<td><input type="password" name="password2" size="39"/></td>
          		<td><html:errors property="password2"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;��ʵ������</th>
          		<td><input type="text" name="truename" size="35"/></td>
          		<td><html:errors property="truename"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;֤�����ͣ�</th>
          		<td>
          			<select name="certificate_type" size="1">
          				<option value="����֤" selected="selected">------------�� �� ֤------------</option>
          				<option value="ѧ��֤">------ѧ �� ֤------</option>
          				<option value="����֤">------�� �� ֤------</option>
          				<option value="����">------�� &nbsp;&nbsp; ��------</option>
          			</select>
          		</td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;֤�����룺</th>
          		<td><input type="text" name="certificate_num" size="35"/></td>
          		<td><html:errors property="certificate_num"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</th>
          		<td>&nbsp;&nbsp;&nbsp;&nbsp;
          			�У�<input type="radio" name="sex" value="��">
          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          			Ů��<input type="radio" name="sex" value="Ů"> 
          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          			������<input type="radio" name="sex" value="����"> 
          		</td>
          		<td><html:errors property="sex"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;��ϸסַ��</th>
          		<td><input type="text" name="address" size="35"/></td>
          		<td><html:errors property="address"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;��ϵ��ʽ��</th>
          		<td><input type="text" name="tel" size="35"/></td>
          		<td><html:errors property="tel"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;��ַ�ʱࣺ</th>
          		<td><input type="text" name="zip" size="35"/></td>
          		<td><html:errors property="zip"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;Email��</th>
          		<td><input type="text" name="email" size="35"/></td>
          		<td><html:errors property="email"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;������ʾ���⣺</th>
          		<td><input type="text" name="password_hint" size="35"/></td>
          		<td><html:errors property="password_hint"/></td>
          	</tr>
          	<tr>
          		<th>&nbsp;&nbsp;&nbsp;&nbsp;��ʾ����𰸣�</th>
          		<td><input type="text" name="password_result" size="35"/></td>
          		<td><html:errors property="password_result"/></td>
          	</tr>
          	<tr align="center">
          		<td></td>
          		<td><input type="submit" value="�� ��"/>
          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          		<input type="reset" value="�� ��"/></td>
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