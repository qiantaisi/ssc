<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script src="${resPath}js/ssc/gcdt/gfwf.js?v=20170718_1"></script>
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