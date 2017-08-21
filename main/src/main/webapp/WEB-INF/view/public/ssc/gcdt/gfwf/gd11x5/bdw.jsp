<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<div class="group">
    <ul>
        <li>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti spans" data-play_id="785" data-play_pl_id="14457" data-name="gd11x5_qsw" data-fun_zhushu="gd11x5_zhushu_qsw" data-fun_content="content_gd11x5_qsw" data-fun_suiji="suiji_gd11x5_qsw"><a href="javascript:void(0)">前三位</a></span>
                <span class="playPlIdBtn spans" data-play_id="789" data-play_pl_id="14461" data-name="gd11x5_zsw" data-fun_zhushu="zhushu_gd11x5_zsw" data-fun_content="content_gd11x5_zsw" data-fun_suiji="suiji_gd11x5_zsw"><a href="javascript:void(0)">中三位</a></span>
                <span class="playPlIdBtn spans" data-play_id="779" data-play_pl_id="14451" data-name="gd11x5_hsw" data-fun_zhushu="zhushu_gd11x5_hsw" data-fun_content="content_suiji_gd11x5_hsw" data-fun_suiji="suiji_gd11x5_hsw"><a href="javascript:void(0)">后三位</a></span>
            </p>
        </li>
    </ul>
</div>

<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />

<%--前三位--%>
<script type="text/html" id="template_gd11x5_qsw">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01，开奖号码：01,* * * *,* 01 * * *,* * 01,即中前三位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择1个或多个号码,每注由一个号码组成,只要当期开奖号码中的第一位，第二位,第三位开奖号码包含所选号码,即中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="前三位">
                <b><i>前三位</i></b>
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


<%--中三位--%>
<script type="text/html" id="template_gd11x5_zsw">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,开奖号码：* 01 * * *,* * 01  * *,* * * 01 *,即中中三位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择1个或多个号码,每注由一个号码组成,只要当期开奖号码中的第二位,第三位,第四位开奖号码包含所选号码,即中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="中三位">
                <b><i>中三位</i></b>
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

<%--中三位--%>
<script type="text/html" id="template_gd11x5_hsw">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,开奖号码：* * 01  * *,* * * 01  *,* * * * 01 ,即中中三位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择1个或多个号码,每注由一个号码组成,只要当期开奖号码中的第三位,第四位，第五位开奖号码包含所选号码,即中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="后三位">
                <b><i>后三位</i></b>
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

</script>
