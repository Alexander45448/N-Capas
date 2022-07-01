
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
		height:325px;
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
		
		.img{
		width: 45px;
		heigh: 45px;
		margin-top: 0px;
		margin-left: 0px;
		text-decoration: none;
		
		}
		
		a:hover{
		text-decoration: none;
		}
		
		.out-table{
		display: flex;
		flex-direction: row;
		text-align: center;
		justify-content: center;
		}
		
		.user-data{
		display: flex;
		flex-direction: column;
		text-align: left;
		justify-content: space-evenly;
		color: white;
		margin-left:30px;
		}
		
		h1{
		color: black;
		text-align: center;
		font-weight: bold;
		margin-bottom: 30px;
		margin-left: 340px;
		}
		
		.top{
		display: flex;
		flex-direction: row;
		justify-content: start;
		}
	 
</style>
<html lang="en">
<head>
 <%@include file="/WEB-INF/jsp/include-css.jsp" %>
 <%@include file="/WEB-INF/jsp/include-js.jsp" %>
    <body class="skin-megna fixed-layout" class="vh-100" style="background-color: white;">
    <%@include file="/WEB-INF/jsp/navbars/user_navbar.jsp" %>
	  <div class="container">
	  <div class="top">
	  <a href="${pageContext.request.contextPath}/checkUserAppointments"><img alt="back" src="<c:url value='/resources/assets/images/back.png'/>" class="img"></a>
	  <h1><b>Detalle de Cita</b></h1>
	  </div>
	  
	    <div class="forma">
	      <div>
	        <div class="card">
	          <div class="card-body ">
	          
               <div class="out-table">
               <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
               <div class="user-data">
               <h4>José David Reyes Ayala</h4>
               <h4>Calle A, Colonia B, San Salvador</h4>
               </div>
               </div>
               
				<table class="tabla">
				  <tr>
				    <td>Fecha de Cita:</td>
				    <td>12/05/2022</td>
				  </tr>
				  <tr>
				    <td>Hora de Cita:</td>
				    <td>13:00 pm.</td>
				  </tr>
				  <tr>
				    <td>Doctor Programado:</td>
				    <td>Dr. Juan Carlos Reyes</td>
				  </tr>
				  <tr>
				    <td>Especialidad:</td>
				    <td>Neurologia</td>
				  </tr>
				</table>
	          </div>
	        </div>  
	      </div>
	    </div>
	  </div>
	  <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 </body>
   </html>