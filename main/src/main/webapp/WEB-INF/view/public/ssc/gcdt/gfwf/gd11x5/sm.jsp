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
            <b class="tit_img">前三</b>
                <span class="playPlIdBtn acti spans" data-play_id="776" data-play_pl_id="14448" data-name="gd11x5_qszxfs" data-fun_zhushu="gd11x5_zhushu_qszxfs" data-fun_content="content_gd11x5_qszxfs" data-fun_suiji="suiji_gd11x5_qszxfs"><a href="javascript:void(0)">前三直选复式</a></span>
                <span class="playPlIdBtn spans" data-play_id="801" data-play_pl_id="14473" data-name="gd11x5_qszxds" data-fun_zhushu="zhushu_gd11x5_qszxds" data-fun_content="content_gd11x5_qszxds" data-fun_suiji="suiji_gd11x5_qszxds"><a href="javascript:void(0)">前三直选单式</a></span>
                <span class="playPlIdBtn spans" data-play_id="772" data-play_pl_id="14444" data-name="gd11x5_qszuxfs" data-fun_zhushu="zhushu_gd11x5_qszuxfs" data-fun_content="content_suiji_gd11x5_qszuxfs" data-fun_suiji="suiji_gd11x5_qszuxfs"><a href="javascript:void(0)">前三组选复式</a></span>
                <span class="playPlIdBtn spans" data-play_id="798" data-play_pl_id="14470"  data-name="gd11x5_qszuxds" data-fun_zhushu="zhushu_gd11x5_qszuxds" data-fun_content="content_gd11x5_qszuxds" data-fun_suiji="suiji_gd11x5_qszuxds"><a href="javascript:void(0)">前三组选单式</a></span>
                <span class="playPlIdBtn spans" data-play_id="777" data-play_pl_id="14449"  data-name="gd11x5_qszuxdt" data-fun_zhushu="zhushu_gd11x5_qszuxdt" data-fun_content="content_gd11x5_qszuxdt" data-fun_suiji="suiji_gd11x5_qszuxdt"><a href="javascript:void(0)">前三组选胆拖</a></span>
            </p>
        </li>
        <li>

            <p class="btn_fu_zhi">
                <b class="tit_img">中三</b>
                <span class="playPlIdBtn spans" data-play_id="762" data-play_pl_id="14434" data-name="gd11x5_zszxfs" data-fun_zhushu="zhushu_gd11x5_zszxfs" data-fun_content="content_gd11x5_zszxfs" data-fun_suiji="suiji_gd11x5_zszxfs"><a href="javascript:void(0)">中三直选复式</a></span>
                <span class="playPlIdBtn spans" data-play_id="788" data-play_pl_id="14460" data-name="gd11x5_zszxds" data-fun_zhushu="zhushu_gd11x5_zszxds" data-fun_content="content_gd11x5_zszxds" data-fun_suiji="suiji_gd11x5_zszxds"><a href="javascript:void(0)">中三直选单式</a></span>
                <span class="playPlIdBtn spans" data-play_id="750" data-play_pl_id="14422" data-name="gd11x5_zszuxfs" data-fun_zhushu="zhushu_gd11x5_zszuxfs" data-fun_content="content_gd11x5_zszuxfs" data-fun_suiji="suiji_gd11x5_zszuxfs"><a href="javascript:void(0)">中三组选复式</a></span>
                <span class="playPlIdBtn spans" data-play_id="780" data-play_pl_id="14452" data-name="gd11x5_zszuxds" data-fun_zhushu="zhushu_gd11x5_zszuxds" data-fun_content="content_gd11x5_zszuxds" data-fun_suiji="suiji_gd11x5_zszuxds"><a href="javascript:void(0)">中三组选单式</a></span>
                <span class="playPlIdBtn spans" data-play_id="763" data-play_pl_id="14435" data-name="gd11x5_zszuxdt" data-fun_zhushu="zhushu_gd11x5_zszuxdt" data-fun_content="content_gd11x5_zszuxdt" data-fun_suiji="suiji_gd11x5_zszuxdt"><a href="javascript:void(0)">中三组选胆拖</a></span>
            </p>
        </li>
        <li>
            <p class="btn_fu_zhi">
                <b class="tit_img">后三</b>
                <span class="playPlIdBtn spans" data-play_id="759" data-play_pl_id="14431" data-name="gd11x5_hszxfs" data-fun_zhushu="zhushu_gd11x5_hszxfs" data-fun_content="content_gd11x5_hszxfs" data-fun_suiji="suiji_gd11x5_hszxfs"><a href="javascript:void(0)">后三直选复式</a></span>
                <span class="playPlIdBtn spans" data-play_id="790" data-play_pl_id="14462" data-name="gd11x5_hszxds" data-fun_zhushu="zhushu_gd11x5_hszxds" data-fun_content="content_gd11x5_hszxds" data-fun_suiji="suiji_gd11x5_hszxds"><a href="javascript:void(0)">后三直选单式</a></span>
                <span class="playPlIdBtn spans" data-play_id="757" data-play_pl_id="14429" data-name="gd11x5_hszuxfs" data-fun_zhushu="zhushu_gd11x5_hszuxfs" data-fun_content="content_gd11x5_hszuxfs" data-fun_suiji="suiji_gd11x5_hszuxfs"><a href="javascript:void(0)">后三组选复式</a></span>
                <span class="playPlIdBtn spans" data-play_id="761" data-play_pl_id="14433" data-name="gd11x5_hszuxds" data-fun_zhushu="zhushu_gd11x5_hszuxds" data-fun_content="content_gd11x5_hszuxds" data-fun_suiji="suiji_gd11x5_hszuxds"><a href="javascript:void(0)">后三组选单式</a></span>
                <span class="playPlIdBtn spans" data-play_id="760" data-play_pl_id="14432" data-name="gd11x5_hszuxdt" data-fun_zhushu="zhushu_gd11x5_hszuxdt" data-fun_content="content_gd11x5_hszuxdt" data-fun_suiji="suiji_gd11x5_hszuxdt"><a href="javascript:void(0)">后三组选胆拖</a></span>
            </p>
        </li>
    </ul>
