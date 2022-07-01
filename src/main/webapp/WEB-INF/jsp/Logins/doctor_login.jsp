
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
		height:400px;
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
	
	.img-login{
		 width:180px;
		 height:160px;
	 }
	 
	 .container{
	 
	 padding:50px;
	 height:100%;
	 }
	 .options{
	     display:flex; 
	     justify-content: center; 
	 }
	 
	 .option2{
	     margin-bottom:10px;
	     margin-top: 30px;
	     margin-left: 0px;
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
    <%@include file="/WEB-INF/jsp/navbars/doctor_login_navbar.jsp" %>
	  <div class="container">
	    <div class="forma">
	      <div >
	        <div class="card">
	          <div class="card-body " >
				<form name='loginForm' action="${pageContext.request.contextPath}/DoctorIndex" method='GET' id="login-form" autocomplete="off" >
	            <img src="<c:url value='/resources/img/logoblack.png'/>"  class="img-login" alt="LOGO" />
	
	            <div class="form-outline mb-3">
	              <input class="form-control col-12 col-m-6 col-lg-8 " type="text" required="" placeholder="Ingrese du DUI" name="user" autocomplete="off">
	            </div>
	
	            <div class="form-outline mb-3">
	              <input class="form-control col-12 col-m-6 col-lg-8" type="password" required="" placeholder="Ingrese su contraseña" name="pass" autocomplete="new-password">
	            </div>
	
	            <div class="options">
                    <a href="${pageContext.request.contextPath}/EmailRecover"  class="option2" id="to-recover" ></i>Olvidé mi contraseña</a> 
	            </div>  
	          </div>
	        </div>
	     	  <button class="btn-submit" type="submit">Ingresar</button>  
	     	</form>  
	      </div>
	    </div>
	  </div>
	  <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 </body>
   </html>