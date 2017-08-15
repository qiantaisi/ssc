<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<input class="playPlIdBtn acti" data-play_id="701" data-play_pl_id="14450" data-name="gd11x5_dwd" data-fun_zhushu="zhushu_gd11x5_dwd" data-fun_content="content_gd11x5_dwd" data-fun_suiji="suiji_gd11x5_dwd" type="hidden" />

<c:import url="../common/commonMiddle.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<%--定位胆--%>
<script type="text/html" id="template_gd11x5_dwd">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从任意位置上任意选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：第一位 01， 开奖号码：01，* * * *，即中定位胆。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从第一位至第五位中，任意1个或多个位置上选择1个或1个以上号码，投注号码与相同位置上的开奖号码对位一致，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="">
                <b><i>第一位</i></b>
                <var class="numLines">
                    <span><i>01</i></span>
                    <span><i>02</i></span>
                    <span><i>03</i></span>
                    <span><i>04</i></span>
                    <span><i>05</i></span>
                    <span><i>06</i></span>
                    <span><i>07</i></span>
                    <span><i>08</i></span>
                    <span><i>09</i></span>
                    <span><i>10</i></span>
                    <span><i>11</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="selectFun_1(this)">全</i>
                    <i onclick="selectFun_str2(this)">大</i>
                    <i onclick="selectFun_str3(this)">小</i>
                    <i onclick="selectFun_4(this)">奇</i>
                    <i onclick="selectFun_5(this)">偶</i>
                    <i onclick="selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="第二位">
                <b><i>第二位</i></b>
                <var class="numLines">
                    <span><i>01</i></span>
                    <span><i>02</i></span>
                    <span><i>03</i></span>
                    <span><i>04</i></span>
                    <span><i>05</i></span>
                    <span><i>06</i></span>
                    <span><i>07</i></span>
                    <span><i>08</i></span>
                    <span><i>09</i></span>
                    <span><i>10</i></span>
                    <span><i>11</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="selectFun_1(this)">全</i>
                    <i onclick="selectFun_str2(this)">大</i>
                    <i onclick="selectFun_str3(this)">小</i>
                    <i onclick="selectFun_4(this)">奇</i>
                    <i onclick="selectFun_5(this)">偶</i>
                    <i onclick="selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="第三位">
                <b><i>第三位</i></b>
                <var class="numLines">
                    <span><i>01</i></span>
                    <span><i>02</i></span>
                    <span><i>03</i></span>
                    <span><i>04</i></span>
                    <span><i>05</i></span>
                    <span><i>06</i></span>
                    <span><i>07</i></span>
                    <span><i>08</i></span>
                    <span><i>09</i></span>
                    <span><i>10</i></span>
                    <span><i>11</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="selectFun_1(this)">全</i>
                    <i onclick="selectFun_str2(this)">大</i>
                    <i onclick="selectFun_str3(this)">小</i>
                    <i onclick="selectFun_4(this)">奇</i>
                    <i onclick="selectFun_5(this)">偶</i>
                    <i onclick="selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="第四位">
                <b><i>第四位</i></b>
                <var class="numLines">
                    <span><i>01</i></span>
                    <span><i>02</i></span>
                    <span><i>03</i></span>
                    <span><i>04</i></span>
                    <span><i>05</i></span>
                    <span><i>06</i></span>
                    <span><i>07</i></span>
                    <span><i>08</i></span>
                    <span><i>09</i></span>
                    <span><i>10</i></span>
                    <span><i>11</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="selectFun_1(this)">全</i>
                    <i onclick="selectFun_str2(this)">大</i>
                    <i onclick="selectFun_str3(this)">小</i>
                    <i onclick="selectFun_4(this)">奇</i>
                    <i onclick="selectFun_5(this)">偶</i>
                    <i onclick="selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="第五位">
                <b><i>第五位</i></b>
                <var class="numLines">
                    <span><i>01</i></span>
                    <span><i>02</i></span>
                    <span><i>03</i></span>
                    <span><i>04</i></span>
                    <span><i>05</i></span>
                    <span><i>06</i></span>
                    <span><i>07</i></span>
                    <span><i>08</i></span>
                    <span><i>09</i></span>
                    <span><i>10</i></span>
                    <span><i>11</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="selectFun_1(this)">全</i>
                    <i onclick="selectFun_str2(this)">大</i>
                    <i onclick="selectFun_str3(this)">小</i>
                    <i onclick="selectFun_4(this)">奇</i>
                    <i onclick="selectFun_5(this)">偶</i>
                    <i onclick="selectFun_6(this)">清</i>
                </div>
            </li>

        </ul>
    </div>
</script>



