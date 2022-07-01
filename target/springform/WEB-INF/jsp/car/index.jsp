<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="jf" uri="/WEB-INF/tlds/jform.tld" %>
<!DOCTYPE html>
<html lang="en">
<head>
 <%@include file="/WEB-INF/jsp/include-css.jsp" %>
 <%@include file="/WEB-INF/jsp/include-js.jsp" %>
 <script>

		(function(window, document, $, undefined) {
			$(function() {
				var formCar = $("#formCar");
				
				formCar.submit(function (event) {
                    swal({
                        title: "¿Esta seguro?",
                        text: "¡Se ingresara un nuevo registro!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#5D9CEC",
                        confirmButtonText: "Sí, guardar registro!",
                        cancelButtonText: "No, cancelar!",
                        closeOnConfirm: false,
                        closeOnCancel: false
                    }, function (isConfirm) {
                        if (isConfirm) {
                            $.ajax({
                                data: formCar.serialize(),
                                url: '${pageContext.request.contextPath}/saveCar',
                                type: "POST",
                                success: function (response) {
                                    swal("Guardado!", "Su registro se guardo exitosamente.", "success");
                                    $("button[data-dismiss='modal']").click();
                                    formCar.trigger("reloadGrid");
                                    return false;
                                },
                                error: function (x, e) {
                                    alert("Ocurrio un error");
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
<body class="skin-megna fixed-layout">
	<div class="preloader">
		<div class="loader">
			<div class="loader__figure"></div>
			<p class="loader__label">ADMIN</p>
		</div>
	</div>
	<div id="main-wrapper">
		<%@include file="/WEB-INF/jsp/header.jsp" %>
		<%@include file="/WEB-INF/jsp/menu.jsp" %>
		<div class="page-wrapper">
         	<div class="container-fluid">
					<div class="row page-titles">
                        <div class="col-md-5 align-self-center">
                            <h4 class="text-themecolor"></h4>
                        </div>
                        <div class="col-md-7 align-self-center text-right">
                            <div class="d-flex justify-content-end align-items-center">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Index</a></li>
                                    <li class="breadcrumb-item active">Car</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div>
 					 <div class="jqgrid-responsive mb-lg">
                            <script type="text/javascript">
             (function(window, document, $, undefined){
                 $(function(){
                     var jqGridCar = $("#jqGridCar");
                     var formCar = $("#formCar");
                     var modalCar = $("#modalCar");
                     
                     function deleterow(id) {
                         swal({
                             title: "¿Esta seguro que desea eliminar el registro?",
                             text: "¡Una vez eliminado ya no se podra recuperar!",
                             type: "warning",
                             showCancelButton: true,
                             confirmButtonColor: "#CE1616",
                             confirmButtonText: "Sí, eliminar registro!",
                             cancelButtonText: "No, cancelar!",
                             closeOnConfirm: false,  showLoaderOnConfirm: true,
                             closeOnCancel: false
                             },function (isConfirm) {
                                 if (isConfirm) {
                                     $.ajax({
                                            data: formCar.serialize(),
                                            url: '/springform/deleteCar',
                                            type: "DELETE",
                                            success: function (response) {
                                                 swal("Eliminado!", "Su registro se elimino exitosamente.", "success");
                                                 $("button[data-dismiss='modal']").click();
                                                 jqGridCar.trigger("reloadGrid");
                                                 return false;
                                            }
                                     });swal.close();
                                 } else {
                                         swal("Cancelado", "Su petición ha sido cancelada.", "error");
                                         $("button[data-dismiss='modal']").click();
                                 }
                             });
                             return false;
                     }
                     
                     formCar.submit(function (event) {
                         swal({
                             title: "¿Esta seguro?",
                             text: "¡Se ingresara un nuevo registro!",
                             type: "warning",
                             showCancelButton: true,
                             confirmButtonColor: "#5D9CEC",
                             confirmButtonText: "Sí, guardar registro!",
                             cancelButtonText: "No, cancelar!",
                             closeOnConfirm: false,  showLoaderOnConfirm: true,
                             closeOnCancel: false
                         }, function (isConfirm) {
                                 if (isConfirm) {
                                     $.ajax({
                                         data: formCar.serialize(),
                                         url: '/springform/saveCar',
                                         type: "POST",
                                         success: function (response) {
                                             swal("Guardado!", "Su registro se guardo exitosamente.", "success");
                                             $("button[data-dismiss='modal']").click();
                                             jqGridCar.trigger("reloadGrid");
                                             return false;
                                         },
                                         error: function (x, e) {
                                             alert("Ocurrio un error");
                                         }
                                     });
                                 } else {
                                     swal("Cancelado", "Su petición ha sido cancelada.", "error");
                                     $("button[data-dismiss='modal']").click();
                                 }
                            });
                            return false;
                     });
                     
                    jqGridCar.jqGrid({
                         url: '/springform/gridCar',
                         datatype: "json",
                         colModel:[ 
                                   { label: 'ID', name: 'idCar', width: 50 ,align:'center'}
                                   ,{ label: 'MARCA', name: 'marca', width: 50 ,align:'center'}
                                   ,{ label: 'MODELO', name: 'modelo', width: 50 ,align:'center'}
                                   ,{ label: 'AÑO', name: 'año', width: 50 ,align:'center'}
                                   ,{ label: 'COLOR', name: 'color', width: 50 ,align:'center'}
                                   ,{ label: 'MOTOR', name: 'catMotorDelegate',align:'center', width: 50,hidden:true},
									{ label: 'MOTOR', name: 'catMotorDescriptionDelegate',index: 'motor.idMotor',align:'center', width: 50,stype:"select",
                                           searchoptions: {
                                               dataUrl: '${pageContext.request.contextPath}/cbofilterMotor',
                                               buildSelect: function (response) {
                                                   var obj = $.parseJSON(response);
                                                   var html = "<select><option></option>";
                                                   for (i in obj)
                                                       html += "<option value=" + obj[i].value + ">" + obj[i].description + "</option>";
                                                       html += "</select>";
                                                       return html;
                                               },
                                               dataInit: function (element) {
                                                   $(element).select2({placeholder: "Todos", allowClear: true});
                                               }
                                           }
                                      }
                                                             ],
                         viewrecords: true,
                         autowidth: true,
                         shrinkToFit: true,
                         sortname: "idCar",
                         sortorder: "asc",
                         height: 240,
                         rowNum: 100,
                         rowList: [100,200,500,1000],
                         loadonce: false,
                         caption: "Car grid",
                         hidegrid: false,
                         pager: "#jqGridCarPager"
                    });
                     
                    jqGridCar.jqGrid('filterToolbar', {stringResult: true, searchOnEnter: true, defaultSearch: "cn"});
                     
                     jqGridCar.jqGrid('navGrid', '#jqGridCarPager',
                         {edit: false, add: false, del: false, search: false},
                          {}, {}, {},
                          {// search
                              closeOnEscape: true,
                              multipleSearch: true,
                              closeAfterSearch: true
                      })
                     
                     jqGridCar.jqGrid('navButtonAdd', '#jqGridCarPager', {
                          id: 'pager_preview', caption: '', title: 'Ver',
                              onClickButton: function (e) {
                                  var row = jqGridCar.jqGrid('getGridParam', 'selrow');
                                  if (row != null) {
                                      var rowData = jqGridCar.getRowData(row);
                                      readOnlyForm(formCar, rowData);
                                      $("#btnModalSubmit").prop('disabled', true);
                                       modalCar.modal('toggle');
                                  } else {
                                      swal("Advertencia", "Por favor seleccione una fila.", "warning");
                                  }
                              },
                                  buttonicon: 'ui-icon-preview'
                          }
                     );
                     jqGridCar.jqGrid('navButtonAdd', '#jqGridCarPager', {
                         id: 'pager_save',
                         caption: '',
                         title: 'Agregar',
                         onClickButton: function (e) {
                             resetForm(formCar);
                                 modalCar.modal('toggle');
                         },
                         buttonicon: 'ui-icon-plus'
                     });
                     
                     jqGridCar.jqGrid('navButtonAdd', '#jqGridCarPager', {
                                 id: 'pager_edit',
                                 caption: '',
                                 title: 'Editar',
                                 onClickButton: function (e) {
                                      var row = jqGridCar.jqGrid('getGridParam', 'selrow');
                                      if (row != null) {
                                         var rowData = jqGridCar.getRowData(row);
                                         populateForm(formCar, rowData);
                                         modalCar.modal('toggle');
                                     } else {
                                         swal("Advertencia", "Por favor seleccione una fila.", "warning");
                                     }
                                 },
                                 buttonicon: 'ui-icon ui-icon-pencil'
                             });
                     
                     jqGridCar.jqGrid('navButtonAdd', '#jqGridCarPager', {
                         id: 'pager_delete',
                         caption: '',
                         title: 'Eliminar',
                         onClickButton: function (e) {
                             var row = jqGridCar.jqGrid('getGridParam', 'selrow');
                             if (row != null) {
                                 var rowData = jqGridCar.getRowData(row);
                                  populateForm(formCar, rowData);
                                 deleterow();
                             } else {
                                 swal("Advertencia", "Por favor seleccione una fila.", "warning");
                             }
                         },
                         buttonicon: 'ui-icon ui-icon-trash'
                      });
                     jqGridCar.jqGrid('navButtonAdd', '#jqGridCarPager', {
                         id: 'pager_excel',
                         caption: '',
                         title: 'Export',
                         onClickButton: function (e) {
                              exportCarGrid();
                         },
                         buttonicon: 'ui-icon-calculator'
                     });
                     
                      function exportCarGrid() 
{                          $('#filters').val(jqGridCar.jqGrid('getGridParam', 'postData').filters);
                          $('#jqGridCarGridParameters').submit();
                                 }
                     
                      $(window).on('resize', function () {
                          var width = $('.jqgrid-responsive').width();
                          jqGridCar.setGridWidth(width);
                      }).resize();
                     
                  });
               })(window, document, window.jQuery);
               </script>
                     
               <table id="jqGridCar"></table>
               <table id="jqGridCarPager"></table>
               
               <form method="post" id="jqGridCarGridParameters" action="/springform/exportCar"  target="_blank">
                  <input type="hidden" name="filters" id="filters" value=""/>
                  <input type="hidden" id="jqgridExport"/> 
               </form>
               

					</div>
                </div>
            </div>
            
	</div>
	  <!-- Modal-->
        <div id="modalCar" tabindex="-1" role="dialog" aria-labelledby="myModalLabelLarge" aria-hidden="true" class="modal fade">
           <div class="modal-dialog modal-lg">
                <div class="modal-content">
  
                    <div class="modal-body">
                       <form method="POST" id="formCar" action="${urlsaveCar}" data-parsley-validate="" novalidate="" class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="form-group">
                                         <label class="col-sm-2 control-label">ID</label>
                                         <div class="col-lg-10">
										
                                         <jf:numberbox    precision="10"    id="idCar" name="idCar"  readonly="true"/>
                                         </div>
                                     </div>
 
                                    <div class="form-group">
                                         <label class="col-sm-2 control-label">MARCA</label>
                                         <div class="col-lg-10">

                                         <jf:textbox  tabindex="1" maxlength="255"   id="marca" name="marca" />
                                         </div>
                                     </div>
 
                                    <div class="form-group">
                                         <label class="col-sm-2 control-label">MODELO</label>
                                         <div class="col-lg-10">

                                         <jf:textbox  tabindex="2" maxlength="255"   id="modelo" name="modelo" />
                                         </div>
                                     </div>
 
                                    <div class="form-group">
                                         <label class="col-sm-2 control-label">AÑO</label>
                                         <div class="col-lg-10">

                                         <jf:textbox  tabindex="3" maxlength="100"   id="año" name="año" />
                                         </div>
                                     </div>
 
                                    <div class="form-group">
                                         <label class="col-sm-2 control-label">COLOR</label>
                                         <div class="col-lg-10">

                                         <jf:textbox  tabindex="4" maxlength="255"   id="color" name="color" />
                                         </div>
                                     </div>
 
                                    <div class="form-group">
                                         <label class="col-sm-2 control-label">MOTOR</label>
                                         <div class="col-lg-10">

                                             <jf:combobox  url="${pageContext.request.contextPath}/cbofilterMotor"   id="catMotorDelegate"  name="motor.idMotor"  />
                                         </div>
                                     </div>
 
                                </div>
                                <div class="panel-footer text-right">
                                    <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
                                    <button type="submit" class="btn btn-">Run validation</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>