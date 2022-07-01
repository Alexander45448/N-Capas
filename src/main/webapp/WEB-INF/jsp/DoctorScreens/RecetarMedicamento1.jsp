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
	 margin-top:80px;
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
		    height:650px;
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
			text-align: justify;
			justify-content: flex-start;
			margin-left:-30px;
			width:100%;
			
		}
	
			.finduser{
				flex-direction: row;
				display:flex;
				justify-content: flex-start;
				margin-bottom:1px;
				margin-left:100px;
				width:100%;
				display:flex;
				align-items: center;
				text-align:center;
		
		}
	
			.finduserform{
				display:flex;
				width:100%;
			}

 
 
.btn-submit {
		  font-size: 15px;
		  margin-left:10px;
		  height:37px;
		  background: #5C7EAE;
		  border: 2px solid;
		  border-color: #5C7EAE;
		  border-radius: 2px;
	      color: white;
	      transition: all 0.5s ease;
		}
		
		
		.img{
		width: 30px;
		heigh: 30px;
		}
		
		a:hover, img:hover{
		text-decoration: none;
		}
		
		.card-background1{
		background-color: white;
		padding: 10px;
		flex-direction: column;
        margin-right: 15px;
        margin-bottom: 15px;
        width: 350px;
        display:flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		}
		
		.card-background2{
		background-color: white;
		padding: 10px;
		flex-direction: column;
        margin-bottom: 15px;
        width: 350px;
        display:flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		}
		
	    .card-background3{
		background-color: white;
		padding: 10px;
		flex-direction: column;
        margin-right: 15px;
        margin-bottom: 15px;
        width: 350px;
        display:flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		}
		
		.card-background4{
		background-color: white;
		padding: 10px;
		flex-direction: column;
        margin-bottom: 15px;
        width: 350px;
        display:flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		}
		
		.img-man{
		 width:70px;
		 height:60px;
		 margin-bottom:5px;
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
 </head>
 
    <body class="skin-megna fixed-layout" class="vh-100" style="background-color: white;">
    <%@include file="/WEB-INF/jsp/navbars/doctor_navbar.jsp" %>
		  <div class="container">
	    <div class="forma">
	      <div>
	      <div class="card-content">
	      <div class="card-body">
	      <div class="finduser">
	      <form name='userForm' class="finduserform"  action="#" method='GET' id="find-user-form" autocomplete="off" >
	            <div class="form-outline mb-3">
	              <input class="form-control col-12 col-m-4 col-lg-12" type="text" required="" placeholder="Buscar por DUI" name="medicine" autocomplete="off">
	            </div> 
	            <button class="btn-submit" type="submit">Buscar</button> 
	       </form>
	      </div>

	        <div class="space1">
            <div class="card-background1">
            <div class="space-between"><a href="${pageContext.request.contextPath}/prescribeMedicine2">
            <img src="<c:url value='/resources/img/edit 1.png'/>" class="img"></a></div>
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
	           <h4>Carlos Enrique Guzman Espinoza</h3>
             </div>

              <div class="card-background2">
            <div class="space-between"><a href="${pageContext.request.contextPath}/prescribeMedicine2">
            <img src="<c:url value='/resources/img/edit 1.png'/>" class="img"></a></div>
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
               <h4>Camila Jocelyn Miranda</h4>
               </div>
               </div>
               
                           
               <div class="space2" >
               <div class="card-background3">
            <div class="space-between"><a href="${pageContext.request.contextPath}/prescribeMedicine2">
            <img src="<c:url value='/resources/img/edit 1.png'/>" class="img"></a></div>
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
	           <h4>Alma Maricela Sosa Reyes</h4>
             </div>
             
              <div class="card-background4">
            <div class="space-between"><a href="${pageContext.request.contextPath}/prescribeMedicine2">
            <img src="<c:url value='/resources/img/edit 1.png'/>" class="img"></a></div>
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
               <h4>Jimena Esmeralda López Torres </h4>
               </div>
                                
                </div>
                
              <div class="space2" >
               <div class="card-background3">
            <div class="space-between"><a href="${pageContext.request.contextPath}/prescribeMedicine2">
            <img src="<c:url value='/resources/img/edit 1.png'/>" class="img"></a></div>
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
	           <h4>Melissa Yaneeth Guardado Espinoza</h4>
             </div>
             
              <div class="card-background4">
            <div class="space-between"><a href="${pageContext.request.contextPath}/prescribeMedicine2">
            <img src="<c:url value='/resources/img/edit 1.png'/>" class="img"></a></div>
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
               <h4>José David Reyes Ayala</h4>
               </div>
                                
                </div>
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