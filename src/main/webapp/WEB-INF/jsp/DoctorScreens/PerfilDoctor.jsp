
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
	
	.img-man{
		 width:100px;
		 height:90px;
	 }
	 
	 .container{
	 
	 padding:50px;
	 height:100%;
	 }
	
	.tabla{
		margin-top:10px;
		padding-left:50px;
		table-layout: fixed; 
		width: 100%; 
		color: white;
		text-align: left;
		border-collapse: separate;
  		border-spacing: 10px 20px;
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
    <%@include file="/WEB-INF/jsp/navbars/doctor_navbar.jsp" %>
	  <div class="container">
	    <div class="forma">
	      <div>
	        <div class="card">
	          <div class="card-body " >
				<form name='ProfileForm' action="${pageContext.request.contextPath}/doctor_login" method='GET' id="profile-form" autocomplete="off" >
	            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
				<table class="tabla">
				  <tr>
				    <td>Nombre Completo:</td>
				    <td>José David Reyes Ayala</td>
				  </tr>
				  <tr>
				    <td>Cargo:</td>
				    <td>Doctor</td>
				  </tr>
				  <tr>
				    <td>Especialidad:</td>
				    <td>Odontologo</td>
				  </tr>
				  <tr>
				    <td>Teléfono:</td>
				    <td>74110081</td>
				  </tr>
				  <tr>
				    <td>Correo Electrónico:</td>
				    <td>jreyes@gmail.com</td>
				  </tr>
				  <tr>
				    <td>Residencia:</td>
				    <td>Calle A, Colonia B, San Salvador</td>
				  </tr>
				</table>
	          </div>
	        </div>
	     	  <button class="btn-submit" type="submit">Cerrar Sesion</button>  
	     	</form>  
	      </div>
	    </div>
	  </div>
	  <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 </body>
   </html>