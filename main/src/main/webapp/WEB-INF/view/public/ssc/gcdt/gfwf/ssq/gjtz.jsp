<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<style>
    .Single .layout .add_spot{margin-top: 0!important;}
    .ssq_shuom{padding-top:0!important;}
    .recl-200,.recl-201{width: 800px;}
    .hz-dir{height: 130px;}
</style>
<div class="group">
    <ul>
        <li>
            <b class="tit_img">模式</b>
            <p>
                <span class="playPlIdBtn acti" data-play_id="1033" data-play_pl_id="14846|14847|14848|14849" data-name="ssqfs" data-fun_zhushu="zhushu_ssqfs" data-fun_content="content_ssqfs" data-fun_suiji="suiji_ssqfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-play_id="1034" data-play_pl_id="14850|14851|14852|14853" data-name="ssqds" data-fun_zhushu="zhushu_ssqds" data-fun_content="content_ssqds" data-fun_suiji="suiji_ssqds"><a href="javascript:void(0)">直选单式</a></span>
            </p>
        </li>
    </ul>
</div>

<c:import url="../common/commonMiddle.jsp" />
<c:import url="../common/subCommonJs.jsp" />

<script type="text/html" id="template_ssqfs">
<div class="Pick">
    <div class="cl-200 recl-200 ssq_shuom">
        <p class="p1">
        <span class="fr fl cl-1001">
            本平台双色球每期从33个红球中选5个号码，从16个蓝球中选1个号码作为一注。
            <a>
                <img src="${resPath}img/ico60.png" alt="">选号规则
                <var>开奖号码：红球 03 04 05 01 06 (顺序不限) 篮球 07 投注方案：01 03 04 05 06：07(一等奖) 01 03 04 05：07或01 03 04 05 06：08 (二等奖) 01 03 04 05：08或01 03 04：07(三等奖) 04 05：07或05：07或 -：07(四等奖) 即为中奖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从1~33红球至少选5个,1~16篮球选1个构成一注。一等奖：中5个红球和1个蓝球，顺序不限；二等奖：中4个红球1个蓝球或者5个红球，顺序不限；三等奖：中3个红球1个蓝球或4个红球，顺序不限；四等奖：中2个红球1个蓝球或1个红球1个蓝球或者1个蓝球，顺序不限，即中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="红球">
                <b class="hz-dir"><i>红球</i></b>
                <p class="numLine renumHeigth">
                    <span><i>01</i> </span>
                    <span><i>02</i> </span>
                    <span><i>03</i> </span>
                    <span><i>04</i> </span>
                    <span><i>05</i> </span>
                    <span><i>06</i> </span>
                    <span><i>07</i> </span>
                    <span><i>08</i> </span>
                    <span><i>09</i> </span>
                    <span><i>10</i> </span>
                    <span><i>11</i> </span>
                </p>
                <p class="numLine renumHeigth numssq">
                    <span><i>12</i> </span>
                    <span><i>13</i> </span>
                    <span><i>14</i> </span>
                    <span><i>15</i> </span>
                    <span><i>16</i> </span>
                    <span><i>17</i> </span>
                    <span><i>18</i> </span>
                    <span><i>19</i> </span>
                    <span><i>20</i> </span>
                    <span><i>21</i> </span>
                    <span><i>22</i> </span>
                </p>
                <p class="numLine renumHeigth numssq">
                    <span><i>23</i> </span>
                    <span><i>24</i> </span>
                    <span><i>25</i> </span>
                    <span><i>26</i> </span>
                    <span><i>27</i> </span>
                    <span><i>28</i> </span>
                    <span><i>29</i> </span>
                    <span><i>30</i> </span>
                    <span><i>31</i> </span>
                    <span><i>32</i> </span>
                    <span><i>33</i> </span>
                </p>
            </li>

        </ul>
    </div>
    <div class="cl-201 recl-201">
        <ul class="lanqiu">
            <li data-name="蓝球">
                <b class="hz-dir"><i>蓝球</i></b>
                <p class="numLine renumHeigth numssq">
                    <span><i>01</i> </span>
                    <span><i>02</i> </span>
                    <span><i>03</i> </span>
                    <span><i>04</i> </span>
                    <span><i>05</i> </span>
                    <span><i>06</i> </span>
                    <span><i>07</i> </span>
                    <span><i>08</i> </span>
                    <span><i>09</i> </span>
                    <span><i>10</i> </span>
                    <span><i>11</i> </span>
                </p>
                <p class="numLine renumHeigth numssq">
                    <span><i>12</i> </span>
                    <span><i>13</i> </span>
                    <span><i>14</i> </span>
                    <span><i>15</i> </span>
                    <span><i>16</i> </span>
                </p>
            </li>
        </ul>
    </div>
    <%--<c:import url="../common/subPageCommonJs.jsp" />--%>
</div>
</script>

<script type="text/html" id="template_ssqds">
    <div class="Pick cl-1003 recl-1003" data-flag="dan">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入五个红球和一个蓝球组成一注
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>开奖号码：红球 03 04 05 01 06 (顺序不限) 篮球 07 投注方案：01 03 04 05 06：07(一等奖) 01 03 04 05：07或01 03 04 05 06：08 (二等奖) 01 03 04 05：08或01 03 04：07(三等奖) 04 05：07或05：07或 -：07(四等奖) 即为中奖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入5个红色求和一个蓝色球组成一注。一等奖：中5个红球和1个蓝球，顺序不限；二等奖：中4个红球1个蓝球或者5个红球，顺序不限；三等奖：中3个红球1个蓝球或4个红球，顺序不限；四等奖：中2个红球1个蓝球或1个红球1个蓝球或者1个蓝球，顺序不限，即中奖。</var>
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

        <p class="rep1_zhushi">每一注号码之间请用一个空格隔开，每个球必须是两位数字，红球和蓝球之间以一个":"（冒号）隔开，每注之间用分号[;]隔开。</p>
    </div>
</script>
<script>
    function daoRu(){
        showloadTxtTemplate1();
    }
</script>
