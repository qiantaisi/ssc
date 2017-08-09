<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<input class="playPlIdBtn acti" data-play_id="666" data-play_pl_id="14415" data-name="qy" data-fun_zhushu="zhushu_jspk10_qy" data-fun_content="content_jspk10_qy" data-fun_suiji="suiji_jspk10_qy" type="hidden" />

<c:import url="../common/commonMiddle.jsp"/>
<c:import url="../common/subCommonJs.jsp"/>
<script type="text/html" id="template_qy">
<div class="Pick cl-1002 recl-1002" data-flag="fu">
    <p class="p1">
        <span class="fr fl cl-1001">
            从第一名中至少选择1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01 开奖号码：01，02，03，04，05，06，07，08，09，10即可中前一直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01-10中至少选择一个号码组成一注，所选号码与开奖号码第一位相同即中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="冠军">
            <b><i>冠军</i></b>
            <var class="numLine">
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


