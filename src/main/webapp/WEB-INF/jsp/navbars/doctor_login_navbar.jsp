<style>
.navbar{
        height: 80px;
}
 a {
 	font-size: 15px;
	color: white;
	-moz-transition: all .3s ease-in-out;
    -webkit-transition: all .3s ease-in-out;
    -ms-transition: all .3s ease-in-out;
    -o-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
}

a:hover  {
 color: #BAFFFF;
 border-bottom: 1px solid #BAFFFF;
}

.img-navbar{
   margin-top:5px;
   width: 110px; 
   height: 100px;
   margin-right:10px;
}
</style>
<nav class="navbar navbar-expand-lg" style="background-color: #5C7EAE;">

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ml-4">
        <a href="${pageContext.request.contextPath}/user_login" title="IngresarAsPaciente">Ingresar como paciente</a>
      </li>
    </ul>
       <!-- LOGO -->
	    <img src="<c:url value='/resources/img/logoblack.png'/>" class="img-navbar" alt="LOGO" />
  </div>
</nav>