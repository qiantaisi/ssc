<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp" />
<%--<c:import url="../../common/checkIsChildFrame.jsp" />--%>
<div class="zs_list">
    <h2>高频彩</h2>
    <ul>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p3.png"></div>
            <div class="p-url fl">
                <h3>北京PK10</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pk10.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pk10.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pk10.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pk10.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pk10.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/jspk10.png"></div>
            <div class="p-url fl">
                <h3>极速PK10</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jspk10.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jspk10.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jspk10.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jspk10.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jspk10.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/xyft.png"></div>
            <div class="p-url fl">
                <h3>幸运飞艇</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xyft.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xyft.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xyft.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xyft.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xyft.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/ffssc.png"></div>
            <div class="p-url fl">
                <h3>分分时时彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ffssc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ffssc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ffssc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ffssc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ffssc.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p1.png"></div>
            <div class="p-url fl">
                <h3>重庆时时彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/cqssc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/cqssc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/cqssc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/cqssc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/cqssc.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p8.png"></div>
            <div class="p-url fl">
                <h3>天津时时彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/tjssc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/tjssc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/tjssc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/tjssc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/tjssc.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p9.png"></div>
            <div class="p-url fl">
                <h3>新疆时时彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xjssc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xjssc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xjssc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xjssc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xjssc.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/efssc.png"></div>
            <div class="p-url fl">
                <h3>两分时时彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/efssc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/efssc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/efssc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/efssc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/efssc.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/sfssc.png"></div>
            <div class="p-url fl">
                <h3>三分时时彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sfssc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sfssc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sfssc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sfssc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sfssc.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/wfssc.png"></div>
            <div class="p-url fl">
                <h3>五分时时彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/wfssc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/wfssc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/wfssc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/wfssc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/wfssc.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/jsk3.png"></div>
            <div class="p-url fl">
                <h3>江苏快3</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jsk3.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jsk3.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jsk3.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jsk3.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jsk3.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/hbk3.png"></div>
            <div class="p-url fl">
                <h3>湖北快3</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/hbk3.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/hbk3.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/hbk3.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/hbk3.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/hbk3.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/ahk3.png"></div>
            <div class="p-url fl">
                <h3>安徽快3</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ahk3.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ahk3.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ahk3.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ahk3.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/ahk3.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/jlk3.png"></div>
            <div class="p-url fl">
                <h3>吉林快3</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jlk3.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jlk3.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jlk3.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jlk3.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/jlk3.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p10.png"></div>
            <div class="p-url fl">
                <h3>重庆幸运农场</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xync.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xync.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xync.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xync.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xync.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p7.png"></div>
            <div class="p-url fl">
                <h3>广东快乐十分</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/klsf.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/klsf.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/klsf.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/klsf.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/klsf.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p6.png"></div>
            <div class="p-url fl">
                <h3>北京快乐8</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/kl8.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/kl8.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/kl8.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/kl8.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/kl8.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p11.png"></div>
            <div class="p-url fl">
                <h3>幸运28</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xy28.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xy28.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xy28.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xy28.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/xy28.html?type=5')">历史开奖数据</a>
            </div>
        </li><!--
        <li>
            <div class="p-img fl"><img src="${resPath}img/sflhc.png"></div>
            <div class="p-url fl">
                <h3>十分六合彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sflhc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sflhc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sflhc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sflhc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/sflhc.html?type=5')">历史开奖数据</a>
            </div>
        </li>-->
    </ul>
</div>
<div class="clear"></div>
<div class="zs_list" style="margin-top:0px;">
    <h2>低频彩</h2>
    <ul>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p2.png"></div>
            <div class="p-url fl">
                <h3>香港六合彩</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/lhc.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/lhc.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/lhc.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/lhc.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/lhc.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p5.png"></div>
            <div class="p-url fl">
                <h3>福彩3D</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/fc3d.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/fc3d.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/fc3d.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/fc3d.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/fc3d.html?type=5')">历史开奖数据</a>
            </div>
        </li>
        <li>
            <div class="p-img fl"><img src="${resPath}img/p4.png"></div>
            <div class="p-url fl">
                <h3>体彩排列3</h3>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pl3.html?type=1')">基本走势</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pl3.html?type=2')">K线图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pl3.html?type=3')">直方图</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pl3.html?type=4')">统计遗漏</a>
                <a href="javascript:void(0)" onclick="goZst('<%=basePath%>ssc/zst/pl3.html?type=5')">历史开奖数据</a>
            </div>
        </li>
    </ul>
</div>
<c:import url="../../common/commonJs.jsp" />
<script>
    var str1 = location.href;

    $(function() {
        parent.hideLoading();
    });

    function goZst(url) {
        window.open(url);
    }
</script>
<c:import url="../../common/bodyEnd.jsp" />