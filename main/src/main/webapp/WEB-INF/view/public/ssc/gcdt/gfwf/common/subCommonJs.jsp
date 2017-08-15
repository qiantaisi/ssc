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
        // 初始化子页面
        initSubPage();
        // 切换玩法
        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass("acti");
            var currentId = $(this).data('play_id');
            if(currentId != null){
                playId = currentId;
            }

            // 初始化子页面
            initSubPage();
        });


        // 幸运选号
        var tmpXyxhNums = getQueryString("nums");
        var tmpXyxhMoney = getQueryString("money");
/*
        if (typeof tmpXyxhNums != 'undefined' && typeof tmpXyxhMoney != 'undefined' && tmpXyxhNums != '' && tmpXyxhMoney != '' && tmpXyxhNums != null && tmpXyxhMoney != null) {
            var oArr = [
                ['wan', '万位'],['qian', '千位'],['bai', '百位'],['shi', '十位'],['ge', '个位']
            ];

            for (var i = 0; i < oArr.length; ++i) {
                tmpXyxhNums = tmpXyxhNums.replace(new RegExp(oArr[i][0],'gm'), oArr[i][1]);
            }

            var arr = tmpXyxhNums.split(",");
            var beishu = parseInt(tmpXyxhMoney) / 2;

            for (var i = 0; i < arr.length; ++i) {
                var strWei = arr[i].toString();
                var wei = (strWei.split("-")[0]).replace("位",'');
                var num = strWei.split("-")[1];

                var obj = $(".wx-page [data-name='" + wei + "'] var.numLine span").eq(num);
                $(obj).addClass("acti");
            }

            $("#inputBeishu").val(beishu);
            $("#inputBeishu").data("beishu",beishu);
            $("#inputMoney").data("inputMoney",tmpXyxhMoney);

            renderZhushu();
        }*/

    });
</script>
