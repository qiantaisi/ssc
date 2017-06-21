<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script src="${resPath}js/ssc/gcdt/gfwf.js?v=20170616"></script>
<script>
    // 通用JS，开发完后转移到gfwf.js里面
    /**
     * 初始化子页面，刷新滚动条，赔率，倍数等等
     */
    function initSubPage() {
        // 初始化模板
        $("#subPage").html(template("template_" + getPlayPlTemplateName()));
        $("#subJRange").html(template("template_jRange"));

        // 内容点击，触发统计注数函数
        $(".Pick ul li span i").click(function () {
            var nameNow = $(this).parent().parent().attr('data-flag');
            if(typeof nameNow != 'undefined' || nameNow == "bdDanXuan"){
                var nowFlag = $(this).parent().hasClass('acti');
                if(nowFlag == true){
                    $(this).parent().removeClass('acti');
                } else{
                    $(this).parent().parent().find('span.acti').removeClass('acti');
                    $(this).parent().toggleClass('acti');
                }
            } else{
                $(this).parent().toggleClass('acti');   // 变色
            }

            // 渲染中部注数，赔率，返点等等
            renderZhushu();
        });

        // 内容点击，触发统计注数函数（特殊号）
        $(".Pick ul li.tsh_li span").click(function () {
            $(this).toggleClass('acti_tsh');   // 变色
            // 渲染中部注数，赔率，返点等等
            renderZhushu();
        });

        // 手动输入，触发统计注数函数
        $('.content_jiang .content_tex').keyup(function () {
            renderZhushu();
        });

        //位置选择
        $(".selposition label input").click(function(){
            var flag = $(this).parent().parent().attr("data-flag");
            var obj = $(this).parent().parent();
            var fnId = $(obj).attr("data-name");   //方案id

            if(typeof flag != "undefined" && flag == "wei-r2"){
                getZuChengFangAnR2(obj,fnId);
            } else if(typeof flag != "undefined" && flag == "wei-r3"){
                getZuChengFangAnR3(obj,fnId);
            }
            renderZhushu();
        });

        // 加减号
        initJjh();

        var plAndMaxFd = getPlAndMaxFd();   // 获取当前选中的玩法赔率和返点
        var maxPlayPl;  // 最高赔率
        var maxFandian;  // 最大返点
        var minPl;  // 最低赔率
        var convertBlMoney;  // 每1%转换赔率
        if (plAndMaxFd instanceof Array) {  // 多赔率
            maxPlayPl = plAndMaxFd[0].playPl;  // 最高赔率
            maxFandian = plAndMaxFd[0].maxFdBl;    // 最大返点
            minPl = plAndMaxFd[0].minPl;   // 最低赔率
        } else {
            maxPlayPl = plAndMaxFd.playPl;  // 最高赔率
            maxFandian = plAndMaxFd.maxFdBl;    // 最大返点
            minPl = plAndMaxFd.minPl;   // 最低赔率
        }
        convertBlMoney = (maxPlayPl - minPl) / maxFandian;  // 每1%转换赔率

        // 初始化返点赔率滚动条
        $('.slider-input').jRange({
            from: 0,
            to: maxFandian, // 最大返点
            step: 0.1,  // 每步
            format: '%s',
            width: $(".cl-1004").width(),   // 滚动条总长度
            theme: 'theme-green my-slide-theme',
            showLabels: false,
            showScale: false,
            snap: true,
            onstatechange: function () {
                // 返点比例
                var fandianBili = parseFloat($(".slider-input").val()).toFixed(1); // 当前滚动条移动的比例
                $("#fandian-bfb").data("value", fandianBili);
                $("#fandian-bfb").html(fandianBili + "%");    // 渲染界面中百分比部分

                // 赔率 = 最大配率 - 返点比例 * 转换比例
                var pl = (maxPlayPl - fandianBili * convertBlMoney).toFixed(3);
                $("#jiangjin-change").data("value", pl);

                // 渲染界面中赔率部分
                if (plAndMaxFd instanceof Array) {  // 多赔率
                    var strArr = [];
                    $.each(plAndMaxFd, function(index, value) {
                        var tmpConvertBlMoney = (value.playPl - value.minPl) / value.maxFdBl;
                        strArr.push((value.playPl - fandianBili * tmpConvertBlMoney).toFixed(3));
                    });
                    $("#jiangjin-change").html(strArr.join('|'));
                } else {
                    $("#jiangjin-change").html(pl);
                }

                // 渲染中部注数，赔率，返点等等
                renderZhushu();
            }
        });

        $(".my-slide-theme .back-bar .pointer").attr("tabIndex", -1);    // 滑块添加tabIndex来获得focus事件
//        $(".my-slide-theme .back-bar .pointer").focus(function() {
//            if ($(this).hasClass("my-slide-theme-focus")) {
//                return;
//            }
//            $(this).addClass("my-slide-theme-focus");
//        });
//
//        $(".my-slide-theme .back-bar .pointer").focus(function() {
//            $(this).addClass("my-slide-theme-focus");
//        });
    }

    //任选2 组成方案获取函数
    function getZuChengFangAnR2(obj, fnId) {
        //选中位置自动获取组成方案-直选单式
        var arrTemp = [];
        $(obj).find("input[type='checkbox']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length == 3) {
            $("#positioninfo-"+ fnId +"").html(3);
            $("#positioncount-"+ fnId +"").html(3);
        } else if (arrTemp.length == 4) {
            $("#positioninfo-"+ fnId +"").html(6);
            $("#positioncount-"+ fnId +"").html(4);
        } else if (arrTemp.length == 5) {
            $("#positioninfo-"+ fnId +"").html(10);
            $("#positioncount-"+ fnId +"").html(5);
        } else if (arrTemp.length == 2) {
            $("#positioninfo-"+ fnId +"").html(1);
            $("#positioncount-"+ fnId +"").html(2);
        } else if (arrTemp.length == 1) {
            $("#positioninfo-"+ fnId +"").html(0);
            $("#positioncount-"+ fnId +"").html(1);
        } else {
            $("#positioninfo-"+ fnId +"").html(0);
            $("#positioncount-"+ fnId +"").html(0);
        }
    }


    //任选3 组成方案获取函数
    function getZuChengFangAnR3(obj, fnId) {
        //选中位置自动获取组成方案-直选单式
        var arrTemp = [];
        $(obj).find("input[type='checkbox']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length == 3) {
            $("#positioninfo-"+ fnId +"").html(1);
            $("#positioncount-"+ fnId +"").html(3);
        } else if (arrTemp.length == 4) {
            $("#positioninfo-"+ fnId +"").html(4);
            $("#positioncount-"+ fnId +"").html(4);
        } else if (arrTemp.length == 5) {
            $("#positioninfo-"+ fnId +"").html(10);
            $("#positioncount-"+ fnId +"").html(5);
        } else if (arrTemp.length == 2) {
            $("#positioninfo-"+ fnId +"").html(0);
            $("#positioncount-"+ fnId +"").html(2);
        } else if (arrTemp.length == 1) {
            $("#positioninfo-"+ fnId +"").html(0);
            $("#positioncount-"+ fnId +"").html(1);
        } else {
            $("#positioninfo-"+ fnId +"").html(0);
            $("#positioncount-"+ fnId +"").html(0);
        }
    }


    function initJjh() {
        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").click(function () {
            var text = $(this).text();
            $(this).parent().parent().find('input').val(text);
            $(this).parent().hide();

            $(this).parent().parent().find('input').data("money", parseInt(text));
            renderZhushu();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down span").click(function () {
            $(this).parent().find(".down_menu").show();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").parent().parent().hover(function () {
        }, function () {
            $(this).find(".down_menu").hide();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fl").click(function () {
            var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
            if (isNaN(val) || typeof val != 'number') {
                val = 1;
            }
            val = parseInt(val);

            --val;
            val = val < 1 ? 1 : val;
            $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);
            renderZhushu();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fr").click(function () {
            var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
            if (isNaN(val) || typeof val != 'number') {
                val = 1;
            }
            val = parseInt(val);

            ++val;
            val = val < 1 ? 1 : val;
            $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);
            renderZhushu();
        });
    }

    /**
     * 渲染中部注数，赔率，返点等等
     */
    function renderZhushu() {
        // 注数算法
        var zhushuFun = getPlayPlFun_zhushu();

        if (typeof zhushuFun != 'undefined') {
            var zhushu = eval(zhushuFun + "()");   // 注数
            if (typeof zhushu == "undefined" || zhushu < 0){
//                clearStateTouZhu();
                return;
            }

            var inputBeishu = $("#inputBeishu").val();
            var inputFandianBili = $("#fandian-bfb").data("value") / 100;

            $('.p1 .i0').html(zhushu);  // 渲染注数
            $('.p1 .i_beishu').html($("#inputBeishu").val());   // 渲染倍数

            // 投注总金额 = 倍数 * 注数 * 单注金额
            var totalMoney = parseFloat((inputBeishu * zhushu * $("#inputMoney").data("money")).toFixed(3));
            $('.p1 .i_money').html(totalMoney);

            // 返点金额 = 投注总金额 * 返点比例
            var fandianMoney = parseFloat((totalMoney * inputFandianBili).toFixed(3));
            $('.p1 .i_fanD').html(fandianMoney);

            //输入倍数十重新计算
            $("#inputBeishu").keyup(function (){
                renderZhushu();
            });

            //输入倍数失去焦点计算
            $("#inputBeishu").blur(function(){
                var valStr = $("#inputBeishu").val();
                if(typeof valStr == "undefined" || valStr == "" || valStr == null){
                    $("#inputBeishu").val("1");
                }
                renderZhushu();
            });
        }
    }

    /**
     * 获取当前赔率模板名称
     */
    function getPlayPlTemplateName() {
        return $(".playPlIdBtn.acti").data("name");
    }

    /**
     * 获取当前赔率随机算法
     */
    function getPlayPlFun_suiji() {
        return $(".playPlIdBtn.acti").data("fun_suiji");
    }

    /**
     * 获取当前赔率注数算法
     */
    function getPlayPlFun_zhushu() {
        return $(".playPlIdBtn.acti").data("fun_zhushu");
    }

    /**
     * 获取当前赔率内容算法
     */
    function getPlayPlFun_content() {
        return $(".playPlIdBtn.acti").data("fun_content");
    }

    /**
     * 获取当前赔率ID
     */
    function getPlayPlId() {
        return $(".playPlIdBtn.acti").data("play_pl_id");
    }

    /**
     * 获取当前玩法ID
     */
    function getPlayId() {
        return $(".playPlIdBtn.acti").data("play_id");
    }

    /**
     * 获取当前期数
     */
    function getNumber() {
        return $("#number").data("number");
    }

    /**
     * 获取赔率和最高返点
     */
    function getPlAndMaxFd() {
        // 全局赔率变量
        var playPlId = getPlayPlId();   // 当前赔率ID
        if (playPlId.toString().indexOf('|') > 0) {    // 多赔率
            var result = [];
            var tmpArr = playPlId.split('|');
            $.each(tmpArr, function(index, value) {
                for (var i = 0; i < gfwfPlJson.sscPlayPlList.length; ++i) {
                    var o = gfwfPlJson.sscPlayPlList[i];
                    if (o.playPlId == value) {
                        result.push(o);
                    }
                }
            });
            return result;
        } else {    // 单一赔率
            for (var i = 0; i < gfwfPlJson.sscPlayPlList.length; ++i) {
                var o = gfwfPlJson.sscPlayPlList[i];
                if (o.playPlId == playPlId) {
                    return o;
                }
            }
        }
        return;
    }

    /**
     * 清除状态
     */
    function clearStateTouZhu(){
        $('.p1 .i0').html('0');
        $('.p1 .i_beishu').html('1');
        $('.p1 .i_fanD').html('0');
        $('.p1 .i_money').html('0');
        $('.slider-input').jRange("setValue", '0');
    }
