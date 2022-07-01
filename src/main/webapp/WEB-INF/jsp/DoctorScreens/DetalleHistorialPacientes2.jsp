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
	 margin-top:70px;
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
		    height:550px;
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
		width: 50px;
		heigh: 50px;
		}
		
		a:hover, img:hover{
		text-decoration: none;
		}
		
		.card-background1{
		background-color: white;
		padding: 5px;
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
		padding: 5px;
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
		padding: 5px;
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
		padding: 5px;
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
		 margin:10px;
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
		 <div class="space-between">
	   	   <a href="${pageContext.request.contextPath}/PatientDetails"><img alt="back" src="<c:url value='/resources/assets/images/back.png'/>" class="img"></a>
	     </div>
	    <div class="forma">
	      <div>
	      <div class="card-content">
	      <div class="card-body">
	        <div class="space1">
            <div class="card-background1">
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
	           <h4>José David Reyes Ayala</h3>
	           <p>12/05/2022</p>
	           <p>1:30 pm</p>
             </div>

              <div class="card-background2">
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
               <h4>José David Reyes Ayala</h4>
	           <p>12/10/2022</p>
	           <p>2:30 pm</p>
               </div>
               </div>
               
                           
               <div class="space2" >
               <div class="card-background3">
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
	           <h4>José David Reyes Ayala</h4>
	           <p>16/08/2022</p>
	           <p>5:00 pm</p>
             </div>
             
              <div class="card-background4">
            <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="LOGO" />
               <h4>José David Reyes Ayala</h4>
	           <p>27/11/2022</p>
	           <p>5:30 pm</p>
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