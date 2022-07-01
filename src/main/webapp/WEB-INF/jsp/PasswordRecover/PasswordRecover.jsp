
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
		height:200px;
		text-align: center;
		align-items: center;
		flex-direction: column;
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
	
	 .container{
	 
		 padding:50px;
		 height:100%;
	 }
	 
	 .label-email{
	 	font-size:25px;
	 	color: white;
	 	
	 }
	
	.form-control{
	    font-size: 16px;
		margin-top:10px;
		height:80px;
		
	}
	 .btn-submit {
	      margin-top: 10px;
	      padding:5px;
		  font-size: 15px;
		  padding: 0.5em 1.2em;
		  background: #5C7EAE;
		  border: 2px solid;
		  border-color: #5C7EAE;
		  position: relative;
		  border-radius: 2px;
	      color: white;
	      transition: all 0.5s ease;
		}
		.btn-submit:hover {
		
	      border: 2px solid;
		  border-color: #7DB0B3;
		  background-color: #7DB0B3;
		}
	 
</style>
<html lang="en">
<head>
 <%@include file="/WEB-INF/jsp/include-css.jsp" %>
 <%@include file="/WEB-INF/jsp/include-js.jsp" %>
    <body class="skin-megna fixed-layout" class="vh-100" style="background-color: white;">
    <%@include file="/WEB-INF/jsp/navbars/navbar.jsp" %>
	  <div class="container">
	    <div class="forma">
	      <div >
	        <div class="card">
	          <div class="card-body " >
				<form name='PasswordForm' action="${pageContext.request.contextPath}/user_login" method='GET' id="password-form" autocomplete="off" >
	            <div class="form-outline mb-3">
	              <label class="label-email" for="email">Digite su nueva contraseña:</label>	
	              <input class="form-control col-12 col-m-6 col-lg-10 " type="text"   required="" name="email" autocomplete="off">
	            </div>
	          </div>
	        </div>
	     	  <button class="btn-submit" type="submit">Cambiar Contraseña</button>  
	     	</form>  
	      </div>
	    </div>
	  </div>
	  <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 </body>
   </html>