</script>
<script>
    //=======================注数统计=================================

    //******************任选3*******************
    /**
     * 注数-组选和值
     */
    function zhushu_rx3zuxhz(){
        var hzArr = [];
        $.each($(".recl-1010-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if (hzArr.length <= 0) {
            return 0;
        }

        var newArr = [];
        for (var i = 0; i < hzArr.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    for (var y1 = 0; y1 < 10; y1++) {
                        if (x + y + y1 == hzArr[i] && !(x == y && x == y1 && y == y1)) {
                            var arr = [];
                            arr.push(x);
                            arr.push(y);
                            arr.push(y1);
                            arr.sort();
                            newArr.push(arr.join(""));
                        }
                    }
                }
            }
        }

        newArr = newArr.uniqueArr();
        var zhushu = newArr.length;
        var shu = $("#positioninfo-zuxhz").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    /**
     * 注数-混合组合
     */
    function zhushu_rx3hhzux(){
        var zhushu = 0;
        var arrTemp = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-hhzux input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });

        var textStr = $(".recl-1009-hhzux .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (!(twoStr == threeStr && oneStr == threeStr && twoStr == oneStr)) {
                tempArr.push(arr.join(""));
            }
        }
        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        zhushu = tempArr.length;
        var tempNum = $("#positioninfo-hhzux").html();
        zhushu = tempNum * zhushu;
        return zhushu;
    }

    /**
     * 注数-组六单式
     */
    function zhushu_rx3z6ds(){
        var zhushu = 0;
        var arrTemp = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-zu6ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });

        var textStr = $(".recl-1008-zu6ds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
                tempArr.push(arr.join(""));
            }
        }

        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        zhushu = tempArr.length;
        var tempNum = $("#positioninfo-zu6ds").html();
        zhushu = tempNum * zhushu;
        return zhushu;
    }

    /**
     * 注数-组六复式
     */
    function zhushu_rx3z6fs(){
        var fuShiArr = [], newArr = [];
        $.each($(".recl-1007-zu6fs ul li[data-name = '组六'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = fuShiArr.length;
        if (zlLength < 3) {
            return 0;
        }

        newArr = getZuLiuNewArrs(fuShiArr);
        var zhushu = newArr.length;
        var shu = $("#positioninfo-zu6fs").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    /**
     * 注数-组三单式
     */
    function zhushu_rx3z3ds(){
        var zhushu = 0;
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var textStr = $(".recl-1006-zu3ds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));

        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-zu3ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });

        var arr_new = textStr.split(",");

        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }

        for (var n = 0; n < newArr.length; n++) {
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(arr.join(""));
            } else {
                errorArr.push(newArr[n]);
            }
        }
        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        zhushu = tempArr.length;
        var tempNum = $("#positioninfo-zu3ds").html();
        zhushu = tempNum * zhushu;
        return zhushu;
    }

    /**
     * 注数-组三复式
     */
    function zhushu_rx3z3fs(){
        var zuArr = [];
        $.each($(".recl-1005-zu3fs ul li[data-name = '组三'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });
        var tempArr = [];
        for (var i = 0; i < zuArr.length; i++) {
            for (var i1 = 0; i1 < zuArr.length; i1++) {
                if (zuArr[i] != zuArr[i1]) {
                    tempArr.push(zuArr[i] + "" + zuArr[i1]);
                }
            }

        }
        var shu = $("#positioninfo-zu3fs").html();
        var lengthArr = tempArr.length * shu;
        return lengthArr;
    }

    /**
     * 注数-直选和值
     */
    function zhushu_rx3zxhz(){
        var hzArr = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if (hzArr.length <= 0) {
            return 0;
        }

        var newArr = [];
        for (var i = 0; i < hzArr.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    for (var y1 = 0; y1 < 10; y1++) {
                        if (x + y + y1 == hzArr[i]) {
                            newArr.push(x + "" + y + "" + y1);
                        }
                    }
                }
            }
        }

        var zhushu = newArr.length;
        var shu = $("#positioninfo-hz").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    /**
     * 注数-直选单式
     */
    function zhushu_rx3zxds(){
        var errorStr = '';
        var allErrorArr = [];
        var errorArr = [];
        var newArr = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });

        var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
        var shu = $("#positioninfo-ds").html();
        var zhushu = 0;

        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));

        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }

        newArr = newArr.uniqueArr(); //去掉重复代码

        var temp = newArr.length;
        zhushu = temp * shu;
        return zhushu;
    }

    /**
     * 注数-直选复式
     */
    function zhushu_rx3zxfs(){
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var numArr = [];
        var indexArr = [wanArr, qianArr, baiArr, shiArr, geArr];

        if (wanArr.length > 0) {
            numArr.push(0);
        }
        if (qianArr.length > 0) {
            numArr.push(1);
        }
        if (baiArr.length > 0) {
            numArr.push(2);
        }
        if (shiArr.length > 0) {
            numArr.push(3);
        }
        if (geArr.length > 0) {
            numArr.push(4);
        }

        if (numArr.length < 3) {
            return 0;
        }

        var tmpArr = getFlagArrs(numArr, 3);
        var result = 0;
        $.each(tmpArr, function (index, value) {
            var tmpResult = 0;
            var tmpIndexArr = value.split(" ");
            $.each(tmpIndexArr, function (index2, value2) {
                tmpResult = tmpResult == 0 ? 1 : tmpResult;
                tmpResult *= indexArr[parseInt(value2)].length;

            });
            result += tmpResult;
        });
        return result;
    }

    //******************任选2*******************
    /**
     * 注数-组选和值
     */
    function zhushu_rx2zuxhz(){
        var hzArr = [];
        $.each($(".recl-1007-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if (hzArr.length <= 0) {
            return 0;
        }
        var newArr = [];
        for (var i = 0; i < hzArr.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    if ((x + y) == hzArr[i] && x != y) {
                        var arr = [];
                        arr.push(x);
                        arr.push(y);
                        arr.sort();
                        newArr.push(arr.join(""));
                    }
                }
            }
        }
        newArr = newArr.uniqueArr();
        var zhushu = newArr.length;
        var shu = $("#positioninfo-zuhz").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    /**
     * 注数-直选单式
     */
    function zhushu_rx2zuxds(){
        var checkStrArr = [], checkArr = [];
        var zhushu = 0;
        //选取选中checkbox
        $.each($(".re-select-zuxds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });

        var errorStr = '';
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var textStr = $(".recl-1006-zuxds .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                var oneStr = (arr_new[i].toString()).substr(0, 1);
                var twoStr = (arr_new[i].toString()).substr(1, 1);
                var arr = [];
                arr.push(parseInt(oneStr));
                arr.push(parseInt(twoStr));
                arr.sort();
                newArr.push(arr.join(""));
            }
        }

        repeatArr = newArr.duplicate(); //重复号码
        newArr = newArr.uniqueArr();
        var temp = newArr.length;
        var shu = $("#positioninfo-zuds").html();
        zhushu = temp * shu;
        return zhushu;
    }

    /**
     * 注数-组选复式
     */
    function zhushu_rx2zuxfs(){
        var zuArr = [];
        var tempArr = [];
        $.each($(".recl-1005-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });

        var zuLength = zuArr.length;

        if (zuLength < 2) {
            return;
        }

        for (var i = 0; i < zuArr.length; i++) {
            for (var i1 = 0; i1 < zuArr.length; i1++) {
                if (zuArr[i] != zuArr[i1]) {
                    var arr = [];
                    arr.push(zuArr[i]);
                    arr.push(zuArr[i1]);
                    arr.sort();
                    tempArr.push(arr.join(""));
                }
            }
        }

        tempArr = tempArr.uniqueArr();
        var zhushu = tempArr.length;
        var shu = $("#positioninfo-zufs").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    /**
     * 注数-直选和值
     */
    function zhushu_rx2zxhz(){
        var hzArr = [];
        var newArr = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if (hzArr.length <= 0) {
            return 0;
        }
        for (var i = 0; i < hzArr.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    if (x + y == hzArr[i]) {
                        newArr.push(x + "" + y);
                    }
                }
            }
        }
        var zhushu = newArr.length;
        var shu = $("#positioninfo-hz").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    /**
     * 注数-直选单式
     */
    function zhushu_rx2zxds(){
        var checkStrArr = [], checkArr = [];
        var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
        //选取选中checkbox
        $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        var newArr = [], arrTemp = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                newArr.push(arr_new[i]);
            }
        }

        var temp = newArr.length;
        var shu = $("#positioninfo-ds").html();
        var zhushu = temp * shu;
        return zhushu;
    }

    /**
     * 注数-直选复式
     */
    function zhushu_rx2zxfs(){
        var arrNew = [], tempArr = [];
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        if (wanArr.length > 0) {
            arrNew.push(wanArr);
        }
        if (qianArr.length > 0) {
            arrNew.push(qianArr);
        }
        if (baiArr.length > 0) {
            arrNew.push(baiArr);
        }
        if (shiArr.length > 0) {
            arrNew.push(shiArr);
        }
        if (geArr.length > 0) {
            arrNew.push(geArr);
        }

        if (arrNew.length < 2) {
            return 0;
        }

        for (var i = 0; i < arrNew.length; i++) {
            for (var i1 = 0; i1 < arrNew[i].length; i1++) {
                for (var x = i + 1; x < arrNew.length; x++) {
                    for (var n = 0; n < arrNew[x].length; n++) {
                        tempArr.push(arrNew[i][i1] + "" + arrNew[x][n]);
                    }
                }
            }
        }
        return tempArr.length;

    }

    //******************不定位*******************
    /**
     * 注数-五星三码
     */
    function zhushu_wx3m(){
        var budwArr = [];
        $.each($(".recl-1012-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });
        var newArr = [];
        for (var i = 0; i < budwArr.length; i++) {
            for (var j = 0; j < budwArr.length; j++) {
                for (var x = 0; x < budwArr.length; x++) {
                    if (i != j && j != x && i != x) {
                        var arr = [];
                        arr.push(budwArr[i]);
                        arr.push(budwArr[j]);
                        arr.push(budwArr[x]);
                        arr.sort();
                        newArr.push(arr.join(","));
                    }
                }
            }
        }

        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    /**
     * 注数-五星二码
     */
    function zhushu_wxem(){
        var budwArr = [];
        $.each($(".recl-1011-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });
        var newArr = [];
        for (var i = 0; i < budwArr.length; i++) {
            for (var j = 0; j < budwArr.length; j++) {
                if (i != j) {
                    var arr = [];
                    arr.push(budwArr[i]);
                    arr.push(budwArr[j]);
                    arr.sort();
                    newArr.push(arr.join(","));
                }
            }
        }

        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    /**
     * 注数-五星一码
     */
    function zhushu_wxym(){
        var budwArr = [];
        $.each($(".recl-1010-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        return budwArr.length;
    }

    /**
     * 注数-后四二码
     */
    function zhushu_h4em(){
        var budwArr = [];
        $.each($(".recl-1009-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });
        var newArr = [];
        for (var i = 0; i < budwArr.length; i++) {
            for (var j = 0; j < budwArr.length; j++) {
                if (i != j) {
                    var arr = [];
                    arr.push(budwArr[i]);
                    arr.push(budwArr[j]);
                    arr.sort();
                    newArr.push(arr.join(","));
                }
            }
        }

        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    /**
     * 注数-后四一码
     */
    function zhushu_h4ym(){
        var budwArr = [];
        $.each($(".recl-1008-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        return budwArr.length;
    }

    /**
     * 注数-前四二码
     */
    function zhushu_q4em(){
        var budwArr = [];
        $.each($(".recl-1007-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });
        var newArr = [];
        for (var i = 0; i < budwArr.length; i++) {
            for (var j = 0; j < budwArr.length; j++) {
                if (i != j) {
                    var arr = [];
                    arr.push(budwArr[i]);
                    arr.push(budwArr[j]);
                    arr.sort();
                    newArr.push(arr.join(","));
                }
            }
        }

        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    /**
     * 注数-前四一码
     */
    function zhushu_q4ym(){
        var budwArr = [];
        $.each($(".recl-1006-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
        });

        return budwArr.length;
    }

    /**
     * 注数-后三二码
     */
    function zhushu_hsem(){
        var budwArr = [];
        $.each($(".recl-1005-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });
        var newArr = [];
        for (var i = 0; i < budwArr.length; i++) {
            for (var j = 0; j < budwArr.length; j++) {
                if (i != j) {
                    var arr = [];
                    arr.push(budwArr[i]);
                    arr.push(budwArr[j]);
                    arr.sort();
                    newArr.push(arr.join(","));
                }
            }
        }
        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    /**
     * 注数-后三一码
     */
    function zhushu_hsym(){
        var budwArr = [];
        $.each($(".recl-1004-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        return budwArr.length;
    }

    /**
     * 注数-前三二码
     */
    function zhushu_qsem(){
        var budwArr = [];
        $.each($(".recl-1003-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });
        var newArr = [];
        for (var i = 0; i < budwArr.length; i++) {
            for (var j = 0; j < budwArr.length; j++) {
                if (i != j) {
                    var arr = [];
                    arr.push(budwArr[i]);
                    arr.push(budwArr[j]);
                    arr.sort();
                    newArr.push(arr.join(","));
                }
            }
        }
        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    /**
     * 注数-前三一码
     */
    function zhushu_qsym(){
        var budwArr = [];
        $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
        });

        return budwArr.length;
    }

    //*************************定位胆****************************
    /**
     * 注数-定位胆
     */
    function zhushu_dwd(){
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var wanLength = wanArr.length;
        var qianLength = qianArr.length;
        var baiLength = baiArr.length;
        var shiLength = shiArr.length;
        var geLength = geArr.length;

        if (wanLength <= 0 && qianLength <= 0 && baiLength <= 0 && shiLength <= 0 && geLength <= 0) {
            return 0;
        }

        if (wanLength > 0) {
            newArr = newArr.concat(wanArr);
        }
        if (qianLength > 0) {
            newArr = newArr.concat(qianArr);
        }
        if (baiLength > 0) {
            newArr = newArr.concat(baiArr);
        }
        if (shiLength > 0) {
            newArr = newArr.concat(shiArr);
        }
        if (geLength > 0) {
            newArr = newArr.concat(geArr);
        }
        return newArr.length;
    }

    //*************************前2****************************
    /**
     * 注数-组选包胆
     */
    function zhushu_q2zuxbd(valArr){
        var tempArr = [];
        var bdArr = [], nowTemp = [];
        $.each($(".recl-1009-zuxbd ul li[data-name = '胆码'] span.acti"), function (index, value) {
            nowTemp.push($.trim($(this).find("i").html()));
        });

        if (typeof valArr != "undefined") {
            bdArr = valArr;
        } else {
            bdArr = nowTemp;
        }
        var bdLength = bdArr.length;
        if (bdLength <= 0) {
            return 0;
        }
        for (var n = 0; n < bdArr.length; n++) {
            for (var i = 0; i < 10; i++) {
                if (i != bdArr[n]) {
                    tempArr.push(i + "" + bdArr[n]);
                }
            }
        }
        return tempArr.length;
    }

    /**
     * 注数-组选和值
     */
    function zhushu_q2zuxhz(valArr){
        var tempArr = [];
        var hzArr = [], temp = [], nowTemp = [];
        var sumTemp = 0, num = 0;
        $.each($(".recl-1008-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            nowTemp.push($.trim($(this).find("i").html()));
        });
        if (typeof valArr != "undefined") {
            hzArr = valArr;
        } else {
            hzArr = nowTemp;
        }
        var hzLength = hzArr.length;
        if (hzLength <= 0) {
            return 0;
        }

        for (var n = 0; n < hzArr.length; n++) {
            sumTemp = parseInt(hzArr[n]);
            num = parseInt(hzArr[n]);
            while (sumTemp >= 0) {
                temp.push(sumTemp);
                sumTemp--;
            }

            for (var i = 0; i < temp.length; i++) {
                for (var i1 = 0; i1 < temp.length; i1++) {
                    if (temp[i] + temp[i1] == num && temp[i] <= 9 && temp[i1] <= 9) {
                        if (temp[i] != temp[i1]) {
                            var arr1 = [];
                            arr1.push(temp[i]);
                            arr1.push(temp[i1]);
                            arr1.sort();
                            tempArr.push(arr1.join(""));
                        }
                    }
                }
            }
        }
        if (tempArr.length <= 0) {
            return 0;
        }
        tempArr = tempArr.uniqueArr();
        return tempArr.length;
    }

    /**
     * 注数-组选单式
     */
    function zhushu_q2zuxds(){
        var textStr = $(".recl-1007-zuxds .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                var strTemp = "", strTemp1 = "";
                var str1 = arr_new[i].toString();
                var str2 = arr_new[i].toString();
                strTemp = str1.substr(0, 1);
                strTemp1 = str2.substr(1, 1);
                if (strTemp != strTemp1) {
                    var tempArr = [];
                    tempArr.push(parseInt(strTemp));
                    tempArr.push(parseInt(strTemp1));
                    tempArr.sort();
                    newArr.push(tempArr.join(""));
                }
            }
        }
        if (newArr.length <= 0) {
            return 0;
        }
        newArr = newArr.uniqueArr(); //去掉重复值
        return newArr.length;
    }


    /**
     * 注数-组选复式
     */
    function zhushu_q2zuxfs(){
        var tempArr = [], zuxArr = [];
        $.each($(".recl-1006-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
            zuxArr.push($.trim($(this).find("i").html()));
        });

        var xLength = zuxArr.length;
        if (xLength < 2) {
            return 0;
        }

        for(var i = 0; i < zuxArr.length; i++){
            for(var i1 = 0; i1 < zuxArr.length; i1++){
                if(zuxArr[i] != zuxArr[i1]){
                    var xArr =[];
                    xArr.push(zuxArr[i]);
                    xArr.push(zuxArr[i1]);
                    xArr.sort();
                    tempArr.push(xArr.join(""));
                }
            }
        }
        tempArr = tempArr.uniqueArr();
        return tempArr.length;
    }

    /**
     * 注数-直选跨度
     */
    function zhushu_q2zxkd(valArr){
        var tempArr = [];
        var kdArr = [], numTemp = [];
        var num = 0;
        $.each($(".recl-1005-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            numTemp.push($.trim($(this).find("i").html()));
        });
        if (typeof valArr != "undefined") {
            kdArr = valArr;
        } else {
            kdArr = numTemp;
        }

        var hzLength = kdArr.length;
        if (hzLength <= 0) {
            return 0;
        }

        for (var n = 0; n < kdArr.length; n++) {
            num = kdArr[n];
            for (var i = 0; i < 10; i++) {
                for (var i1 = 0; i1 < 10; i1++) {
                    var numTemp = [];
                    numTemp.push(i);
                    numTemp.push(i1);
                    numTemp.sort();
                    if (numTemp[1] - numTemp[0] == num) {
                        tempArr.push(i + "" + i1);
                    }
                }
            }
        }

        tempArr = tempArr.uniqueArr();
        return tempArr.length;
    }

    /**
     * 注数-直选和值
     */
    function zhushu_q2zxhz(valArr){
        var tempArr = [];
        var hzArr = [], temp = [], nowTemp = [];
        var tempValue = 0, sumTemp = 0, num = 0;
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            nowTemp.push($.trim($(this).find("i").html()));
        });

        if (typeof valArr != "undefined") {
            hzArr = valArr;
        } else {
            hzArr = nowTemp;
        }

        var hzLength = hzArr.length;
        if (hzLength <= 0) {
            return 0;
        }

        for (var n = 0; n < hzArr.length; n++) {
            sumTemp = parseInt(hzArr[n]);
            num = parseInt(hzArr[n]);
            while (sumTemp >= 0) {
                temp.push(sumTemp);
                sumTemp--;
            }

            for (var i = 0; i < temp.length; i++) {
                for (var i1 = 0; i1 < temp.length; i1++) {
                    if (temp[i] + temp[i1] == num && temp[i] <= 9 && temp[i1] <= 9) {
                        tempArr.push(temp[i] + "" + temp[i1]);
                    }
                }
            }
        }

        tempArr = tempArr.uniqueArr();
        return tempArr.length;
    }

    /**
     * 注数-直选单式
     */
     function zhushu_q2zxds(){
        var textStr = $(".recl-1003 .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                newArr.push(arr_new[i]);
            }
        }

        if (newArr.length <= 0) {
            return 0;
        }

        return newArr.length;
     }

    /**
     * 注数-直选复式
     */
     function zhushu_q2zxfs(){
        var tempArr = [];
        var wanArr = [], qianArr = [];
        $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });

        var wanLength = wanArr.length;
        var qianLength = qianArr.length;

        if (wanLength <= 0 || qianLength <= 0) {
            return 0;
        }

        for(var i = 0; i < wanArr.length; i++){
            for(var i1 = 0; i1 < qianArr.length; i1++){
                tempArr.push(wanArr[i] + "" + qianArr[i1]);
            }
        }
        return tempArr.length;
     }


    //=======================前3=======================
    /**
     * 注数-特殊号
     */
    function zhushu_q3tsh() {
        var tsArr = [];
        $.each($(".cl-1015-tsh ul li.tsh_li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
            tsArr.push($.trim($(this).html()));
        });
        var zlLength = tsArr.length;
        if (zlLength <= 0) {
            return 0;
        }
        return tsArr.length;
    }

    /**
     * 注数-和值尾数
     */
    function zhushu_q3hzws() {
        var wsArr = [], newArr = [];
        $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
            wsArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = wsArr.length;
        if (zlLength < 0) {
            return 0;
        }
        return zlLength;
    }

    /**
     * 注数-组选包胆
     */
    function zhushu_q3zxbd(){
        var baoDanArr = [], newArr = [];
        $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
            baoDanArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = baoDanArr.length;
        if (zlLength < 0) {
            return 0;
        }
        newArr = getZxbdNewArrs(baoDanArr);
        return newArr.length;
    }

    /**
     * 注数-组选和值
     */
    function zhushu_q3zuxhz(){
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = fuShiArr.length;
        if (zlLength <= 0) {
            return 0;
        }
        newArr = getZxhzNewArrs(fuShiArr);
        return newArr.length;
    }

    /**
     * 注数-混合组选
     */
    function zhushu_q3hhzx(){
        var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '';
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            }
        }
        return tempArr.length;
    }

    /**
     * 注数-组六单式
     */
    function zhushu_q3z6ds(){
        var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            }
        }
        return tempArr.length;
    }

    /**
     * 注数-组六复式
     */
    function zhushu_q3z6fs(){
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = fuShiArr.length;
        if (zlLength < 3) {
            return 0;
        }
        newArr = getZuLiuNewArrs(fuShiArr);
        return newArr.length;
    }

    /**
     * 注数-组三单式
     */
    function zhushu_q3z3ds(){
        var zhushu = 0;
        var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            }
        }

        return tempArr.length;
    }


    /**
     * 注数-组三复式
     */
    function zhushu_q3z3fs(){
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });

        var heZhiLength = fuShiArr.length;
        if (heZhiLength <= 1) {
            return 0;
        }
        newArr = getZuXuanNewArrs(fuShiArr);
        return newArr.length;
    }

    /**
     * 注数-直选跨度
     */
    function zhushu_q3zxkd() {
        var newArr = [];
        var kaDuArr = [];
        $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            kaDuArr.push($.trim($(this).find("i").html()));
        });
        if (kaDuArr.length <= 0) {
            return 0;
        }
        newArr = getKaduNewArrs(kaDuArr);
        return newArr.length;
    }

    /**
     * 注数-直选和值
     */
    function zhushu_q3zxhz() {
        var heZhiArr = [], newArr = [];
        $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        var heZhiLength = heZhiArr.length;
        if (heZhiLength <= 0) {
            return 0;
        }

        newArr = getHezNewArrs(heZhiArr);
        return newArr.length;
    }

    /**
     * 注数-前3组合
     */
    function zhushu_q3zh() {
        var wanArr = [], qianArr = [], baiArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });

        var wanLength = wanArr.length;
        var qianLength = qianArr.length;
        var baiLength = baiArr.length;

        if (wanLength <= 0 || qianLength <= 0 || baiLength <= 0) {
            return;
        }

        var newArr = getHszhNewArrs(wanArr, qianArr, baiArr);

        return newArr.length;
    }

    /**
     * 注数-前3直选单式
     */
    function zhushu_q3zxds() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    /**
     * 注数-前3直选复式
     */
    function zhushu_q3zxfs() {
        var newArr = [];
        var wanArr = [], qianArr = [], baiArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });

        var wanLength = wanArr.length;
        var qianLength = qianArr.length;
        var baiLength = baiArr.length;
        newArr = getThreeNewArrs(wanArr, qianArr, baiArr);
        return newArr.length;
    }


    /*********************************/
        /**********后三**********/

    /**
     * 注数-特殊号
     */
    function zhushu_h3tsh() {
        var tsArr = [];
        $.each($(".cl-1015-tsh ul li.tsh_li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
            tsArr.push($.trim($(this).html()));
        });
        var zlLength = tsArr.length;
        if (zlLength <= 0) {
            return 0;
        }
        return tsArr.length;
    }

    /**
     * 注数-和值尾数
     */
    function zhushu_h3hzws() {
        var wsArr = [], newArr = [];
        $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
            wsArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = wsArr.length;
        if (zlLength < 0) {
            return 0;
        }
        return zlLength;
    }

    /**
     * 注数-组选包胆
     */
    function zhushu_h3zxbd(){
        var baoDanArr = [], newArr = [];
        $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
        baoDanArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = baoDanArr.length;
        if (zlLength < 0) {
        return 0;
        }
        newArr = getZxbdNewArrs(baoDanArr);
        return newArr.length;
    }

    /**
     * 注数-组选和值
     */
    function zhushu_h3zuxhz(){
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = fuShiArr.length;
        if (zlLength <= 0) {
            return 0;
        }
        newArr = getZxhzNewArrs(fuShiArr);
        return newArr.length;
    }

    /**
     * 注数-混合组选
     */
    function zhushu_h3hhzx(){
        var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '';
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            }
        }
        return tempArr.length;
    }

    /**
     * 注数-组六单式
     */
    function zhushu_h3z6ds(){
        var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            }
        }
        return tempArr.length;
    }

    /**
     * 注数-组六复式
     */
    function zhushu_h3z6fs(){
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = fuShiArr.length;
        if (zlLength < 3) {
            return 0;
        }
        newArr = getZuLiuNewArrs(fuShiArr);
        return newArr.length;
    }

    /**
     * 注数-组三单式
     */
    function zhushu_h3z3ds(){
        var zhushu = 0;
        var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            }
        }

        return tempArr.length;
    }


    /**
     * 注数-组三复式
     */
    function zhushu_h3z3fs(){
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });

        var heZhiLength = fuShiArr.length;
        if (heZhiLength <= 1) {
            return 0;
        }
        newArr = getZuXuanNewArrs(fuShiArr);
        return newArr.length;
    }

    /**
     * 注数-直选跨度
     */
    function zhushu_h3zxkd() {
        var newArr = [];
        var kaDuArr = [];
        $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            kaDuArr.push($.trim($(this).find("i").html()));
        });
        if (kaDuArr.length <= 0) {
            return 0;
        }
        newArr = getKaduNewArrs(kaDuArr);
        return newArr.length;
    }

    /**
     * 注数-直选和值
     */
    function zhushu_h3zxhz() {
        var heZhiArr = [], newArr = [];
        $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        var heZhiLength = heZhiArr.length;
        if (heZhiLength <= 0) {
            return 0;
        }

        newArr = getHezNewArrs(heZhiArr);
        return newArr.length;
    }

    /**
     * 注数-后3组合
     */
    function zhushu_h3zh() {
        var baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var baiLength = baiArr.length;
        var shiLength = shiArr.length;
        var geLength = geArr.length;

        if (baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
            return;
        }

        var newArr = getHszhNewArrs(baiArr, shiArr, geArr);
        return newArr.length;
    }

    /**
     * 注数-后3直选单式
     */
    function zhushu_h3zxds() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    /**
     * 注数-后3直选复式
     */
    function zhushu_h3zxfs() {
        var newArr = [];
        var baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var baiLength = baiArr.length;
        var shiLength = shiArr.length;
        var geLength = geArr.length;
        if (baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
            return 0;
        }
        newArr = getThreeNewArrs(baiArr, shiArr, geArr);
        return newArr.length;
    }

    /**
     * 注数-5星直选单式
     */
    function zhushu_5xzxds() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 5) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    /**
     * 注数-4星直选单式
     */
    function zhushu_4xzxds() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    /**
     * 注数-5星直选复式
     */
    function zhushu_5xzxfs() {
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var wanLength = wanArr.length;
        var qianLength = qianArr.length;
        var baiLength = baiArr.length;
        var shiLength = shiArr.length;
        var geLength = geArr.length;

        if (wanLength <= 0 || qianLength <= 0 || baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
            return 0;
        }

        var newArr = getNewArrs(wanArr, qianArr, baiArr, shiArr, geArr);
        if (typeof newArr == "undefined" || newArr.length <= 0) {
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            return;
        }
        return newArr.length;
    }

    /**
     * 注数-4星直选复式
     */
    function zhushu_4xzxfs() {
        var qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var qianLength = qianArr.length;
        var baiLength = baiArr.length;
        var shiLength = shiArr.length;
        var geLength = geArr.length;

        if (qianLength <= 0 || baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
            return 0;
        }

        var newArr = getFourNewArrs(qianArr, baiArr, shiArr, geArr);
        if (typeof newArr == "undefined" || newArr.length <= 0) {
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            return;
        }
        return newArr.length;
    }

    /**
     * 注数-前二大小单双
     */
    function zhushu_q2dxds(){
        var dxdsWArr = [], dxdsQArr = [], tempArr = [];
        $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            dxdsWArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            dxdsQArr.push($.trim($(this).find("i").html()));
        });

        for (var n = 0; n < dxdsWArr.length; n++) {
            for (var m = 0; m < dxdsQArr.length; m++) {
                tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m]);
            }
        }
        return tempArr.length;
    }

    /**
     * 注数-后二大小单双
     */
    function zhushu_h2dxds(){
        var dxdsSArr = [], dxdsGArr = [];
        $.each($(".recl-1003-h2dxds ul li[data-name = '十'] span.acti"), function (index, value) {
            dxdsSArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1003-h2dxds ul li[data-name = '个'] span.acti"), function (index, value) {
            dxdsGArr.push($.trim($(this).find("i").html()));
        });
        return dxdsSArr.length * dxdsGArr.length;
    }

    /**
     * 注数-前三大小单双
     */
    function zhushu_q3dxds(){
        var dxdsWArr = [], dxdsQArr = [], dxdsBArr = [];
        $.each($(".recl-1004-q3dxds ul li[data-name = '万'] span.acti"), function (index, value) {
            dxdsWArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1004-q3dxds ul li[data-name = '千'] span.acti"), function (index, value) {
            dxdsQArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1004-q3dxds ul li[data-name = '百'] span.acti"), function (index, value) {
            dxdsBArr.push($.trim($(this).find("i").html()));
        });
        return dxdsWArr.length * dxdsQArr.length * dxdsBArr.length;
    }

    /**
     * 注数-后三大小单双
     */
    function zhushu_h3dxds(){
        var dxdsBArr = [],dxdsSArr = [], dxdsGArr = [];
        $.each($(".recl-1005-h3dxds ul li[data-name = '百'] span.acti"), function (index, value) {
            dxdsBArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1005-h3dxds ul li[data-name = '十'] span.acti"), function (index, value) {
            dxdsSArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1005-h3dxds ul li[data-name = '个'] span.acti"), function (index, value) {
            dxdsGArr.push($.trim($(this).find("i").html()));
        });
        return dxdsBArr.length * dxdsSArr.length * dxdsGArr.length;
    }
