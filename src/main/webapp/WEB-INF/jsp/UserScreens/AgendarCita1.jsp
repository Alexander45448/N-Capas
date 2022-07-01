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
	 
	 padding:50px;
	 height:100%;
	 }
	 

	.forma{
		display:flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		height:100%;
	}
	
	.card-top{
	    background-color: #5C7EAE;
	    width: 850px;
	    height:70px;
		text-align: center;
		display: flex;
		justify-content: center;
		align-items: center;
		-webkit-box-shadow: 1px 1px 6px black;
  		-moz-box-shadow: 1px 1px 6px black;
	}
	
		.card-top p{
         color: white;
         text-align: center;
         text-weight: bold;
         margin-top: 5px;
         font-size: 25px;
         
	}
	
		.card-body{
	    background-color: #7DB0B3;
	    width: 850px;
	    height:450px;
		text-align: center;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
        -webkit-box-shadow: 1px 1px 6px black;
  		-moz-box-shadow: 1px 1px 6px black;
	}
	
	
	.first{
	
	    display: flex;
	    flex-direction: column;
	    justify-content: center;
	}
	
        .first span{
           font-weight: bold;
           font-size: 15px;
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
		
		
		form{
		padding: 40px;
		}
		
		label{
		color: white;
		font-weight: bold;
		font-size: 25px;
		}

 </style>
 </head>
 
    <body class="skin-megna fixed-layout" class="vh-100" style="background-color: white;">
    <%@include file="/WEB-INF/jsp/navbars/user_navbar.jsp" %>


	  <div class="container">
	    <div class="forma">
	      <div>
	      <div class="card-content">
	      <div class="card-top">
	      <p>Busca Agendar tu cita</p>
	      </div>
	      

	      <div class="card-body">
	      <form name='formUserAppointments' action="${pageContext.request.contextPath}/chooseUserAppointments" method='GET' id="formUserAppointments" autocomplete="off">
	        <div class="row">
            <div class="col-md-6">
          <label>Especialidad</label>
			<select id="especialidad" class="form-control">
            <option>Cardiologia</option>
            <option>Odontologia</option>
            <option>Medicina General</option>
            <option>Pediatria</option>
            <option>Ortopedia</option>
            </select>
             </div>
              <div class="col-md-6">
               <label>Fecha</label>
               <input class="form-control" required="true"  type="date" name="appointmentDate" id="appointmentDate" autocomplete="off" required="true" value="2022-06-20"
       min="2022-01-01" max="2030-12-31"/>
               </div>
               </div>
               <br><br>
                            
               <div class="row" >
               <div class="col-md-6">
                <label>Hora (Primera Opcion)</label>
                <input class="form-control"   type="time" name="appointmentHour" id="appointmentHour" required="true" autocomplete="off" value="07:00" min="07:00" max="18:00" step="3600" />
                 </div>
                 <div class="col-md-6">
                <label>Hora (Segunda Opcion)</label>
                <input class="form-control"   type="time" name="appointmentHourTwo" id="appointmentHourTwo" required="true" autocomplete="off"  value="18:00" min="07:00" max="18:00" step="3600" />
                 </div>
                 </div>
                 
                 
                 <br><br><button class="btn-submit" type="submit">Buscar</button>
	      
	      </form>
	      </div>
	      </div>
	      </div>
	      </div>
	    </div>
	 
	 <%@include file="/WEB-INF/jsp/footer.jsp" %>
	 
	 </body>
   </html>