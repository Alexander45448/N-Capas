<%@page import="com.sv.neurolab.configuration.SecurityHelper"%>
<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="user-pro"> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><jf:image image="<%= SecurityHelper.getLoggedInUserDetails().getImagen() %>" tipo="usuario" /><span class="hide-menu"> <%= SecurityHelper.getLoggedInUserDetails().getNombre() + " " +  SecurityHelper.getLoggedInUserDetails().getApellido() %> </span></a>
                    <ul aria-expanded="false" >
                        <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-power-off"></i>&nbsp;Salir</a></li>
                    </ul>
                </li>
                 <jf:menu />
            </ul>
        </nav>
    </div>
</aside>