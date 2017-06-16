<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="group">
    <ul>
        <li>
            <b class="tit_img">三星</b>
            <p>
                <span class="playPlIdBtn acti" data-play_id="544" data-play_pl_id="14262" data-name="qsym"><a href="javascript:void(0)">前三一码</a></span>
                <span class="playPlIdBtn" data-play_id="545" data-play_pl_id="14263" data-name="qsem"><a href="javascript:void(0)">前三二码</a></span>
                <span class="playPlIdBtn" data-play_id="545" data-play_pl_id="14264" data-name="hsym"><a href="javascript:void(0)">后三一码</a></span>
                <span class="playPlIdBtn" data-play_id="547" data-play_pl_id="14265" data-name="hsem"><a href="javascript:void(0)">后三二码</a></span>
            </p>
        </li>
        <li>
            <b class="tit_img">四星</b>
            <p>
                <span class="playPlIdBtn" data-play_id="548" data-play_pl_id="14266" data-name="q4ym"><a href="javascript:void(0)">前四一码</a></span>
                <span class="playPlIdBtn" data-play_id="549" data-play_pl_id="14267" data-name="q4em"><a href="javascript:void(0)">前四二码</a></span>
                <span class="playPlIdBtn" data-play_id="550" data-play_pl_id="14268" data-name="h4ym"><a href="javascript:void(0)">后四一码</a></span>
                <span class="playPlIdBtn" data-play_id="551" data-play_pl_id="14269" data-name="h4em"><a href="javascript:void(0)">后四二码</a></span>
            </p>
        </li>
        <li>
            <b class="tit_img">五星</b>
            <p>
                <span class="playPlIdBtn" data-play_id="552" data-play_pl_id="14270" data-name="wxym"><a href="javascript:void(0)">五星一码</a></span>
                <span class="playPlIdBtn" data-play_id="553" data-play_pl_id="14271" data-name="wxem"><a href="javascript:void(0)">五星二码</a></span>
                <span class="playPlIdBtn" data-play_id="554" data-play_pl_id="14272" data-name="wx3m"><a href="javascript:void(0)">五星三码</a></span>
            </p>
        </li>
    </ul>
</div>
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
<%--前四一码--%>
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
<%--前四二码--%>
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

<%--后四一码--%>
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
<%--后四二码--%>
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

<%--五星一码--%>
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

<%--五星二码--%>
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

<%--五星三码--%>
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

<div class="add_spot">
    <div class="left">
        <div class="sopt_wrap">
            <div class="slide_sp i-base-jin">
                奖金/返点
                <%--<p><span style="width: 4.89063px;"></span><var style="left: 4.89063px;"></var></p>--%>
                <%--<i><var>934058.63</var> / 7.0%</i>--%>
                <div class="cl-1003">
                    <div class="cl-1004">
                        <input type="hidden" class="slider-input"/>
                    </div>
                </div>
                <i class="base_jangj"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base_jangj_em"><var class="jiangjin-change_em">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base_jangj_q4"><var class="jiangjin-change_q4">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base_jangj_q4em"><var class="jiangjin-change_q4em">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base_jangj_wx"><var class="jiangjin-change_wx">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base_jangj_wx2m"><var class="jiangjin-change_wx2m">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base_jangj_wx3m"><var class="jiangjin-change_wx3m">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
            </div>
            <div class="reduce">
                <a class="fl">-</a>
                <input data-beishu="1" type="text" value="1" id="inputBeishu"
                       onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                       onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}">
                <a class="fr">+</a>
                <span>倍</span>
            </div>
            <div class="down">
                <input type="text" value="2元" id="inputMoney" data-money="2">
                <span></span>
                <div class="down_menu">
                    <i>2元</i>
                    <i>5元</i>
                    <i>10元</i>
                    <i>20元</i>
                </div>
            </div>
        </div>
        <p class="p1">
            您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">1</i> 倍，返还 <i class="i1 i_fanD">0.00</i> 元，共投注 <i class="i1 i_money">0.00</i>元。
        </p>
    </div>
    <div class="rigth">
        <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
    </div>

