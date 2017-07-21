<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_setup.css" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="./css/layout4_text.css" />
  <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
  <title>Severus Shop</title>
</head>

<body>
  <!-- Main Page Container -->
  <div class="page-container">

   <!-- For alternative headers START PASTE here -->

    <!-- A. HEADER -->      
    <div class="header">
      
      <!-- A.1 HEADER TOP -->
      <div class="header-top">
        
        <!-- Sitelogo and sitename -->
        <a class="sitelogo" href="index.do" title="Go to Start page"></a>
        <div class="sitename">
          <h1><a href="go_back_login.do" title="Go to Start page">SEVERUS&bull;SHOP<span style="font-weight:normal;font-size:50%;">&nbsp;¹º¿ÍÖ®¼Ò</span></a></h1>
          <h2>********************************************</h2>
        </div>
    
        <!-- Navigation Level 0 -->
        <div class="nav0">
          <ul>
            <li><a href="langChange.do?lang=zh" title="Pagina home in China"><img src="./img/china.bmp" alt="Image description" /></a></li>
            <li><a href="langChange.do?lang=en" title="Homepage auf American"><img src="./img/usa.bmp" alt="Image description" /></a></li>
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
      
      <!-- A.2 HEADER MIDDLE -->
      <div class="header-middle">    
   
        <!-- Site message -->
        <div class="sitemessage">
          <h1><bean:message key="easy"/> &bull; <bean:message key="convenience"/> &bull; <bean:message key="fashion"/> &bull; <bean:message key="facility"/> </h1>
          <h2><a href="buy.do?method=add"><img src="./img/shoppingcart.png"></img></a></h2>
          <h2>&rsaquo;&rsaquo;&nbsp;<bean:message key="myshopping.cart"/></h2>
        </div>        
      </div>
      
      <!-- A.3 HEADER BOTTOM -->
      <div class="header-bottom">
      
        <div class="nav2">
	
          <ul>
            <li><a href="modify.do"><bean:message key="modify.user.info"/></a></li>
          </ul>
          
          <ul>
            <li><a href="#"><bean:message key="product.list"/><!--[if IE 7]><!--></a><!--<![endif]-->
              <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                 <c:forEach items="${productTypeList}" var="pt">
                  <li><a href="product_detail_by_type.do?product_type_id=${pt.product_type_id }">${pt.product_type_name }</a></li>
                 </c:forEach>                                 
                </ul>
              <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
          </ul>         

			 <ul>
            <li><a href="#"><bean:message key="product.hit"/><!--[if IE 7]><!--></a><!--<![endif]-->
              <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                 <c:forEach items="${productList2}" var="ph" end="5">
                 <li>
          		<a href="product_detail.do?product_id=${ph.product_id }">
          		${ph.product_name}
          		</a>
		    	</li>
		         </c:forEach>                          
                </ul>
              <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
          </ul>
          
          <ul>
            <li><a href="#"><bean:message key="user.score"/><!--[if IE 7]><!--></a><!--<![endif]-->
              <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                  <c:forEach items="${userList}" var="u">
         		<li><a href="#">${u.username } ${u.member_score }<bean:message key="user.score.count"/></a></li>
         		</c:forEach>                       
                </ul>
              <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
          </ul> 
       
        </div>
	  </div>

      <!-- A.4 HEADER BREADCRUMBS -->

      <!-- Breadcrumbs -->
      <div class="header-breadcrumbs">
        <ul>
          <li><a href="index.do"><bean:message key="index.page"/></a></li>
          <li><a href="showAll.do"><bean:message key="all.product"/></a></li>
          <li><a href="buy.do?method=add"><bean:message key="myshopping.cart"/></a></li>
          <li><a href="#"><bean:message key="goke.bbs"/></a></li>
          <li><a href="advice.do"><bean:message key="advice"/></a></li>
          <li><a href="about.do"><bean:message key="about"/></a></li>
        </ul>

        <!-- Search form -->                  
        <div class="searchform">
          <form action="search.do" method="get" class="form">
            <fieldset>
              <input value="<bean:message key="search.product"/>" name="field" class="field" />
              <input type="submit" value="GO!" name="button" class="button" />
            </fieldset>
          </form>
        </div>
      </div>
    </div>

    <div class="main">
 
      <div class="main-navigation">

        <div class="round-border-topright"></div>
        <h1 class="first"><bean:message key="product.list"/></h1>

        <dl class="nav3-grid">
        <c:forEach items="${productTypeList}" var="pt">
          <dt><a href="product_detail_by_type.do?product_type_id=${pt.product_type_id }">${pt.product_type_name }</a></dt>
		</c:forEach>
        </dl>                        

        <h1><bean:message key="user.service.phone"/><br/></h1>
        <img src="img/tel.gif"/>
        <table>
        	<tr>
        		<td><font size="4" color="#6495ED">0451-</font></td>
        	</tr>
        	<tr>
        		<td>
        			<font size="4" color="#6495ED">&nbsp;&nbsp;&nbsp;
        			&nbsp;&nbsp;89898989</font>
        		</td>
        	</tr>
        </table>
        
        <h1><bean:message key="show.new.product"/></h1>
        	<c:forEach items="${proList}" var="pr" begin="1" end="40">
				<p><a href="product_detail.do?product_id=${pr.product_id }">
					${pr.product_name }&nbsp;&nbsp;
					</a>
				</p>
			</c:forEach>
      </div>
 
      <!-- B.2 MAIN CONTENT -->
      <div class="main-content">
        
        <!-- Pagetitle -->
        <h1 class="pagetitle"><bean:message key="new.product"/></h1>

        <div class="column1-unit">
			<c:forEach items="${proList}" var="pr" begin="1" end="3">
			<table>
				<tr>
					<td rowspan="3"><img src="${pr.product_image_path }"/></td>
					<td><bean:message key="product.name"/>${pr.product_name }</td>
				</tr>
				<tr>
					<td><bean:message key="product_price"/>${pr.product_price }<bean:message key="yuan"/></td>
				</tr>
				<tr>
					<td><a href="product_detail.do?product_id=${pr.product_id }"><bean:message key="search.product.detail"/></a></td>
				</tr>
			</table>
			</c:forEach>
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="showAll.do"><bean:message key="show.more"/></a>
        </div>

		<h1 class="pagetitle"></h1>
        <h1 class="pagetitle"><bean:message key="most.value.product"/></h1>
        <div class="column1-unit">        
          <c:forEach items="${proList}" var="pr" begin="4" end="6">
			<table>
				<tr>
					<td rowspan="3"><img src="${pr.product_image_path }"/></td>
					<td><bean:message key="product.name"/>${pr.product_name }</td>
				</tr>
				<tr>
					<td><bean:message key="product_price"/>${pr.product_price }<bean:message key="yuan"/></td>
				</tr>
				<tr>
					<td><a href="product_detail.do?product_id=${pr.product_id }"><bean:message key="search.product.detail"/></a></td>
				</tr>
			</table>
			</c:forEach>
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="showAll.do"><bean:message key="show.more"/></a>
        </div>          

        <h1 class="pagetitle"></h1>
        <h1 class="pagetitle"><bean:message key="hot.product"/></h1>
        <div class="column1-unit">        
          <c:forEach items="${productList2}" var="pr" begin="1" end="3">
			<table>
				<tr>
					<td rowspan="3"><img src="${pr.product_image_path }"/></td>
					<td><bean:message key="product.name"/>${pr.product_name }</td>
				</tr>
				<tr>
					<td><bean:message key="product_price"/>${pr.product_price }<bean:message key="yuan"/></td>
				</tr>
				<tr>
					<td><a href="product_detail.do?product_id=${pr.product_id }"><bean:message key="search.product.detail"/></a></td>
				</tr>
			</table>
			</c:forEach>
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="showAll.do"><bean:message key="show.more"/></a>
        </div>          
        
      </div>

      <div class="main-subcontent">

        <div class="subcontent-unit-border">
          
          <h1><bean:message key="user.login"/></h1>
           <form action="logining.do" method="post">
            <table>
            	<tr>
            		<td><font color="#6495ED" size="4"><b><bean:message key="user.username"/></b></font></td>
            		<td><input type="text" name="username" size="12"/></td>
            	</tr><tr>
            		<td><font color="#6495ED" size="4"><b><bean:message key="user.password"/></b></font></td>
            		<td><input type="password" name="password" size="12"/></td>
            	</tr>
            	<tr>
            		<td><input type="submit" value="<bean:message key="ok"/>"/><input type="reset" value="<bean:message key="reset"/>"/></td>
            		<td align="center"><a href="help.do"><img src="./img/help.JPG"></a><a href="torigiste.do"><font size="2"><bean:message key="user.register"/></font></a></td>
            	</tr>
            </table>  
           </form>       
        </div>

        <div class="subcontent-unit-border">
          <div class="round-border-topleft"></div><div class="round-border-topright"></div>
          <h1><bean:message key="product.hit"/></h1>
          <c:forEach items="${productList2}" var="ph" end="15">
          	<p><a href="product_detail.do?product_id=${ph.product_id }">
          		${ph.product_name}&nbsp;&nbsp;&nbsp;&nbsp;${ph.product_hit }<bean:message key="person.count"/>
          		</a>
          	</p>
          </c:forEach>
        </div>
        
        <div class="subcontent-unit-border">
          <div class="round-border-topleft"></div><div class="round-border-topright"></div>
          <h1><bean:message key="product.salecount"/></h1>
          <c:forEach items="${saleCountList}" var="s" end="15">
          	<p><a href="product_detail.do?product_id=${s.product_id }">
          		${s.product_name}&nbsp;&nbsp;&nbsp;&nbsp;${s.product_sale_count}<bean:message key="count"/>
          		</a>
          	</p>
          </c:forEach>
        </div>

        <div class="subcontent-unit-border-orange">
          <div class="round-border-topleft"></div><div class="round-border-topright"></div>
          <h1 class="orange"><bean:message key="user.score"/></h1>
         	<c:forEach items="${userList}" var="u">
         		<p><a href="#">${u.username }</a>&nbsp;&nbsp;&nbsp;&nbsp;${u.member_score }<bean:message key="user.score.count"/></p>
         	</c:forEach>
        </div>

        <!-- Subcontent unit -->
        <div class="subcontent-unit-border-green">
          <div class="round-border-topleft"></div><div class="round-border-topright"></div>
          <h1 class="green"><bean:message key="site.hit"/></h1>
          <p><font size="4" color="blue"><bean:message key="now.have"/></font></p>
          <table>
          	<tr>
          		<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
          		<c:forEach items="${hitList}" var="hitbean">
          			<td>
          				<img src="./img/${hitbean.arrHit}.JPG"/>
          			</td>
          		</c:forEach>
          		<td><bean:message key="person.count"/></td>
          	</tr>
          </table>
          <p><font size="4" color="blue"><bean:message key="browser"/></font>
          	  <font size="6" color="red"><bean:message key="my.site"/></font></p>
        </div>
      </div>
    </div>
      
    <div class="footer"><p>Copyright &copy; 2009 Severus Shop | All Rights Reserved</p>
    <p class="credits">Design by Severus.</p>
    </div>      
  </div> 
  
</body>
</html>