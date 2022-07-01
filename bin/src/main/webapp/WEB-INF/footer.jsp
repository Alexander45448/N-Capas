<footer class="footer">
    © 2018 Neurolab  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Laboratorio: <span id="idlaboratorioselected"><%out.print(SecurityHelper.getLoggedInUserDetails().getSlaboratorio());%></span>
</footer>
<script type="text/javascript">
    $(function () {
        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");
        $(document).ajaxSend(function (e, xhr, options) {
            xhr.setRequestHeader(header, token);
        });
    });
</script>