</div>
<script>
    $(function () {
        $(".Pick").hide();
        $(".recl-1002").show();
        $(".i-base-jin i").hide();
        $(".base_jangj").show();
        $(".btn_fu_zhi span").click(function () {
            if ($(this).siblings().hasClass('acti')) {
                $(this).siblings().removeClass('acti');
            }

            $(this).addClass('acti');
        });

        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass("acti");
            var nameF = $(this).data("name");
            if (nameF == "qsem") {
                $(".Pick").hide();
                $(".recl-1003-budw").show();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1003-budw").attr("data-flag", "qsem-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_em").show();
                clearSelected();

            } else if (nameF == "qsym") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1002").show();
                $(".recl-1002").attr("data-flag", "qsym-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj").show();
                clearSelected();

            } else if (nameF == "hsym") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1004-budw").show();
                $(".recl-1004-budw").attr("data-flag", "hsym-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj").show();
                clearSelected();
            } else if (nameF == "hsem") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1005-budw").show();
                $(".recl-1005-budw").attr("data-flag", "hsem-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_em").show();
                clearSelected();
            } else if (nameF == "q4ym") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1006-budw").show();
                $(".recl-1006-budw").attr("data-flag", "q4ym-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_q4").show();
                clearSelected();
            } else if (nameF == "q4em") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1007-budw").show();
                $(".recl-1007-budw").attr("data-flag", "q4em-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_q4em").show();
                clearSelected();
            } else if (nameF == "h4ym") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1008-budw").show();
                $(".recl-1008-budw").attr("data-flag", "h4ym-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_q4").show();
                clearSelected();
            } else if (nameF == "h4em") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1009-budw").show();
                $(".recl-1009-budw").attr("data-flag", "h4em-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_q4em").show();
                clearSelected();
            } else if (nameF == "wxym") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1010-budw").show();
                $(".recl-1010-budw").attr("data-flag", "wxym-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_wx").show();
                clearSelected();
            } else if (nameF == "wxem") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1011-budw").show();
                $(".recl-1011-budw").attr("data-flag", "wxem-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_wx2m").show();
                clearSelected();
            } else if (nameF == "wx3m") {
                $(".Pick").hide();
                $(".Pick").removeAttr("data-flag");
                $(".recl-1012-budw").show();
                $(".recl-1012-budw").attr("data-flag", "wx3m-budw");
                $(".i-base-jin i").hide();
                $(".base_jangj_wx3m").show();
                clearSelected();
            }
        });

        $(".Pick ul li span i").click(function () {
            $(this).parent().toggleClass('acti');
            var flagName = $(this).parent().parent().parent().parent().data("flag");
            if(typeof flagName == "undefined"){
                flagName = $(this).parent().parent().parent().parent().parent().attr("data-flag");
            }
            if(flagName == "qsym-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('qsym-budw');
                }
            } else if(flagName == "qsem-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('qsem-budw');
                }
            } else if(flagName == "hsym-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('hsym-budw');
                }
            } else if(flagName == "hsem-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('hsem-budw');
                }
            } else if(flagName == "q4ym-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('q4ym-budw');
                }
            } else if(flagName == "q4em-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('q4em-budw');
                }
            } else if(flagName == "h4ym-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('h4ym-budw');
                }
            } else if(flagName == "h4em-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('h4em-budw');
                }
            } else if(flagName == "wxym-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('wxym-budw');
                }
            } else if(flagName == "wxem-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('wxem-budw');
                }
            } else if(flagName == "wx3m-budw"){
                if (typeof stateTouZhu == "function") {
                    stateTouZhu('wx3m-budw');
                }
            }
        });

    });
