
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="jf" uri="/WEB-INF/tlds/jform.tld" %>
<!DOCTYPE html>
<style>
	html, body{
	  height:100%;
	  margin:0;
	  display: flex;
	  flex-direction: column;
	  text-align: center;
	}
	
	.card-body{
		background-color: #7DB0B3;
		border-radius: 17px;
		width:600px;
		height:350px;
		text-align: center;
		justify-content: center;
		-webkit-box-shadow: 1px 1px 6px black;
  		-moz-box-shadow: 1px 1px 6px black;
	}
	.forma{
		display:flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		height:100%;
	}
	
	.registerLabel{
	 	font-size:35px;
	 	color: black;
	 	font-weight: bold;
	 	
	 }
	
	 
	 .container{
	 
	 padding:50px;
	 height:100%;
	 }
	 
	 .tabla{
		margin-top:10px;
		margin-bottom:10px;
		table-layout: fixed; 
		width: 100%; 
		color: white;
		text-align: left;
		border-collapse: separate;
  		border-spacing: 10px 5px;
  		font-weight: bolder;
  		font-size: 16px;
	}
	
	
	.pagination > li > a
		{
		    background-color: white;
		    color: #5C7EAE;
		}
		
		.pagination > li > a:focus,
		.pagination > li > a:hover,
		.pagination > li > span:focus,
		.pagination > li > span:hover
		{
		    color: white;
		    background-color: #5C7EAE;
		    border-color: #5C7EAE;
		}
		
		.pagination > .active > a
		{
		    color: white;
		    background-color: #5C7EAE !Important;
		    border: solid 1px #5C7EAE !Important;
		}
		
		.pagination > .active > a:hover
		{
		    background-color: #5C7EAE !Important;
		    border: solid 1px #5C7EAE;
		}
	 
</style>
<html lang="en">
<head>
 <%@include file="/WEB-INF/jsp/include-css.jsp" %>
 <%@include file="/WEB-INF/jsp/include-js.jsp" %>
    <body class="skin-megna fixed-layout" class="vh-100" style="background-color: white;">
    <%@include file="/WEB-INF/jsp/navbars/register_navbar.jsp" %>
	  <div class="container">
	    <div class="forma">
	      <div >
	        <div class="card">
	        <label class="registerLabel" for="registerLabel">SALUDPLUS</label>	
	          <div class="card-body " >
				<form name='loginForm' action="${pageContext.request.contextPath}/UserRegister" method='GET' id="login-form" autocomplete="off" >
				<table class="tabla">
				  <tr>
				    <td style="width:40%;">Nombre Completo:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="on" placeholder="Ingrese su nombre completo" name="user_name" autocomplete="off">
		            	</div>
					</td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Correo Electrónico:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="" placeholder="Ingrese su  correo electronico" name="user_email" autocomplete="off">
		            	</div>
					</td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Teléfono:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="" placeholder="Ingrese su  numero de contacto" name="user_phone" autocomplete="off">
		            	</div>				    
				    </td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Residencia:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="" placeholder="Ingrese su lugar de residencia" name="user_residence" autocomplete="off">
		            	</div>				    
				    </td>
				  </tr>
				</table>
	            <div class="form-outline mb-3">
					<nav  aria-label="...">
					  <ul class="pagination justify-content-center">
					    <li class="page-item disabled">
					      <a class="page-link" href="#" tabindex="-1">Previous</a>
					    </li>
					    <li class="page-item active">
					      <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/UserRegister2">2</a></li>
					    <li class="page-item">
					      <a class="page-link"  href="${pageContext.request.contextPath}/UserRegister2">Next</a>
					    </li>
					  </ul>
					</nav>	              
	            </div>
	          </div>
	        </div>
	     	</form>  
	      </div>
	    </div>
	  </div>
	  <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 </body>
   </html>