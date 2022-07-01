<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="_csrf" content="${_csrf.token}" /> 
<meta name="_csrf_header" content="${_csrf.headerName}" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="<c:url value='/resources/css/pages/login-register-lock.css'/>" rel="stylesheet"></link>
        <link href="<c:url value='/resources/css/style.min.css'/>" rel="stylesheet"></link>
        <script>
            $(function () {
                var token = $("meta[name='_csrf']").attr("content");
                var header = $("meta[name='_csrf_header']").attr("content");
                $(document).ajaxSend(function (e, xhr, options) {
                    xhr.setRequestHeader(header, token);
                });
            });
        </script>
    </head>
    <body>
        <section id="wrapper" class="login-register login-sidebar" style="background-image:url(<c:url value='/resources/assets/images/background/login-register.jpg' />);">
            <div class="login-box card">
                <div class="card-body">
                    <p class="text-center">
                        <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                            <font color="red">
                            <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
                            </font>
                        </c:if>
                    </p>
                    <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST' id="login-form" class="form-horizontal form-material" autocomplete="off" >
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <a href="javascript:void(0)" class="text-center db"><img src="<c:url value='/resources/assets/images/logo-icon.png' />" alt="Home" /><br/><img src="<c:url value='/resources/assets/images/logo-text.png' />" alt="Home" /></a>
                        <div class="form-group m-t-40">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" required="" placeholder="Usuario" name="user" autocomplete="off">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control" type="password" required="" placeholder="Contraseña" name="pass" autocomplete="new-password">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <div class="custom-control custom-checkbox">
                                    <a href="javascript:void(0)" id="to-recover" class="text-dark pull-right"><i class="fa fa-lock m-r-5"></i>¿Olvido su Contraseña?</a> 
                                </div>     
                            </div>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <button class="btn btn-info btn-lg btn-block text-uppercase btn-rounded" type="submit">Ingresar</button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </section>
    </body>
</html>