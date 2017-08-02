<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="czqh">
    <span class="curretSsc">切换彩种</span><span class="xiajian"></span>
    <div class="min">
        <dl>
            <dt>
                <span class="iconOne"></span>
                高频：
            </dt>
            <dd>
                <ul>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('cqssc')">重庆时时彩</a>
                        <a href="javascript:void(0)" onclick="getZstPage('xjssc')">新疆时时彩</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('tjssc')">天津时时彩</a>
                        <a href="javascript:void(0)" onclick="getZstPage('xync')">重庆幸运农场</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('pk10')">北京PK10</a>
                        <a href="javascript:void(0)" onclick="getZstPage('kl8')">北京快乐8</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('klsf')">广东快乐十分</a>
                        <a href="javascript:void(0)" onclick="getZstPage('bj28')">北京28</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('xyft')">幸运飞艇</a>
                        <a href="javascript:void(0)" onclick="getZstPage('sfssc')">三分时时彩</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('ffssc')">分分时时彩</a>
                        <a href="javascript:void(0)" onclick="getZstPage('efssc')">两分时时彩</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('wfssc')">五分时时彩</a>
                        <a href="javascript:void(0)" onclick="getZstPage('jsk3')">江苏快3</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('hbk3')">湖北快3</a>
                        <a href="javascript:void(0)" onclick="getZstPage('ahk3')">安徽快3</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('jlk3')">吉林快3</a>
                        <a href="javascript:void(0)" onclick="getZstPage('sflhc')">10分六合彩</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('jspk10')">极速PK10</a>

                    </li>
                </ul>
            </dd>
        </dl>
        <dl>
            <dt>
                <span class="iconTwo"></span>
                低频：
            </dt>
            <dd>
                <ul>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('fc3d')">福彩3D</a>
                        <a href="javascript:void(0)" onclick="getZstPage('pl3')">体彩排列3</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="getZstPage('lhc')">香港六合彩</a>
                        <a href="javascript:void(0)"></a>
                    </li>
                </ul>
            </dd>
        </dl>
    </div>
</div>
<%--<ul class="btn-navs">--%>
    <%--<li class="fff" data-contentid="zhexianData" data-id="shuju1">基本走势</li>--%>
    <%--<li data-contentid="shuju2" data-id="shuju2">K线图</li>--%>
    <%--<li data-contentid="shuju3" data-id="shuju3">直方图</li>--%>
    <%--<li data-id="shuju4">遗漏统计</li>--%>
    <%--<li data-id="shuju5">历史开奖数据</li>--%>
<%--</ul>--%>