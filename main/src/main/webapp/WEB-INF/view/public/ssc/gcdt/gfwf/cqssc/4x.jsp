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
            <b>四星直选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti" data-play_pl_id="14209" data-name="fux"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-play_pl_id="14210" data-name="zhix"><a href="javascript:void(0)">直选单式</a></span>
            </p>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1002" data-flag="fu">
    <p class="p1">
        <span class="fr fl cl-1001">
            从千位、百位、十位、个位各选一个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：3456 开奖号码后四位：3456，即中四星直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从千、百、十、个位中至少各选择1个号码组成一注，所选号码与开奖号码后四位相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
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
<div class="Pick cl-1003 recl-1003">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个四位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：3456 开奖号码：3456，即中四星直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入一个4位数号码组成一注，所选择的千、百、十、个位与开奖号码相同，且顺序一致，即为中奖。</var>
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
    <div class="left releft">
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
            您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">0</i> 倍，返还 <i class="i1 i_fanD">0.00</i> 元，共投注 <i class="i1 i_money">0.00</i>元。
        </p>
    </div>
    <div class="rigth">
        <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
    </div>

</div>
<script>
    $(function(){
        //初始化复式选号模式
        $('.recl-1003').hide();
        $('.recl-1002').show();
        $('.recl-1002').attr("statef","1002");

        $(".btn_fu_zhi span").click(function () {
           if($(this).siblings().hasClass('acti')){
               $(this).siblings().removeClass('acti');
           }
           $(this).addClass('acti');
           var da_name = $(this).data('name');
           if(da_name == 'zhix'){
               $('.recl-1003').show();
               $('.recl-1002').hide();
               if(typeof $('.recl-1002').attr('statef') != 'undefined'){
                   $('.recl-1002').removeAttr('statef');
               }
               $('.recl-1003').attr("statef","1003");
           }else if(da_name == 'fux'){
               $('.recl-1003').hide();
               $('.recl-1002').show();
               if(typeof $('.recl-1003').attr('statef') != 'undefined'){
                   $('.recl-1003').removeAttr('statef');
               }
               $('.recl-1002').attr("statef","1002");
           }
        });

        $(".Pick ul li span i").click(function () {
            $(this).parent().toggleClass('acti');
            if(typeof stateTouZhu == "function"){
                stateTouZhu('fu');
            }
        });

        //输入倍数十重新计算
        $("#inputBeishu").keyup(function(){
            var valStr = $("#inputBeishu").val();
            $("#inputBeishu").data("beishu",$("#inputBeishu").val());
            if(valStr != ""){
                if (typeof $('.recl-1003').attr('statef') != 'undefined') {
                    stateTouZhu('dan');
                } else {
                    stateTouZhu('fu');
                }
            }
        });

        $("#inputBeishu").blur(function(){
            var valStr = $("#inputBeishu").val();
            if(valStr == "" || valStr == null || typeof valStr == "undefined"){
                $("#inputBeishu").val("1");
            }
        });
    });
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

    function clearZhudan() {
        $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").remove();
        calcAll();
    }

    function clearTextarea() {
        $(".content_jiang textarea").val('');
        clearStateTouZhu();
    }

    function daoRu() {
        alert("开发中，敬请期待...");
    }


    function tjzd() {
        if (typeof $('.recl-1003').attr('statef') != 'undefined') {
            var betDsForm ={};
            if(!getDsZhudan(betDsForm)){
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else {
            var betForm = {};
            if (!getZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        }
    }

    //获取手动输入的有效注数
    function getDsZhushu() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g,','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if(arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4){
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    //四星直选-直选单式
    function getDsZhudan(obj) {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g,','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
           if(arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4){
               newArr.push(arr_new[i]);
           }else{
               errorArr.push(arr_new[i]);
           }
        }

        if(newArr.length <= 0){
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if(errorArr.length > 0){
            for(var e = 0; e < errorArr.length; e++){
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        zhushu = newArr.length;
        obj.showPlayName = "四星直选-单式";
        obj.showContent = "号码: (" + newArr + ")";
        // 每注金额
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        // 倍数（1-元，obj.betMode2-角，3-分，4-厘）
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        // 每单总金额
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        // 彩种
        obj.betPlayGroupId = playGroupId;
        // 返点比例
        obj.betFandian = $(".fandian-bfb").data("value");
        // 赔率
        obj.betPlayPl = $(".jiangjin-change").data("value");
        // 赔率ID
        obj.betPlayPlId = getPlayPlId();
        return true;
    }

    function getZhudan(obj) {
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
        var zhushu = getZhushu();

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        // 模板显示内容
        obj.showContent = "千位：({0})，百位：({1})，十位：({2})，个位：({3})".format(
            qianArr.join(","),
            baiArr.join(","),
            shiArr.join(","),
            geArr.join(",")
        );
        // 转换投注格式
        // 玩法名称
        obj.showPlayName = "四星直选-复式";
        // 投注内容
        obj.betContent = gfwf_4xfs(
            qianArr,
            baiArr,
            shiArr,
            geArr
        );
        // 每注金额
        obj.betPerMoney = $("#inputMoney").data("money");
        // 注数
        obj.betZhushu = zhushu;
        // 倍数（1-元，obj.betMode2-角，3-分，4-厘）
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        // 每单总金额
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        // 彩种
        obj.betPlayGroupId = playGroupId;
        // 返点比例
        obj.betFandian = $(".fandian-bfb").data("value");
        // 赔率
        obj.betPlayPl = $(".jiangjin-change").data("value");
        // 赔率ID
        obj.betPlayPlId = getPlayPlId();
        return true;
    }

    function getZhushu() {
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
        return newArr.length;
    }

    //投注总状态
    function calcAll() {
        var totalZhushu = 0;
        var totalBeishu = 0;
        var totalMoney = 0;

        $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").each(function () {
            totalZhushu = add(totalZhushu, $(this).data("bet_zhushu"));
            totalBeishu = add(totalBeishu, $(this).data("bet_beishu"));
            totalMoney = add(totalMoney, $(this).data("bet_total_money"));
        });

        var str = '总投 <span>' + totalZhushu + '</span> 注，<span>' + totalBeishu + '</span> 倍，共 <span>' + totalMoney + '</span> 元。';
        $("#zongtouInfo").html(str);
    }

    function suiji(total) {
        var result = [];
        var qianArr = [], baiArr = [], shiArr = [], geArr = [];
        var flag_dan_zhi = '';//默认为单式
        var playNameStr = '';
        var contentStr = '';
        if (typeof $('.recl-1003').attr('statef') != 'undefined') {
            playNameStr = "四星直选-单式";
            flag_dan_zhi = "dan";
        } else {
            playNameStr = "四星直选-复式";
            flag_dan_zhi = "fu";
        }

        for (var numIndex = 0; numIndex < total; ++numIndex) {
            var redArr = [];
            for (var i = 0; i <= 9; ++i) {
                redArr[i] = 0;
            }

            var arr = [];
            while (arr.length != 6) {
                var num = parseInt(Math.random() * 10);
                if (redArr[num] != 1) {
                    redArr[num] = 1;
                    arr.push(num);
                }
            }
            qianArr.push(arr[0]); baiArr.push(arr[1]); shiArr.push(arr[2]); baiArr.push(arr[3]);
            if(flag_dan_zhi == "dan"){
                contentStr = "号码: (" + arr[1] + "" + arr[2] + "" + arr[3] + "" + arr[4] + ")";
            }else if(flag_dan_zhi == "fu"){
                contentStr = "千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
            }

            var obj = {};
            // 模板显示内容
            obj.showContent = contentStr;
            obj.showPlayName = playNameStr;
            // 投注内容
            obj.betContent = gfwf_4xfs(
                qianArr,
                baiArr,
                shiArr,
                geArr
            );
            // 每注金额
            obj.betPerMoney = $("#inputMoney").data("money");
            obj.betZhushu = 1;
            // 倍数（1-元，obj.betMode2-角，3-分，4-厘）
            obj.betBeishu = $("#inputBeishu").data("beishu");
            obj.betMode = 1;
            // 每单总金额
            obj.betTotalMoney = obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
            // 彩种
            obj.betPlayGroupId = playGroupId;
            // 返点比例
            obj.betFandian = $(".fandian-bfb").data("value");
            // 赔率
            obj.betPlayPl = $(".jiangjin-change").data("value");
            // 赔率ID
            obj.betPlayPlId = getPlayPlId();
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

                $(".fandian-bfb").data("value", money_jangjin);
                $(".fandian-bfb").html(money_jangjin + "%");

                money_jangjin = 9800 - (money_jangjin * 100);
                $(".jiangjin-change").data("value", money_jangjin);
                $(".jiangjin-change").html(money_jangjin);
                if(typeof stateTouZhu == "function"){
                    var flag_str = '';
                    if (typeof $('.recl-1003').attr('statef') != 'undefined') {
                        flag_str = 'dan';
                        stateTouZhu(flag_str);
                    } else {
                        flag_str = 'fu';
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