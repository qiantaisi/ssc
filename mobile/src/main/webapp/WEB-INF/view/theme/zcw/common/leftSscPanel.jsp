<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="panel-overlay"></div>
<div class="panel panel-left panel-reveal cl-319" id='panel-left'>
    <div class="list-block">
        <ul>
            <li>
                <a href="<%=basePath%>ssc/gcdt/pk10.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-pk10"></i></div>
                    <div class="item-inner">
                        <div class="item-title">北京PK10</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/jspk10.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-jspk10"></i></div>
                    <div class="item-inner">
                        <div class="item-title">极速PK10</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/xyft.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-xyft"></i></div>
                    <div class="item-inner">
                        <div class="item-title">幸运飞艇</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/ffssc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-ffssc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">分分时时彩</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/cqssc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-cqssc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">重庆时时彩</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/xjssc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-xjssc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">新疆时时彩</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/tjssc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-tjssc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">天津时时彩</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/lhc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-lhc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">香港六合彩</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/ahk3.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-ahk3"></i></div>
                    <div class="item-inner">
                        <div class="item-title">安徽快3</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/hbk3.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-hbk3"></i></div>
                    <div class="item-inner">
                        <div class="item-title">湖北快3</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/jsk3.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-jsk3"></i></div>
                    <div class="item-inner">
                        <div class="item-title">江苏快3</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/jlk3.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-jlk3"></i></div>
                    <div class="item-inner">
                        <div class="item-title">吉林快3</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/xync.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-cqxync"></i></div>
                    <div class="item-inner">
                        <div class="item-title">重庆幸运农场</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/klsf.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-klsf"></i></div>
                    <div class="item-inner">
                        <div class="item-title">广东快乐十分</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/xy28.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-xy28"></i></div>
                    <div class="item-inner">
                        <div class="item-title">幸运28</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/kl8.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-kl8"></i></div>
                    <div class="item-inner">
                        <div class="item-title">北京快乐8</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/fc3d.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-3d"></i></div>
                    <div class="item-inner">
                        <div class="item-title">福彩3D</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/pl3.htmlkk/" class="item-content">
                    <div class="item-media"><i class="icon bg-img-pl3"></i></div>
                    <div class="item-inner">
                        <div class="item-title">体彩排列3</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/efssc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-efssc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">两分时时彩</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/sfssc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-sfssc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">三分时时彩</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>ssc/gcdt/wfssc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-wfssc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">五分时时彩</div>
                    </div>
                </a>
            </li>
            <%--<li>
                <a href="<%=basePath%>ssc/gcdt/sflhc.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-sflhc"></i></div>
                    <div class="item-inner">
                        <div class="item-title">十分六合彩</div>
                    </div>
                </a>
            </li>--%>


            <%--<li>--%>
            <%--<a href="" class="item-content">--%>
            <%--<div class="item-media"><i class="icon bg-img-cqssc"></i></div>--%>
            <%--<div class="item-inner">--%>
            <%--<div class="item-title">重庆时时彩</div>--%>
            <%--</div>--%>
            <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<a href="" class="item-content">--%>
            <%--<div class="item-media"><i class="icon bg-img-cqssc"></i></div>--%>
            <%--<div class="item-inner">--%>
            <%--<div class="item-title">重庆时时彩</div>--%>
            <%--</div>--%>
            <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<a href="" class="item-content">--%>
            <%--<div class="item-media"><i class="icon bg-img-cqssc"></i></div>--%>
            <%--<div class="item-inner">--%>
            <%--<div class="item-title">重庆时时彩</div>--%>
            <%--</div>--%>
            <%--</a>--%>
            <%--</li>--%>
        </ul>
    </div>
</div>