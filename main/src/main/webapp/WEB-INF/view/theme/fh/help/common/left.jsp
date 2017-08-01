<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
    String mHostName = RequestUtils.getScheme(request) + "://" + "m." + request.getServerName().replace("www.", "");
%>

<div class="list">
    <h5><span style="cursor:pointer;" onclick="getHelp(null, '<%=basePath%>help/main.html')">帮助中心</span></h5>
    <ul>
        <li class="li1 <c:if test="${param.navGroup == 1}">sli</c:if>" <c:if test="${not empty param.playGroupId}">sl="0"</c:if>>
            <h4>彩种介绍${param.flagClick}<img src="${resPath}img/bt.png" /></h4>
            <div class="slide" style="<c:if test="${param.navGroup == 1}">display:block;</c:if>">
                <p class="<c:if test="${param.playGroupId == 9}">acti</c:if>"><a href="<%=basePath%>help/rule/bjpk10.html">北京PK10</a></p>
                <p class="<c:if test="${param.playGroupId == 23}">acti</c:if>"><a href="<%=basePath%>help/rule/jspk10.html">极速PK10</a></p>
                <p class="<c:if test="${param.playGroupId == 14}">acti</c:if>"><a href="<%=basePath%>help/rule/xyft.html">幸运飞艇</a></p>
                <p class="<c:if test="${param.playGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/rule/cqssc.html">重庆时时彩</a></p>
                <p class="<c:if test="${param.playGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/rule/tjssc.html">天津时时彩</a></p>
                <p class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/rule/xjssc.html">新疆时时彩</a></p>
                <p class="<c:if test="${param.playGroupId == 15}">acti</c:if>"><a href="<%=basePath%>help/rule/ffssc.html">分分时时彩</a></p>
                <p class="<c:if test="${param.playGroupId == 16}">acti</c:if>"><a href="<%=basePath%>help/rule/efssc.html">两分时时彩</a></p>
                <p class="<c:if test="${param.playGroupId == 13}">acti</c:if>"><a href="<%=basePath%>help/rule/sfssc.html">三分时时彩</a></p>
                <p class="<c:if test="${param.playGroupId == 17}">acti</c:if>"><a href="<%=basePath%>help/rule/wfssc.html">五分时时彩</a></p>
                <!-- <p class="<c:if test="${param.playGroupId == 22}">acti</c:if>"><a href="<%=basePath%>help/rule/sflhc.html">十分六合彩</a></p> -->
                <p class="<c:if test="${param.playGroupId == 6}">acti</c:if>"><a href="<%=basePath%>help/rule/lhc.html">香港六合彩</a></p>
                <p class="<c:if test="${param.playGroupId == 18}">acti</c:if>"><a href="<%=basePath%>help/rule/jsk3.html">江苏快3</a></p>
                <p class="<c:if test="${param.playGroupId == 19}">acti</c:if>"><a href="<%=basePath%>help/rule/hbk3.html">湖北快3</a></p>
                <p class="<c:if test="${param.playGroupId == 20}">acti</c:if>"><a href="<%=basePath%>help/rule/ahk3.html">安徽快3</a></p>
                <p class="<c:if test="${param.playGroupId == 21}">acti</c:if>"><a href="<%=basePath%>help/rule/jlk3.html">吉林快3</a></p>
                <p class="<c:if test="${param.playGroupId == 10}">acti</c:if>"><a href="<%=basePath%>help/rule/cqxync.html">重庆幸运农场</a></p>
                <p class="<c:if test="${param.playGroupId == 11}">acti</c:if>"><a href="<%=basePath%>help/rule/gd10.html">广东快乐十分</a></p>
                <p class="<c:if test="${param.playGroupId == 4}">acti</c:if>"><a href="<%=basePath%>help/rule/pl3.html">体彩排列3</a></p>
                <p class="<c:if test="${param.playGroupId == 5}">acti</c:if>"><a href="<%=basePath%>help/rule/fc3d.html">福彩3D</a></p>
                <p class="<c:if test="${param.playGroupId == 7}">acti</c:if>"><a href="<%=basePath%>help/rule/xy28.html">幸运28</a></p>
                <p class="<c:if test="${param.playGroupId == 8}">acti</c:if>"><a href="<%=basePath%>help/rule/bjkl8.html">北京快乐8</a></p>
            </div>
        </li>
        <li class="li1 <c:if test="${param.navGroup == 2}">sli</c:if> zhinan" <c:if test="${not empty param.zcplayGroupId || not empty param.czplayGroupId || not empty param.tkplayGroupId}">sl="0"</c:if>>
            <h4>新手指南<img src="${resPath}img/bt.png" /></h4>
            <div class="slide" style="<c:if test="${param.navGroup == 2}">display:block;</c:if>">
                <p class="<c:if test="${param.zcplayGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/question/zc.html">注册</a></p>
                <p class="<c:if test="${param.czplayGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/question/cz.html">充值</a></p>
                <p class="<c:if test="${param.tkplayGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/question/tk.html">提款</a></p>
                <%--<p class="<c:if test="${param.playGroupId == 6}">acti</c:if>"><a href="<%=basePath%>help/rule/5.html">新手指引</a></p>--%>
                <%--<p class="<c:if test="${param.playGroupId == 7}">acti</c:if>"><a href="<%=basePath%>help/rule/5.html">安全保障</a></p>--%>
            </div>
        </li>
        <%--<li class="li1 <c:if test="${param.navGroup == 3}">sli</c:if>">--%>
        <%--<h4>充值投注<img src="${resPath}img/bt.png" /></h4>--%>
        <%--<div class="slide" style="<c:if test="${param.navGroup == 3}">display:block;</c:if>">--%>
        <%--<p class="<c:if test="${param.playGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_1.html" style="text-align: left;  margin-left: 25px;">如何进行银行转账充值？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_2.html" style="text-align: left;  margin-left: 25px;">如何用支付宝支付？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_3.html" style="text-align: left;  margin-left: 25px;">如何用微信进行支付？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 4}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_4.html" style="text-align: left;  margin-left: 25px;">网站有哪些充值方式？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 5}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_5.html" style="text-align: left;  margin-left: 25px;">充值后多久可以到账？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 6}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_6.html" style="text-align: left;  margin-left: 25px;">充值未到账？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 7}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_7.html" style="text-align: left;  margin-left: 25px;">账户充值会收手续费吗？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 8}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_8.html" style="text-align: left;  margin-left: 25px;">银行转账未及时到账？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 9}">acti</c:if>"><a href="<%=basePath%>help/rule/cz_9.html" style="text-align: left;  margin-left: 25px;">如何开通网上银行？</a></p>--%>
        <%--</div>--%>
        <%--</li>--%>
        <%--<li class="li1 <c:if test="${param.navGroup == 4}">sli</c:if>">--%>
        <%--<h4>兑奖提款<img src="${resPath}img/bt.png" /></h4>--%>
        <%--<div class="slide" style="<c:if test="${param.navGroup == 4}">display:block;</c:if>">--%>
        <%--<p class="<c:if test="${param.playGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_1.html" style="text-align: left;  margin-left: 25px;">中奖后怎么兑奖？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_2.html" style="text-align: left;  margin-left: 25px;">提款须知</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_3.html" style="text-align: left;  margin-left: 25px;">如何用微信进行支付？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 4}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_4.html" style="text-align: left;  margin-left: 25px;">申请提款网站是否有通知？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 5}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_5.html" style="text-align: left;  margin-left: 25px;">如何提款？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 6}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_6.html" style="text-align: left;  margin-left: 25px;">是否收取提款手续费？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 7}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_7.html" style="text-align: left;  margin-left: 25px;">提款金额有没有限制？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 8}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_8.html" style="text-align: left;  margin-left: 25px;">提款次数有没有限制？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 9}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_9.html" style="text-align: left;  margin-left: 25px;">提款不成功怎么办？</a></p>--%>
        <%--<p class="<c:if test="${param.playGroupId == 10}">acti</c:if>"><a href="<%=basePath%>help/rule/tk_10.html" style="text-align: left;  margin-left: 25px;">中奖查询</a></p>--%>
        <%--</div>--%>
        <%--</li>--%>
        <li class="li1 <c:if test="${param.navGroup == 5}">sli</c:if> gongneng" <c:if test="${not empty param.zqplayGroupId}">sl="0"</c:if>>
            <h4>特色功能<img src="${resPath}img/bt.png" /></h4>
            <div class="slide" style="<c:if test="${param.navGroup == 5}">display:block;</c:if>">
                <p class="<c:if test="${param.zqplayGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/rule/Extension.html">推广赚钱</a></p>
                <p class="<c:if test="${param.playGroupId == 2}">acti</c:if>"><a href="<%=mHostName%>" target="_blank">手机购彩</a></p>
            </div>
        </li>
        <li class="li1 <c:if test="${param.navGroup == 6}">sli</c:if> wenti" <c:if test="${not empty param.aqplayGroupId || not empty param.rmplayGroupId}">sl="0"</c:if>>
            <h4>常见问题<img src="${resPath}img/bt.png" /></h4>
            <div class="slide" style="<c:if test="${param.navGroup == 6}">display:block;</c:if>">
                <p class="<c:if test="${param.aqplayGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/question/aq.html">安全保障</a></p>
                <p class="<c:if test="${param.rmplayGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/question/mima.html">热门问题</a></p>
            </div>
        </li>
    </ul>
    <h3>
        <a href="${kefuUrl}" target="_blank">联系客服</a>
    </h3>
</div>