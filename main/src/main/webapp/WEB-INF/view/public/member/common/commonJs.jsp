<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script type="text/javascript" src="${resPath}js/jquery.min.js"></script>
<script type="text/javascript" src="${resPath}member/framework/jquery.validate.min.js"></script>
<script type="text/javascript" src="${resPath}member/laydate/laydate.js"></script>
<script type="text/javascript" src="${resPath}member/js/validate.js"></script>
<script type="text/javascript" src="${resPath}member/js/global.js"></script>
<script type="text/javascript" src="${resPath}member/js/jquery.form.min.js"></script>
<script type="text/javascript" src="${resPath}member/js/jquery.md5.js"></script>
<%--<script type="text/javascript" src="${resPath}member/js/jquery.hashchange.js"></script>--%>
<script type="text/javascript" src="${resPath}js/global.js?v=3.0"></script>
<script type="text/javascript" src="${resPath}layer/layer.js"></script>
<script type="text/javascript" src="${resPath}js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="${resPath}member/js/clipboard.min.js"></script>
<script src="${resPath}js/dateFormat.js"></script>
<script src="${resPath}js/template.js"></script>
<script src="${resPath}js/jquery.cookie.js"></script><!--自定义封装函数-->
<script src="${resPath}js/jquery.md5.js"></script><!--自定义封装函数-->
<script>
    $(function() {
        // 底部信息调用
        function ajaxGetDbxx() {
            ajaxRequest({
                url: CONFIG.BASEURL + "ajaxGetWebInfo.json",
                success: function (json) {
                    if (json.result != 1) {
                        return;
                    }
                    $(".webDbxx").html(json.webDbxx);
                }
            });
        }

        if ($(".webDbxx").length > 0) {
            ajaxGetDbxx();
        }
    });
</script>