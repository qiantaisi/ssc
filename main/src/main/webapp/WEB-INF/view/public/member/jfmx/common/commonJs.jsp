<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script>
    $(function() {
        var clipboard = new Clipboard('#copyTglj', {
            text: function() {
                return $('#copyTglj').data("tglj");
            }
        });
        clipboard.on('success', function(e) {
            alert("复制成功");
        });
        clipboard.on('error', function(e) {
            alert("浏览器粘贴板不支持复制，请手动复制。")
        });
    });
</script>