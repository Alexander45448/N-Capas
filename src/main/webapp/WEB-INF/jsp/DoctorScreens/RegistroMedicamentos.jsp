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
		width:1000px;
		height:450px;
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
	
	 
	 .container{
	 
	 padding:50px;
	 height:100%;
	 }
	
	.tabla{
		margin-top:10px;
		padding:50px;
		width: 100%;
		heigh: 100%; 
		color: black;
		text-align: center;
		background-color: white;
	}
	
	table, td{
	    border: 1px solid gray;
	}
	 
	 .card-body input {
	      margin-left:5px;
		  background: #FF0000;
		  border: 2px solid;
		  border-color: #5C7EAE;
		  position: relative;
		  border-radius: 5px;
	      color: white;
	      transition: all 0.5s ease;
		}
		
		
		.card-body img{
		width: 25px;
		heigh: 25px;
		margin-top: 0px;
		margin-left: 5px;
		
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
		text-align: center;
		justify-content: space-evenly;
		color: white;
		}

		
		h1{
		color: black;
		text-align: center;
		font-weight: bold;
		margin-bottom: 20px;
		margin-top: 10px;
		}
		
		.img{
		width: 45px;
		heigh: 45px;
		margin-left:-80px;
		}
		.top{
		display: flex;
		flex-direction: row;
		justify-content: start;
		}
		
		td{
		padding: 31px;
		}
		
		.pagination > li > a
		{
			margin-top:10px;
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
    <%@include file="/WEB-INF/jsp/navbars/doctor_navbar.jsp" %>
	  <div class="container">
	  <a href="${pageContext.request.contextPath}/prescribeMedicine2"><img alt="back" src="<c:url value='/resources/assets/images/back.png'/>" class="img"></a>
	    <div class="forma">
	      <div>
	        <div class="card">
	          <div class="card-body ">
				<table class="tabla" heigh="100%">
				  <tr>
				    <td><b>#</b></td>
				    <td HEIGH:"50"><b>Medicamento</b></td>
				    <td><b>Dosis</b></td>
				    <td><b>Horario</b></td>
				    <td><b>Tiempo Restante </b></td>
				  </tr>
				  <tr>
				    <td>1</td>
				    <td>Paracetamol</td>
				    <td>1 Tableta</td>
				    <td>Cada 8 Horas</td>
				    <td>15 dias <img src="<c:url value='/resources/img/edit 1.png'/>"  class="img-pen" alt="PENCIL" /><input type="button" value="X"></td>
				  </tr>
				  <tr>
				    <td>2</td>
				    <td>Acetaminofen</td>
				    <td>2 Tabletas</td>
				    <td>Cada 4 Horas</td>
				    <td>7 dias  <img src="<c:url value='/resources/img/edit 1.png'/>"  class="img-pen" alt="PENCIL" /><input type="button" value="X"></td>
				  </tr>
				  <tr>
				    <td>3</td>
				    <td>Loratadina</td>
				    <td>1 Tableta</td>
				    <td>Cada 6 Horas</td>
				    <td>5 dias  <img src="<c:url value='/resources/img/edit 1.png'/>"  class="img-pen" alt="PENCIL" /><input type="button" value="X"></td>
				  </tr>
				</table>
			    <div class="form-outline">
					<nav  aria-label="...">
					  <ul class="pagination justify-content-center">
					    <li class="page-item disabled">
					      <a class="page-link" href="#" tabindex="-1">Previous</a>
					    </li>
					    <li class="page-item active">
					      <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item">
					      <a class="page-link"  href="#">Next</a>
					    </li>
					  </ul>
					</nav>	              
	            </div>
	          </div>
	        </div>  
	      </div>
	    </div>
	  </div>
	  <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 </body>
   </html>