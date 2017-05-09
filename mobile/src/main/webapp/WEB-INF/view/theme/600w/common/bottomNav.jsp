<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<nav class="bar bar-tab cl-10 cl-1001">
    <div class="tab-item" onclick="showSubMenu(this)">
        <a href="<%=basePath%>member/cqk/ck.html">
            <div class="cl-1003">
                <span class="icon icon-cqk"></span>
                <span class="tab-label">充值/提款</span>
            </div>
        </a>

        <%--<ul class="cl-1002">--%>
        <%--<c:if test="${not empty yhzzList}">--%>
        <%--<li><a href="<%=basePath%>member/cqk/zz/yhzz.html">银行汇款</a></li>--%>
        <%--</c:if>--%>
        <%--<c:if test="${not empty zxzfInfo}">--%>
        <%--<li><a href="<%=basePath%>member/cqk/ck.html">在线支付</a></li>--%>
        <%--</c:if>--%>
        <%--<c:if test="${not empty wxzzList}">--%>
        <%--<li><a href="<%=basePath%>member/cqk/zz/wxzz.html">微信充值</a></li>--%>
        <%--</c:if>--%>
        <%--<c:if test="${not empty zfbzzList}">--%>
        <%--<li><a href="<%=basePath%>member/cqk/zz/zfbzz.html">支付宝充值</a></li>--%>
        <%--</c:if>--%>
        <%--<c:if test="${not empty cftzzList}">--%>
        <%--<li><a href="<%=basePath%>member/cqk/zz/cftzz.html">财付通充值</a></li>--%>
        <%--</c:if>--%>
        <%--<li><a href="<%=basePath%>member/cqk/qk.html">在线提款</a></li>--%>
        <%--<li><a href="<%=basePath%>member/yhkgl/index.html">我的银行卡</a></li>--%>
        <%--</ul>--%>
    </div>
    <div class="tab-item" onclick="showSubMenu(this)">
        <a href="<%=basePath%>ssc/gcdt.html">
            <div class="cl-1003">
                <span class="icon icon-gcdt"></span>
                <span class="tab-label">购彩大厅</span>
            </div>
        </a>
        <%--<ul class="cl-1002">--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt.html">进入大厅</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/cqssc.html">重庆时时彩</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/tjssc.html">天津时时彩</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/xjssc.html">新疆时时彩</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/fc3d.html">福彩3D</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/lhc.html">香港六合彩</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/pk10.html">北京PK10</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/kl8.html">北京快乐8</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/pl3.html">体彩排列3</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/xync.html">重庆幸运农场</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/xy28.html">幸运28</a></li>--%>
        <%--<li><a href="<%=basePath%>ssc/gcdt/klsf.html">广东快乐十分</a></li>--%>
        <%--</ul>--%>
    </div>
    <div class="tab-item" onclick="showSubMenu(this)">
        <a href="<%=basePath%>member/tzjl/list.html">
            <div class="cl-1003">
                <span class="icon icon-jymx"></span>
                <span class="tab-label">投注记录</span>
            </div>
        </a>

        <%--<ul class="cl-1002">--%>
        <%--<li><a href="<%=basePath%>member/czjl/list.html">充值记录</a></li>--%>
        <%--<li><a href="<%=basePath%>member/tkjl/list.html">提现记录</a></li>--%>
        <%--<li><a href="<%=basePath%>member/tzjl/list.html">投注记录</a></li>--%>
        <%--</ul>--%>
    </div>
    <div class="tab-item" onclick="showSubMenu(this)">
        <a href="<%=basePath%>member/index.html">
            <div class="cl-1003">
                <span class="icon icon-hyzx"></span>
                <span class="tab-label">会员中心</span>
            </div>
        </a>

        <%--<ul class="cl-1002">--%>
        <%--<li><a href="<%=basePath%>member/index.html">会员主页</a></li>--%>
        <%--<li><a href="<%=basePath%>member/grzl/index.html">个人资料</a></li>--%>
        <%--<li><a href="<%=basePath%>member/tgzq/index.html">代理赚钱</a></li>--%>
        <%--<li><a href="<%=basePath%>member/xgmm/index.html">登录密码</a></li>--%>
        <%--<li><a href="<%=basePath%>member/gonggao/list.html">信息/公告</a></li>--%>
        <%--<li><a href="<%=basePath%>kefu.html" target="_blank">联系我们</a></li>--%>
        <%--</ul>--%>
    </div>
</nav>