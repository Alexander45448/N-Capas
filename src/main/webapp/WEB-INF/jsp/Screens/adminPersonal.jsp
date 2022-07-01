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
	  overflow: auto;
	 
	  
	}
	
	
	.card-body{
	   
		background-color: #7DB0B3;
		border-radius: 17px;
		width:100%;
		height:100%;
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
	 align-items: center;
	 position: relative;
	 top: 20%;
	 height:100%;
	 
	 }
	 .options{
	     display:flex; 
	     justify-content: center; 
	 }
	 
	 .option2{
	     margin-bottom:10px;
	     margin-top: 10px;
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
		.cards {
    display:flex;
    padding:20px;
    flex-wrap: wrap;
    flex-direction: row;
    justify-content: space-between;
}

.card1 {
    
    background-color: white;
		padding: 10px;
		padding-left: 0;
		display: flex;
		flex-direction: column;
        justify-content: space-evenly;
        margin-right: 15px;
        margin-bottom: 15px;
        width: 300px;
}


.img-header {
 object-fit: cover;
    width: 50px;
    height: 50px;
    margin-left: 0;
    
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
	      <div >
	        <div class="card">
	          <div class="card-body " >
				<form name='userForm' action="${pageContext.request.contextPath}/prescribeMedicine1" method='GET' id="find-user-form" autocomplete="off" >
	            <div class="form-outline mb-3">
	              <input class="form-control col-12 col-m-4 col-lg-8 " type="text" required="" placeholder="Buscar por DUI" name="medicine" autocomplete="off">
	            </div> 
	            <button class="btn-submit" type="submit">Buscar</button> 
	            </form>
	            <div class="cards">
    <article class="card1">
        <header>
        	<div class="img-header">
           
           </div>
        </header>    
        <div class="content">
        <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
    <article class="card1">
        <header>
            <div class="img-header">
          
           </div>
        </header>    
        <div class="content">
        <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
    <article class="card1">
        <header>
             <div class="img-header">
          
           </div>
        </header>    
       
        <div class="content">
         <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
    <article class="card1">
        <header>
             <div class="img-header">
          
           </div>
        </header>    
        
        <div class="content">
        <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
    <article class="card1">
        <header>
             <div class="img-header">
           
           </div>
        </header>    
        
        <div class="content">
        <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
    <article class="card1">
        <header>
            <div class="img-header">
           
           </div>
        </header>    
       
        <div class="content">
         <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
    <article class="card1">
        <header>
             <div class="img-header">
           
           </div>
        </header>    
   
        <div class="content">
        <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
    <article class="card1">
        <header>
             <div class="img-header">
           
           </div>
        </header>    
        
        <div class="content">
        <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
    <article class="card1">
        <header>
          <div class="img-header">
           
           </div>
        </header>    
       
        <div class="content">
         <img src="<c:url value='/resources/img/man.png'/>"  class="img-man" alt="MAN" />
            <p>Carlos Enrique Guzman Espinoza </p>
        </div>     
    </article>
	          </div>
	        </div> 
	     	  
	      </div>
	    </div>
	  </div>
	  <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 </body>
   </html>