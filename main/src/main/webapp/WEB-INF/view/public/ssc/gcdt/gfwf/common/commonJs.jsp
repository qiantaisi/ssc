<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script src="${resPath}js/ssc/gcdt/gfwf.js?v=20170823_23"></script>
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
                    <input type="text" value="2" id="inputMoney" data-money="2" disabled="disabled">
                    <span></span>
                    <div class="down_menu">
                        <i>2</i>
                        <i>5</i>
                        <i>10</i>
                        <i>20</i>
                    </div>
                </div>
                <div class="down redown-gfwf selectMode_gfwf" style="">
                    <input type="text" value="元" id="inputMoneyStr" disabled="disabled">
                    <span></span>
                    <div class="down_menu down_menu_str">
                        <i>元</i>
                        <i>角</i>
                        <i>分</i>
                    </div>
                </div>
            </div>
            <p class="p1">
                您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">1</i> 倍，返还 <i class="i1 i_fanD">0</i> 元，共投注 <i class="i1 i_money">0</i>&nbsp;元。
            </p>
        </div>
        <div class="rigth">
            <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
        </div>
    </div>
</script>

<script type="text/html" id="tbzhTemplate">
    <div class="headZh">
        <span class="headZh-zhqs">追号期数：</span>
        <select id="lt_zh_qishu">
            <option value="">请选择</option>
            <option value="5">第5期</option>
            <option value="10">第10期</option>
            <option value="15">第15期</option>
            <option value="20">第20期</option>
            <option value="25">第25期</option>
            <option value="50">全部</option>
        </select>
        &nbsp;&nbsp;总期数：
        &nbsp;<span class="qishu zhredtxt zhqishutxt">10</span>&nbsp;&nbsp;期
        &nbsp;&nbsp;追号总金额: <span class="money zhredtxt zhzjetxt">50</span> 元
        &nbsp;&nbsp;追号计划: 起始倍数&nbsp;
        <span class="startBeiShu zhredtxt">
            <input name="startBeiShuZh" id="startBeiShuZh" value="1" size="3"
                   onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}"
            />
        </span>
        追号期数
        <span class="endzhqiShu zhredtxt">
            <input name="lt_trace_count_input" id="lt_trace_count_input" value="10" size="3" disabled="disabled"/>
        </span>
    </div>
    <div class="content_heigth">
        <ul class="ulzh" id="tbLiList">
            {{each listContent}}
            <li class="list-li" style="display:none;">
                <input type="checkbox" class="oneCheckbox"/>
                <span class="content_qs">{{$value.zhqishu}}</span>
                <span class="nosel">
                  <input type="text" name="lt_trace_times_20170718066" value="{{$value.zhbeishu}}"/>
                  倍
                </span>
                <span class="content_money">{{$value.totelMoney}}</span>
                <span class="content_time_kj">{{$value.zhkjshijian}}</span>
            </li>
            {{/each}}
        </ul>
    </div>
</script>

<script type="text/html" id="fbzhTemplate">
    <div class="headZh">
        <span class="headZh-zhqs">追号期数：</span>
        <select id="rt_zh_qishu">
            <option value="">请选择</option>
            <option value="5">第5期</option>
            <option value="10">第10期</option>
            <option value="15">第15期</option>
            <option value="20">第20期</option>
            <option value="25">第25期</option>
            <option value="50">全部</option>
        </select>
        &nbsp;&nbsp;总期数：
        &nbsp;<span class="qishu zhredtxt zhqishutxt">10</span>&nbsp;&nbsp;期
        &nbsp;&nbsp;追号总金额： <span class="money zhredtxt zhfbzjetxt">50</span> 元
        &nbsp;&nbsp;追号计划： 隔&nbsp;
        <span class="startBeiShu zhredtxt">
                    <input name="rt_trace_diff" id="rt_trace_diff" value="1" size="3"
                           onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                           onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}"
                    />
        </span>期&nbsp;&nbsp;
        倍&nbsp;ⅹ
        <span class="zhqiShu zhredtxt">
                    <input name="rt_trace_times_diff" id="rt_trace_times_diff" value="2" size="3"
                           onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                           onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}"
                    />
        </span>
        追号期数
        <span class="zhqiShu zhredtxt">
                    <input name="lt_trace_count_input" id="rt_trace_count_input" value="10" size="3" disabled="disabled"/>
        </span>
    </div>
    <div class="content_heigth reConHei">
        <ul class="ulzh" id="fbLiList">
            {{each listContent}}
            <li class="list-li" style="display:none;">
                <input type="checkbox" class="oneCheckbox oneFbzhCheckbox" />
                <span class="content_qs">{{$value.zhqishu}}</span>
                <span class="nosel">
                  <input type="text" name="lt_trace_times_20170718066" value="{{$value.zhbeishu}}"/>
                  倍
                </span>
                <span class="content_money">{{$value.totelMoney}}</span>
                <span class="content_time_kj">{{$value.zhkjshijian}}</span>
            </li>
            {{/each}}

        </ul>
    </div>
</script>