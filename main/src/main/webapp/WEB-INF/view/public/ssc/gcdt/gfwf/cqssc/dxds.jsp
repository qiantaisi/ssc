<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="group">
    <ul>
        <li>
            <b>大小单双</b>
            <p class="btn_fu_zhi dsdx-menu">
                <span class="acti" data-name="q2dxds"><a href="javascript:void(0)">前二大小单双</a></span>
                <span data-name="h2dxds"><a href="javascript:void(0)">后二大小单双</a></span>
                <span data-name="q3dxds"><a href="javascript:void(0)">前三大小单双</a></span>
                <span data-name="h3dxds"><a href="javascript:void(0)">后三大小单双</a></span>
            </p>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1002 recl-1002-q2dxds" data-flag="q2dxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位中的“大、小、单、双”中至少各选一个组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：小双 开奖号码：万、千位“小、双”，即中前二大小单双。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>对万、千位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul class="dxds">
        <li data-name="万">
            <b><i>万位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="千">
            <b><i>千位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1003-h2dxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从十位、个位中的“大、小、单、双”中至少各选一个组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：大单 开奖号码：十、个位“大单”，即中后二大小单双。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>对十位和个位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul class="dxds">
        <li data-name="十">
            <b><i>十位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="个">
            <b><i>个位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1004-q3dxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位中的“大、小、单、双”中至少各选一个组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：小双小 开奖号码：万、千、百位“小双小”，即中前三大小单双。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>对万、千和百位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul class="dxds">
        <li data-name="万">
            <b><i>万位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="千">
            <b><i>千位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="百">
            <b><i>百位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>

<div class="Pick cl-1002 recl-1005-h3dxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从百位、十位、个位中的“大、小、单、双”中至少各选一个组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：大单大 开奖号码：百、十、个位“大单大”，即中后三大小单双。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>对百、十和个位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul class="dxds">
        <li data-name="百">
            <b><i>百位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="十">
            <b><i>十位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="个">
            <b><i>个位</i></b>
            <span><i>大</i></span>
            <span><i>小</i></span>
            <span><i>单</i></span>
            <span><i>双</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>


<%--直选单式--%>
<div class="Pick cl-1003 recl-1003">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个二位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码前两为：58，即中前二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注，输入号码的万、千位与开奖号码相同，且顺序一致，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
        <div class="right con_j_end">
            <ul>
                <li onclick="delRrepet()"><a href="javascript:void(0)">删除重复号</a></li>
                <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
            </ul>
        </div>
    </div>

    <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
</div>
<div class="add_spot">
    <div class="left">
        <div class="sopt_wrap">
            <div class="slide_sp dxds-i">
                奖金/返点
                <%--<p><span style="width: 4.89063px;"></span><var style="left: 4.89063px;"></var></p>--%>
                <%--<i><var>934058.63</var> / 7.0%</i>--%>
                <div class="cl-1003">
                    <div class="cl-1004">
                        <input type="hidden" class="slider-input"/>
                    </div>
                </div>
                <i class="dxds-2w"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var
                        class="fandian-bfb">0.0%</var></i>
                <i class="dxds-3w"><var class="jiangjin-change-3w">0.0</var><var>&nbsp;/&nbsp;</var><var
                        class="fandian-bfb">0.0%</var></i>
            </div>
            <div class="reduce">
                <a class="fl">-</a>
                <input data-beishu="1" type="text" value="1" id="inputBeishu"
                       onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                       onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}">
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
            您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">0</i> 倍，返还 <i class="i1 i_fanD">0.00</i> 元，共投注 <i
                class="i1 i_money">0.00</i>元。
        </p>
    </div>
    <div class="rigth">
        <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
    </div>

