<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script src="http://static.ydbimg.com/API/YdbOnline.js" type="text/javascript"></script>
<script>
    // 嵌套APP获取设备号
    var YDB = new YDBOBJ();
    $(function() {
        YDB.SetHeadBar(0);
        YDB.SetMenuBar(0);
        /*获取设备信息*/
        $("#getdevice").click(function () {
            YDB.GetDeviceInformation("DoWithDeviceInformation");
        });
    });

    //处理设备信息返回值的函数
    function DoWithDeviceInformation(info) {
        alert("当前设备信息为：" + info);
    }

</script>