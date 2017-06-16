<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<input class="playPlIdBtn acti" data-play_id="543" data-play_pl_id="14261" data-name="dwd" type="hidden" />
<div class="Pick cl-1002 recl-1002" data-flag="dwd" style="border-top:none;">
    <p class="p1">
        <span class="fr fl cl-1001">
            在万位、千位、百位、十位、个位任意位置上任意选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：万位1 开奖号码：万位1，即中定位胆万位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择1个号码组成一注，每注由一个号码组成，所选号码与相同位置上的开奖号码一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="万">
            <b><i>万位</i></b>
            <var class="numLine">
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
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="千">
            <b><i>千位</i></b>
            <var class="numLine">
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
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="百">
            <b><i>百位</i></b>
            <var class="numLine">
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
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="十">
            <b><i>十位</i></b>
            <var class="numLine">
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
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
        <li data-name="个">
            <b><i>个位</i></b>
            <var class="numLine">
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
            </var>
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
                <i><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">1.0%</var></i>
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
            您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">1</i> 倍，返还 <i class="i1 i_fanD">0.00</i> 元，共投注 <i class="i1 i_money">0.00</i>元。
        </p>
    </div>
    <div class="rigth">
        <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
    </div>

</div>
<script>
    $(function(){
        $(".btn_fu_zhi span").click(function () {
           if($(this).siblings().hasClass('acti')){
               $(this).siblings().removeClass('acti');
           }

           $(this).addClass('acti');
        });

        $(".Pick ul li span i").click(function () {
            $(this).parent().toggleClass('acti');
            if(typeof stateTouZhu == "function"){
                stateTouZhu('dwd');
            }
        });

    });
</script>
<script>
    function getDwdZhushu() {
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

        if(typeof newArr == "undefined" || newArr.length <= 0){
            if(typeof clearStateTouZhu == 'function'){
                clearStateTouZhu();
            }
            return;
        }
        return newArr.length;
    }
</script>
<script>
    function getSuiji(total) {
        var betFormList = [];
        betFormList = suiji(total);
        $.each(betFormList, function (index, value) {
            addYuxuan(value);
        });
        calcAll();
    }

    function clearSelected() {
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $(".re-5x-i i.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        if(typeof clearStateTouZhu == 'function'){
            clearStateTouZhu();
        }
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
        addYuxuan(betForm);
        calcAll();
    }


    function getZhudan(obj) {
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
        var zhushu = getDwdZhushu();

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName =  "定位胆-定位胆";
        var wanStr = wanArr.length > 0 ? ("万位: (" + wanArr.join(",") + ")") : "";
        var qianStr = qianArr.length > 0 ? (" 千位: (" + qianArr.join(",") + ")") : "";
        var baiStr = baiArr.length > 0 ? (" 百位: (" + baiArr.join(",") + ")") : "";
        var shiStr = shiArr.length > 0 ?  (" 十位: (" + shiArr.join(",") + ")") : "";
        var geStr = geArr.length > 0 ? (" 个位: (" + geArr.join(",") + ")") : "";
        // 模板显示内容
        obj.showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
        var nowArr = [];
        var strTemp = $.trim(
            (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
            (qianStr == ' ' ? ' ': qianArr.join(",") + "|") +
            (baiStr == ' ' ? ' ': baiArr.join(",") + "|") +
            (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
            (geStr == ' ' ? ' ': geArr.join(",") + "|")
        );
        var arr = (strTemp.toString()).split("|");
        $.each(arr, function (index, value) {
            if(value != ""){
                var valNow = (value.toString()).split(",").join("");
                nowArr.push(valNow);
            }
        });
        // 转换投注格式
        // 投注内容
        obj.betContent = nowArr.join("|");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    function suiji(total) {
        var result = [];
        for (var numIndex = 0; numIndex < total; ++numIndex) {
            var xArr = [], numArr = [];
            for(var n = 0; n < 10; n++){
                numArr[n] = n;
            }
            for (var i = 0; i <= 4; ++i) {
                if(i == 0){
                    xArr[i] = "万位";
                } else if(i == 1){
                    xArr[i] = "千位";
                } else if(i == 2){
                    xArr[i] = "百位";
                } else if(i == 3){
                    xArr[i] = "十位";
                } else if(i == 4){
                    xArr[i] = "个位";
                }

            }

            var arr = [];
            var betStr = '';
            while (arr.length < 1) {
                var num1 = parseInt(Math.random() * 5);
                var num2 = parseInt(Math.random() * 10);
                var str = xArr[num1];
                str = str + ": (" + numArr[num2] + ")";
                arr.push(str);
                betStr = numArr[num2];
            }
            var obj = {};
            obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
            obj.playGroupId = playGroupId;
            obj.showPlayName = "定位胆-定位胆";
            obj.showContent = arr[0];
            obj.betContent = betStr;
            obj.betPerMoney = $("#inputMoney").data("money");
            obj.betZhushu = 1;
            obj.betBeishu = $("#inputBeishu").data("beishu");
            obj.betMode = 1;
            obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
            obj.betPlayGroupId = playGroupId;
            obj.betFandian = $(".fandian-bfb").data("value");
            obj.betPlayPl = $(".jiangjin-change").data("value");
            obj.betPlayPlId = getPlayPlId();
            obj.betPlayId = getPlayId();
            result.push(obj);
        }
        return result;
    }
</script>
<script>
    $(function () {
        var plAndMaxFd = getPlAndMaxFd();
        var maxPlayPl = plAndMaxFd.playPl;
        var maxFandian = plAndMaxFd.maxFdBl;
        var minPl = plAndMaxFd.minPl;
        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;

        $('.content_jiang .content_tex').keyup(function () {
            stateTouZhu('dan');
        });
        $('.slider-input').jRange({
            from: 0,
            to: maxFandian,
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
                $(".fandian-bfb").data("value", money_jangjin);
                $(".fandian-bfb").html(money_jangjin + "%");
                money_jangjin = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                $(".jiangjin-change").data("value", money_jangjin);
                $(".jiangjin-change").html(parseFloat(money_jangjin).toFixed(2));
                if(typeof stateTouZhu == "function"){
                    var flag_str = '';
                    if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
                        flag_str = 'dwd';
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
            changeStateCommon();
        });
    });
</script>