</div>
<script>
    $(function () {
        //初始化复式选号模式
        $(".Pick").hide();
        $('.recl-1002').show();
        $('.dxds-i i').hide();
        $('.dxds-i i.dxds-2w').show();

        $(".Pick ul li span i").click(function () {
            $(this).parent().toggleClass('acti');
            var flagName = $(this).parent().parent().parent().parent().attr('data-flag');
            if (flagName == "q2dxds") {
                stateQ2TouZhu();
            } else if (flagName == "h2dxds") {
                stateH2TouZhu();
            } else if (flagName == "q3dxds") {
                stateQ3TouZhu();
            } else if (flagName == "h3dxds") {
                stateH3TouZhu();
            }
        });

        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass("acti");
            var nameF = $(this).data("name");
            if (nameF == "q2dxds") {
                $(".Pick").hide();
                $(".recl-1002").show();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1002").attr("data-flag", "q2dxds");
                $('.dxds-i i').hide();
                $('.dxds-i i.dxds-2w').show();
                clearSelected();
            } else if (nameF == "h2dxds") {
                $(".Pick").hide();
                $(".recl-1003-h2dxds").show();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1003-h2dxds").attr("data-flag", "h2dxds");
                $('.dxds-i i').hide();
                $('.dxds-i i.dxds-2w').show();
                clearSelected();
            } else if (nameF == "q3dxds") {
                $(".Pick").hide();
                $(".recl-1004-q3dxds").show();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1004-q3dxds").attr("data-flag", "q3dxds");
                $('.dxds-i i').hide();
                $('.dxds-i i.dxds-3w').show();
                clearSelected();
            } else if (nameF == "h3dxds") {
                $(".Pick").hide();
                $(".recl-1005-h3dxds").show();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1005-h3dxds").attr("data-flag", "h3dxds");
                $('.dxds-i i').hide();
                $('.dxds-i i.dxds-3w').show();
                clearSelected();
            }
        });

    });