</script>
<script>
    //=============================================随机注数算法汇总======================================
    // 随机生成注数
    function getSuiji(total) {
        var zhushu = 1;
        var suijiFun = getPlayPlFun_suiji();
        if (typeof suijiFun == 'undefined') {
            return;
        }

        // 获取随机注数
        for (var i = 0; i < total; ++i) {
            var data = eval(suijiFun + "()");
            if (typeof data == 'undefined' || data.length <= 0) {
                return;
            }

            //位置选择不正确（rx2,rx3,rx4中）
            if(data == -1){
                return;
            }

            var obj = {};
            //======函数获取=====
            obj.showPlayName = data.showPlayName;
            obj.showContent = data.showContent;
            zhushu = (typeof data.betZhushu != 'undefined' || data.betZhushu > 1) ? data.betZhushu : zhushu;
            obj.betContent = data.betContent;
            obj.betPlayGroupId = data.playGroupId;
            //========动态获取=====
            obj.betPerMoney = $("#inputMoney").data("money");
            obj.betZhushu = zhushu;
            obj.betBeishu = $("#inputBeishu").data("beishu");
            obj.betMode = 1;
            obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
            obj.betPlayPl = $("#jiangjin-change").data("value");
            obj.betFandian = $("#fandian-bfb").data("value");
            var  strPlId = getPlayPlId();
            if(strPlId.toString().indexOf('|') > 0){
                obj.betPlayPlId = (strPlId.toString().split("|"))[0];
            } else{
                obj.betPlayPlId = getPlayPlId();
            }
            obj.betPlayId = getPlayId();

            // 添加预算
            addYuxuan(obj);
        }

        // 统计右侧注数，金额
        calcAll();
    }


    //**********************任选3***********************

    /**
     * 任选3-组选和值
     */
    function suiji_rx3zuxhz(){
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var hzArr = [], checkStrArr = [], checkArr = [];

        while (hzArr.length < 1) {
            var num1 = parseInt(Math.random() * 26) + 1;
            hzArr.push(num1);
        }
        var newArr = [];
        for (var i = 0; i < hzArr.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    for (var y1 = 0; y1 < 10; y1++) {
                        if (x + y + y1 == hzArr[i] && !(x == y && x == y1 && y == y1)) {
                            var arr = [];
                            arr.push(x);
                            arr.push(y);
                            arr.push(y1);
                            arr.sort();
                            newArr.push(arr.join(""));
                        }
                    }
                }
            }
        }
        newArr = newArr.uniqueArr();
        //选取选中checkbox
        $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });

        if(checkArr.length < 3){
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        var shu = $("#positioninfo-zuxhz").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三组选-组选和值";
        showContent = "号码: (" + hzArr[0] +")";
        betContent =  checkStrArr.join(',') + "|" + hzArr[0];
        betZhushu = newArr.length * shu;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选3-混合组选
     */
    function suiji_rx3hhzux() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var checkStrArr = [], checkArr = [];
        var arrZu6 = [];
        while (arrZu6.length < 1) {
            var x1 = parseInt(Math.random() * 10);
            var x2 = parseInt(Math.random() * 10);
            var x3 = parseInt(Math.random() * 10);
            if (!(x1 == x2 && x2 == x3 && x3 == x2)) {
                arrZu6.push(x1 + "" + x2 + "" + x3);
            }
        }
        //选取选中checkbox
        $.each($(".re-select-hhzux input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 3){
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        var shu = $("#positioninfo-hhzux").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三直选-混合组选";
        showContent = "号码: (" + arrZu6[0] + ")";
        betContent = checkStrArr.join(',') + "|" + arrZu6.join(',');
        betZhushu = shu;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选3-组六单式
     */
    function suiji_rx3z6ds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var checkStrArr = [], checkArr = [];
        var arrZu6 = [];
        while (arrZu6.length < 1) {
            var x1 = parseInt(Math.random() * 10);
            var x2 = parseInt(Math.random() * 10);
            var x3 = parseInt(Math.random() * 10);
            if (x1 != x2 && x2 != x3 && x3 != x2) {
                arrZu6.push(x1 + "" + x2 + "" + x3);
            }
        }
        //选取选中checkbox
        $.each($(".re-select-zu6ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });

        if(checkArr.length < 3){
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        var shu = $("#positioninfo-zu6ds").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三直选-组六单式";
        showContent = "号码: (" + arrZu6[0] + ")";
        betContent = checkStrArr.join(',') + "|" + arrZu6[0];
        betZhushu = shu;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选3-组六复式
     */
    function suiji_rx3z6fs() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var checkStrArr = [], checkArr = [];
        var arrZu6 = [];
        while (arrZu6.length < 1) {
            var x1 = parseInt(Math.random() * 10);
            var x2 = parseInt(Math.random() * 10);
            var x3 = parseInt(Math.random() * 10);
            if (x1 != x2 && x2 != x3 && x3 != x2) {
                arrZu6.push(x1 + "," + x2 + "," + x3);
            }
        }
        //选取选中checkbox
        $.each($(".re-select-zu6fs input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 3){
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        var shu = $("#positioninfo-zu6fs").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三直选-组六复式";
        showContent = "号码: (" + arrZu6[0] + ")";
        betContent = checkStrArr.join(',') + "|" + arrZu6[0];
        betZhushu = shu;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }


    /**
     * 任选3-组三单式
     */
    function suiji_rx3z3ds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var arrZu3ds = [];
        var checkStrArr = [], checkArr = [];
        while (arrZu3ds.length < 1) {
            var num1 = parseInt(Math.random() * 10);
            var num2 = parseInt(Math.random() * 10);
            var num3 = parseInt(Math.random() * 10);
            if (num1 == num2 && num2 != num3 || num2 == num3 && num3 != num1 || num3 == num1 && num1 != num2) {
                arrZu3ds.push(num1 + "" + num2 + "" + num3);
            }
        }
        //选取选中checkbox
        $.each($(".re-select-zu3ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 3){
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        var shu = $("#positioninfo-zu3ds").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三直选-组三单式";
        showContent = "号码: (" + arrZu3ds[0] + ")";
        betContent = checkStrArr.join(',') + "|" + arrZu3ds[0];
        betZhushu = shu;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选3-组三复式
     */
    function suiji_rx3z3fs() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var arr = [];
        var checkStrArr = [], checkArr = [];

        while (arr.length < 2) {
            var num1 = parseInt(Math.random() * 10);
            var num2 = parseInt(Math.random() * 10);
            if (num1 != num2) {
                arr.push(num1);
                arr.push(num2);
            }

        }
        //选取选中checkbox
        $.each($(".recl-1005-zu3Rx3 input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 3){
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        var shu = $("#positioninfo-zu3fs").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三直选-组三复式";
        showContent = "号码: (" + arr[0] + "," + arr[1] + ")";
        betContent = checkStrArr.join(',') + "|" + arr[0] + "," + arr[1];
        betZhushu = shu;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选3-直选和值
     */
    function suiji_rx3zxhz(){
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var hzArr = [], checkStrArr = [], checkArr = [];

        while (hzArr.length < 1) {
            var num1 = parseInt(Math.random() * 28);
            hzArr.push(num1);
        }
        var newArr = [];
        for (var i = 0; i < hzArr.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    for (var y1 = 0; y1 < 10; y1++) {
                        if (x + y + y1 == hzArr[i]) {
                            newArr.push(x + "" + y + "" + y1);
                        }
                    }
                }
            }
        }

        //选取选中checkbox
        $.each($(".recl-1004-zxhz input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 3){
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        var shu = $("#positioninfo-hz").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三直选-直选和值";
        showContent = "号码: (" + hzArr[0] +")";;
        betContent =  checkStrArr.join(',') + "|" + hzArr[0];
        betZhushu = shu * newArr.length;;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }


    /**
     * 任选3-直选单式
     */
    function suiji_rx3zxds(){
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var arr = [], checkStrArr = [], checkArr = [];

        while (arr.length < 3) {
            var num1 = parseInt(Math.random() * 10);
            arr.push(num1);
        }
        //选取选中checkbox
        $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 3){
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        var shu = $("#positioninfo-ds").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三直选-直选复式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent =  checkStrArr.join(',') + "|" +  arr[0] + "" + arr[1] + "" + arr[2];
        betZhushu = shu;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选3-直选复式
     */
    function suiji_rx3zxfs(){
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var arr = [];

        while (arr.length < 5) {
            var num1 = parseInt(Math.random() * 10);
            arr.push(num1);
        }

        showPlayName = "任三直选-直选复式";
        showContent = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
        betContent = arr[0] + "|" + arr[1] + "|" + arr[2] + "|" + arr[3] + "|" + arr[4];
        betZhushu = 10;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    //**********************任选2************************
    /**
     * 任选2-组选和值
     */
    function suiji_rx2zuxhz() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var zuxhz = [];
        var checkArr = [], checkStrArr = [];
        var newArr = [];
        //选取选中checkbox
        $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 2){
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        zuxhz.push(parseInt(Math.random() * 17) + 1);

        for (var i = 0; i < zuxhz.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    if ((x + y) == zuxhz[i] && x != y) {
                        var arr = [];
                        arr.push(x);
                        arr.push(y);
                        arr.sort();
                        newArr.push(arr.join(""));
                    }
                }
            }
        }
        newArr = newArr.uniqueArr();
        var shu = $("#positioninfo-zuhz").html();
        showPlayName = "任二直选-组选和值";
        betZhushu = newArr.length * shu;
        showContent = "号码: (" + zuxhz[0] + ")";
        betContent = checkStrArr.join(',') + "|" + zuxhz.join(',');

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选2-组选单式
     */
    function suiji_rx2zuxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var checkArr = [], checkStrArr = [];
        var arr = [];

        while (arr.length < 2) {
            var num1 = parseInt(Math.random() * 10);
            var num2 = parseInt(Math.random() * 10);
            if(num1 != num2){
                arr.push(num1);
                arr.push(num2);
            }
        }

        //选取选中checkbox
        $.each($(".re-select-zuxds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 2){
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        var shu = $("#positioninfo-zuds").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        betZhushu = shu;
        showPlayName = "任二组选-组选单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + ")";
        betContent = checkStrArr.join(',') + "|" + arr[0] + "" + arr[1];
        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选2-组选复式
     */
    function suiji_rx2zuxfs() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var arr = [];

        while (arr.length < 2) {
            var num1 = parseInt(Math.random() * 10);
            var num2 = parseInt(Math.random() * 10);
            if (num1 != num2) {
                arr.push(num1);
                arr.push(num2);
            }
        }
        var checkArr = [], checkStrArr = [];
        var shu = $("#positioninfo-zufs").html();
        //选取选中checkbox
        $.each($(".recl-1005-fs input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 2){
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        showPlayName = "任二组选-组选复式";
        showContent = "号码: (" + arr[0] + "," + arr[1] + ")";
        betContent = checkStrArr.join(',') + "|" + arr[0] + "," + arr[1];
        betZhushu = shu;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选2-直选和值
     */
    function suiji_rx2zxhz() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var hzsj = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".recl-1004-hz input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 2){
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        hzsj.push(parseInt(Math.random() * 19));
        var newArr = [];
        for (var i = 0; i < hzsj.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    if (x + y == hzsj[i]) {
                        newArr.push(x + "" + y);
                    }
                }
            }
        }

        var shu = $("#positioninfo-hz").html();

        showPlayName = "任二直选-直选和值";
        betZhushu = newArr.length * shu;
        showContent = "号码: (" + hzsj[0] + ")";
        betContent = checkStrArr.join(',') + "|" + hzsj.join(',');

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选2-直选单式
     */
    function suiji_rx2zxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var checkArr = [], checkStrArr = [];
        var arr = [];

        while (arr.length < 2) {
            var num = parseInt(Math.random() * 10);
            arr.push(num);
        }

        //选取选中checkbox
        $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if(checkArr.length < 2){
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        var shu = $("#positioninfo-ds").html();
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        betZhushu = shu;
        showPlayName = "任二直选-直选单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + ")";
        betContent = checkStrArr.join(',') + "|" + arr[0] + "" + arr[1];
        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选2-直选复式
     */
    function suiji_rx2zxfs() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;
        var tempArr = [];
        var arr = [];

        for (var i = 0; i <= 9; ++i) {
            tempArr[i] = 0;
        }

        while (arr.length < 5) {
            var num = parseInt(Math.random() * 10);
            arr.push(num);
        }

        showPlayName = "任二直选-直选复式";
        showContent = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
        betContent = arr[0] + "|" + arr[1] + "|" + arr[2] + "|" + arr[3] + "|" + arr[4];
        betZhushu = 10;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    //**********************不定位************************
    /**
     * 不定位-五星三码"
     */
    function suiji_wx3m() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = [];
        while(arr.length < 3){
            var zhiHao1 = parseInt(Math.random() * 10);
            var zhiHao2 = parseInt(Math.random() * 10);
            var zhiHao3 = parseInt(Math.random() * 10);
            if(zhiHao1 != zhiHao2 && zhiHao2 != zhiHao3 && zhiHao1 != zhiHao3){
                arr.push(zhiHao1);
                arr.push(zhiHao2);
                arr.push(zhiHao3);
            }
        }

        showPlayName = "五星-五星三码";
        showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + "," + zhiHao3 + ")";
        betContent = zhiHao1 + "," + zhiHao2 + "," + zhiHao3;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-五星二码"
     */
    function suiji_wxem() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = getRandom2num();
        var zhiHao1 = arr[0];
        var zhiHao2 = arr[1];

        showPlayName = "五星-五星二码";
        showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
        betContent = zhiHao1 + "," + zhiHao2;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-五星一码"
     */
    function suiji_wxym() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var zhiHao1 = parseInt(Math.random() * 10);

        showPlayName = "五星-五星一码";
        showContent = "不定位: (" + zhiHao1 + ")";
        betContent = zhiHao1;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-后四二码"
     */
    function suiji_h4em() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = getRandom2num();
        var zhiHao1 = arr[0];
        var zhiHao2 = arr[1];

        showPlayName = "四星-后四二码";
        showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
        betContent = zhiHao1 + "," + zhiHao2;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-后四一码"
     */
    function suiji_h4ym() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var zhiHao1 = parseInt(Math.random() * 10);

        showPlayName = "四星-后四一码";
        showContent = "不定位: (" + zhiHao1 + ")";
        betContent = zhiHao1;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-前四二码"
     */
    function suiji_q4em() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = getRandom2num();
        var zhiHao1 = arr[0];
        var zhiHao2 = arr[1];

        showPlayName = "四星-前四二码";
        showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
        betContent = zhiHao1 + "," + zhiHao2;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-前四一码"
     */
    function suiji_q4ym() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var zhiHao1 = parseInt(Math.random() * 10);

        showPlayName = "四星-前四一码";
        showContent = "不定位: (" + zhiHao1 + ")";
        betContent = zhiHao1;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-后三二码"
     */
    function suiji_hsem() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = getRandom2num();
        var zhiHao1 = arr[0];
        var zhiHao2 = arr[1];

        showPlayName = "三星-后三二码";
        showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
        betContent = zhiHao1 + "," + zhiHao2;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-后三一码"
     */
    function suiji_hsym() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arrTsh = [], newArr = [];
        while (newArr.length < 1) {
            var zhiTsh = parseInt(Math.random() * 10);
            newArr.push(zhiTsh);
        }

        showPlayName = "三星-后三一码";
        showContent = "不定位: (" + newArr[0] + ")";
        betContent = newArr.join("");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 不定位-前三二码"
     */
    function suiji_qsem() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = getRandom2num();
        var zhiHao1 = arr[0];
        var zhiHao2 = arr[1];

        showPlayName = "三星-前三二码";
        showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
        betContent = zhiHao1 + "," + zhiHao2;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    //获取两位0到9之间的随机数
    function getRandom2num(){
        var arr = [];
        while(arr.length < 2){
            var zhiHao1 = parseInt(Math.random() * 10);
            var zhiHao2 = parseInt(Math.random() * 10);
            if(zhiHao1 != zhiHao2){
                arr.push(zhiHao1);
                arr.push(zhiHao2);
            }
        }
        return arr;
    }

    /**
     * 不定位-前三一码"
     */
    function suiji_qsym() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arrTsh = [], newArr = [];
        while (newArr.length < 1) {
            var zhiTsh = parseInt(Math.random() * 10);
            newArr.push(zhiTsh);
        }

        showPlayName = "三星-前三一码";
        showContent = "不定位: (" + newArr[0] + ")";
        betContent = newArr.join("");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    //**************定位胆***************
    /**
     * 定位胆"
     */
    function suiji_dwd() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var numArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var xArr = ["万位", "千位", "百位", "十位", "个位"];

        var arr = [];
        var betStr = '';
        while (arr.length < 1) {
            var num1 = parseInt(Math.random() * 5);
            var num2 = parseInt(Math.random() * 10);
            var str = xArr[num1];
            str = str + ": (" + numArr[num2] + ")";
            arr.push(str);
            if(num1 == 0){
                betStr = numArr[num2] + "|" + "|" + "|" + "|";
            } else if(num1 == 1){
                betStr = "|" + numArr[num2] + "|" + "|" + "|";
            } else if(num1 == 2){
                betStr = "|" + "|" + numArr[num2] + "|" + "|";
            } else if(num1 == 3){
                betStr = "|" + "|" + "|" + numArr[num2] + "|";
            } else if(num1 == 4){
                betStr = "|" + "|" + "|" + "|" + numArr[num2];
            }

        }

        showPlayName = "定位胆-定位胆";
        showContent = arr[0];
        betContent = betStr;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    //**********************前二**********************
    /**
     * 前2直选-组选包胆"
     */
    function suiji_q2zuxbd() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = '';

        var arrTsh = [], newArr = [];
        while (newArr.length < 1) {
            var zhiTsh = parseInt(Math.random() * 10);
            newArr.push(zhiTsh);
        }
        betZhushu = zhushu_q2zuxbd(newArr);
        showPlayName = "前二组选-包胆";
        showContent = "包胆: (" + newArr[0] + ")";
        betContent = newArr.join("");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }


    /**
     * 前2直选-组选和值"
     */
    function suiji_q2zuxhz() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = '';

        var arrTsh = [], newArr = [];
        while (newArr.length < 1) {
            var zhiTsh = parseInt(Math.random() * 17) + 1;
            newArr.push(zhiTsh);
        }
        betZhushu = zhushu_q2zuxhz(newArr);
        showPlayName = "前二组选-和值";
        showContent = "和值: (" + newArr[0] + ")";
        betContent = newArr.join("");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 前2直选-组选单式"
     */
    function suiji_q2zuxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var newArr = [];
        while (newArr.length < 2) {
            var zhiHao1 = parseInt(Math.random() * 10);
            var zhiHao2 = parseInt(Math.random() * 10);
            if(zhiHao1 != zhiHao2){
                newArr.push(zhiHao1);
                newArr.push(zhiHao2);
            }
        }
        showPlayName = "前二组选-单式";
        showContent = "号码: (" + newArr.join(",") + ")";
        betContent = newArr.join("");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前2直选-组选复式"
     */
    function suiji_q2zuxfs() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var newArr = [];
        while (newArr.length < 2) {
            var zhiHao1 = parseInt(Math.random() * 10);
            var zhiHao2 = parseInt(Math.random() * 10);
            if(zhiHao1 != zhiHao2){
               newArr.push(zhiHao1);
               newArr.push(zhiHao2);
            }
        }
        showPlayName = "前二组选-复式";
        showContent = "组选: (" + newArr.join(",") + ")";
        betContent = newArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前2直选-直选跨度"
     */
    function suiji_q2zxkd() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = '';

        var arrTsh = [], newArr = [];
        while (newArr.length < 1) {
            var zhiTsh = parseInt(Math.random() * 10);
            newArr.push(zhiTsh);
        }
        betZhushu = zhushu_q2zxkd(newArr);
        showPlayName = "前二直选-跨度";
        showContent = "跨度: (" + newArr[0] + ")";
        betContent = newArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 前2直选-直选和值"
     */
    function suiji_q2zxhz() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = '';

        var arrTsh = [], newArr = [];
        while (newArr.length < 1) {
            var zhiTsh = parseInt(Math.random() * 19);
            newArr.push(zhiTsh);
        }
        betZhushu = zhushu_q2zxhz(newArr);
        showPlayName = "前二直选-和值";
        showContent = "和值: (" + newArr[0] + ")";
        betContent = newArr.join("");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 前2直选-直选单式"
     */
    function suiji_q2zxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arrTsh = [], newArr = [];
        arrTsh = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

        while (newArr.length < 2) {
            var zhiTsh = parseInt(Math.random() * arrTsh.length);
            newArr.push(arrTsh[parseInt(zhiTsh)]);
        }

        showPlayName = "前二直选-单式";
        showContent = "号码: (" + newArr[0] + "" + newArr[1] + ")";
        betContent = newArr[0] + "" + newArr[1];

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前2直选-直选复式"
     */
    function suiji_q2zxfs() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arrTsh = [], newArr = [];
        arrTsh = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

        while (newArr.length < 2) {
            var zhiTsh = parseInt(Math.random() * arrTsh.length);
            newArr.push(arrTsh[parseInt(zhiTsh)]);
        }

        showPlayName = "前二直选-复式";
        showContent = "万位: (" + newArr[0] + ") 千位: (" + newArr[1] + ")";
        betContent = newArr[0] + "|" + newArr[1];;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }


 //*************前三***************
    /**
     * 前三其它-特殊号"
     */
    function suiji_q3tsh() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arrTsh = [], newArr = [];
        arrTsh[0] = "对子";
        arrTsh[1] = "顺子";
        arrTsh[2] = "豹子";
        while (newArr.length != 1) {
            var zhiTsh = parseInt(Math.random() * 3);
            newArr.push(arrTsh[parseInt(zhiTsh)]);
        }

        showPlayName = "前三其它-特殊号";
        showContent = "特殊号: (" + newArr[0] + ")";
        betContent = newArr[0];

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三其它-前三和值尾数"
     */
    function suiji_q3hzws () {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "前三其它-前三和值尾数";
        showContent = "尾数: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }


    /**
     * 前三直选-组选包胆
     */
    function suiji_q3zxbd () {
        var baoDanArr = [];
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        baoDanArr.push(arr);
        betZhushu = getZxbdNewArrs(baoDanArr).length;
        showPlayName = "前三直选-组选包胆";
        showContent = "包胆: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三直选-组选和值
     */
    function suiji_q3zuxhz () {
        var fuShiArr = [];
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;

        var tempArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        fuShiArr.push(arr);
        betZhushu = getZxhzNewArrs(fuShiArr).length;
        showPlayName = "前三直选-组选和值";
        showContent = "和值: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三组选-混合组选
     */
    function suiji_q3hhzx() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            var xHhzx = parseInt(Math.random() * 10);
            var yHhzx = parseInt(Math.random() * 10);
            var zHhzx = parseInt(Math.random() * 10);
            if (xHhzx == yHhzx && yHhzx != zHhzx || xHhzx == zHhzx && zHhzx != yHhzx || yHhzx == zHhzx && zHhzx != xHhzx || xHhzx != yHhzx && yHhzx != zHhzx && zHhzx != xHhzx) {
                arr.push(xHhzx);
                arr.push(yHhzx);
                arr.push(zHhzx);
            }
        }

        showPlayName = "前三组选-组三单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三组选-组六单式
     */
    function suiji_q3z6ds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            var xZlfs = parseInt(Math.random() * 10);
            var yZlfs = parseInt(Math.random() * 10);
            var zZlfs = parseInt(Math.random() * 10);
            if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
                arr.push(xZlfs);
                arr.push(yZlfs);
                arr.push(zZlfs);
            }
        }

        showPlayName = "前三组选-组六单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三组选-组六复式
     */
    function suiji_q3z6fs () {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            var xZlfs = parseInt(Math.random() * 10);
            var yZlfs = parseInt(Math.random() * 10);
            var zZlfs = parseInt(Math.random() * 10);
            if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
                arr.push(xZlfs);
                arr.push(yZlfs);
                arr.push(zZlfs);
            }
        }

        showPlayName = "前三组选-组六复式";
        showContent = "组六: ({0},{1},{2})".format(arr[0],arr[1],arr[2]);
        betContent = "{0},{1},{2}".format(arr[0],arr[1],arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }


    /**
     * 前三组选-组三单式
     */
    function suiji_q3z3ds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            var xZxds = parseInt(Math.random() * 10);
            var yZxds = parseInt(Math.random() * 10);
            var zZxds = parseInt(Math.random() * 10);
            if (xZxds == yZxds && yZxds != zZxds || xZxds == zZxds && zZxds != yZxds || yZxds == zZxds && zZxds != xZxds) {
                arr.push(xZxds);
                arr.push(yZxds);
                arr.push(zZxds);
            }
        }

        showPlayName = "前三组选-组三单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三组选-组三复式
     */
    function suiji_q3z3fs () {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 2) {
            var x = parseInt(Math.random() * 10);
            var y = parseInt(Math.random() * 10);
            if (x != y) {
                arr.push(x);
                arr.push(y);
            }
        }

        showPlayName = "前三组选-组三复式";
        showContent = "组三: ({0},{1})".format(arr[0],arr[1]);
        betContent = "{0},{1}".format(arr[0],arr[1]);
        betZhushu = 2; //默认两个号码两注
        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三直选-跨度
     */
    function suiji_q3zxkd () {
        // 初始化变量
        var betZhushu = 0;
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        betZhushu = getKaduNewArrs(arr).length;
        showPlayName = "前三直选-跨度";
        showContent = "跨度: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三直选-和值
     */
    function suiji_q3zxhz () {
        var betZhushu = 0;
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        betZhushu = getHezNewArrs(arr).length;
        showPlayName = "前三直选-和值";
        showContent = "和值: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三直选-组合
     */
    function suiji_q3zh () {
        var baiArr =[], shiArr = [], geArr =[];
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        baiArr.push(arr[0]);
        shiArr.push(arr[1]);
        geArr.push(arr[2]);
        betZhushu = (getHszhNewArrs(baiArr, shiArr, geArr)).length
        showPlayName = "前三直选-组合";
        showContent = "万位: ({0}), 千位: ({1}), 百位: ({2})".format(arr[0], arr[1], arr[2]);
        betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三直选-单式
     */
    function suiji_q3zxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "前三直选-单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三直选复式
     */
    function suiji_q3zxfs () {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "前三直选-复式";
        showContent = "万位: ({0}), 千位: ({1}), 百位: ({2})".format(arr[0], arr[1], arr[2]);
        betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }


    /******************************************************/
             /**************后三*************/

    /**
     * 后三其它-特殊号"
     */
    function suiji_h3tsh() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arrTsh = [], newArr = [];
        arrTsh[0] = "对子";
        arrTsh[1] = "顺子";
        arrTsh[2] = "豹子";
        while (newArr.length != 1) {
        var zhiTsh = parseInt(Math.random() * 3);
        newArr.push(arrTsh[parseInt(zhiTsh)]);
        }

        showPlayName = "后三其它-特殊号";
        showContent = "特殊号: (" + newArr[0] + ")";
        betContent = newArr[0];

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三其它-后三和值尾数"
     */
    function suiji_h3hzws () {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "后三其它-后三和值尾数";
        showContent = "尾数: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }


    /**
     * 后三直选-组选包胆
     */
    function suiji_h3zxbd () {
        var baoDanArr = [];
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        baoDanArr.push(arr);
        betZhushu = getZxbdNewArrs(baoDanArr).length;
        showPlayName = "后三直选-组选包胆";
        showContent = "包胆: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三直选-组选和值
     */
    function suiji_h3zuxhz () {
        var fuShiArr = [];
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;

        var tempArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        fuShiArr.push(arr);
        betZhushu = getZxhzNewArrs(fuShiArr).length;
        showPlayName = "后三直选-组选和值";
        showContent = "和值: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三组选-混合组选
     */
    function suiji_h3hhzx() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            var xHhzx = parseInt(Math.random() * 10);
            var yHhzx = parseInt(Math.random() * 10);
            var zHhzx = parseInt(Math.random() * 10);
            if (xHhzx == yHhzx && yHhzx != zHhzx || xHhzx == zHhzx && zHhzx != yHhzx || yHhzx == zHhzx && zHhzx != xHhzx || xHhzx != yHhzx && yHhzx != zHhzx && zHhzx != xHhzx) {
                arr.push(xHhzx);
                arr.push(yHhzx);
                arr.push(zHhzx);
            }
        }

        showPlayName = "后三组选-组三单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三组选-组六单式
     */
    function suiji_h3z6ds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            var xZlfs = parseInt(Math.random() * 10);
            var yZlfs = parseInt(Math.random() * 10);
            var zZlfs = parseInt(Math.random() * 10);
            if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
                arr.push(xZlfs);
                arr.push(yZlfs);
                arr.push(zZlfs);
            }
        }

        showPlayName = "后三组选-组六单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三组选-组六复式
     */
    function suiji_h3z6fs () {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            var xZlfs = parseInt(Math.random() * 10);
            var yZlfs = parseInt(Math.random() * 10);
            var zZlfs = parseInt(Math.random() * 10);
            if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
                arr.push(xZlfs);
                arr.push(yZlfs);
                arr.push(zZlfs);
            }
        }

        showPlayName = "后三组选-组六复式";
        showContent = "组六: ({0},{1},{2})".format(arr[0],arr[1],arr[2]);
        betContent = "{0},{1},{2}".format(arr[0],arr[1],arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }


    /**
     * 后三组选-组三单式
     */
    function suiji_h3z3ds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            var xZxds = parseInt(Math.random() * 10);
            var yZxds = parseInt(Math.random() * 10);
            var zZxds = parseInt(Math.random() * 10);
            if (xZxds == yZxds && yZxds != zZxds || xZxds == zZxds && zZxds != yZxds || yZxds == zZxds && zZxds != xZxds) {
                arr.push(xZxds);
                arr.push(yZxds);
                arr.push(zZxds);
            }
        }

        showPlayName = "后三组选-组三单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三组选-组三复式
     */
    function suiji_h3z3fs () {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = 0;

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 2) {
            var x = parseInt(Math.random() * 10);
            var y = parseInt(Math.random() * 10);
            if (x != y) {
                arr.push(x);
                arr.push(y);
            }
        }

        showPlayName = "后三组选-组三复式";
        showContent = "组三: ({0},{1})".format(arr[0],arr[1]);
        betContent = "{0},{1}".format(arr[0],arr[1]);
        betZhushu = 2; //默认两个号码两注
        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三直选-跨度
     */
    function suiji_h3zxkd () {
        // 初始化变量
        var betZhushu = 0;
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        betZhushu = getKaduNewArrs(arr).length;
        showPlayName = "后三直选-跨度";
        showContent = "跨度: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三直选-和值
     */
    function suiji_h3zxhz () {
        var betZhushu = 0;
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27];
        var arr = [];
        while (arr.length < 1) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        betZhushu = getHezNewArrs(arr).length;
        showPlayName = "后三直选-和值";
        showContent = "和值: ({0})".format(arr[0]);
        betContent = "{0}".format(arr[0]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三直选-组合
     */
    function suiji_h3zh () {
        var baiArr =[], shiArr = [], geArr =[];
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';
        var betZhushu = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        baiArr.push(arr[0]);
        shiArr.push(arr[1]);
        geArr.push(arr[2]);
        betZhushu = (getHszhNewArrs(baiArr, shiArr, geArr)).length
        showPlayName = "后三直选-组合";
        showContent = "百位: ({0}), 十位: ({1}), 个位: ({2})".format(arr[0], arr[1], arr[2]);
        betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            betZhushu: betZhushu,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三直选-单式
     */
    function suiji_h3zxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "后三直选-单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
        betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三直选复式
     */
    function suiji_h3zxfs () {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 3) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "后三直选-复式";
        showContent = "百位: ({0}), 十位: ({1}), 个位: ({2})".format(arr[0], arr[1], arr[2]);
        betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 5星直选复式
     */
    function suiji_5xzxfs() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 5) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "五星直选-复式";
        showContent = "万位: ({0}), 千位: ({1}), 百位: ({2}), 十位: ({3}), 个位: ({4})".format(arr[0], arr[1], arr[2], arr[3], arr[4]);
        betContent = "{0}|{1}|{2}|{3}|{4}".format(arr[0], arr[1], arr[2], arr[3], arr[4]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 4星直选复式
     */
    function suiji_4xzxfs() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 4) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "四星直选-复式";
        showContent = "千位: ({1}), 百位: ({2}), 十位: ({3}), 个位: ({4})".format(arr[0], arr[1], arr[2], arr[3]);
        betContent = "{0}|{1}|{2}|{3}".format(arr[0], arr[1], arr[2], arr[3]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 5星直选单式
     */
    function suiji_5xzxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 5) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "五星直选-单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + "" + arr[3] + "" + arr[4] + ")";
        betContent = "{0}{1}{2}{3}{4}".format(arr[0], arr[1], arr[2], arr[3], arr[4]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 4星直选单式
     */
    function suiji_4xzxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        var arr = [];
        while (arr.length < 4) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "4星直选-单式";
        showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + "" + arr[3] + ")";
        betContent = "{0}{1}{2}{3}".format(arr[0], arr[1], arr[2], arr[3]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前二大小单双
     */
    function suiji_q2dxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = ["大", "小", "单", "双"];
        var arr = [];
        while (arr.length < 2) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }
        showPlayName = "前二大小单双";
        showContent = "万位: ({0}), 千位: ({1})".format(arr[0], arr[1]);
        betContent = "{0}|{1}".format(arr[0], arr[1]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }


    /**
     * 后二大小单双
     */
    function suiji_h2dxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = ["大", "小", "单", "双"];
        var arr = [];
        while (arr.length < 2) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "后二大小单双";
        showContent = "十位: ({0}), 个位: ({1})".format(arr[0], arr[1]);
        betContent = "{0}|{1}".format(arr[0], arr[1]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 前三大小单双
     */
    function suiji_q3dxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = ["大", "小", "单", "双"];
        var arr = [];
        while (arr.length < 3) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "后二大小单双";
        showContent = "万位: ({0}), 千位: ({1}), 百位: ({2})".format(arr[0], arr[1], arr[2]);
        betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 后三大小单双
     */
    function suiji_h3dxds() {
        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var tempArr = ["大", "小", "单", "双"];
        var arr = [];
        while (arr.length < 3) {
            arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
        }

        showPlayName = "后三大小单双";
        showContent = "百位: ({0}), 十位: ({1}), 个位: ({2})".format(arr[0], arr[1], arr[2]);
        betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }
</script>
<script>
    // 官方玩法数据转换，转换为提交格式
    //===============================获取内容算法===================================
    function tjzd() {
        var contentFun = getPlayPlFun_content();    // 内容算法
        var zhushuFun = getPlayPlFun_zhushu();  // 注数算法
        if (typeof contentFun == 'undefined' || typeof zhushuFun == 'undefined') {
            return;
        }

        var data = eval(contentFun + "()");
        var zhushu = eval(zhushuFun + "()");

        if(data == -1){
            return;
        }

        if (typeof data == 'undefined' || typeof zhushu == 'undefined' || zhushu <= 0) {
            alert("号码选择不完整，请重新选择");
            return;
        }

        var obj = {};
        //======函数获取=====
        obj.showPlayName = data.showPlayName;
        obj.showContent = data.showContent;
        obj.betContent = data.betContent;
        //======动态获取=====
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $("#fandian-bfb").data("value");
        obj.betPlayPl = $("#jiangjin-change").data("value");
        var  strPlId = getPlayPlId();
        if(strPlId.toString().indexOf('|') > 0){
            obj.betPlayPlId = (strPlId.toString().split("|"))[0];
        } else{
            obj.betPlayPlId = getPlayPlId();
        }
        obj.betPlayId = getPlayId();

        clearSelected();
        clearTextarea();
        clearStateTouZhu();
        addYuxuan(obj);
        calcAll();
    }
    //**************任选3***************
    /**
     * 任选3-组选和值
     */
    function content_rx3zuxhz() {
        var hzArr = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        if (checkArr.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        $.each($(".recl-1010-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        })

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        showPlayName = "任三直选-组选和值";
        showContent = "号码: (" + hzArr.join(",") + ")";
        betContent = checkStrArr.join(',') + "|" + hzArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
            playGroupId: playGroupId
        };
    }

    /**
     * 任选3-混合组选
     */
    function content_rx3hhzux() {
        var errorStr = '', zhushu = 0;
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-hhzux input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        var textStr = $(".recl-1009-hhzux .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (twoStr == threeStr && oneStr == threeStr && twoStr == oneStr) {
                errorArr.push(newArr[n]);
            } else {
                tempArr.push(arr.join(""));
            }
        }
        repeatArr = tempArr.duplicate(); //重复号码
        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        if (checkArr.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for (var r = 0; r < repeatArr.length; r++) {
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码:");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert($.trim(errorStr));
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任三组选-混合组选";
        showContent = "号码: (" + tempArr.join(',') + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + tempArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选3-组六单式
     */
    function content_rx3z6ds() {
        var errorStr = '', zhushu = 0;
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-zu6ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        var textStr = $(".recl-1008-zu6ds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
                tempArr.push(arr.join(""));
            } else {
                errorArr.push(newArr[n]);
            }
        }

        repeatArr = tempArr.duplicate(); //重复号码
        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        if (checkArr.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for (var r = 0; r < repeatArr.length; r++) {
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码:");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert($.trim(errorStr));
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任三组选-组六单式";
        showContent = "号码: (" + tempArr.join(',') + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + tempArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选3-组六复式
     */
    function content_rx3z6fs() {
        var zuArr = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-zu6fs input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        $.each($(".recl-1007-zu6fs ul li[data-name = '组六'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });

        if (checkArr.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任三组选-组六复式";
        showContent = "号码: (" + zuArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + zuArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选3-组三单式
     */
    function content_rx3z3ds() {
        var errorStr = '', zhushu = 0;
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var textStr = $(".recl-1006-zu3ds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));

        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-zu3ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        var arr_new = textStr.split(",");

        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }

        for (var n = 0; n < newArr.length; n++) {
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(arr.join(""));
            } else {
                errorArr.push(newArr[n]);
            }
        }
        repeatArr = tempArr.duplicate(); //重复号码
        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        if (checkArr.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for (var r = 0; r < repeatArr.length; r++) {
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码:");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert($.trim(errorStr));
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任三组选-组三单式";
        showContent = "号码: (" + tempArr.join(',') + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + tempArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选3-组三复式
     */
    function content_rx3z3fs() {
        var zuArr = [], arrTemp = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".recl-1005-zu3Rx3 input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        $.each($(".recl-1005-zu3fs ul li[data-name = '组三'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });

        if (checkArr.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任三组选-组三复式";
        showContent = "号码: (" + zuArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + zuArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选3-直选和值
     */
    function content_rx3zxhz() {
        var hzArr = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".recl-1004-hz input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if (checkArr.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任三直选-直选和值";
        showContent = "号码: (" + hzArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + hzArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选3-直选单式
     */
    function content_rx3zxds() {
        var errorStr = '';
        var repeatArr = [], allErrorArr = [];
        var errorArr = [];
        var newArr = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();

        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                if (arr_new[i] != "") {
                    errorArr.push(arr_new[i]);
                }
            }
        }

        repeatArr = newArr.duplicate(); //重复号码
        newArr = newArr.uniqueArr(); //去掉重复代码

        if (checkArr.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return -1;
        }

        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for (var r = 0; r < repeatArr.length; r++) {
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert(errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任三直选-直选单式";
        showContent = "号码: (" + newArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + newArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选3-直选复式
     */
    function content_rx3zxfs() {
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var wanStr = wanArr.length > 0 ? ("万位: " + wanArr.join("")) : '';
        var qianStr = qianArr.length > 0 ? (" 千位: " + qianArr.join("")) : '';
        var baiStr = baiArr.length > 0 ? (" 百位: " + baiArr.join("")) : '';
        var shiStr = shiArr.length > 0 ? (" 十位: " + shiArr.join("")) : '';
        var geStr = geArr.length > 0 ? (" 个位: " + geArr.join("")) : '';
        var strTemp = $.trim(
            (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
            (qianStr == ' ' ? ' ' : qianArr.join(",") + "|") +
            (baiStr == ' ' ? ' ' : baiArr.join(",") + "|") +
            (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
            (geStr == ' ' ? ' ' : geArr.join(","))
        );

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任三直选-直选复式";
        showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
        // 转换投注格式
        betContent = strTemp;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    //**************任选2***************
    /**
     * 任选二-组选和值
     */
    function content_rx2zuxhz() {
        var hzArr = [], arrTemp = [];
        var checkArr = [], checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        $.each($(".recl-1007-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        $(".recl-1007-zuxhz input[name='position_zuxhz']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任二组选-组选和值";
        showContent = "号码: (" + hzArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + hzArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选二-组选单式
     */
    function content_rx2zuxds() {
        var checkStrArr = [], checkArr = [];
        //选取选中checkbox
        $.each($(".re-select-zuxds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        var errorStr = '';
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var textStr = $(".recl-1006-zuxds .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                var oneStr = (arr_new[i].toString()).substr(0, 1);
                var twoStr = (arr_new[i].toString()).substr(1, 1);
                var arr = [];
                arr.push(parseInt(oneStr));
                arr.push(parseInt(twoStr));
                arr.sort();
                newArr.push(arr.join(""));
            } else {
                if (arr_new[i] != "") {
                    errorArr.push(arr_new[i]);
                }
            }
        }

        repeatArr = newArr.duplicate(); //重复号码
        newArr = newArr.uniqueArr();

        if (checkArr.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for (var r = 0; r < repeatArr.length; r++) {
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert(errorStr);
        }

        $(".re-select-zuxds input[type='checkbox']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任二组选-组选单式";
        showContent = "号码: (" + newArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + newArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选二-组选复式
     */
    function content_rx2zuxfs() {
        var checkStrArr = [], checkArr = [];
        //选取选中checkbox
        $.each($(".recl-1005-fs input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        var zuArr = [], arrTemp = [];
        $.each($(".recl-1005-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });

        if (checkArr.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任二组选-组选复式";
        showContent = "号码: (" + zuArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + zuArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选二-直选和值
     */
    function content_rx2zxhz() {
        var hzArr = [], arrTemp = [], checkStrArr = [], checkArr = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });
        //选取选中checkbox
        $.each($(".recl-1004-hz input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);

        $(".recl-1004-zxhz input[name='position_hz']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任二直选-直选和值";
        showContent = "号码: (" + hzArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + hzArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选二-直选单式
     */
    function content_rx2zxds() {
        var checkStrArr = [], checkArr = [];
        var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
        //选取选中checkbox
        $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getNoWeiStr(checkArr);
        var newArr = [], arrTemp = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                newArr.push(arr_new[i]);
            }
        }

        $(".recl-1003-zxds input[name='position_ds']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return -1;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任二直选-直选单式";
        showContent = "号码: (" + newArr.join(",") + ")";
        // 转换投注格式
        betContent = checkStrArr.join(',') + "|" + newArr.join(',');

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 任选二-直选复式
     */
    function content_rx2zxfs(){
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var wanStr = wanArr.length > 0 ? ("万位: " + wanArr.join("")) : '';
        var qianStr = qianArr.length > 0 ? (" 千位: " + qianArr.join("")) : '';
        var baiStr = baiArr.length > 0 ? (" 百位: " + baiArr.join("")) : '';
        var shiStr = shiArr.length > 0 ? (" 十位: " + shiArr.join("")) : '';
        var geStr = geArr.length > 0 ? (" 个位: " + geArr.join("")) : '';
        var strTemp = $.trim(
            (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
            (qianStr == ' ' ? ' ' : qianArr.join(",") + "|") +
            (baiStr == ' ' ? ' ' : baiArr.join(",") + "|") +
            (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
            (geStr == ' ' ? ' ' : geArr.join(","))
        );

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "任二直选-直选复式";
        showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
        // 转换投注格式
        betContent = strTemp;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    //**************不定位***************
    /**
     * 不定位-五星三码
     */
    function content_wx3m(){
        var budwArr = [];
        $.each($(".recl-1012-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "五星-五星三码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-五星二码
     */
    function content_wxem(){
        var budwArr = [];
        $.each($(".recl-1011-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "五星-五星二码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-五星一码
     */
    function content_wxym(){
        var budwArr = [];
        $.each($(".recl-1010-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "五星-五星一码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 不定位-后三二码
     */
    function content_h4em(){
        var budwArr = [];
        $.each($(".recl-1009-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "四星-后四二码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-后四一码
     */
    function content_h4ym(){
        var budwArr = [];
        $.each($(".recl-1008-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "四星-后四一码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-前四二码
     */
    function content_q4em(){
        var budwArr = [];
        $.each($(".recl-1007-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "四星-前四二码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-前四一码
     */
    function content_q4ym(){
        var budwArr = [];
        $.each($(".recl-1006-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "四星-前四一码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-后三二码
     */
    function content_hsem(){
        var budwArr = [];
        $.each($(".recl-1005-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "三星-后三二码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-后三一码
     */
    function content_hsym(){
        var budwArr = [];
        $.each($(".recl-1004-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "三星-后三一码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-前三二码
     */
    function content_qsem(){
        var budwArr = [];
        $.each($(".recl-1003-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "三星-前三二码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",")

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 不定位-前三一码
     */
    function content_qsym(){
        var budwArr = [];
        $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "三星-前三一码";
        showContent = "不定位: (" + budwArr.join(",") + ")";
        // 转换投注格式
        betContent = budwArr.join(",")

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    //**************定位胆***************
    /**
     * 定位胆
     */
    function content_dwd(){
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var wanStr = wanArr.length > 0 ? ("万位: (" + wanArr.join(",") + ")") : "";
        var qianStr = qianArr.length > 0 ? (" 千位: (" + qianArr.join(",") + ")") : "";
        var baiStr = baiArr.length > 0 ? (" 百位: (" + baiArr.join(",") + ")") : "";
        var shiStr = shiArr.length > 0 ?  (" 十位: (" + shiArr.join(",") + ")") : "";
        var geStr = geArr.length > 0 ? (" 个位: (" + geArr.join(",") + ")") : "";

        var nowArr = [];
        var strTemp = $.trim(
            (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
            (qianStr == ' ' ? ' ': qianArr.join(",") + "|") +
            (baiStr == ' ' ? ' ': baiArr.join(",") + "|") +
            (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
            (geStr == ' ' ? ' ': geArr.join(","))
        );

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "定位胆-定位胆";
        showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
        // 转换投注格式
        betContent = strTemp;

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    //**************前2***************
    /**
     * 前二组选-组选包胆
     */
    function content_q2zuxbd(){
        var dmArr = [];
        $.each($(".recl-1009-zuxbd ul li[data-name = '胆码'] span.acti"), function (index, value) {
            dmArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前二组选-包胆";
        showContent = "包胆: (" + dmArr.join(",") + ")";
        // 转换投注格式
        betContent = dmArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前二组选-组选复式
     */
    function content_q2zuxhz(){
        var hzArr = [];
        $.each($(".recl-1008-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前二组选-和值";
        showContent = "和值: (" + hzArr.join(",") + ")";
        // 转换投注格式
        betContent = hzArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前二组选-组选单式
     */
    function content_q2zuxds(){
        var textStr = $(".recl-1007-zuxds .content_jiang .content_tex").val();
        var newArr = [];
        var repeatArr = [], errorArr = [], allErrorArr = [], pairArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                var strTemp = "", strTemp1 = "";
                var str1 = arr_new[i].toString();
                var str2 = arr_new[i].toString();
                strTemp = str1.substr(0, 1);
                strTemp1 = str2.substr(1, 1);
                if (strTemp != strTemp1) {
                    var tempArr = [];
                    tempArr.push(parseInt(strTemp));
                    tempArr.push(parseInt(strTemp1));
                    tempArr.sort();
                    newArr.push(tempArr.join(""));
                } else {
                    pairArr.push(arr_new[i]);
                }
            } else {
                if (arr_new[i] != "") {
                    errorArr.push(arr_new[i]);
                }
            }
        }
        repeatArr = newArr.duplicate(); //获取重复元素

        if (pairArr.length > 0) {
            allErrorArr.push("自动过滤对子号码:");
            for (var p = 0; p < pairArr.length; p++) {
                allErrorArr.push(pairArr[p]);
            }
        }
        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for (var r = 0; r < repeatArr.length; r++) {
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert(errorStr);
        }
        newArr = newArr.uniqueArr(); //去掉重复值

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前二组选-单式";
        showContent = "号码: (" + newArr + ")";
        // 转换投注格式
        betContent = newArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前二组选-组选复式
     */
    function content_q2zuxfs(){
        var zuxArr = [];
        $.each($(".recl-1006-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
            zuxArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前二组选-复式";
        showContent = "组选: (" + zuxArr.join(",") + ")";
        // 转换投注格式
        betContent = zuxArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 前二直选-直选跨度
     */
    function content_q2zxkd(){
        var kdArr = [];
        $.each($(".recl-1005-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            kdArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前二直选-跨度";
        showContent = "跨度: (" + kdArr.join(",") + ")";
        // 转换投注格式
        betContent = kdArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前二直选-直选和值
     */
    function content_q2zxhz(){
        var hzArr = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前二直选-和值";
        showContent = "和值: (" + hzArr.join(",") + ")";
        // 转换投注格式
        betContent = hzArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前二直选-直选单式
     */
    function content_q2zxds(){
        var textStr = $(".recl-1003 .content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + "";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前二直选-单式";
        showContent = "号码: (" + newArr + ")";
        // 转换投注格式
        betContent = newArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前二直选-直选复式
     */
    function content_q2zxfs(){
        var wanArr = [], qianArr = [];
        $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前二直选-复式";
        showContent = "万位：({0})，千位：({1})".format(
            wanArr.join(","),
            qianArr.join(",")
        );
        // 转换投注格式
        betContent = gfwf_2xfs(
            wanArr,
            qianArr
        );

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    //*************************前三***************************
    /**
     * 前三组选-特殊号
     */
    function content_q3tsh(){
        var thArr = [];
        $.each($(".cl-1015-tsh ul li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
            thArr.push($.trim($(this).html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三其它-特殊号";
        showContent = "特殊号: (" + thArr.join(",") + ")";
        betContent = thArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 前三组选-前三和值尾数
     */
    function content_q3hzws(){
        var hzArr = [];
        $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三其它-前三和值尾数";
        showContent = "和值尾数: (" + hzArr.join(",") + ")";
        betContent = hzArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 前三组选-组选包胆
     */
    function content_q3zxbd(){
        var bdArr = [];
        $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
            bdArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三组选-组选包胆";
        showContent = "包胆: (" + bdArr.join(",") + ")";
        betContent = bdArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三组选-组选和值
     */
    function content_q3zuxhz(){
        var heZhiArr = [];
        $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三组选-组选和值";
        showContent = "和值: (" + heZhiArr.join(",") + ")";
        betContent = heZhiArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三组选-组六混合
     */
    function content_q3hhzx(){
        var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }


        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三组选-混合组选";
        showContent = "号码: (" + tempArr.join(',') + ")";
        betContent = tempArr.join(',');

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三组选-组六单式
     */
    function content_q3z6ds(){
        var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三组选-组六单式";
        showContent = "号码: (" + tempArr.join(',') + ")";
        betContent = tempArr.join(',');

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三组选-组六复式
     */
    function content_q3z6fs(){
        var zuLiuArr = [];

        $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
            zuLiuArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三组选-组六复式";
        showContent = "组六: (" + zuLiuArr.join(",") + ")";
        betContent = zuLiuArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三组选-组三单式
     */
    function content_q3z3ds() {
        var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }


        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三组选-组三单式";
        showContent = "号码: (" + tempArr.join(',') + ")";
        betContent = tempArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三组选-组三复式
     */
    function content_q3z3fs() {
        var zuSanArr = [];
        $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
            zuSanArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三组选-组三复式";
        showContent = "组三: (" + zuSanArr.join(",") + ")";
        betContent = zuSanArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三直选-前三组合
     */
    function content_q3zh() {
        var wanArr = [], qianArr = [], baiArr = [];
        $.each($(".cl-1004-hszh ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1004-hszh ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1004-hszh ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三直选-组合";
        showContent = "万位：({0})，千位：({1})，百位：({2})".format(
            wanArr.join(","),
            qianArr.join(","),
            baiArr.join(",")
        );
        betContent = gfwf_3xfs(
            wanArr,
            qianArr,
            baiArr
        );

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 后三直选-跨度
     */
    function content_q3zxkd() {
        var kaDuArr = [];
        $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            kaDuArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三直选-跨度";
        showContent = "跨度: (" + kaDuArr.join(",") + ")";
        betContent = kaDuArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三直选-和值
     */
    function content_q3zxhz() {
        var heZhiArr = [];
        var zhushu = 0;
        $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三直选-和值";
        showContent = "和值: (" + heZhiArr.join(",") + ")";
        betContent = heZhiArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 前三直选-直选单式
     */
    function content_q3zxds() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }

        if (newArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三直选-单式";
        showContent = "号码: (" + newArr.join("") + ")";
        betContent = newArr.join("");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三直选复式
     */
    function content_q3zxfs() {
        var wanArr = [], qianArr = [], shiArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "前三直选-复式";
        showContent = "万位：({0})，千位：({1})，百位：({2})".format(
            wanArr.join(","),
            qianArr.join(","),
            shiArr.join(",")
        );
        betContent = gfwf_3xfs(
            wanArr,
            qianArr,
            shiArr
        );

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }



    /**********************************/
                 /**后三**/
    /**
     * 后三组选-特殊号
     */
    function content_h3tsh(){
        var thArr = [];
        $.each($(".cl-1015-tsh ul li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
            thArr.push($.trim($(this).html()));
        });

        if (thArr.length <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三其它-特殊号";
        showContent = "特殊号: (" + thArr.join(",") + ")";
        betContent = thArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 后三组选-后三和值尾数
     */
    function content_h3hzws(){
        var hzArr = [];
        $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三其它-后三和值尾数";
        showContent = "和值尾数: (" + hzArr.join(",") + ")";
        betContent = hzArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 后三组选-组选包胆
     */
    function content_h3zxbd(){
        var bdArr = [];
        $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
            bdArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三组选-组选包胆";
        showContent = "包胆: (" + bdArr.join(",") + ")";
        betContent = bdArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三组选-组选和值
     */
    function content_h3zuxhz(){
        var heZhiArr = [];
        $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三组选-组选和值";
        showContent = "和值: (" + heZhiArr.join(",") + ")";
        betContent = heZhiArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三组选-组六混合
     */
    function content_h3hhzx(){
        var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }

        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三组选-混合组选";
        showContent = "号码: (" + tempArr.join(',') + ")";
        betContent = tempArr.join(',');

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三组选-组六单式
     */
    function content_h3z6ds(){
        var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }

        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三组选-组六单式";
        showContent = "号码: (" + tempArr.join(',') + ")";
        betContent = tempArr.join(',');

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三组选-组六复式
     */
    function content_h3z6fs(){
        var zuLiuArr = [];

        $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
            zuLiuArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三组选-组六复式";
        showContent = "组六: (" + zuLiuArr.join(",") + ")";
        betContent = zuLiuArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三组选-组三单式
     */
    function content_h3z3ds() {
        var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }
        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }


        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三组选-组三单式";
        showContent = "号码: (" + tempArr.join(',') + ")";
        betContent = tempArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三组选-组三复式
     */
    function content_h3z3fs() {
        var zuSanArr = [];
        $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
            zuSanArr.push($.trim($(this).find("i").html()));
        });


        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三组选-组三复式";
        showContent = "组三: (" + zuSanArr.join(",") + ")";
        betContent = zuSanArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三直选-后三组合
     */
     function content_h3zh() {
        var baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1004-hszh ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1004-hszh ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1004-hszh ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三直选-组合";
        showContent = "百位：({0})，十位：({1})，个位：({2})".format(
            baiArr.join(","),
            shiArr.join(","),
            geArr.join(",")
        );
        betContent = gfwf_3xfs(
            baiArr,
            shiArr,
            geArr
        );

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent,
        };

    }


    /**
     * 后三直选-跨度
     */
    function content_h3zxkd() {
        var kaDuArr = [];
        $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            kaDuArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三直选-跨度";
        showContent = "跨度: (" + kaDuArr.join(",") + ")";
        betContent = kaDuArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三直选-和值
     */
    function content_h3zxhz() {
        var heZhiArr = [];
        var zhushu = 0;
        $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三直选-和值";;
        showContent = "和值: (" + heZhiArr.join(",") + ")";
        betContent = heZhiArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }


    /**
     * 后三直选-直选单式
     */
    function content_h3zxds() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }

        if (newArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三直选-单式";
        showContent = "号码: (" + newArr.join("") + ")";
        betContent = newArr.join("");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三直选复式
     */
    function content_h3zxfs() {
        var baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        if(baiArr.length <= 0|| shiArr.length <= 0|| geArr.length <= 0){
            return;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "后三直选-复式";
        showContent = "百位：({0})，十位：({1})，个位：({2})".format(
            baiArr.join(","),
            shiArr.join(","),
            geArr.join(",")
        );
        betContent = gfwf_3xfs(
            baiArr,
            shiArr,
            geArr
        );

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 5星直选复式
     */
    function content_5xzxfs() {
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
        });

        if(wanArr.length <= 0 || qianArr.length <= 0|| baiArr.length <= 0|| shiArr.length <= 0|| geArr.length <= 0){
            return;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "五星直选-复式";
        showContent = "万位：({0})，千位：({1})，百位：({2})，十位：({3})，个位：({4})".format(
            wanArr.join(","),
            qianArr.join(","),
            baiArr.join(","),
            shiArr.join(","),
            geArr.join(",")
        );
        betContent = gfwf_5xfs(
            wanArr,
            qianArr,
            baiArr,
            shiArr,
            geArr
        );

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 4星直选复式
     */
    function content_4xzxfs() {
        var qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        if(qianArr.length <= 0|| baiArr.length <= 0|| shiArr.length <= 0|| geArr.length <= 0){
            return;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "四星直选-复式";
        showContent = "千位：({1})，百位：({2})，十位：({3})，个位：({4})".format(
            qianArr.join(","),
            baiArr.join(","),
            shiArr.join(","),
            geArr.join(",")
        );
        betContent = gfwf_4xfs(
            qianArr,
            baiArr,
            shiArr,
            geArr
        );

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 5星直选单式
     */
    function content_5xzxds() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 5) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }
        if (newArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "五星直选-单式";
        showContent = "号码: (" + newArr.join(",") + ")";
        betContent = newArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 4星直选单式
     */
    function content_4xzxds() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }
        if (newArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        showPlayName = "四星直选-单式";
        showContent = "号码: (" + newArr.join(",") + ")";
        betContent = newArr.join(",");

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前2大小单双
     */
    function content_q2dxds() {
        var zhushu = 0;
        var dxdsWArr = [], dxdsQArr = [], tempArr = [];

        $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            dxdsWArr.push($.trim($(this).find("i").html()));
        });

        $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            dxdsQArr.push($.trim($(this).find("i").html()));
        });

        for (var n = 0; n < dxdsWArr.length; n++) {
            for (var m = 0; m < dxdsQArr.length; m++) {
                tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m]);
            }
        }

        if(dxdsWArr.length <= 0 || dxdsQArr.length <= 0){
            return;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = [
            dxdsWArr.join(","),
            dxdsQArr.join(",")
        ];

        showPlayName = "前二大小单双";
        showContent = "万位: ({0}), 千位: ({1})".format(arr[0], arr[1]);
        betContent = "{0}|{1}".format(arr[0], arr[1]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后2大小单双
     */
    function content_h2dxds() {
        var zhushu = 0;
        var dxdsSArr = [], dxdsGArr = [], tempArr = [];
        $.each($(".recl-1003-h2dxds ul li[data-name = '十'] span.acti"), function (index, value) {
            dxdsSArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1003-h2dxds ul li[data-name = '个'] span.acti"), function (index, value) {
            dxdsGArr.push($.trim($(this).find("i").html()));
        });

        for (var n = 0; n < dxdsSArr.length; n++) {
            for (var m = 0; m < dxdsGArr.length; m++) {
                tempArr.push(dxdsSArr[n] + "" + dxdsGArr[m]);
            }
        }
        if(dxdsSArr.length <= 0 || dxdsGArr.length <= 0){
            return;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = [
            dxdsSArr.join(","),
            dxdsGArr.join(",")
        ];

        showPlayName = "后二大小单双";
        showContent = "十位: ({0}), 个位: ({1})".format(arr[0], arr[1]);
        betContent = "{0}|{1}".format(arr[0], arr[1]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 前三大小单双
     */
    function content_q3dxds() {
        var zhushu = 0;
        var dxdsWArr = [], dxdsQArr = [], dxdsBArr = [], tempArr = [];
        $.each($(".recl-1004-q3dxds ul li[data-name = '万'] span.acti"), function (index, value) {
            dxdsWArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1004-q3dxds ul li[data-name = '千'] span.acti"), function (index, value) {
            dxdsQArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1004-q3dxds ul li[data-name = '百'] span.acti"), function (index, value) {
            dxdsBArr.push($.trim($(this).find("i").html()));
        });


        for (var n = 0; n < dxdsWArr.length; n++) {
            for (var m = 0; m < dxdsQArr.length; m++) {
                for (var h = 0; h < dxdsQArr.length; h++) {
                    tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m] + "" + dxdsBArr[h]);
                }
            }
        }
        if(dxdsWArr.length <= 0 || dxdsQArr.length <= 0|| dxdsBArr.length <= 0){
            return;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = [
            dxdsWArr.join(","),
            dxdsQArr.join(","),
            dxdsBArr.join(",")
        ];

        showPlayName = "前三大小单双";
        showContent = "万位: ({0}), 千位: ({1}), 百位: ({2})".format(arr[0], arr[1], arr[2]);
        betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

    /**
     * 后三大小单双
     */
    function content_h3dxds() {
        var zhushu = 0;
        var dxdsBArr = [],dxdsSArr = [], dxdsGArr = [], tempArr = [];
        $.each($(".recl-1005-h3dxds ul li[data-name = '百'] span.acti"), function (index, value) {
            dxdsBArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1005-h3dxds ul li[data-name = '十'] span.acti"), function (index, value) {
            dxdsSArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1005-h3dxds ul li[data-name = '个'] span.acti"), function (index, value) {
            dxdsGArr.push($.trim($(this).find("i").html()));
        });

        for (var i = 0; i < dxdsBArr.length; i++) {
            for (var n = 0; n < dxdsSArr.length; n++) {
                for (var m = 0; m < dxdsGArr.length; m++) {
                    tempArr.push(dxdsBArr[i] + "" + dxdsSArr[n] + "" + dxdsGArr[m]);
                }
            }
        }
        if(dxdsBArr.length <= 0 || dxdsSArr.length <= 0 || dxdsGArr.length <= 0){
            return;
        }

        // 初始化变量
        var showPlayName = '';
        var showContent = '';
        var betContent = '';

        var arr = [
            dxdsBArr.join(","),
            dxdsSArr.join(","),
            dxdsGArr.join(",")
        ];

        showPlayName = "后三大小单双";
        showContent = "百位: ({0}), 十位: ({1}), 个位: ({2})".format(arr[0], arr[1], arr[2]);
        betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

        return {
            showPlayName: showPlayName,
            showContent: showContent,
            betContent: betContent
        };
    }

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
</script>
<script>
    // 最近最新开奖时间（默认50期），用于追号模板渲染
    function renderZhuihao() {
        ajaxRequest({
            url: CONFIG.BASEURL + "ssc/ajaxGetLatestOpenTimeList.json",
            data: {
                playGroupId: playGroupId,   // 全局变量
            },
            success: function(json) {
                if (json.result != 1) {
                    return;
                }

                // 模板逻辑处理.......
//                var html = "";
            }
        });
    }

    // 获取当前选中位数
    function getWeiStr(arr){
        var checkArr = [], checkStrArr = [];
        checkArr = arr;
        for(var i = 0; i < checkArr.length; i++){
            if(checkArr[i] == 1){
                checkStrArr.push("万位");
            } else if(checkArr[i] == 2){
                checkStrArr.push("千位");
            } else if(checkArr[i] == 3){
                checkStrArr.push("百位");
            } else if(checkArr[i] == 4){
                checkStrArr.push("十位");
            } else if(checkArr[i] == 5){
                checkStrArr.push("个位");
            }
        }
        return checkStrArr;
    }

    function getNoWeiStr(arr){
        var checkArr = [], checkStrArr = [];
        checkArr = arr;
        for(var i = 0; i < checkArr.length; i++){
            if(checkArr[i] == 1){
                checkStrArr.push("万");
            } else if(checkArr[i] == 2){
                checkStrArr.push("千");
            } else if(checkArr[i] == 3){
                checkStrArr.push("百");
            } else if(checkArr[i] == 4){
                checkStrArr.push("十");
            } else if(checkArr[i] == 5){
                checkStrArr.push("个");
            }
        }
        return checkStrArr;
    }


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
        $(".Pick ul li span.acti_tsh").removeClass("acti_tsh");
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
<script type="text/html" id="template_jRange">
    <div class="add_spot">
        <div class="left releft">
            <div class="sopt_wrap">
                <div class="slide_sp dxds-i">
                    奖金/返点
                    <div class="cl-1003">
                        <div class="cl-1004">
                            <input type="hidden" class="slider-input"/>
                        </div>
                    </div>
                    <i><var class="jiangjin-change" id="jiangjin-change">0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb" id="fandian-bfb">0%</var></i>
                </div>
                <div class="reduce">
                    <a class="fl">-</a>
                    <input
                            data-beishu="1"
                            type="text"
                            value="1"
                            id="inputBeishu"
                            onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                            onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}"
                    >
                    <a class="fr">+</a>
                    <span>倍</span>
                </div>
                <div class="down">
                    <input type="text" value="2元" id="inputMoney" data-money="2" disabled="disabled">
                    <span></span>
                    <div class="down_menu">
                        <i>2元</i>
                        <i>5元</i>
                        <i>10元</i>
                        <i>20元</i>
                    </div>
                </div>
            </div>
            <p class="p1">
                您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">1</i> 倍，返还 <i class="i1 i_fanD">0</i> 元，共投注 <i class="i1 i_money">0</i>元。
            </p>
        </div>
        <div class="rigth">
            <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
        </div>
    </div>
</script>