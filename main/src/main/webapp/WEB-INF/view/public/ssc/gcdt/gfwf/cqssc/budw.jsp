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
            <b class="tit_img">三星</b>
            <p>
                <span class="acti" data-name="qsym"><a href="javascript:void(0)">前三一码</a></span>
                <span data-name="qsem"><a href="javascript:void(0)">前三二码</a></span>
                <span data-name="hsym"><a href="javascript:void(0)">后三一码</a></span>
                <span data-name="hsem"><a href="javascript:void(0)">后三二码</a></span>
            </p>
        </li>
        <li>
            <b class="tit_img">四星</b>
            <p>
                <span data-name="q4ym"><a href="javascript:void(0)">前四一码</a></span>
                <span data-name="q4em"><a href="javascript:void(0)">前四二码</a></span>
                <span data-name="h4ym"><a href="javascript:void(0)">后四一码</a></span>
                <span data-name="h4em"><a href="javascript:void(0)">后四二码</a></span>
            </p>
        </li>
        <li>
            <b class="tit_img">五星</b>
            <p>
                <span data-name="wxym"><a href="javascript:void(0)">五星一码</a></span>
                <span data-name="wxem"><a href="javascript:void(0)">五星二码</a></span>
                <span data-name="wxsm"><a href="javascript:void(0)">五星三码</a></span>
            </p>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1002" data-flag="qsym-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：1 开奖号码：前三位，至少出现1个1，即中前三一码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码万、千百位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1003-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：12 开奖号码：前三位，至少出现1和2各一个，即中前三二码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中至少 选择2个以上号码，每组由2个号码组成，只要开奖号码万、千百、百位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <span><i>0</i></span>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>

<div class="add_spot">
    <div class="left">
        <div class="sopt_wrap">
            <div class="slide_sp">
                奖金/返点
                <%--<p><span style="width: 4.89063px;"></span><var style="left: 4.89063px;"></var></p>--%>
                <%--<i><var>934058.63</var> / 7.0%</i>--%>
                <div class="cl-1003">
                    <div class="cl-1004">
                        <input type="hidden" class="slider-input"/>
                    </div>
                </div>
                <i><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
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
        $(".Pick").hide();
        $(".recl-1002").show();
        $(".btn_fu_zhi span").click(function () {
            if ($(this).siblings().hasClass('acti')) {
                $(this).siblings().removeClass('acti');
            }

            $(this).addClass('acti');
        });

        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass("acti");
            var nameF = $(this).data("name");
            if (nameF == "qsem") {
                $(".Pick").hide();
                $(".recl-1003-budw").show();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1003-budw").attr("data-flag", "qsem-budw");

            } else if (nameF = "qsym") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1002").show();
                $(".recl-1002").attr("data-flag", "qsym-budw");

            } else if (nameF = "hsym") {
                $(this).parent().parent().parent().attr("data-flag", "hsym-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('hsym');
                }
            } else if (nameF = "hsem") {
                $(this).parent().parent().parent().attr("data-flag", "hsem-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('hsem');
                }
            } else if (nameF = "q4ym") {
                $(this).parent().parent().parent().attr("data-flag", "q4ym-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('q4ym');
                }
            } else if (nameF = "q4em") {
                $(this).parent().parent().parent().attr("data-flag", "q4em-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('q4em');
                }
            } else if (nameF = "h4ym") {
                $(this).parent().parent().parent().attr("data-flag", "h4ym-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('h4ym');
                }
            } else if (nameF = "h4em") {
                $(this).parent().parent().parent().attr("data-flag", "h4em-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('h4em');
                }
            } else if (nameF = "wxym") {
                $(this).parent().parent().parent().attr("data-flag", "wxym-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('wxym');
                }
            } else if (nameF = "wxem") {
                $(this).parent().parent().parent().attr("data-flag", "wxem-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('wxem');
                }
            } else if (nameF = "wxsm") {
                $(this).parent().parent().parent().attr("data-flag", "wxsm-budw");
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('wxsm');
                }
            }
        });

        $(".Pick ul li span i").click(function () {
            $(this).parent().toggleClass('acti');
            var flagName = $(this).parent().parent().parent().parent().data("flag");
            if(flagName == "qsym-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('qsym-budw');
                }
            }else if(flagName == "qsem-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('qsem-budw');
                }
            }

        });

        //官方玩法
        $(".Playmethod ul li span").click(function () {

            var name_flag = $(this).parent().data('name');
            if (name_flag == 'gfwf') {
                var flag_acti = $(this).parent().parent().next().find('b').hasClass('acti');
                if (flag_acti == true) {
                    $(this).parent().parent().next().find('b').removeClass('acti');
                }
                $(this).parent().parent().find('b').addClass('acti');
                $(".left_it0").show();
                $(".right_it1").show();
                $(".Detailedlist").show();
            } else {
                var flag_acti = $(this).parent().parent().prev().find("b").hasClass('acti');
                if (flag_acti == true) {
                    $(this).parent().parent().prev().find("b").removeClass('acti');
                }
                $(this).parent().parent().find('b').addClass('acti');
                $(".left_it0").hide();
                $(".right_it1").hide();
                $(".Detailedlist").hide();
            }

        });

    });
