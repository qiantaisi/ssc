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
            <b class="tit_img">三星</b>
            <p>
                <span class="playPlIdBtn acti" data-play_id="882" data-play_pl_id="14663" data-name="qsym" data-fun_zhushu="zhushu_qsym" data-fun_content="content_qsym" data-fun_suiji="suiji_qsym"><a href="javascript:void(0)">前三一码</a></span>
                <span class="playPlIdBtn" data-play_id="883" data-play_pl_id="14664" data-name="qsem" data-fun_zhushu="zhushu_qsem" data-fun_content="content_qsem" data-fun_suiji="suiji_qsem"><a href="javascript:void(0)">前三二码</a></span>
                <span class="playPlIdBtn" data-play_id="886" data-play_pl_id="14667" data-name="hsym" data-fun_zhushu="zhushu_hsym" data-fun_content="content_hsym" data-fun_suiji="suiji_hsym"><a href="javascript:void(0)">后三一码</a></span>
                <span class="playPlIdBtn" data-play_id="887" data-play_pl_id="14668" data-name="hsem" data-fun_zhushu="zhushu_hsem" data-fun_content="content_hsem" data-fun_suiji="suiji_hsem"><a href="javascript:void(0)">后三二码</a></span>
            </p>
        </li>
        <li>
            <b class="tit_img">四星</b>
            <p>
                <span class="playPlIdBtn" data-play_id="884" data-play_pl_id="14665" data-name="q4ym" data-fun_zhushu="zhushu_q4ym" data-fun_content="content_q4ym" data-fun_suiji="suiji_q4ym"><a href="javascript:void(0)">前四一码</a></span>
                <span class="playPlIdBtn" data-play_id="885" data-play_pl_id="14666" data-name="q4em" data-fun_zhushu="zhushu_q4em" data-fun_content="content_q4em" data-fun_suiji="suiji_q4em"><a href="javascript:void(0)">前四二码</a></span>
                <span class="playPlIdBtn" data-play_id="888" data-play_pl_id="14669" data-name="h4ym" data-fun_zhushu="zhushu_h4ym" data-fun_content="content_h4ym" data-fun_suiji="suiji_h4ym"><a href="javascript:void(0)">后四一码</a></span>
                <span class="playPlIdBtn" data-play_id="889" data-play_pl_id="14670" data-name="h4em" data-fun_zhushu="zhushu_h4em" data-fun_content="content_h4em" data-fun_suiji="suiji_h4em"><a href="javascript:void(0)">后四二码</a></span>
            </p>
        </li>
        <li>
            <b class="tit_img">五星</b>
            <p>
                <span class="playPlIdBtn" data-play_id="879" data-play_pl_id="14660" data-name="wxym" data-fun_zhushu="zhushu_wxym" data-fun_content="content_wxym" data-fun_suiji="suiji_wxym"><a href="javascript:void(0)">五星一码</a></span>
                <span class="playPlIdBtn" data-play_id="881" data-play_pl_id="14662" data-name="wxem" data-fun_zhushu="zhushu_wxem" data-fun_content="content_wxem" data-fun_suiji="suiji_wxem"><a href="javascript:void(0)">五星二码</a></span>
                <span class="playPlIdBtn" data-play_id="880" data-play_pl_id="14661" data-name="wx3m" data-fun_zhushu="zhushu_wx3m" data-fun_content="content_wx3m" data-fun_suiji="suiji_wx3m"><a href="javascript:void(0)">五星三码</a></span>
            </p>
        </li>
    </ul>
</div>

<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />


<%-- 不定位-前三一码 --%>
<script type="text/html" id="template_qsym">
<div class="Pick cl-1002 recl-1002" data-flag="qsym-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：1 开奖号码：前三位，至少出现1个1，即中前三一码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码万、千、百位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%-- 不定位-前三二码 --%>
<script type="text/html" id="template_qsem">
<div class="Pick cl-1002 recl-1003-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：12 开奖号码：前三位，至少出现1和2各一个，即中前三二码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中至少 选择2个以上号码，每组由2个号码组成，只要开奖号码万、千、百位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%-- 不定位-后三一码 --%>
<script type="text/html" id="template_hsym">
<div class="Pick cl-1002 recl-1004-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：1 开奖号码：后三位至少出现1个1，即中后三一码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码百、十、个位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%-- 不定位-后三二码 --%>
<script type="text/html" id="template_hsem">
<div class="Pick cl-1002 recl-1005-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：12 开奖号码：后三位至少出现1和2各一个，即中后三二码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中至少 选择2个以上号码，每组由2个号码组成，只要开奖号码百、十、个位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%-- 不定位-前四一码 --%>
<script type="text/html" id="template_q4ym">
<div class="Pick cl-1002 recl-1006-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：1 开奖号码：前四位至少出现1个1，即中前四不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码万、千、百、十位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--前四二码--%>
<script type="text/html" id="template_q4em">
<div class="Pick cl-1002 recl-1007-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：12 开奖号码：前四位至少出现1和2各一个，即中前四二码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中至少选择2个以上号码，每组由2个号码组成，只要开奖号码万、千、百、十位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--后四一码--%>
<script type="text/html" id="template_h4ym">
<div class="Pick cl-1002 recl-1008-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：1 开奖号码：后四位至少出现1个1，即中后四不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码千、百、十、个位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--后四二码--%>
<script type="text/html" id="template_h4em">
<div class="Pick cl-1002 recl-1009-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：12 开奖号码：后四位至少出现1和2各一个，即中后四二码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中至少选择2个以上号码，每组由2个号码组成，只要开奖号码千、百、十、个位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--五星一码--%>
<script type="text/html" id="template_wxym">
<div class="Pick cl-1002 recl-1010-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：1 开奖号码：至少出现1个1，即中五星不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--五星二码--%>
<script type="text/html" id="template_wxem">
<div class="Pick cl-1002 recl-1011-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：12 开奖号码：至少出现1和2各一个，即中五星二码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中至少选择2个以上号码，每组由2个号码组成，只要开奖号码中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>

<%--五星三码--%>
<script type="text/html" id="template_wx3m">
<div class="Pick cl-1002 recl-1012-budw">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择3个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：123 开奖号码：至少出现1和2及3各一个，即中五星三码不定位。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9中至少选择3个以上号码，每组由3个号码组成，只要开奖号码中同时包含所选的3个号码，即为中奖。（同个号码出现多次只计一次中奖）</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="不定位">
            <b><i>不定位</i></b>
            <var class="numLine">
                <span><i>0</i></span>
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
            </var>
            <div class="clear re-5x-i">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </div>
        </li>
    </ul>
</div>
</script>