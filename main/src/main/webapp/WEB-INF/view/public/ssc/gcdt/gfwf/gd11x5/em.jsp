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
                    <b class="tit_img">前二</b>
                    <span class="playPlIdBtn acti spans" data-play_id="765" data-play_pl_id="14437" data-name="gd11x5_qezxfs" data-fun_zhushu="gd11x5_zhushu_qezxfs" data-fun_content="content_gd11x5_qezxfs" data-fun_suiji="suiji_gd11x5_qezxfs"><a href="javascript:void(0)">前二直选复式</a></span>
                    <span class="playPlIdBtn spans" data-play_id="791" data-play_pl_id="14463" data-name="gd11x5_qezxds" data-fun_zhushu="zhushu_gd11x5_qezxds" data-fun_content="content_gd11x5_qezxds" data-fun_suiji="suiji_gd11x5_qezxds"><a href="javascript:void(0)">前二直选单式</a></span>
                    <span class="playPlIdBtn spans" data-play_id="792" data-play_pl_id="14464" data-name="gd11x5_qezuxfs" data-fun_zhushu="zhushu_gd11x5_qezuxfs" data-fun_content="content_suiji_gd11x5_qezuxfs" data-fun_suiji="suiji_gd11x5_qezuxfs"><a href="javascript:void(0)">前二组选复式</a></span>
                    <span class="playPlIdBtn spans" data-play_id="764" data-play_pl_id="14436"  data-name="gd11x5_qezuxds" data-fun_zhushu="zhushu_gd11x5_qezuxds" data-fun_content="content_gd11x5_qezuxds" data-fun_suiji="suiji_gd11x5_qezuxds"><a href="javascript:void(0)">前二组选单式</a></span>
                    <span class="playPlIdBtn spans" data-play_id="766" data-play_pl_id="14438"  data-name="gd11x5_qezuxdt" data-fun_zhushu="zhushu_gd11x5_qezuxdt" data-fun_content="content_gd11x5_qezuxdt" data-fun_suiji="suiji_gd11x5_qezuxdt"><a href="javascript:void(0)">前二组选胆拖</a></span>
                </p>
            </li>
        <li>
            <p class="btn_fu_zhi">
                <b class="tit_img">后二</b>
                <span class="playPlIdBtn spans" data-play_id="769" data-play_pl_id="14441" data-name="gd11x5_hezxfs" data-fun_zhushu="zhushu_gd11x5_hezxfs" data-fun_content="content_gd11x5_hezxfs" data-fun_suiji="suiji_gd11x5_hezxfs"><a href="javascript:void(0)">后二直选复式</a></span>
                <span class="playPlIdBtn spans" data-play_id="794" data-play_pl_id="14466" data-name="gd11x5_hezxds" data-fun_zhushu="zhushu_gd11x5_hezxds" data-fun_content="content_gd11x5_hezxds" data-fun_suiji="suiji_gd11x5_hezxds"><a href="javascript:void(0)">后二直选单式</a></span>
                <span class="playPlIdBtn spans" data-play_id="783" data-play_pl_id="14455" data-name="gd11x5_hezuxfs" data-fun_zhushu="zhushu_gd11x5_hezuxfs" data-fun_content="content_gd11x5_hezuxfs" data-fun_suiji="suiji_gd11x5_hezuxfs"><a href="javascript:void(0)">后二组选复式</a></span>
                <span class="playPlIdBtn spans" data-play_id="752" data-play_pl_id="14424" data-name="gd11x5_hezuxds" data-fun_zhushu="zhushu_gd11x5_hezuxds" data-fun_content="content_gd11x5_hezuxds" data-fun_suiji="suiji_gd11x5_hezuxds"><a href="javascript:void(0)">后二组选单式</a></span>
                <span class="playPlIdBtn spans" data-play_id="770" data-play_pl_id="14442" data-name="gd11x5_hezuxdt" data-fun_zhushu="zhushu_gd11x5_hezuxdt" data-fun_content="content_gd11x5_hezuxdt" data-fun_suiji="suiji_gd11x5_hezuxdt"><a href="javascript:void(0)">后二组选胆拖</a></span>
            </p>
        </li>
    </ul>
