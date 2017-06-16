<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
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

    function gfwf_4xfs(
        qianArr,
        baiArr,
        shiArr,
        geArr
    ) {
        var tmpStr_1 = qianArr.join(",");
        var tmpStr_2 = baiArr.join(",");
        var tmpStr_3 = shiArr.join(",");
        var tmpStr_4 = geArr.join(",");

        return "{0}|{1}|{2}|{3}".format(
            tmpStr_1,
            tmpStr_2,
            tmpStr_3,
            tmpStr_4
        );
    }

    function gfwf_3xfs(
        baiArr,
        shiArr,
        geArr
    ) {
        var tmpStr_1 = baiArr.join(",");
        var tmpStr_2 = shiArr.join(",");
        var tmpStr_3 = geArr.join(",");

        return "{0}|{1}|{2}".format(
            tmpStr_1,
            tmpStr_2,
            tmpStr_3
        );
    }

    function gfwf_2xfs(
        shiArr,
        geArr
    ) {
        var tmpStr_1 = shiArr.join(",");
        var tmpStr_2 = geArr.join(",");
        return "{0}|{1}".format(
            tmpStr_1,
            tmpStr_2
        );
    }

    function getMode(mode) {
        if (mode == 1) {    // 元
            return 1;
        } else if (mode == 2) { // 角
            return 0.1;
        } else if (mode == 3) { // 分
            return 0.01;
        } else if (mode == 4) { // 厘
            return 0.001;
        }
        return;
    }

    function getPlayPlId() {
        return $(".playPlIdBtn.acti").data("play_pl_id");
    }

    function getPlayId() {
        return $(".playPlIdBtn.acti").data("play_id");
    }

    function getNumber() {
        return $("#number").data("number");
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

    //清除注单内容按钮
    function clearZhudan() {
        var len = $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").length;
        if(len > 0) {
            showTishi1Template();
            $("#block_close").click(function(){
                closeLayer();
            });
            $(".del-Tishi").parent().parent().css({"border":"6px solid #ccc","border-radius":"8px","top":"150px"});
        } else{
            showTishi2Template();
            $("#block_close").click(function(){
                closeLayer2();
            });
            $(".del-TishiType2").parent().parent().css({"border":"6px solid #ccc","border-radius":"8px","top":"150px"});
        }

    }


    //清除投注内容确认按钮
    function enterType1(){
        var len = $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").length;
        if(len > 0) {
            closeLayer();
            clearContent();
        } else{
            closeLayer();
        }
    }

    //清除注单提示取消按钮
    function cancelType1() {
        closeLayer();
    }

    //清除
    function enterType2(){
        closeLayer2();
    }

    //清除注单内容
    function clearContent(){
        $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").remove();
        calcAll();
        if ($("#zhudanList .re_touzhu_tem").length <= 0) {
            $("#zhudanList").html('<tr class="noRecord"><td>暂无投注项</td></tr>');
        }
    }

    //清除手动输入区域
    function clearTextarea() {
        $(".content_jiang textarea").val('');
        clearStateTouZhu();
    }

    //清除手动选中内容
    function clearSelected() {
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $(".re-5x-i i.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        if(typeof clearStateTouZhu == 'function'){
            clearStateTouZhu();
        }
    }

    function closeLayer(){
        if (layerTishi1 != null) {
            layer.close(layerTishi1);
            layerTishi1 = null;
        }
    }

    function closeLayer2(){
        if (layerTishi2 != null) {
            layer.close(layerTishi2);
            layerTishi2 = null;
        }
    }

    // 当前注数内容状态
    function calcAll() {
        var totalZhushu = 0;
        var totalBeishu = 0;
        var totalMoney = 0;
        var valStr = $("#inputBeishu").val();
        var str = '';

        $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").each(function () {
            totalZhushu = add(totalZhushu, $(this).data("bet_zhushu"));
            totalBeishu = add(totalBeishu, $(this).data("bet_beishu"));
            totalMoney = add(totalMoney, $(this).data("bet_total_money"));
        });

        str = '总投 <span>' + totalZhushu + '</span> 注，<span>' + totalBeishu + '</span> 倍，共 <span class="totalM">' + totalMoney + '</span> 元。';
        $("#zongtouInfo").html(str);
        $(".i_beishu").html(valStr);

    }
</script>
