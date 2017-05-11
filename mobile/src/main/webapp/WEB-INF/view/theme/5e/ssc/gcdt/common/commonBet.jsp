<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%--<nav class="bar bar-tab cl-10 cl-605">--%>
    <%--<a class="tab-item" href="javascript:void(0)" id="btn-reset">--%>
        <%--<span class="icon icon-qingchu"></span>--%>
        <%--<span class="tab-label cl-953">清除</span>--%>
    <%--</a>--%>
    <%--<a class="tab-item" href="javascript:void(0)" id="btn-submit">--%>
        <%--<span class="tab-label cl-952">投注</span>--%>
    <%--</a>--%>
<%--</nav>--%>
<%--<div id="fengpanBet" class="cl-950">--%>
    <%--封盘中--%>
<%--</div>--%>
<!-- Block button in standard bar fixed above the footer -->
<div class="bar bar-footer-secondary cl-606">
    <div class="cl-607">已选<font id="zhushu">0</font>注</div>
    <div class="cl-608">
        <label for="inputMoney">投注金额：</label>
        <div class="cl-609 item-input">
            <input id="inputMoney" type="number" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" /> </div>
        <a class="tab-item" href="javascript:void(0)" id="btn-reset">
            <%--<span class="icon icon-qingchu"></span>--%>
            <span class="tab-label cl-953">&nbsp;清除&nbsp;</span>
        </a>
        <a class="tab-item" href="javascript:void(0)" id="btn-submit">
            <span class="tab-label cl-952">&nbsp;投注&nbsp;</span>
        </a>
    </div>
</div>