</script>
<script>
    //投注时注数状态
    function stateQ2TouZhu() {
        var zhushu = getQ2zhushu();
        stateCommon(zhushu);
    }

    function stateH2TouZhu() {
        var zhushu = getH2zhushu();
        stateCommon(zhushu);
    }

    function stateQ3TouZhu() {
        var zhushu = getQ3zhushu();
        stateCommon(zhushu);
    }

    function stateH3TouZhu() {
        var zhushu = getH3zhushu();
        stateCommon(zhushu);
    }

    //获取用户投注注数
    function getH2zhushu(){
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
        return tempArr.length;
    }

    //获取用户投注注数--后三
    function getH3zhushu(){
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
        return tempArr.length;
    }

    //获取用户投注注数
    function getQ2zhushu(){
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

    //获取用户投注注数--前三
    function getQ3zhushu(){
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
                for (var h = 0; h < dxdsBArr.length; h++) {
                    tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m] + "" + dxdsBArr[h]);
                }
            }
        }
        return tempArr.length;
    }


    function stateCommon(zhushu){

        if(zhushu <= 0 || typeof zhushu == "undefined"){
            clearStateTouZhu();
            return 0;
        }

        $('.p1 .i0').html(zhushu);
        $('.p1 .i_beishu').html($("#inputBeishu").val());
        var strFd = $(".fandian-bfb").html();
        var num = parseFloat(strFd.toString().substr(0,strFd.length-1)) / 100;
        var totalMoney = parseFloat($("#inputBeishu").data("beishu")) * zhushu * parseFloat($("#inputMoney").data("money"));
        var p1_i2 = (totalMoney * num).toString();
        p1_i2 = isNaN(p1_i2) == true ? "0.0000" :p1_i2;
        $('.p1 .i_fanD').html(p1_i2.substr(0,p1_i2.indexOf(".") + 3));
        $('.p1 .i_money').html(totalMoney);
    }

    function getSuiji(total) {
        var betFormList = suiji(total);
        $.each(betFormList, function (index, value) {
            var html = template("template_touzhu", value);
            $("#zhudanList").append(html);
        });
        calcAll();
    }

    function clearSelected() {
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $(".re-5x-i i.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        if (typeof clearStateTouZhu == 'function') {
            clearStateTouZhu();
        }
        calc();
    }

    function removeThisItem(obj) {
        $(obj).parent().parent().parent().remove();
        calcAll();
    }
    function clearZhudan() {
        $("#zhudanList li:not('.head')").remove();
        calcAll();
    }

    function calc() {
        var money = $("#inputMoney").data("money");
        var beishu = $("#inputBeishu").data("beishu");
        var zhushu = $("#zhushuInfo").data("zhushu");
        var totalMoney = mul(beishu * zhushu, money);
        $("#beishuInfo").html(beishu);
        $("#totalMoneyInfo").data("total_money", totalMoney).html(totalMoney);
    }

    function clearTextarea() {
        $(".content_jiang textarea").val('');
        clearStateTouZhu();
    }

    function daoRu() {
        alert("开发中，敬请期待...");
    }

    function delRrepet() {
        alert("开发中，敬请期待...");
    }

    //添加注单
    function tjzd() {
        if (typeof $('.cl-1002').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getQ2dxdsZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1003-h2dxds').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getH2dxdsZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1004-q3dxds').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getQ3dxdsZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1005-h3dxds').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getH3dxdsZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        }
    }

    //获取手动输入的有效注数
    function getDsZhushu() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    //大小单双-前2
    function getQ2dxdsZhudan(obj) {
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
            alert("号码选择不完整，请重新选择");
            return;
        }

        zhushu = getQ2zhushu();
        obj.playName = "前二大小单双";
        obj.content = "万位: (" + dxdsWArr.join(",") + ")，" + "千位: (" + dxdsQArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //大小单双-前3
    function getQ3dxdsZhudan(obj) {
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
            alert("号码选择不完整，请重新选择");
            return;
        }

        zhushu = getQ3zhushu();
        obj.playName = "前三大小单双";
        obj.content = "万位: (" + dxdsWArr.join(",") + "), " + "千位: (" + dxdsQArr.join(",") + "), " + "百位: (" + dxdsBArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-3w").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //大小单双-后2
    function getH2dxdsZhudan(obj) {
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
            alert("号码选择不完整，请重新选择");
            return;
        }

        zhushu = getH2zhushu();
        obj.playName = "后二大小单双";
        obj.content = "十位: (" + dxdsSArr.join(",") + ")，" + "个位: (" + dxdsGArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }
    //大小单双-后3
    function getH3dxdsZhudan(obj) {
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
            alert("号码选择不完整，请重新选择");
            return;
        }

        zhushu = getH3zhushu();
        obj.playName = "后三大小单双";
        obj.content = "百位: (" + dxdsBArr.join(",") + ")，" + "十位: (" + dxdsSArr.join(",") + ")，" + "个位: (" + dxdsGArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-3w").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //计算总单数与金额
    function calcAll() {
        var totalZhushu = 0;
        var totalBeishu = 0;
        var totalMoney = 0;

        $("#zhudanList li:not('.head')").each(function () {
            totalZhushu = add(totalZhushu, $(this).data("zhushu"));
            totalBeishu = add(totalBeishu, $(this).data("beishu"));
            totalMoney = add(totalMoney, $(this).data("total_money"));
        });

        var str = '总投 <span>' + totalZhushu + '</span> 注，<span>' + totalBeishu + '</span> 倍，共 <span>' + totalMoney + '</span> 元。';
        $("#zongtouInfo").html(str);
    }

    //随机生成注数
    function suiji(total) {
        var result = [];
        var flagValue = "";//默认为单式
        var playNameStr = '';
        var contentStr = '';
        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            playNameStr = "前二大小单双";
            flagValue = "q2dxds";
        } else if (typeof $('.recl-1003-h2dxds').attr('data-flag') != 'undefined') {
            playNameStr = "后二大小单双";
            flagValue = "h2dxds";
        } else if (typeof $('.recl-1004-q3dxds').attr('data-flag') != 'undefined') {
            playNameStr = "前三大小单双";
            flagValue = "q3dxds";
        } else if (typeof $('.recl-1005-h3dxds').attr('data-flag') != 'undefined') {
            playNameStr = "后三大小单双";
            flagValue = "h3dxds";
        }

        for (var numIndex = 0; numIndex < total; ++numIndex) {
            var tempArr = [];
            for (var i = 0; i <= 3; ++i) {
                if(i == 0){
                    tempArr[i] = "大";
                } else if(i == 1){
                    tempArr[i] = "小";
                } else if(i == 2){
                    tempArr[i] = "单";
                } else if(i == 3){
                    tempArr[i] = "双";
                }
            }

            var arr = [];
            while (arr.length < 3 ) {
                var num1 = parseInt(Math.random() * 4);
                var num2 = parseInt(Math.random() * 4);
                var num3 = parseInt(Math.random() * 4);
                arr.push(tempArr[num1]);
                arr.push(tempArr[num2]);
            }
            if (flagValue == "q2dxds") {
                contentStr = "万位: (" + arr[0] + "), 千位: (" + arr[1] + ")";
            } else if (flagValue == "h2dxds") {
                contentStr = "十位: (" + arr[0] + "), 个位: (" + arr[1] + ")";
            } else if (flagValue == "q3dxds") {
                contentStr = "万位: (" + arr[0] + "), 千位: (" + arr[1] + "), 百位: (" + arr[2] + ")";
            } else if (flagValue == "h3dxds") {
                contentStr = "百位: (" + arr[0] + "), 十位: (" + arr[1] + "), 个位: (" + arr[2] + ")";
            }

            var obj = {};
            obj.playName = playNameStr;
            obj.content = contentStr;
            obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money"));
            obj.zhushu = 1;
            obj.beishu = $("#inputBeishu").data("beishu");
            obj.money = $("#inputMoney").data("money");
            if(flagValue == "q3dxds" || flagValue == "h3dxds"){
                obj.jiangJfanD = $(".jiangjin-change-3w").html() + "/" + $(".fandian-bfb").html();
            }else{
                obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
            }
            obj.playGroupId = playGroupId;
            result.push(obj);
        }
        return result;
    }
