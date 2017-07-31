<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script>
    $(function() {
        var checkOnlineFlag = true;
        setInterval(function() {
            var uid = $.cookie("uid");
            var token = $.cookie("token");
            if (!checkOnlineFlag || typeof uid == 'undefined' || typeof token == 'token' || !uid || !token) {
                return;
            }

            ajaxRequest({
                url: "<%=basePath%>member/checkOnline.json",
                beforeSend: function() {
                    checkOnlineFlag = false;
                },
                success: function(json) {
                    if (json.result == 1) {
                        checkOnlineFlag = true;
                        return;
                    }
                    $.cookie("uid", '', {path: "/", expires: -1});
                    $.cookie("token", '', {path: "/", expires: -1});

                    if (json.result == 108) {
                        alert("登录超时，请重新登录");
                        window.location.href = "<%=basePath%>";
                        return;
                    }

                    if (json.result == 109) {
                        alert("你的账号已在其它设备登录，请重新登录");
                        window.location.href = "<%=basePath%>";
                        return;
                    }

                    alert("登录超时，请重新登录");
                    window.location.href = "<%=basePath%>";
                    return;
                }
            });
        }, 10000);
    });
</script>