</div>

<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />

<%--前二直选复式--%>
<script type="text/html" id="template_gd11x5_qezxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从第一位、第二位、中至少各选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02, 开奖号码：01,02，* *,即中前二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选2个不重复的号码组成一注,所选号码与当期5个开奖号码中的前2个号码相同,且顺序一致,即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="第一位">
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
        </ul>
    </div>
</script>
<%--前二组选复式--%>
<script type="text/html" id="template_gd11x5_qezuxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中任意选择2个或2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02,开奖号码：01,02,* *(前二顺序不限)即中前二组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择2个或多个号码,所选号码与当期5个开奖号码中的前2个号码相同,顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="组选">
                <b><i>组选</i></b>
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
<%--前二直选单式--%>
<script type="text/html" id="template_gd11x5_qezxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个2位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：0102 开奖号码：01，02* * *即中前二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注，所输入的号码与当期5个开奖号码中的前2个号码相同，且顺序一致，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                    <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>

        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>
<%--前二组选单式--%>
<script type="text/html" id="template_gd11x5_qezuxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个2位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：0102 开奖号码：01，02 * * *(前二顺序不限)，即中前二组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注，所输入的号码与当期5个开奖号码中的前2个号码相同，顺序不限,即为中奖。</var>
            </a>
        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                    <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>
        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>
<%--前二组选胆拖--%>
<script type="text/html" id="template_gd11x5_qezuxdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中,选取2个及以上的号码进行投注,每注需至少包括1个胆码及一个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码02,拖码01, 开奖号码：02,01,* *,（前二顺序不限）即中前二组选胆拖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选2个或多个号码进行投注,每注需至少包括一个胆码及一个拖码,共2个号码,所选单注号码与当期5个开奖号码中的前2个号码相同,顺序不限,即为中奖。</var>
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
                <var class="numLines dantuo_selected" data-name="danma2">
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
<%--后二直选复式--%>
<script type="text/html" id="template_gd11x5_hezxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从第四位、第五位中至少各选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02开奖号码：*,*,01,02,即中后二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选2个不重复的号码组成一注,所选号码与当期5个开奖号码中的后2个号码相同,且顺序一致,即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
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

<%--后二直选单式--%>
<script type="text/html" id="template_gd11x5_hezxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个二位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：0102 开奖号码：*,* 01,02, 顺序不限，即中后二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注,所输入的号码与当期5个开奖号码中的后2个号码相同,顺序一致,即为中奖。</var>
            </a>
        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                    <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>
        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>

<%--后二组选复式--%>
<script type="text/html" id="template_gd11x5_hezuxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中任意选择2个或2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02 开奖号码： *,*, 01,02(后二顺序不限)即中后二组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择1个或多个号码2个号码组成一致,所选号码与当期5个开奖号码中的后2个号码相同,顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="组选">
                <b><i>组选</i></b>
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

<%--后二组选单式--%>
<script type="text/html" id="template_gd11x5_hezuxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个二位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：0102 开奖号码：*,* 01,02,，顺序不限,即中后二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注,所输入的号码与当期5个开奖号码中的后2个号码相同,顺序不限,即为中奖。</var>
            </a>
        </span>
        </p>
        <div class="content_jiang">
            <textarea   class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                    <li onclick="daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>
        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>

<%--后二组选胆拖--%>
<script type="text/html" id="template_gd11x5_hezuxdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中,选取2个及以上的号码进行投注,每注需至少包括1个胆码及一个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码02,拖码01， 开奖号码：*,* 02,01,（后二顺序不限）即中后二组选胆拖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选2个或多个号码进行投注,每注需至少包括一个胆码及一个拖码,共2个号码,所选单注号码与当期5个开奖号码中的后2个号码相同,顺序不限,即为中奖。</var>
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
                <var class="numLines dantuo_selected" data-name="danma2">
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
