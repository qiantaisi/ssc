<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script>
    function openHyzx(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
            alert("请先登录");
            if ($("#loginAccount1").length > 0) {
                $("#loginAccount1").focus();
                return;
            }
            window.location.href = "<%=basePath%>main.html";
            return;
        }
        windowOpen('<%=basePath%>member/index.html?module=' + module, '会员中心', 1250, 834);
    }

    function openGcdt(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);
        <%--windowOpen('<%=basePath%>ssc/index.html?module=' + module, '购彩大厅', 1285, 800);--%>
    }

    function goZst(url) {
        window.open('<%=basePath%>ssc/'+ url +'.html?type=1');
    }

    function openZstIndex(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);
        <%--windowOpen('<%=basePath%>ssc/index.html?module=' + module, '走势图首页', 1285, 800);--%>
    }
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function(index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }

    function showLoading() {
        layer.load(2, {
            shade: [0.1,'#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
</script>