</script>
<%--不定位点击时选中注数--%>
<script>
    function getBuwdZhushu() {
        var budwArr = [];
        $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var budwLength = budwArr.length;
        if (typeof budwArr == "undefined" || budwLength <= 0) {
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            return;
        }
        return budwLength;
    }

    function getBuwQsemZhushu() {
        var budwArr = [];
        $.each($(".recl-1003-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        if (typeof budwArr == "undefined" || budwArr.length < 2) {
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            return;
        }

        var budwLength = getQsemZhushu(budwArr);
        return budwLength;
    }

    function getQsemZhushu(tempArr) {
        var newArr = [];
        for(var i = 0; i < tempArr.length; i++){
            for(var j = 0; j < tempArr.length; j++){
                if(i != j){
                   var arr = [];
                   arr.push(newArr[i])
                   newArr.push(tempArr[i] + "" + tempArr[j]);
                }
            }
        }

        for(var n=0;n<newArr.length;n++){
            console.log(newArr[n]);
        }

        return newArr.length;
    }


</script>
<script>
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

    function tjzd() {
        var betForm = {};
        if (!getZhudan(betForm)) {
            return;
        }
        clearSelected();
        var html = template("template_touzhu", betForm);
        $("#zhudanList").append(html);
        calcAll();
    }


    function getZhudan(obj) {
        var budwArr = [];
        $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = budwArr.length;
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "不定位-前三一码";
        obj.content = "不定位: (" + budwArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }


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

    function suiji(total) {
        var result = [];
        for (var numIndex = 0; numIndex < total; ++numIndex) {
            var strTemp = 10;
            while (strTemp == 10) {
                var num = parseInt(Math.random() * 10);
                strTemp = num;
            }

            var obj = {};
            obj.playName = "不定位-前三一码";
            obj.content = "不定位: (" + strTemp + ")";
            obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money"));
            obj.zhushu = 1;
            obj.beishu = $("#inputBeishu").data("beishu");
            obj.money = $("#inputMoney").data("money");
            obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
            obj.playGroupId = playGroupId;
            result.push(obj);
        }
        return result;
    }
</script>
<script>
    $(function () {

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
                money_jangjin = (98 - money_jangjin) / 10 / 2.71;
                $(".jiangjin-change").html(parseFloat(money_jangjin).toFixed(3));
                if (typeof stateTouZhu == "function") {
                    var flag_str = '';
                    if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
                        flag_str = 'qsym';
                        stateTouZhu(flag_str);
                    }
                }
            }
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").click(function () {
            var text = $(this).text();
            $(this).parent().parent().find('input').val(text);
            $(this).parent().hide();

            $(this).parent().parent().find('input').data("money", parseInt(text));
            calc();
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
            <span class="span1">{{zhushu}}注</span>
            <span class="span2">{{jiangJfanD}}</span>
            <span class="span3">{{totalMoney}}元</span>
            <span class="span4"><a href="javascript:void(0)" onclick="removeThisItem(this)"><img
                    src="${resPath}img/ico53.png" alt=""></a></span>
        </div>
    </li>
</script>