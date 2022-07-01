<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="jf" uri="/WEB-INF/tlds/jform.tld" %>

<!DOCTYPE html>
<html lang="en">
<head>
 <%@include file="/WEB-INF/jsp/include-css.jsp" %>
 <%@include file="/WEB-INF/jsp/include-js.jsp" %>
 <style type="text/css">
 html, body{
	  height:100%;
	  margin-top:0;
	  display: flex;
	  flex-direction: column;
	  text-align: center;
	}
	
	 .container{
	 margin-top:75px;
	 height:100%;
	 }
	 

	.forma{
		display:flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		height:100%;
	}
	
		.card-body{
	    background-color: #7DB0B3;
	    width: 850px;
	    height:600px;
		text-align: center;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
        -webkit-box-shadow: 1px 1px 6px black;
  		-moz-box-shadow: 1px 1px 6px black;
	}
	
	.space-between{
		display:flex;
		padding-right:4px;
		padding-left:4px;
		align-items: center;
		text-align: center;
		justify-content: space-between;
		margin-bottom:1px;
		
	}
	

 
 
.btn-submit {
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
		
		
		.img{
		width: 20px;
		heigh: 20px;
		}
		
		a:hover, img:hover{
		text-decoration: none;
		}
		
		.card-background1{
		background-color: white;
		padding: 10px;
		display: flex;
		flex-direction: column;
        justify-content: space-evenly;
        margin-right: 15px;
        margin-bottom: 15px;
        width: 300px;
		}
		
		.card-background2{
		background-color: white;
		padding: 10px;
		display: flex;
		flex-direction: column;
        justify-content: space-evenly;
        margin-left: 15px;
        margin-bottom: 15px;
        width: 300px;
		}
		
	    .card-background3{
		background-color: white;
		padding: 10px;
		display: flex;
		flex-direction: column;
        justify-content: space-evenly;
        margin-right: 15px;
        margin-top: 15px;
        width: 300px;
		}
		
		.card-background4{
		background-color: white;
		padding: 10px;
		display: flex;
		flex-direction: column;
        justify-content: space-evenly;
        margin-left: 15px;
        margin-top: 15px;
        width: 300px;
		}
		
		
		.space1{
		display: flex;
		flex-direction: row;
        justify-content: space-between;
		}
		
		.space2{
		display: flex;
		flex-direction: row;
        justify-content: space-between;
		}
		
		.btns-flex{
		display=flex;
		flex-direction= row;
		justify-content: center;
		align-items: center;
		}
		
		.pagination > li > a
		{
			margin-top:30px;
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
 </head>
 
    <body class="skin-megna fixed-layout" class="vh-100" style="background-color: white;">
    <%@include file="/WEB-INF/jsp/navbars/user_navbar.jsp" %>


	  <div class="container">
	    <div class="forma">
	      <div>
	      <div class="card-content">
	      

	      <div class="card-body">
	        <div class="space1">
            <div class="card-background1">
            <div class="space-between"><input type="checkbox" class="checkbox" value="choose"><a href="${pageContext.request.contextPath}/appointmentDetails">
            <img src="<c:url value='/resources/img/info-circle.png'/>" class="img"></a></div>
	           <h4>Dr. Juan Carlos Reyes</h3>
	           <h5>Neurocirujano</h5>
	           <p>12/05/2022</p>
	           <p>13:00 pm.</p>
             </div>

              <div class="card-background2">
              <div class="space-between"><input type="checkbox" class="checkbox" value="choose"><a href="${pageContext.request.contextPath}/appointmentDetails">
              <img src="<c:url value='/resources/img/info-circle.png'/>" class="img"></a></div>
               <h4>Dr. Andres Eduardo Martinez</h4>
	           <h5>Odontologo</h5>
	           <p>12/10/2022</p>
	           <p>11:00 am.</p>
               </div>
               </div>
               
                           
               <div class="space2" >
               <div class="card-background3">
               <div class="space-between"><input type="checkbox" class="checkbox" value="choose"><a href="${pageContext.request.contextPath}/appointmentDetails">
               <img src="<c:url value='/resources/img/info-circle.png'/>" class="img"></a></div>
	           <h4>Dra. Ana Paredes Guzman</h4>
	           <h5>Neurocirujano</h5>
	           <p>16/08/2022</p>
	           <p>15:00 pm.</p>
             </div>
             
              <div class="card-background4">
              <div class="space-between"><input type="checkbox" class="checkbox" value="choose"><a href="${pageContext.request.contextPath}/appointmentDetails">
              <img src="<c:url value='/resources/img/info-circle.png'/>" class="img"></a></div>
               <h4>Dr. Juan Carlos Reyes</h4>
	           <h5>Neurocirujano</h5>
	           <p>27/11/2022</p>
	           <p>14:00 pm.</p>
               </div>
                                
                </div>
               	    <div class="form-outline mb-3">
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
                 <button class="btn-submit" type="submit" onClick="drop()">Declinar Cita</button>
                 </div>
                 	<script type="text/javascript">
    
					    function drop()
					    {
					   
					    alert("¡¡¡Cita Eliminada Exitosamente!!!");
					    }
					    
    				</script>
	     		 	</div> 
	      		</div>
	     	 </div>
	      </div>
	    </div>       
	 <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 
	 </body>
   </html>