<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script>
    $(function() {
        var checkOnlineFlag = true;
        setInterval(function() {
            var uid = Tools.getCookie("uid");
            var token = Tools.getCookie("token");

            if (!checkOnlineFlag || typeof uid == 'undefined' || typeof token == 'undefined' || !uid || !token) {
                return;
            }

            ajaxRequest({
                url: "<%=basePath%>member/checkOnline.json",
                beforeSend: function() {
                    checkOnlineFlag = false;
                },
                success: function(json) {
                    if (json.result == 1) {
                        return;
                    }
                    Tools.setCookie("uid", '', {path: "/", expires: -1});
                    Tools.setCookie("token", '', {path: "/", expires: -1});

                    if (json.result == 108) {
                        Tools.alert("登录超时，请重新登录");
                        window.location.href = "<%=basePath%>";
                        return;
                    }

                    if (json.result == 109) {
                        Tools.alert("你的账号已在其它设备登录，请重新登录");
                        window.location.href = "<%=basePath%>";
                        return;
                    }

                    Tools.alert("登录超时，请重新登录");
                    window.location.href = "<%=basePath%>";
                },
                complete: function() {
                    checkOnlineFlag = true;
                }
            });
        }, 5000);
    });
</script>