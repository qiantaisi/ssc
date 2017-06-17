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
            $(this).parent().toggleClass('acti');   // 变色

            // 渲染中部注数，赔率，返点等等
            renderZhushu();
        });

        // 加减号
        initJjh();

        var plAndMaxFd = getPlAndMaxFd();   // 获取当前选中的玩法赔率和返点
        var maxPlayPl = plAndMaxFd.playPl;  // 最高赔率
        var maxFandian = plAndMaxFd.maxFdBl;    // 最大返点
        var minPl = plAndMaxFd.minPl;   // 最低赔率
        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;  // 每1%转换赔率

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

                // 赔率 = 最搭配率 - 返点比例 * 转换比例
                var pl = (maxPlayPl - fandianBili * convertBlMoney).toFixed(3);
                $("#jiangjin-change").data("value", pl);
                $("#jiangjin-change").html(pl);  // 渲染界面中赔率部分

                // 渲染中部注数，赔率，返点等等
                renderZhushu();
            }
        });
    }

    function initJjh() {
        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").click(function () {
            var text = $(this).text();
            $(this).parent().parent().find('input').val(text);
            $(this).parent().hide();

            $(this).parent().parent().find('input').data("money", parseInt(text));
            changeStateCommon();
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

            if (typeof zhushu == "undefined" || zhushu <= 0){
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
        for (var i = 0; i < gfwfPlJson.sscPlayPlList.length; ++i) {
            var o = gfwfPlJson.sscPlayPlList[i];
            if (o.playPlId == playPlId) {
                return o;
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
    //=======================注数统计===================================
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

            var obj = {};
            //======函数获取=====
            obj.showPlayName = data.showPlayName;
            obj.showContent = data.showContent;
            obj.betContent = data.betContent;
            obj.betPlayGroupId = data.playGroupId;
            //========动态获取=====
            obj.betPerMoney = $("#inputMoney").data("money");
            obj.betZhushu = 1;
            obj.betBeishu = $("#inputBeishu").data("beishu");
            obj.betMode = 1;
            obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
            obj.betPlayPl = $("#jiangjin-change").data("value");
            obj.betFandian = $("#fandian-bfb").data("value");
            obj.betPlayPlId = getPlayPlId();
            obj.betPlayId = getPlayId();

            // 添加预算
            addYuxuan(obj);
        }

        // 统计右侧注数，金额
        calcAll();
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
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();

        clearSelected();
        clearStateTouZhu();
        addYuxuan(obj);
        calcAll();
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
<script type="text/html" id="template_jRange">
    <div class="add_spot">
        <div class="left">
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
                    <input type="text" value="2元" id="inputMoney" data-money="2">
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