</div>
<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />
<%--前三直选复式--%>
<script type="text/html" id="template_gd11x5_qszxfs">
<div class="Pick cl-1002 recl-1002" data-flag="fu">
    <p class="p1">
        <span class="fr fl cl-1001">
            从第一位、第二位、第三位中至少各选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01，02,03 开奖号码：01，02，03，* *，即中前三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选3个不重复的号码组成一注，所选号码与当期5个开奖号码中的前3个号码相同，且顺序一致，即为中奖。</var>
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

    </ul>
</div>
</script>
<%--前三组选复式--%>
<script type="text/html" id="template_gd11x5_qszuxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中任意选择3个或3个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01，02,03 开奖号码：01，02，03，* *(前三顺序不限)即中前三组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择3个或多个号码，所选号码与当期5个开奖号码中的前3个号码相同，顺序不限，即为中奖。</var>
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
<%--前三直选单式--%>
<script type="text/html" id="template_gd11x5_qszxds">
<div class="Pick cl-1003 recl-1003">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02,03 开奖号码：01，02,03 * *即中前三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的前3个号码相同，且顺序一致，即为中奖。</var>
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
<%--前三组选单式--%>
<script type="text/html" id="template_gd11x5_qszuxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02,03 开奖号码：01，02,03 * *(前三顺序不限)，即中前三组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的前3个号码相同，顺序不限，即为中奖。</var>
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
<%--前三组选胆拖--%>
<script type="text/html" id="template_gd11x5_qszuxdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中，选取3个及以上的号码进行投注，每注需至少包括1个胆码及一个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码02,拖码01，0,6 开奖号码：02，01，06，* *，（前三顺序不限）即中前三组选胆拖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选3个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共3个号码，所选单注号码与当期5个开奖号码中的前3个号码相同，顺序不限，即为中奖。</var>
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
<%--中三直选复式--%>
<script type="text/html" id="template_gd11x5_zszxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从第二位、第三位，第四位中至少各选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01，02,03 开奖号码：*，01，02，03，**，即中中三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选3个不重复的号码组成一注，所选号码与当期5个开奖号码中的中间3个号码相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
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

        </ul>
    </div>
</script>
<%--中三直选单式--%>
<script type="text/html" id="template_gd11x5_zszxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02,03 开奖号码：01，02,03 * *，即中中三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的中间3个号码相同，且顺序一致，即为中奖。</var>
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
<%--中三组选复式--%>
<script type="text/html" id="template_gd11x5_zszuxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中任意选择3个或3个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01，02,03 开奖号码：*03， 01，02， *(中三顺序不限)即中中三组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择1个或多个号码3个号码组成一致，所选号码与当期5个开奖号码中的中间3个号码相同，顺序不限，即为中奖。</var>
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

<%--中三组选单式--%>
<script type="text/html" id="template_gd11x5_zszuxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02,03 开奖号码：* 03 ,01，02, *，顺序不限，即中中三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的中间3个号码相同，顺序不限，即为中奖。</var>
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
<%--中三组选胆拖--%>
<script type="text/html" id="template_gd11x5_zszuxdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中，选取3个及以上的号码进行投注，每注需至少包括1个胆码及一个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码02,拖码01，0,6 开奖号码：* 02，01，06，*，（前三顺序不限）即中前三组选胆拖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选3个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共3个号码，所选单注号码与当期5个开奖号码中的前3个号码相同，顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
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
            <li data-name="拖码">
                <b><i>拖码</i></b>
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
<%--后三直选复式--%>
<script type="text/html" id="template_gd11x5_hszxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从第三位、第四位、第五位中至少各选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01，02,03 开奖号码：*，01，02，03，即中后三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选3个不重复的号码组成一注，所选号码与当期5个开奖号码中的后3个号码相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
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

<%--后三直选单式--%>
<script type="text/html" id="template_gd11x5_hszxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02,03 开奖号码：*，* 03 ,01，02, 顺序不限，即中后三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的后3个号码相同，顺序一致，即为中奖。</var>
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

<%--后三组选复式--%>
<script type="text/html" id="template_gd11x5_hszuxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中任意选择3个或3个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01，02,03 开奖号码： *，*03， 01，02(后三顺序不限)即中后三组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从11个号码中选择1个或多个号码3个号码组成一致，所选号码与当期5个开奖号码中的后3个号码相同，顺序不限，即为中奖。</var>
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

<%--后三组选单式--%>
<script type="text/html" id="template_gd11x5_hszuxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：01,02,03 开奖号码：*，* 03 ,01，02,，顺序不限，即中后三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的后3个号码相同，顺序不限，即为中奖。</var>
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

<%--后三组选胆拖--%>
<script type="text/html" id="template_gd11x5_hszuxdt">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从01-11中，选取3个及以上的号码进行投注，每注需至少包括1个胆码及一个拖码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：胆码02,拖码01，0,6 开奖号码：*，* 02，01，06，（后三顺序不限）即中后三组选胆拖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从01—11中各选3个或多个号码进行投注，每注需至少包括一个胆码及一个拖码，共3个号码，所选单注号码与当期5个开奖号码中的后3个号码相同，顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
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
            <li data-name="拖码">
                <b><i>拖码</i></b>
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

<script>
    function daoRu(){
        showloadTxtTemplate1();
    }
</script>
