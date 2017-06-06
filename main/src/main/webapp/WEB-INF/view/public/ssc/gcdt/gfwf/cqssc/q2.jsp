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
            <b>前二直选</b>
            <p class="btn_fu_zhi">
                <span class="acti" data-name="zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span data-name="zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span data-name="zxhz"><a href="javascript:void(0)">直选和值</a></span>
                <span data-name="zxkd"><a href="javascript:void(0)">直选跨度</a></span>
            </p>
        </li>
        <li>
            <b>前二组选</b>
            <p class="btn_fu_zhi">
                <span data-name="zuxfs"><a href="javascript:void(0)">组选复式</a></span>
                <span data-name="zuxds"><a href="javascript:void(0)">组选单式</a></span>
                <span data-name="zuxhz"><a href="javascript:void(0)">组选和值</a></span>
                <span data-name="zuxbd"><a href="javascript:void(0)">组选包胆</a></span>
            </p>
        </li>
    </ul>
</div>
<%-- 前二直选 --%>
<div class="Pick cl-1002 recl-1002" data-name="zxfs" data-flag="zxfs-q2">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位中至少各选1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码前两位：58，即中前二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千位中至少各选择1个号码组成一注，所选号码与开奖号码的前2位相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="万">
            <b><i>万位</i></b>
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
        <li data-name="千">
            <b><i>千位</i></b>
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
<%--直选单式--%>
<div class="Pick cl-1003 recl-1003" data-name="zxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个二位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码前两位：58，即中前二直选。</var>
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
<%--直选和值--%>
<div class="Pick cl-1002 recl-1004-zxhz" data-name="zxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-18中任意选择1个或1个以上的和值号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：和值1 开奖号码前两位：01或10，即中前二和值。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>开奖号码的万、千位中两个数字相加之和等于所选和值，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="和值" class="hz-q2">
            <b class="hz-dir"><i>和值</i></b>
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
            <span><i>10</i></span>
            <span><i>11</i></span>
            <span><i>12</i></span>
            <span><i>13</i></span>
            <span><i>14</i></span>
            <span><i>15</i></span>
            <span><i>16</i></span>
            <span><i>17</i></span>
            <span><i>18</i></span>
        </li>
    </ul>
</div>
<%--直选跨度--%>
<div class="Pick cl-1002 recl-1005-zxkd" data-name="zxkd">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：跨度9 开奖号码：90***，最大值9与最小值0相减之差即为跨度值，当所选号与跨度号码相同，即为中奖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选数值等于前二位最大数与最小数相减之差，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="跨度">
            <b><i>跨度</i></b>
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
<%--组选复式--%>
<div class="Pick cl-1002 recl-1006-zuxfs" data-name="zuxfs">
    <p class="p1">
        <span class="fr fl cl-1001">
           从0-9中任意选择2个或2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码：前两位 58 或 85(顺序不限，不含对子号)，即为中奖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9号码中选取两个号码组成一注，所选号码与开奖号码的万、千位相同，顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="组选">
            <b><i>组选</i></b>
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
<%--组选单式--%>
<div class="Pick cl-1003 recl-1007-zuxds" data-name="zuxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个二位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码：前二位 58 或者 85(顺序不限，不含对子号)，即中前二组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注，输入号码的万、千位与开奖号码相同，且顺序不限，即为中奖。</var>
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
<%--组选和值--%>
<div class="Pick cl-1002 recl-1008-zuxhz" data-name="zuxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从1-17中任意选择1个或者1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：和值1 开奖号码前两位：01或10(顺序不限，不含对子号)，即中前二组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>开奖号码的万、千位中两个数字相加之和等于所选号(不含对子号)，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="和值" class="hz-q2">
            <b class="hz-dir"><i>和值</i></b>
            <span><i>1</i></span>
            <span><i>2</i></span>
            <span><i>3</i></span>
            <span><i>4</i></span>
            <span><i>5</i></span>
            <span><i>6</i></span>
            <span><i>7</i></span>
            <span><i>8</i></span>
            <span><i>9</i></span>
            <span><i>10</i></span>
            <span><i>11</i></span>
            <span><i>12</i></span>
            <span><i>13</i></span>
            <span><i>14</i></span>
            <span><i>15</i></span>
            <span><i>16</i></span>
            <span><i>17</i></span>
        </li>
    </ul>
