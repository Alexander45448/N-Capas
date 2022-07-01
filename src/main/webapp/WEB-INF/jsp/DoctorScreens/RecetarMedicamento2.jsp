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
	 
	 padding:40px;
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
	
	.registros-label{
		color: white;
		font-size:15px;
		font-weight: bolder;
	}
	
	.registros-label:hover{
		color:white;
 		border-bottom: 1px solid white;
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
 		.img{
		width: 45px;
		heigh: 45px;
		margin-top: 50px;
		margin-left: 70px;
		transform: translateX(calc((-100vw + 100%)/ 2));
		}
		
		.img2{
		margin-left:3px;
		}
 
.btn-submit {
	      margin-top: 10px;
	      margin-left: 300px;
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
		padding: 50px;
		}
		
		label{
		color: white;
		font-weight: bold;
		font-size: 25px;
		}

 </style>
  <script>

		(function(window, document, $, undefined) {
			$(function() {
				var formPerson = $("#formMedicamento");
				
				formPerson.submit(function (event) {
					swal({
                        title: "¿Esta seguro?",
                        text: "¡Se recetara un nuevo medicamento!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#5D9CEC",
                        confirmButtonText: "Sí, recetar medicamentos!",
                        cancelButtonText: "No, cancelar!",
                        closeOnConfirm: false,
                        closeOnCancel: false
                    }, function (isConfirm) {
                        if (isConfirm) {
                        	
                            $.ajax({
                                data: formPerson.serialize(),
                                url: '${pageContext.request.contextPath}/recetarMedicina',
                                type: "POST",
                                success: function (response) {
                                    swal("Guardado!", "Medicamento recetado exitosamente.", "success");
                                    $("button[data-dismiss='modal']").click();
                                    formPerson.trigger("reloadGrid");
                                    return false;
                                },
                                error: function (x, e) {
                                    alert("Ningun campo de este formulario puede estar vacio");
                                }
                            });
                        } else {
                            swal("Cancelado", "Su petición ha sido cancelada.", "error");
                            $("button[data-dismiss='modal']").click();
                        }
                    });
                    return false;
                });

			});
		})(window, document, window.jQuery);
	</script>
 </head>
 
    <body class="skin-megna fixed-layout" class="vh-100" style="background-color: white;">
    <%@include file="/WEB-INF/jsp/navbars/doctor_navbar.jsp" %>


	  <div class="container">
	  	  <a href="${pageContext.request.contextPath}/prescibeMedicine1"><img alt="back" src="<c:url value='/resources/assets/images/back.png'/>" class="img"></a>
	    <div class="forma">
	      <div>
	      <div class="card-content">
	      <div class="card-top">
	      <p>Recetar Medicamento</p>
	      </div>
	      <div class="card-body">
	      <form name='formUserAppointments' action="${pageContext.request.contextPath}/medicineRegister" method='GET' id="formUserAppointments" autocomplete="off">
	        <div class="row">
	          <div class="col-md-12">
                                    <label>Paciente:</label>
                                    <select id="catPatientDelegate"  name="patient.duiPatient" required="true"  class="form-control "  style="width: 100%;" ></select> 
                                    <script>
									  $(document).ready(function () {
									      $('#catPatientDelegate').select2({ allowClear: false});
									      $.getJSON("/springform/cbofilterPatient", function (result) {
									          $.each(result, function () {
									              $("#catPatientDelegate").append(new Option(this.description, this.value));
									          });
									      $("#catPatientDelegate").val("null").trigger('change');
									      });
									  });
									</script>
                                </div>
	        <div class="row">
            <div class="col-md-6">
          <label>Nombre del Medicamento:</label>
 			<input class="form-control" placeholder="Medicamento a recetar..." required="true"  type="text" name="medicine" id="nameMedicine" autocomplete="off" required="true"/>
             </div>
              <div class="col-md-6">
               <label>Horario:</label>
               <input class="form-control" placeholder="Horario de toma a recetar..." required="true"  type="time" name="schedule" id="scheduleMedicine" autocomplete="off" required="true"/>
               </div>
               </div>
               <br><br>
                            
               <div class="row" >
               <div class="col-md-6">
                <label>Dosis:</label>
                <input class="form-control"  placeholder="Dosis a recetar..."  type="text" name="dosisMedicine" id="dose" required="true" autocomplete="off"/>
                 </div>
                 <div class="col-md-6">
                <label>Tiempo de Tratamiento:</label>

				<input class="form-control" type="text" name="duration" value="06/01/2022 - 06/12/2022" />
				
				<script type="text/javascript">
				$(function() {
				    $('input[name="daterange"]').daterangepicker();
				});
				</script>

                 </div>
                 </div>
                 
                 
                 <br><br><button class="btn-submit" type="submit">Guardar</button>
       
                 <br><br><a href="${pageContext.request.contextPath}/medicineRegister"  class="registros-label" id="to-recover" >Registros de medicamentos<img alt="next" src="<c:url value='/resources/img/Vector2.png'/>" class="img2"></a> 
	 
	      
	      </form>
	      </div>
	      </div>
	      </div>
	      </div>
	    </div>
	 </div>
	 
	 <%@include file="/WEB-INF/jsp/footer.jsp" %>

	 </body>
   </html>