</script>
<script>
    $(function () {
        $('.content_jiang .content_tex').keyup(function () {
            stateTouZhu('dan');
        });
        $('.slider-input').jRange({
            from: 0,
            to: 13,
            step: 0.1,
            format: '%s',
            width: $(".cl-1004").width(),
            theme: 'theme-green my-slide-theme',
            showLabels: false,
            showScale: false,
            snap: true,
            onstatechange: function () {
                var money_jangjin = $(".slider-input").val();
                money_jangjin = parseFloat(money_jangjin).toFixed(1);
                $(".fandian-bfb").html(money_jangjin + "%");
                var money_jangjin_3w = 7.840 - (7.840 - 6.800) / 13 * money_jangjin;
                var money_jangjin_2w = 3.920 - (3.920 - 3.400) / 13 * money_jangjin;
                $(".jiangjin-change").html(money_jangjin_2w.toFixed(3));
                $(".jiangjin-change-3w").html(money_jangjin_3w.toFixed(3));
                var flagN = $('.Pick').attr('data-flag');
                if (flagN == "q2dxds") {
                    stateQ2TouZhu();
                } else if(flagN == "h2dxds") {
                    stateQ2TouZhu();
                } else if(flagN == "q3dxds") {
                    stateQ3TouZhu();
                } else if(flagN == "h3dxds") {
                    stateH3TouZhu();
                }
            }
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").click(function () {
            var text = $(this).text();
            $(this).parent().parent().find('input').val(text);
            $(this).parent().hide();

            $(this).parent().parent().find('input').data("money", parseInt(text));
            calc();
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

            calc();
            changeStateCommon();
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

            calc();
            changeStateCommon();
        });
    });
</script>

<script type="text/html" id="template_touzhu">
    <li
            data-zhushu="{{zhushu}}"
            data-beishu="{{beishu}}"
            data-total_money="{{totalMoney}}"
            data-money="{{money}}"
            data-play_group_id="{{playGroupId}}"
            data-content="{{content}}"
            class="re_touzhu_tem"
    >
        <div class="head-name">
            <span>{{playName}}</span>
        </div>
        <div class="content-jiang">
            <span class="neirong"><font color="red">{{content.split("|")[0]}}</font>&nbsp;</span>
            <span class="span1">{{zhushu}}注&nbsp;&nbsp;{{jiangJfanD}}&nbsp;&nbsp;<var class="varColor">{{totalMoney}}元</var></span>
            <span class="span4"><a href="javascript:void(0)" onclick="removeThisItem(this)"><img
                    src="${resPath}img/ico53.png" alt=""></a></span>
        </div>
    </li>
</script>