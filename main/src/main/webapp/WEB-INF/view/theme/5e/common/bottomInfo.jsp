<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<div class="tail at">
    <ul>
        <li>
            <div class="slide" style="<c:if test="${param.navGroup == 2}">display:block;</c:if>">
                <h2><img src="${resPath}img/ico42.png" alt="">新手入门</h2>
            <p>
                <span class="<c:if test="${param.playGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/question/zc.html">关于注册</a></span>
                <span class="<c:if test="${param.playGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/question/cz.html">关于充值</a></span>
                <span class="<c:if test="${param.playGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/question/tk.html">关于提款</a></span>
                <span class="<c:if test="${param.playGroupId == 1}">acti</c:if>"><a href="<%=basePath%>help/index.html">彩种介绍</a></span>
                <%--<a href="<%=basePath%>help/rule/1.html" target="_blank">注册登录</a>--%>
                <%--<a href="<%=basePath%>help/rule/5.html" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/5.html#v3" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/1.html#z5" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/1.html#z5" target="_blank"></a>--%>
            </p>
            </div>
        </li>
        <li>

            <div class="slide" style="<c:if test="${param.navGroup == 2}">display:block;</c:if>">
                <h2><img src="${resPath}img/ico43.png" alt="">充值投注</h2>
            <p>
                <span class="<c:if test="${param.playGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/question/cz.html">充值介绍</a></span>
                <span class="<c:if test="${param.playGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/question/cz_1.html">网银充值</a></span>
                <span class="<c:if test="${param.playGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/question/cz_2.html">支付宝</a></span>
                <span class="<c:if test="${param.playGroupId == 2}">acti</c:if>"><a href="<%=basePath%>help/question/cz_3.html">微信支付</a></span>

                <%--<a href="<%=basePath%>help/rule/2.html" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/2.html" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/2.html#x3" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/2.html#x4" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/5.html#v5" target="_blank"></a>--%>
            </p>
            </div>
        </li>
        <li>
            <div class="slide" style="<c:if test="${param.navGroup == 2}">display:block;</c:if>">
            <h2><img src="${resPath}img/ico44.png" alt="">兑奖提款</h2>
            <p>
                <span class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/question/tk_9.html">提款未成功</a></span>
                <span class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/question/tk_6.html">是否收手续费</a></span>
                <span class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/question/tk_5.html">如何提款</a></span>
                <span class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/question/tk_10.html">中奖查询</a></span>
                <%--<a href="<%=basePath%>help/rule/3.html#c4" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/3.html#c5" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/3.html#c8" target="_blank"></a>--%>
            </p>
            </div>
        </li>
        <li style="border-right: none;">
            <h2><img src="${resPath}img/ico45.png" alt="">特色服务</h2>
            <p>
                <span class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="<%=basePath%>help/rule/Extension.html">推广赚钱</a></span>
                <span class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="${kefuUrl}" target="_blank">在线客服</a></span>
                <span class="<c:if test="${param.playGroupId == 3}">acti</c:if>"><a href="tencent://message/?uin=1902616161&Site=在线客服&Menu=yes">代理QQ</a></span>
            <%--<p class="<c:if test="${param.playGroupId == 4}">acti</c:if>"><a href="<%=basePath%>help/rule/Extension.html">推广赚钱</a></p>--%>
            <%--<p class="<c:if test="${param.playGroupId == 4}">acti</c:if>"><a href="<%=basePath%>help/rule/Extension.html">在线客服</a></p>--%>
            <%--<p class="<c:if test="${param.playGroupId == 4}">acti</c:if>"><a href="<%=basePath%>help/rule/Extension.html">代理QQ</a></p>--%>
                <%--<a href="<%=basePath%>help/rule/Extension.html" target="_blank">推广赚钱</a>--%>
                <%--<a href="<%=basePath%>help/rule/QQ.html" target="_blank"></a>--%>
                <%--<a href="<%=basePath%>help/rule/QQ.html" target="_blank"></a>--%>
            </p>
        </li>
    </ul>
</div>