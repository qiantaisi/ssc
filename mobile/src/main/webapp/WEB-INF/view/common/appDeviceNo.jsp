<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script src="${commonResPath}js/YdbOnline.js" type="text/javascript"></script>
<script>

    // 处理设备信息返回值的函数
    function DoWithDeviceInformation(info) {
        Tools.setCookie("deviceNo", info, {path: "/"});
    }

    // 嵌套APP获取设备号
    var YDB;
    var domain = document.domain;
    // 指定域名开头
    if (domain.startsWith("app.") || domain.startsWith("apps.")) {
        YDB = new YDBOBJ();
        YDB.GetDeviceInformation("DoWithDeviceInformation");
    } else {
        Tools.setCookie("deviceNo", '', {path: "/", expires: -1});
    }
</script>