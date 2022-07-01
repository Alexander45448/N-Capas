
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
		width:700px;
		height:500px;
		text-align: center;
		justify-content: center;
		-webkit-box-shadow: 1px 1px 6px black;
  		-moz-box-shadow: 1px 1px 6px black;
	}
	.forma{
		margin-top:50px;
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
    <%@include file="/WEB-INF/jsp/navbars/doctor_admin_navbar.jsp" %>
	  <div class="container">
	    <div class="forma">
	      <div >
	        <div class="card">
	        <div class="title-register"> 
				<label class="registerLabel" for="registerLabel">Agregar Usuario</label>
			</div>
	          <div class="card-body " >
				<form name='personalForm' action="${pageContext.request.contextPath}/AdminPersonal" method='GET' id="personal-form" autocomplete="off" >
				<table class="tabla">
				  <tr>
				    <td style="width:40%;">Digite nombre completo:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="on" placeholder="Ingrese nombre completo" name="user_name" autocomplete="off">
		            	</div>
					</td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Digite contraseña de cuenta:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="password" required="" placeholder="Ingrese  contraseña" name="user_password" autocomplete="off">
		            	</div>
					</td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Digite el cargo del empleado:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="" placeholder="Ingrese Cargo" name="user_position" autocomplete="off">
		            	</div>				    
				    </td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Digite la especialidad:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="" placeholder="Ingrese Especialidad" name="user_specialty" autocomplete="off">
		            	</div>				    
				    </td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Digite número de contacto:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
                                    <input class="form-control col-12 col-m-6 col-lg-13"  type="text" name="user_phone" id="telefono" />
                                    <script>
                                        $(document).ready(function () {
                                            $("#telefono").mask("9999-9999", {placeholder: "____-____", autoclear: true});
                                        });
                                    </script>
		            	</div>				    
				    </td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Digite correo electrónico:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="" placeholder="Ingrese correo electronico" name="user_email" autocomplete="off">
		            	</div>				    
				    </td>
				  </tr>
				  <tr>
				    <td style="width:40%;">Digite dirección de residencia:</td>
				    <td style="width:60%;">
						<div class="form-outline mb-3">
		                	<input class="form-control col-12 col-m-6 col-lg-13 " type="text" required="" placeholder="Ingrese lugar de residencia" name="user_residence" autocomplete="off">
		            	</div>				    
				    </td>
				  </tr>					  				  				  
				</table>
	          </div>
	        </div>
	        <button class="btn-submit" type="submit">Registrar</button> 
	     	</form>  
	      </div>
	    </div>
	  </div>
	  <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 </body>
   </html>