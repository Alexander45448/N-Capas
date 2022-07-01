<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="jf" uri="/WEB-INF/tlds/jform.tld" %>.
<%@page import="com.sv.neurolab.configuration.SecurityHelper"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="/WEB-INF/views/include-css.jsp" %>
        <%@include file="/WEB-INF/views/include-js.jsp" %>
        <script>
            $(document).ready(function () {
                if (<% out.println(SecurityHelper.getLoggedInUserDetails().getLaboratorio());%> == null) {
                    $("#modalLaboratorio").modal({backdrop: 'static', keyboard: false});
                }
            });
            function saveLaboratorio() {

                if ($("#cbolaboratorio").val() == null) {
                    $.toast({
                        heading: 'Laboratorio Incompleto',
                        text: 'Por favor llenar todos los campos requeridos',
                        position: 'top-center',
                        loaderBg: '#ff6849',
                        icon: 'warning',
                        hideAfter: 6500,
                        stack: 6
                    });
                    return;
                }

                $.ajax({
                    type: "GET",
                    dataType: 'text',
                    async: true,
                    url: '${pageContext.request.contextPath}/setLaboratorio?laboratorio=' + $("#cbolaboratorio").val(),
                    success: function (response) {

                        window.location.href = '${pageContext.request.contextPath}/index';
                        $("#modalLaboratorio").modal('toggle');
                    },
                    error: function (e, error) {
                        $.smallBox({
                            title: "Mensaje de error",
                            content: "<i class='fa fa-clock-o'></i> <i>Ocurrio un error inesperado</i>",
                            color: "#C46A69",
                            iconSmall: "fa fa-times fa-2x fadeInRight animated",
                            timeout: 4000
                        });
                    }

                });
            }

        </script>
    </head>
    <body class="skin-megna fixed-layout">
        <div class="preloader">
            <div class="loader">
                <div class="loader__figure"></div>
                <p class="loader__label">NEUOLAB ADMIN</p>
            </div>
        </div>
        <div id="main-wrapper">         
            <%@include file="/WEB-INF/views/header.jsp" %>
            <%@include file="/WEB-INF/views/menu.jsp" %>
            <div class="page-wrapper">

            </div>
            <%@include file="/WEB-INF/views/footer.jsp" %>
        </div>
        <div  id="modalLaboratorio"  class="modal fade bs-example-modal-lg" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"><strong>SELECCIONE SUCURSAL A TRABAJAR</strong></h4>
                    </div>
                    <div class="modal-body">
                        <form role="form" id="formCita" data-toggle="validator">

                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Sucursal</label>
                                    <select class="form-control custom-select" id="cbolaboratorio">
                                        <option value="1">COLONIA MÉDICA</option>
                                        <option value="2">COLONIA ESCALON</option>
                                        <c:if test = "${ rol =='TOD'}">
                                             <option value="3">PRUEBA</option>
                                        </c:if>
                                       
                                    </select>
                                </div>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button id="btn-save" type="button" onclick="saveLaboratorio();" class="btn btn-success waves-effect waves-light save-category" >Guardar</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>