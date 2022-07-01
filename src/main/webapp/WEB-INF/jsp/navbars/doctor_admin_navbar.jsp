<style>
.navbar{
        height: 80px;
}
 a {
 	font-size: 15px;
	color: white;
	margin-left: 30px;
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
        <a href="${pageContext.request.contextPath}/index" title="PerfilDoctor">Perfil Doctor</a>
      </li>
      <li class="nav-item ml-4">
        <a href="${pageContext.request.contextPath}/index" title="CitasAgendadas">Citas Agendadas</a>
      </li>
      <li class="nav-item ml-4">
        <a href="${pageContext.request.contextPath}/index" title="HistorialPacientes">Historial de Pacientes</a>
      </li>
      <li class="nav-item ml-4">
        <a href="${pageContext.request.contextPath}/index" title="RecetarMedicamentos">Recetar Medicamentos</a>
      </li>
      <li class="nav-item ml-4">
        <a href="${pageContext.request.contextPath}/AdminPersonal" title="AdministrarPersonal">Administrar Personal</a>
      </li>
    </ul>
	      <!-- LOGO -->
	    <img src="<c:url value='/resources/img/logoblack.png'/>" class="img-navbar" alt="LOGO" />
  </div>
</nav>