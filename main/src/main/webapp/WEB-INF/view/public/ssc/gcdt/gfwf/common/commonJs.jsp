<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>gfwf_wxfx
<script src="${resPath}js/ssc/gcdt/gfwf.js?v=20170610"></script>
<script>
    // 官方玩法数据转换，转换为提交格式
    /**
     * 时时彩-五星复选
     * @param wanArr 万数组
     * @param qianArr 千数组
     * @param baiArr 百数组
     * @param shiArr 十数组
     * @param geArr 个数组
     */
    function gfwf_5xfs(
        wanArr,
        qianArr,
        baiArr,
        shiArr,
        geArr
    ) {
        var tmpStr_1 = wanArr.join(",");
        var tmpStr_2 = qianArr.join(",");
        var tmpStr_3 = baiArr.join(",");
        var tmpStr_4 = shiArr.join(",");
        var tmpStr_5 = geArr.join(",");

        return "{0}|{1}|{2}|{3}|{4}".format(
            tmpStr_1,
            tmpStr_2,
            tmpStr_3,
            tmpStr_4,
            tmpStr_5
        );
    }

    function getMode(mode) {
        if (mode == 1) {    // 元
            return 1;
        } else if (mode == 2) { // 角
            return 0.1;
        } else if (mode == 3) { // 分
            return 0.01;
        } else if (mode == 4) {  // 厘
            return 0.001;
        }
        return;
    }

    function getPlayPlId() {
        return $(".playPlIdBtn.acti").data("play_pl_id");
    }
</script>
<script>
    // 字符串格式化函数
    String.prototype.format = function(args) {
        var result = this;
        if (arguments.length > 0) {
            if (arguments.length == 1 && typeof (args) == "object") {
                for (var key in args) {
                    if(args[key]!=undefined){
                        var reg = new RegExp("({" + key + "})", "g");
                        result = result.replace(reg, args[key]);
                    }
                }
            }
            else {
                for (var i = 0; i < arguments.length; i++) {
                    if (arguments[i] != undefined) {
                        var reg = new RegExp("({[" + i + "]})", "g");
                        result = result.replace(reg, arguments[i]);
                    }
                }
            }
        }
        return result;
    }


</script>