</script>
<%--不定位点击时选中注数--%>
<script>
    function getBuwdZhushu(flagStrInner) {
        var budwArr = [], budwLength = [];
        $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });
        var budwName = $(".cl-1002[data-flag='"+ flagStrInner +"']").data("flag"); //获取当前选号对象
        if(budwName == "qsem-budw" || budwName == "hsem-budw" || budwName == "q4em-budw" || budwName == "h4em-budw" || budwName == "wxem-budw"){
            if (typeof budwArr == "undefined" || budwArr.length < 2) {
                if (typeof clearStateTouZhu == 'function') {
                    clearStateTouZhu();
                }
                return;
            }
            budwLength = getEmjsZhushu(budwArr);
        }else{
            budwLength = budwArr.length;

            if (typeof budwArr == "undefined" || budwLength <= 0) {
                if (typeof clearStateTouZhu == 'function') {
                    clearStateTouZhu()
                }
                return;
            }
        }
        return budwLength;
    }

    //五星3码注数
    function getWx3mZhushu() {
        var budwArr = [], budwLength = [];
        $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        budwLength = getJs3mZhushu(budwArr);
        if (typeof budwArr == "undefined" || budwLength < 0) {
            if (typeof clearStateTouZhu == 'function') {
                clearStateTouZhu()
            }
            return;
        }
        return budwLength;
    }

    //五星3码-算法
    function getJs3mZhushu(tempArr) {
        var newArr = [];
        for(var i = 0; i < tempArr.length; i++){
            for(var j = 0; j < tempArr.length; j++){
               for(var x = 0; x < tempArr.length; x++) {
                   if (i != j && j != x && i != x) {
                       var arr = [];
                       arr.push(tempArr[i]);
                       arr.push(tempArr[j]);
                       arr.push(tempArr[x]);
                       arr.sort();
                       newArr.push(arr.join(","));
                   }
               }
            }
        }

        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    //前三二码 /后三二码--算法
    function getEmjsZhushu(tempArr) {
        var newArr = [];
        for(var i = 0; i < tempArr.length; i++){
            for(var j = 0; j < tempArr.length; j++){
                if(i != j){
                   var arr = [];
                   arr.push(tempArr[i]);
                   arr.push(tempArr[j]);
                   arr.sort();
                   newArr.push(arr.join(","));
                }
            }
        }

        newArr = newArr.uniqueArr();
        return newArr.length;
    }


</script>
<script>
    function getSuiji(total) {
        var betFormList = suiji(total);
        $.each(betFormList, function (index, value) {
            var html = template("template_touzhu", value);
            $("#zhudanList").append(html);
        });
        calcAll();
    }

    function clearSelected() {
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $(".re-5x-i i.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        if (typeof clearStateTouZhu == 'function') {
            clearStateTouZhu();
        }
    }

    function clearTextarea() {
        $(".content_jiang textarea").val('');
        clearStateTouZhu();
    }

    function daoRu() {
        alert("开发中，敬请期待...");
    }

    function tjzd() {
        if (typeof $('.recl-1003-budw').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getQsemZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1004-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getHsymZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1005-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getHsemZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1006-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getMa4xZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1007-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getQ4emZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1008-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getH4ymZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1009-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getH4emZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1010-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getWxymZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1011-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getWxemZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1012-budw').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getWx3mZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        }
    }

    //后三一码注单
    function getHsymZhudan(obj) {
        var budwArr = [];
        $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = budwArr.length;
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "三星-后三一码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前三一码注单
    function getZhudan(obj) {
        var budwArr = [];
        $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = budwArr.length;
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "三星-前三一码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前三二码注单
    function getQsemZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1003-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getEmjsZhushu(budwArr);
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "三星-前三二码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_em").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //后三二码注单
    function getHsemZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1005-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getEmjsZhushu(budwArr);
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "三星-后三二码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_em").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前四一码注单
    function getMa4xZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1006-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = budwArr.length;
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "四星-前四一码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_q4").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前四二码注单
    function getQ4emZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1007-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getEmjsZhushu(budwArr);
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "四星-前四二码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_q4em").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //后四一码注单
    function getH4ymZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1008-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = budwArr.length;
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "四星-后四一码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_q4").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //后四二码注单
    function getH4emZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1009-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getEmjsZhushu(budwArr);
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "四星-后四二码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_q4em").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //五星一码注单
    function getWxymZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1010-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = budwArr.length;
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "五星-五星一码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_wx").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //五星二码注单
    function getWxemZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1011-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getEmjsZhushu(budwArr);
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "五星-五星二码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_wx2m").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //五星3码注单
    function getWx3mZhudan(obj) {
        var budwArr = [];
        $.each($(".recl-1012-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
            budwArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getJs3mZhushu(budwArr);
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "五星-五星三码";
        obj.showContent = "不定位: (" + budwArr.join(",") + ")";
        obj.betContent = budwArr.join(",")
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change_wx3m").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    function suiji(total) {
        var result = [];
        var playName = '';
        var content = '';
        var flagVal = '';
        var betcontent = '';

        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            playName = "三星-前三一码";
            flagVal = "qsym";
        } else if (typeof $('.recl-1003-budw').attr('data-flag') != 'undefined') {
            playName = "三星-前三二码";
            flagVal = "qsem";
        } else if (typeof $('.recl-1004-budw').attr('data-flag') != 'undefined') {
            playName = "三星-后三一码";
            flagVal = "hsym";
        } else if (typeof $('.recl-1005-budw').attr('data-flag') != 'undefined') {
            playName = "三星-后三二码";
            flagVal = "hsem";
        } else if (typeof $('.recl-1006-budw').attr('data-flag') != 'undefined') {
            playName = "四星-前四一码";
            flagVal = "q4ym";
        } else if (typeof $('.recl-1007-budw').attr('data-flag') != 'undefined') {
            playName = "四星-前四二码";
            flagVal = "q4em";
        } else if (typeof $('.recl-1008-budw').attr('data-flag') != 'undefined') {
            playName = "四星-后四一码";
            flagVal = "h4ym";
        } else if (typeof $('.recl-1009-budw').attr('data-flag') != 'undefined') {
            playName = "四星-后四二码";
            flagVal = "h4em";
        } else if (typeof $('.recl-1010-budw').attr('data-flag') != 'undefined') {
            playName = "五星-五星一码";
            flagVal = "wxym";
        } else if (typeof $('.recl-1011-budw').attr('data-flag') != 'undefined') {
            playName = "五星-五星二码";
            flagVal = "wxem";
        } else if (typeof $('.recl-1012-budw').attr('data-flag') != 'undefined') {
            playName = "五星-五星三码";
            flagVal = "wx3m";
        }

        for (var numIndex = 0; numIndex < total; ++numIndex) {
            if(flagVal == "qsym" || flagVal == "hsym" || flagVal == "q4ym" || flagVal == "h4ym" || flagVal == "wxym"){
                var strTemp = 10;
                while (strTemp == 10) {
                    var num = parseInt(Math.random() * 10);
                    strTemp = num;
                }
                content = "不定位: (" + strTemp + ")";
                betcontent = strTemp;
            } else if(flagVal == "qsem" || flagVal == "hsem" || flagVal == "q4em" || flagVal == "h4em" || flagVal == "wxem"){
                var arrTemp = [];
                while(arrTemp.length != 1){
                    var oneN = parseInt(Math.random() * 10);
                    var twoN = parseInt(Math.random() * 10);
                    if(oneN != twoN){
                        arrTemp.push(oneN + "," + twoN);
                    }
                }
                content = "不定位: (" + arrTemp[0] + ")";
                betcontent = arrTemp.join(',');
            } else if(flagVal == "wx3m"){
                var arrT = [];
                while(arrT.length != 1){
                    var yiM = parseInt(Math.random() * 10);
                    var erM = parseInt(Math.random() * 10);
                    var sanM = parseInt(Math.random() * 10);
                    if(yiM != erM && erM != sanM && sanM != yiM){
                        arrT.push(yiM + "," + erM + "," + sanM);
                    }
                }
                content = "不定位: (" + arrT[0] + ")";
                betcontent = arrT.join(',');
            }

            var obj = {};
            obj.showPlayName = playName;
            obj.showContent = content;
            obj.betContent = betcontent;
            obj.betPerMoney = $("#inputMoney").data("money");
            obj.betZhushu = 1;
            obj.betBeishu = $("#inputBeishu").data("beishu");
            obj.betMode = 1;
            obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
            obj.betFandian = $(".fandian-bfb").data("value");

            if(flagVal == "qsem" || flagVal == "hsem"){
                obj.betPlayPl = $(".jiangjin-change_em").html();
            }else if(flagVal == "q4ym" || flagVal == "h4ym"){
                 obj.betPlayPl = $(".jiangjin-change_q4").html();
            }else if(flagVal == "q4em" || flagVal == "h4em"){
                 obj.betPlayPl = $(".jiangjin-change_q4em").html();
            }else if(flagVal == "wxym"){
                 obj.betPlayPl = $(".jiangjin-change_wx").html();
            }else if(flagVal == "wxem"){
                 obj.betPlayPl = $(".jiangjin-change_wx2m").html();
            }else if(flagVal == "wx3m"){
                 obj.betPlayPl = $(".jiangjin-change_wx3m").html();
            }else{
                 obj.betPlayPl = $(".jiangjin-change").html();
            }
            obj.betPlayGroupId = playGroupId;
            obj.betPlayPlId = getPlayPlId();
            obj.betPlayId = getPlayId();
            result.push(obj);
        }
        return result;
    }
</script>
<script>
    $(function () {
        var plAndMaxFd = getAllPlAndMaxFd();
        var maxFandian = plAndMaxFd[0].maxFdBl;

        $('.slider-input').jRange({
            from: 0,
            to: maxFandian,
            step: 0.1,
            format: '%s',
            width: $(".cl-1004").width(),
            theme: 'theme-green my-slide-theme',
            showLabels: false,
            showScale: false,
            snap: true,
            onstatechange: function () {
                var money_jangjin = $(".slider-input").val();
                money_jangjin = parseFloat(money_jangjin).toFixed(1);
                $(".fandian-bfb").data("value", money_jangjin);
                $(".fandian-bfb").html(money_jangjin + "%");

                //显示返点与赔率
                $.each(plAndMaxFd, function(index, value){
                    // 前三一码 后三一码
                    if(value.playPlId == 14262){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_q3ym = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change").data("value", money_q3ym);
                        $(".jiangjin-change").html(parseFloat(money_q3ym).toFixed(3));
                    }

                    // 前三二码 后三二码
                    if(value.playPlId == 14263){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_em = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change_em").data("value", money_em);
                        $(".jiangjin-change_em").html(parseFloat(money_em).toFixed(3));
                    }

                    // 前四一码 前四一码
                    if(value.playPlId == 14266){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_q4 = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change_q4").data("value", money_q4);
                        $(".jiangjin-change_q4").html(parseFloat(money_q4).toFixed(3));
                    }

                    // 前四二码 前四二码
                    if(value.playPlId == 14267){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_q4em = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change_q4em").data("value", money_q4em);
                        $(".jiangjin-change_q4em").html(parseFloat(money_q4em).toFixed(3));
                    }

                    // 五星一码
                    if(value.playPlId == 14270){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_wx = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change_wx").data("value", money_wx);
                        $(".jiangjin-change_wx").html(parseFloat(money_wx).toFixed(3));
                    }

                    // 五星二码
                    if(value.playPlId == 14271){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_wx2m = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change_wx2m").data("value", money_wx2m);
                        $(".jiangjin-change_wx2m").html(parseFloat(money_wx2m).toFixed(3));
                    }

                    // 五星三码
                    if(value.playPlId == 14272){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_wx3m = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change_wx3m").data("value", money_wx3m);
                        $(".jiangjin-change_wx3m").html(parseFloat(money_wx3m).toFixed(3));
                    }
                });

                if (typeof stateTouZhu == "function") {
                    var flag_str = '';
                    if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
                        flag_str = 'qsym-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1003-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'qsem-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1004-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'hsym-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1005-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'hsem-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1006-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'q4ym-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1007-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'q4em-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1008-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'h4ym-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1009-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'h4em-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1010-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'wxym-budw';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1011-budw').attr('data-flag') != 'undefined') {
                        flag_str = 'wxem-budw';
                        stateTouZhu(flag_str);
                    }
                }
            }
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").click(function () {
            var text = $(this).text();
            $(this).parent().parent().find('input').val(text);
            $(this).parent().hide();

            $(this).parent().parent().find('input').data("money", parseInt(text));
            changeStateCommon();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down span").click(function () {
            $(this).parent().find(".down_menu").show();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").parent().parent().hover(function () {

        }, function () {
            $(this).find(".down_menu").hide();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fl").click(function () {
            var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
            if (isNaN(val) || typeof val != 'number') {
                val = 1;
            }
            val = parseInt(val);

            --val;
            val = val < 1 ? 1 : val;
            $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);
            changeStateCommon();
        });

        $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fr").click(function () {
            var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
            if (isNaN(val) || typeof val != 'number') {
                val = 1;
            }
            val = parseInt(val);

            ++val;
            val = val < 1 ? 1 : val;
            $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);
            changeStateCommon();
        });
    });
</script>