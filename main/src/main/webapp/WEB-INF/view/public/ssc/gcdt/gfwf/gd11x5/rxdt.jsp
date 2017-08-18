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
                <span class="playPlIdBtn spans acti" data-play_id="775" data-play_pl_id="14447" data-name="gd11x5_rxezwdt" data-fun_zhushu="zhushu_gd11x5_rxezwdt" data-fun_content="content_gd11x5_rxezwdt" data-fun_suiji="suiji_gd11x5_rxezwdt"><a href="javascript:void(0)">任选二中二</a></span>
                <span class="playPlIdBtn spans" data-play_id="799" data-play_pl_id="14471" data-name="gd11x5_rxszsdt" data-fun_zhushu="zhushu_gd11x5_rxszsdt" data-fun_content="content_suiji_gd11x5_rxszsdt" data-fun_suiji="suiji_gd11x5_rxszsdt"><a href="javascript:void(0)">任选三中三</a></span>
                <span class="playPlIdBtn spans" data-play_id="773" data-play_pl_id="14445"  data-name="gd11x5_rxsizsdt" data-fun_zhushu="zhushu_gd11x5_rxsizsdt" data-fun_content="content_gd11x5_rxsizsdt" data-fun_suiji="suiji_gd11x5_rxsizsdt"><a href="javascript:void(0)">任选四中四</a></span>
                <span class="playPlIdBtn spans" data-play_id="796" data-play_pl_id="14468"  data-name="gd11x5_rxwzwdt" data-fun_zhushu="zhushu_gd11x5_rxwzwdt" data-fun_content="content_gd11x5_rxwzwdt" data-fun_suiji="suiji_gd11x5_rxwzwdt"><a href="javascript:void(0)">任选五中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="771" data-play_pl_id="14443" data-name="gd11x5_rxlzwdt" data-fun_zhushu="zhushu_gd11x5_rxlzwdt" data-fun_content="content_gd11x5_rxlzwdt" data-fun_suiji="suiji_gd11x5_rxlzwdt"><a href="javascript:void(0)">任选六中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="795" data-play_pl_id="14467" data-name="gd11x5_rxqzwdt" data-fun_zhushu="zhushu_gd11x5_rxqzwdt" data-fun_content="content_gd11x5_rxqzwdt" data-fun_suiji="suiji_gd11x5_rxqzwdt"><a href="javascript:void(0)">任选七中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="768" data-play_pl_id="14440" data-name="gd11x5_rxbzwdt" data-fun_zhushu="zhushu_gd11x5_rxbzwdt" data-fun_content="content_gd11x5_rxbzwdt" data-fun_suiji="suiji_gd11x5_rxbzwdt"><a href="javascript:void(0)">任选八中五</a></span>
            </p>
        </li>
    </ul>
</div>
<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />
<%--任选二中二--%>
<script type="text/html" id="template_gd11x5_rxezwdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
       <span class="fr fl cl-1001">
            从01-11中，选取2个及以上的号码进行投注，2个号码一注,每注需至少包括1个胆码及1个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码08,拖码06 开奖号码：06 08 11 09 02，即中任选二中二。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中选出2个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共2个号码，所选单注号码与当期5个开奖号码中包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
                <var class="numLines em_danma_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
                </var>
            </li>
            <li data-name="拖码">
                <b><i>拖码</i></b>
                <var class="numLines dantuo_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
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
<%--任选三中三--%>
<script type="text/html" id="template_gd11x5_rxszsdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中，选取3个及以上的号码进行投注，3个号码一注，每注需至少包括1个胆码及1个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码08,拖码06 11 开奖号码：06 08 11 09 02，即中任选三中三。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中选出3个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共3个号码，所选单注号码与当期5个开奖号码中包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
                <var class="numLines danma_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
                </var>
            </li>
            <li data-name="拖码">
                <b><i>拖码</i></b>
                <var class="numLines dantuo_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
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

<%--任选四中四--%>
<script type="text/html" id="template_gd11x5_rxsizsdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中，选取4个及以上的号码进行投注，4个号码一注，每注需至少包括1个胆码及1个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码08,拖码06 09 11 开奖号码：06 08 11 09 02，即中任选四中四。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中选出4个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共4个号码，所选单注号码与当期5个开奖号码中包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
                <var class="numLines sim_danma_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
                </var>
            </li>
            <li data-name="拖码">
                <b><i>拖码</i></b>
                <var class="numLines dantuo_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
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

<%--任选五中五--%>
<script type="text/html" id="template_gd11x5_rxwzwdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中，选取5个及以上的号码进行投注，5个号码一注，每注需至少包括1个胆码及1个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码08,拖码02 06 09 11 开奖号码：06 08 11 09 02，即中任选五中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中选出5个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共5个号码，所选单注号码与当期5个开奖号码中包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
                <var class="numLines wm_danma_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
                </var>
            </li>
            <li data-name="拖码">
                <b><i>拖码</i></b>
                <var class="numLines dantuo_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
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

<%--任选六中五--%>
<script type="text/html" id="template_gd11x5_rxlzwdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中，选取6个及以上的号码进行投注，6个号码一注，每注需至少包括1个胆码及1个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码08,拖码02 06 05 09 11 开奖号码：06 08 11 09 02，即中任选六中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中选出6个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共6个号码，所选单注号码与当期5个开奖号码中包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
                <var class="numLines lm_danma_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
                </var>
            </li>
            <li data-name="拖码">
                <b><i>拖码</i></b>
                <var class="numLines dantuo_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
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


<%--任选七中五--%>
<script type="text/html" id="template_gd11x5_rxqzwdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中，选取7个及以上的号码进行投注，7个号码一注，每注需至少包括1个胆码及1个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码08,拖码01 02 06 05 09 11 开奖号码：06 08 11 09 02，即中任选七中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中选出7个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共7个号码，所选单注号码与当期5个开奖号码中包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
                <var class="numLines qm_danma_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
                </var>
            </li>
            <li data-name="拖码">
                <b><i>拖码</i></b>
                <var class="numLines dantuo_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
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


<%--任选八中五--%>
<script type="text/html" id="template_gd11x5_rxbzwdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中，选取8个及以上的号码进行投注，8个号码一注，每注需至少包括1个胆码及1个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码08,拖码01 02 03 06 05 09 11 开奖号码：06 08 11 09 02，即中任选八中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中选出8个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共8个号码，所选单注号码与当期5个开奖号码中包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
                <var class="numLines bm_danma_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
                </var>
            </li>
            <li data-name="拖码">
                <b><i>拖码</i></b>
                <var class="numLines dantuo_selected">
                    <span class="n1"><i>01</i></span>
                    <span class="n2"><i>02</i></span>
                    <span class="n3"><i>03</i></span>
                    <span class="n4"><i>04</i></span>
                    <span class="n5"><i>05</i></span>
                    <span class="n6"><i>06</i></span>
                    <span class="n7"><i>07</i></span>
                    <span class="n8"><i>08</i></span>
                    <span class="n9"><i>09</i></span>
                    <span class="n10"><i>10</i></span>
                    <span class="n11"><i>11</i></span>
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


<script>
    function daoRu(){
        showloadTxtTemplate1();
    }
</script>
