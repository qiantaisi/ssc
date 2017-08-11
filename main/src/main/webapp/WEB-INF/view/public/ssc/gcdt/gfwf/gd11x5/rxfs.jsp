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
                <span class="playPlIdBtn acti spans" data-play_id="502" data-play_pl_id="14221" data-name="gd11x5_rxyzy" data-fun_zhushu="gd11x5_zhushu_rxyzy" data-fun_content="content_gd11x5_rxyzy" data-fun_suiji="suiji_gd11x5_rxyzy"><a href="javascript:void(0)">任选一中一</a></span>
                <span class="playPlIdBtn spans" data-play_id="503" data-play_pl_id="14220" data-name="gd11x5_rxeze" data-fun_zhushu="zhushu_gd11x5_rxeze" data-fun_content="content_gd11x5_rxeze" data-fun_suiji="suiji_gd11x5_rxeze"><a href="javascript:void(0)">任选二中二</a></span>
                <span class="playPlIdBtn spans" data-play_id="504" data-play_pl_id="14219|14218|14217" data-name="gd11x5_rxszs" data-fun_zhushu="zhushu_gd11x5_rxszs" data-fun_content="content_suiji_gd11x5_rxszs" data-fun_suiji="suiji_gd11x5_rxszs"><a href="javascript:void(0)">任选三中三</a></span>
                <span class="playPlIdBtn spans" data-play_id="505" data-play_pl_id="14216"  data-name="gd11x5_rxsizs" data-fun_zhushu="zhushu_gd11x5_rxsizs" data-fun_content="content_gd11x5_rxsizs" data-fun_suiji="suiji_gd11x5_rxsizs"><a href="javascript:void(0)">任选四中四</a></span>
                <span class="playPlIdBtn spans" data-play_id="506" data-play_pl_id="14215"  data-name="gd11x5_rxwzw" data-fun_zhushu="zhushu_gd11x5_rxwzw" data-fun_content="content_gd11x5_rxwzw" data-fun_suiji="suiji_gd11x5_rxwzw"><a href="javascript:void(0)">任选五中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="507" data-play_pl_id="14214" data-name="gd11x5_rxlzw" data-fun_zhushu="zhushu_gd11x5_rxlzw" data-fun_content="content_gd11x5_rxlzw" data-fun_suiji="suiji_gd11x5_rxlzw"><a href="javascript:void(0)">任选六中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="508" data-play_pl_id="14213" data-name="gd11x5_rxqzw" data-fun_zhushu="zhushu_gd11x5_rxqzw" data-fun_content="content_gd11x5_rxqzw" data-fun_suiji="suiji_gd11x5_rxqzw"><a href="javascript:void(0)">任选七中五</a></span>
                <span class="playPlIdBtn spans" data-play_id="508" data-play_pl_id="14213" data-name="gd11x5_rxbzw" data-fun_zhushu="zhushu_gd11x5_rxbzw" data-fun_content="content_gd11x5_rxbzw" data-fun_suiji="suiji_gd11x5_rxbzw"><a href="javascript:void(0)">任选八中五</a></span>
            </p>
        </li>
    </ul>
</div>
<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />
<%--任选一中一--%>
<script type="text/html" id="template_gd11x5_rxyzy">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05开奖号码：08，04，11，05即中任一选一。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择1个或多个号码，每注由一个号码组成，只要当期开奖号码包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="选一中一">
                <b><i>选一中一</i></b>
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

<%--任选二中二--%>
<script type="text/html" id="template_gd11x5_rxeze">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择2个或2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05,04开奖号码：08，04，11，05,03即中任二选二。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择2个或多个号码，每注由二个号码组成，只要当期开奖号码包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="选2中2">
                <b><i>选2中2</i></b>
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


<%--任选三中三--%>
<script type="text/html" id="template_gd11x5_rxszs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择三个或三个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05,04，11开奖号码：08，04，11，05,03即中任三选三。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择3个或多个号码，每注由三个号码组成，只要当期开奖号码包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="选3中3">
                <b><i>选3中3</i></b>
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

<%--任选三中三--%>
<script type="text/html" id="template_gd11x5_rxsizs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择4个或4个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05,04，08,03开奖号码：08，04，11，05,03即中任四选四。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择4个或多个号码，每注由4个号码组成，只要当期开奖号码包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="选4中4">
                <b><i>选4中4</i></b>
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

<%--任选五中五--%>
<script type="text/html" id="template_gd11x5_rxwizw">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择5个或5个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05,04，11,08,03开奖号码：08，04，11，05,03即中任五中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择5个或多个号码，每注由6个号码组成，只要当期开奖号码包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="选5中5">
                <b><i>选5中5</i></b>
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

<%--任选六中五--%>
<script type="text/html" id="template_gd11x5_rxlzw">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择6个或6个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05,04，10,11,08,03开奖号码：08，04，11，05,03即中任六中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择6个或多个号码，每注由6个号码组成，只要当期开奖号码包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="选6中5">
                <b><i>选6中5</i></b>
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


<%--任选七中五--%>
<script type="text/html" id="template_gd11x5_rxqzw">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择7个或7个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05,04，10,11,08,03,09开奖号码：08，04，11，05,03即中任七中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择7个或多个号码，每注由7个号码组成，只要当期开奖号码包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="选7中5">
                <b><i>选7中5</i></b>
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


<%--任选八中五--%>
<script type="text/html" id="template_gd11x5_rxbzw">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
           从01-11中任意选择8个或8个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：05,04，10,11,08,03,09,01开奖号码：08，04，11，05,03即中任八中五。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择8个或多个号码，每注由8个号码组成，只要当期开奖号码包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="选8中5">
                <b><i>选8中5</i></b>
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


<script>
    function daoRu(){
        showloadTxtTemplate1();
    }
</script>