</div>
<%--组选包胆--%>
<div class="Pick cl-1002 recl-1009-zuxbd" data-name="zuxbd">
    <p class="p1">
        <span class="fr fl cl-1001">
           从0-9中任意选择1个包胆号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：包胆8 开奖号码：前二位 8×，且×不等于8，即中前二组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9号码中任意选取一个胆码，开奖号码前二位各不相同(不含对子号)，投注号码与开奖号码前二位中任意一位相同，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="胆码">
            <b><i>胆码</i></b>
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
                <i class="q2-base-chnage"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">1.0%</var></i>
                <i class="q2-chnage-zux"><var class="jiangjin-change-zux">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">1.0%</var></i>
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
        $(".q2-chnage-zux").hide(); //初始化隐藏组选奖、返点拉动杆
        $('.recl-1002').show();

        $(".group ul li span").click(function () {
            $(".q2-base-chnage").show();
            $(".q2-chnage-zux").hide();
            var flagForT = $(".group ul li p span").hasClass("acti");
            if (flagForT) {
                $(".group ul li p span").removeClass('acti');
            }
            $(this).addClass("acti");
            $(".reboxt .right .suiji5").html("随机五注");
            $(".reboxt .right .suiji1").html("随机一注");

            var flagName = $(this).data("name");
            if (flagName == "zxds") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1003').show();
                $('.recl-1003').attr("data-flag", "zxds-q2");
            } else if (flagName == "zxfs") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1002').show();
                $('.recl-1002').attr("data-flag", "zxfs-q2");
            } else if (flagName == "zxhz") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1004-zxhz').show();
                $('.recl-1004-zxhz').attr("data-flag", "zxhz-q2");
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
            } else if (flagName == "zxkd") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1005-zxkd').show();
                $('.recl-1005-zxkd').attr("data-flag", "zxkd-q2");
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
            } else if (flagName == "zuxfs") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1006-zuxfs').show();
                $('.recl-1006-zuxfs').attr("data-flag", "zuxfs-q2");
                $(".q2-base-chnage").hide();
                $(".q2-chnage-zux").show();
            } else if (flagName == "zuxds") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1007-zuxds').show();
                $('.recl-1007-zuxds').attr("data-flag", "zuxds-q2");
                $(".q2-base-chnage").hide();
                $(".q2-chnage-zux").show();
            } else if (flagName == "zuxhz") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1008-zuxhz').show();
                $('.recl-1008-zuxhz').attr("data-flag", "zuxhz-q2");
                $(".q2-base-chnage").hide();
                $(".q2-chnage-zux").show();
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
            } else if (flagName == "zuxbd") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1009-zuxbd').show();
                $('.recl-1009-zuxbd').attr("data-flag", "zuxbd-q2");
                $(".q2-base-chnage").hide();
                $(".q2-chnage-zux").show();
            }
        });

        $(".Pick ul li span i").click(function () {
            var flagName = $(this).parent().parent().parent().parent().data("name");
            if(flagName == "zuxbd"){
                if( $(this).parent().hasClass('acti')){
                    $(this).parent().removeClass('acti');
                }else if(!$(this).parent().hasClass('acti')){
                    $(".recl-1009-zuxbd ul li span.acti").removeClass('acti');
                    $(this).parent().addClass('acti');
                }
                stateTouZhu("zuxbd-q2");
            }else{
                $(this).parent().toggleClass('acti');
            }

            if (flagName == "zxfs") {
                stateTouZhu("zxfs-q2");
            } else if (flagName == "zxhz") {
                stateTouZhu("zxhz-q2");
            } else if (flagName == "zxkd") {
                stateTouZhu("zxkd-q2");
            } else if (flagName == "zuxfs") {
                stateTouZhu("zuxfs-q2");
            } else if (flagName == "zuxhz") {
                stateTouZhu("zuxhz-q2");
            }

        });

    });
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

    //添加注单
    function tjzd() {
        if (typeof $('.recl-1003').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getDsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu();
            }
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZxhzZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1005-zxkd').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZxkdZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1006-zuxfs').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZuxfsZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1007-zuxds').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZuxdsZhudan(betForm)) {
                return;
            }
            clearTextarea();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1008-zuxhz').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZuxhzZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1009-zuxbd').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZuxbdZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        }
    }

    //获取手动输入的有效注数--前二直选单式
    function getZxdsZhushu() {
        var textStr = $(".recl-1003 .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    //获取手动输入的有效注数--前二组选单式
    function getZuxdsZhushu() {
        var textStr = $(".recl-1007-zuxds .content_jiang .content_tex").val();
        var newArr = [];

        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                var strTemp = "", strTemp1 = "";
                var str1 = arr_new[i].toString();
                var str2 = arr_new[i].toString();
                strTemp = str1.substr(0,1);
                strTemp1 = str2.substr(1,1);
                if(strTemp != strTemp1){
                    var tempArr = [];
                    tempArr.push(parseInt(strTemp));
                    tempArr.push(parseInt(strTemp1));
                    tempArr.sort();
                    newArr.push(tempArr.join(""));
                }
            }
        }
        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    //前二直选-直选跨度
    function getZxkdZshu(valArr) {
        var tempArr = [];
        var kdArr = [],numTemp = [];
        var num = 0;
        $.each($(".recl-1005-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            numTemp.push($.trim($(this).find("i").html()));
        });
        if(typeof valArr != "undefined"){
            kdArr = valArr;
        }else{
            kdArr = numTemp;
        }

        var hzLength = kdArr.length;
        if (hzLength <= 0) {
            return;
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

    //前二直选-直选和值
    function getZxhzZshu(valArr) {
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
            return;
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


    //前二组选-组选和值
    function getZuxhzZhushu(valArr) {
        var tempArr = [];
        var hzArr = [], temp = [], nowTemp = [];
        var tempValue = 0, sumTemp = 0, num = 0;
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
            return;
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
                        if(temp[i] != temp[i1]){
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
        tempArr = tempArr.uniqueArr();
        return tempArr.length;
    }

    //前二组选-组选包胆
    function getZuxbdZhushu(valArr) {
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
            return;
        }
        for (var n = 0; n < bdArr.length; n++) {
            for (var i = 0; i < 10; i++){
                if(i != bdArr[n]){
                    tempArr.push(i + "" + bdArr[n]);
                }
            }
        }
        return tempArr.length;
    }

    //前二直选-直选单式
    function getDsZhudan(obj) {
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
        if (newArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }
        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + " ";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        zhushu = newArr.length;
        obj.playName = "前二直选-单式";
        obj.content = "号码: (" + newArr + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前二组选-组选单式
    function getZuxdsZhudan(obj) {
        var textStr = $(".recl-1007-zuxds .content_jiang .content_tex").val();
        var newArr = [];
        var repeatArr = [], errorArr = [], allErrorArr = [],pairArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                var strTemp = "", strTemp1 = "";
                var str1 = arr_new[i].toString();
                var str2 = arr_new[i].toString();
                strTemp = str1.substr(0,1);
                strTemp1 = str2.substr(1,1);
                if(strTemp != strTemp1){
                    var tempArr = [];
                    tempArr.push(parseInt(strTemp));
                    tempArr.push(parseInt(strTemp1));
                    tempArr.sort();
                    newArr.push(tempArr.join(""));
                }else{
                    pairArr.push(arr_new[i]);
                }
            } else {
                if(arr_new[i] != ""){
                    errorArr.push(arr_new[i]);
                }
            }
        }
        repeatArr = newArr.duplicate(); //获取重复元素

        if (newArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (pairArr.length > 0) {
            allErrorArr.push("自动过滤对子号码:");
            for(var p = 0; p < pairArr.length; p++){
                allErrorArr.push(pairArr[p]);
            }
        }
        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for(var r = 0; r < repeatArr.length; r++){
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
        zhushu = newArr.length;
        obj.playName = "前二组选-单式";
        obj.content = "号码: (" + newArr + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前二直选-直选和值
    function getZxhzZhudan(obj) {
        var hzArr = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZxhzZshu(hzArr);
        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "前二直选-和值";
        obj.content = "和值: (" + hzArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前二组选-组选和值
    function getZuxhzZhudan(obj) {
        var hzArr = [];
        $.each($(".recl-1008-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZuxhzZhushu();
        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "前二组选-和值";
        obj.content = "和值: (" + hzArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前二组选-组选包胆
    function getZuxbdZhudan(obj) {
        var hzArr = [];
        $.each($(".recl-1009-zuxbd ul li[data-name = '胆码'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZuxbdZhushu();
        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "前二组选-包胆";
        obj.content = "包胆: (" + hzArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前二直选-直选跨度
    function getZxkdZhudan(obj) {
        var kdArr = [];
        $.each($(".recl-1005-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            kdArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZxkdZshu();
        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "前二直选-跨度";
        obj.content = "跨度: (" + kdArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前二组选--组选复式
    function getZuxfsZhudan(obj) {
        var zuxArr = [];
        $.each($(".recl-1006-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
            zuxArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZuxfsZshu();
        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "前二组选-复式";
        obj.content = "组选: (" + zuxArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前二直选复式注单--
    function getZhudan(obj) {
        var wanArr = [], qianArr = [];
        $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        var zhushu = getZxfsZshu();
        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "前二-复式";
        obj.content = "万位: (" + wanArr.join(",") + ") 千位: (" + qianArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
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
        var flagZhi = "zxfs";//默认为复式
        var playNameStr = '';
        var contentStr = '';
        var zhushu = 1;
        if (typeof $('.recl-1003').attr('data-flag') != 'undefined') {
            playNameStr = "前二直选-单式";
            flagZhi = "zxds";
        } else if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            playNameStr = "前二直选-复式";
            flagZhi = "zxfs";
        } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
            playNameStr = "前二直选-和值";
            flagZhi = "zxhz";
        } else if (typeof $('.recl-1005-zxkd').attr('data-flag') != 'undefined') {
            playNameStr = "前二直选-跨度";
            flagZhi = "zxkd";
        } else if (typeof $('.recl-1006-zuxfs').attr('data-flag') != 'undefined') {
            playNameStr = "前二组选-复式";
            flagZhi = "zuxfs";
        } else if (typeof $('.recl-1007-zuxds').attr('data-flag') != 'undefined') {
            playNameStr = "前二组选-单式";
            flagZhi = "zuxds";
        } else if (typeof $('.recl-1008-zuxhz').attr('data-flag') != 'undefined') {
            playNameStr = "前二组选-和值";
            flagZhi = "zuxhz";
        } else if (typeof $('.recl-1009-zuxbd').attr('data-flag') != 'undefined') {
            playNameStr = "前二组选-包胆";
            flagZhi = "zuxbd";
        }

        for (var numIndex = 0; numIndex < total; ++numIndex) {
            if (flagZhi == "zxds" || flagZhi == "zxfs") {
                var redArr = [];
                for (var i = 0; i <= 2; ++i) {
                    redArr[i] = 0;
                }

                var arr = [];
                while (arr.length != 2) {
                    var num = parseInt(Math.random() * 10);
                    if (redArr[num] != 1) {
                        redArr[num] = 1;
                        arr.push(num);
                    }
                }
            }

            if (flagZhi == "zxds") {
                contentStr = "号码: (" + arr[0] + "" + arr[1] + ")";
            } else if (flagZhi == "zxfs") {
                contentStr = "万位: " + arr[0] + " 千位: " + arr[1];
            } else if (flagZhi == "zxhz") {
                var hzArr = [];
                while (hzArr.length != 1) {
                    var hznum = parseInt(Math.random() * 19);
                    hzArr.push(hznum);
                }
                zhushu = getZxhzZshu(hzArr);
                contentStr = "和值: (" + hzArr[0] + ")";
            } else if (flagZhi == "zuxbd") {
                var bdArr = [];
                while (bdArr.length != 1) {
                    var bdnum = parseInt(Math.random() * 10);
                    bdArr.push(bdnum);
                }
                zhushu = getZuxbdZhushu(bdArr);
                contentStr = "包胆: (" + bdArr[0] + ")";
            } else if (flagZhi == "zxkd") {
                var kdArr = [];
                while (kdArr.length != 1) {
                    var kdnum = parseInt(Math.random() * 10);
                    kdArr.push(kdnum);
                }
                zhushu = getZxkdZshu(kdArr);
                contentStr = "跨度: (" + kdArr[0] + ")";
            } else if (flagZhi == "zuxhz") {
                var zuxhzArr = [];
                while (zuxhzArr.length != 1) {
                    var zuxhznum = parseInt(Math.random() * 17 + 1);
                    zuxhzArr.push(zuxhznum);
                }
                zhushu = getZuxhzZhushu(zuxhzArr);
                contentStr = "和值: (" + zuxhzArr[0] + ")";
            } else if (flagZhi == "zuxfs" || flagZhi == "zuxds") {
                var zuxArr = [];
                while (zuxArr.length != 1) {
                    var zuxnum0 = parseInt(Math.random() * 10);
                    var zuxnum1 = parseInt(Math.random() * 10);
                    if(zuxnum0 != zuxnum1){
                        if(flagZhi === "zuxfs"){
                            zuxArr.push(zuxnum0 + "," + zuxnum1);
                        }else{
                            zuxArr.push(zuxnum0 + "" + zuxnum1);
                        }
                    }
                }
                zhushu = 1;
                contentStr = "组选: (" + zuxArr[0] + ")";
            }

            var obj = {};
            obj.playName = playNameStr;
            obj.content = contentStr;
            obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
            obj.zhushu = zhushu;
            obj.beishu = $("#inputBeishu").data("beishu");
            obj.money = $("#inputMoney").data("money");
            if(flagZhi == "zuxfs" || flagZhi == "zuxds" || flagZhi == "zuxhz"){
                obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
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
        $('.recl-1002 .content_jiang .content_tex').keyup(function () {
            stateTouZhu('zxfs-q2');
        });
        $('.recl-1003 .content_jiang .content_tex').keyup(function () {
            stateTouZhu('zxds-q2');
        });
        $('.recl-1007-zuxds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('zuxds-q2');
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
                money_jangjin = 98.00 - money_jangjin;
                $(".jiangjin-change").html(parseFloat(money_jangjin).toFixed(2));
                money_jangjin = money_jangjin / 2;
                $(".jiangjin-change-zux").html(parseFloat(money_jangjin).toFixed(2));
                if (typeof stateTouZhu == "function") {
                    var flagStr = '';
                    var name02 = $('.recl-1002').attr('data-flag');
                    var name04 = $('.recl-1004-zxhz').attr('data-flag');
                    var name05 = $('.recl-1005-zxkd').attr('data-flag');
                    var name06 = $('.recl-1006-zuxfs').attr('data-flag');
                    var name07 = $('.recl-1007-zuxds').attr('data-flag');
                    var name08 = $('.recl-1008-zuxhz').attr('data-flag');
                    if (typeof name02 != "undefined") {
                        flagStr = 'zxfs-q2';
                        stateTouZhu(flagStr);
                    } else if (typeof name04 != "undefined") {
                        flagStr = 'zxhz-q2';
                        stateTouZhu(flagStr);
                    } else if (typeof name05 != "undefined") {
                        flagStr = 'zxkd-q2';
                        stateTouZhu(flagStr);
                    } else if (typeof name06 != "undefined") {
                        flagStr = 'zuxfs-q2';
                        stateTouZhu(flagStr);
                    } else if (typeof name07 != "undefined") {
                        flagStr = 'zuxds-q2';
                        stateTouZhu(flagStr);
                    } else if (typeof name08 != "undefined") {
                        flagStr = 'zuxhz-q2';
                        stateTouZhu(flagStr);
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