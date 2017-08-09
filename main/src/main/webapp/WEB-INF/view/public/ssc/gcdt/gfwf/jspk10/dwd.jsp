<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<input class="playPlIdBtn acti" data-play_id="672" data-play_pl_id="14421" data-name="dwdzxfs" data-fun_zhushu="zhushu_dwdzxfs" data-fun_content="content_dwdzxfs" data-fun_suiji="suiji_dwdzxfs" type="hidden" />

<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />

<script type="text/html" id="template_dwdzxfs">
<div class="Pick cl-1002 recl-1002" data-flag="fu">
    <p class="p1">
        <span class="fr fl cl-1001">
            从第一名到第十名任意位置上选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：冠军01 开奖号码：01，02，03，04，05，06，07，08，09，10即中奖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从冠军到第十名任意位置上，至少选择一个或一个以上的号码,每注由1个号码开组成，所选号码与开奖位置上的号码一致，即为中奖。</var>
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
        <li data-name="亚军">
            <b><i>亚军</i></b>
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
        <li data-name="季军">
            <b><i>季军</i></b>
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
        <li data-name="第四名">
            <b><i>第四名</i></b>
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
        <li data-name="第五名">
            <b><i>第五名</i></b>
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
        <li data-name="第六名">
            <b><i>第六名</i></b>
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
        <li data-name="第七名">
            <b><i>第七名</i></b>
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
        <li data-name="第八名">
            <b><i>第八名</i></b>
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
        <li data-name="第九名">
            <b><i>第九名</i></b>
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
        <li data-name="第十名">
            <b><i>第十名</i></b>
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

<script type="text/html" id="template_dwdzxds">
<div class="Pick cl-1003 recl-1003">
    <p class="p1">
       <span class="fr fl cl-1001">
            从第一名到第十名任意位置上选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：冠军01 开奖号码：01，02，03，04，05，06，07，08，09，10即中奖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从冠军到第十名任意位置上，至少选择一个或一个以上的号码，每注由1个号码开组成，所选号码与开奖位置上的号码一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <div class="content_jiang">
        <textarea  id="textarea1" class="content_tex" autofocus></textarea>
        <div class="right con_j_end">
            <ul>
                <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
            </ul>
        </div>
    </div>

    <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]，逗号[,] 或者 分号[;] 隔开</p>
</div>
</script>
