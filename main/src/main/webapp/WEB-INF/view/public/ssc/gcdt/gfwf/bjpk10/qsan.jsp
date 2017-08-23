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
            <b class="tit_img">前三</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti" data-play_id="663" data-play_pl_id="14412" data-name="qszxfs" data-fun_zhushu="zhushu_qszxfs" data-fun_content="content_qszxfs" data-fun_suiji="suiji_qszxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-play_id="664" data-play_pl_id="14413" data-name="qszxds" data-fun_zhushu="zhushu_qszxds" data-fun_content="content_qszxds" data-fun_suiji="suiji_qszxds"><a href="javascript:void(0)">直选单式</a></span>
            </p>
        </li>
    </ul>
</div>

<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />

<script type="text/html" id="template_qszxfs">
<div class="Pick cl-1002 recl-1002" data-flag="fu">
    <p class="p1">
        <span class="fr fl cl-1001">
            从第一名，第二名，第三名中至少选择1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：冠军01 ，亚军02 ，季军03开奖号码：01，02，03，04，05，06，07，08，09，10即可中前三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从冠军，亚军，季军位至少各选择一个号码组成一注，开奖号码中第一，第二，第三位与所选号按位相同，即为中奖。</var>
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
    </ul>
</div>
</script>

<script type="text/html" id="template_qszxds">
<div class="Pick cl-1003 recl-1003">
    <p class="p1">
        <span class="fr fl cl-1001">
           手动输入号码，至少选择1个三位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01 02 03 开奖号码：01 02 03 04 05 06 07 08 09 10，即可中前三s直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入3个号码组成一注，所选号码与开奖号码中第一，第二 ，第三位与所选号相同，且顺序一致即为中。</var>
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

    <p class="rep1_zhushi">每注号码之间请使用逗号（，）、分号（；）或回车键隔开，每注内间隔使用空格即可。</p>
</div>
</script>
