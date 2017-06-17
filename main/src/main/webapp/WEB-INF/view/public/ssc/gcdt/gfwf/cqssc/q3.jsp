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
            <b>前三直选</b>
            <p class="btn_h3_zx">
                <span class="playPlIdBtn acti" data-play_id="516" data-play_pl_id="14222" data-name="zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-play_id="517" data-play_pl_id="14233" data-name="zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span class="playPlIdBtn" data-play_id="518" data-play_pl_id="14234" data-name="hszh"><a href="javascript:void(0)">前三组合</a></span>
                <input type="hidden" class="playPlIdBtn" data-play_id="518" data-play_pl_id="14235" data-name="hszh-2"/>
                <input type="hidden" class="playPlIdBtn" data-play_id="518" data-play_pl_id="14236" data-name="hszh-3"/>
                <span class="playPlIdBtn" data-play_id="519" data-play_pl_id="14237" data-name="zxhz"><a href="javascript:void(0)">直选和值</a></span>
                <span class="playPlIdBtn" data-play_id="520" data-play_pl_id="14238" data-name="zxkd"><a href="javascript:void(0)">直选跨度</a></span>
            </p>
        </li>
        <li>
            <b>前三组选</b>
            <p class="btn_h3_zux">
                <span class="playPlIdBtn" data-play_id="521" data-play_pl_id="14239" data-name="zsfs"><a href="javascript:void(0)">组三复式</a></span>
                <span class="playPlIdBtn" data-play_id="522" data-play_pl_id="14240" data-name="zsds"><a href="javascript:void(0)">组三单式</a></span>
                <span class="playPlIdBtn" data-play_id="523" data-play_pl_id="14241" data-name="zlfs"><a href="javascript:void(0)">组六复式</a></span>
                <span class="playPlIdBtn" data-play_id="524" data-play_pl_id="14242" data-name="zlds"><a href="javascript:void(0)">组六单式</a></span>
                <span class="playPlIdBtn" data-play_id="526" data-play_pl_id="14243" data-name="hhzx"><a href="javascript:void(0)">混合组选</a></span>
                <input type="hidden" class="playPlIdBtn" data-play_id="526" data-play_pl_id="14244" data-name="hhzx-2"/>
                <span class="playPlIdBtn" data-play_id="528" data-play_pl_id="14246" data-name="zxhz"><a href="javascript:void(0)">组选和值</a></span>
                <input type="hidden" class="playPlIdBtn" data-play_id="528" data-play_pl_id="14245" data-name="zxhz-2"/>
                <span class="playPlIdBtn" data-play_id="529" data-play_pl_id="14248" data-name="zxbd"><a href="javascript:void(0)">组选包胆</a></span>
                <input type="hidden" class="playPlIdBtn" data-play_id="529" data-play_pl_id="14247" data-name="zxbd-2"/>
            </p>
        </li>
        <li>
            <b>前三其它</b>
            <p class="btn_h3_qt">
                <span class="playPlIdBtn" data-play_id="531" data-play_pl_id="14249" data-name="hzws"><a href="javascript:void(0)">和值尾数</a></span>
                <span class="playPlIdBtn" data-play_id="534" data-play_pl_id="14250" data-name="tsh"><a href="javascript:void(0)">特殊号</a></span>
                <input type="hidden" class="playPlIdBtn" data-play_id="534" data-play_pl_id="14251" data-name="tsh-2"/>
                <input type="hidden" class="playPlIdBtn" data-play_id="534" data-play_pl_id="14252" data-name="tsh-3"/>
            </p>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1002" data-flag="zxfs_zx">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、十位各选一个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：345 开奖号码前三位：1345，即中前三位直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、十位中至少各选择1个号码组成一注，所选号码与开奖号码全部相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="万">
            <b><i>万位</i></b>
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
        <li data-name="千">
            <b><i>千位</i></b>
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
        <li data-name="十">
            <b><i>十位</i></b>
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
<div class="Pick cl-1003 recl-1003">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个3位数号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：345开奖号码：345，即中前三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、十位中至少各选择1个号码组成一注，所选号码与开奖号码全部相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
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
<%--前三组合--%>
<div class="Pick cl-1002 cl-1004-hszh">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、十位各选一个号码组成三注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：购买：6+7+8，该票共6元，由以下三注：678(三星)、78(二星)、8(一星)构成 开奖号码：678，即可中奖 一星、二星、三星各一注。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、十位中至少各选择1个号码组成1-3星的组合共三注，当十位数以开奖号码相同，则中一个3等奖；如果十位和千位号码和开奖号码相同，则中一个3等奖以及一个2等奖，以次类推，最高可中3个奖。</var>
            </a>

        </span>
    </p>
    <ul>
        <li data-name="万">
            <b><i>万位</i></b>
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
        <li data-name="千">
            <b><i>千位</i></b>
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
        <li data-name="十">
            <b><i>十位</i></b>
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
<%--直选和值--%>
<div class="Pick cl-1005-zxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-27中任意选择1个或1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：和值：1，开奖号码：前三位001、010、100，即中前三值选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选号码数值等于开奖号码的万、千、十三个数值相加之和，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="li1005_hezhi" data-name="和值">
            <b><i>和值</i></b>
            <var class="numLine renumHeigth">
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
                <span><i>10</i></span>
                <span><i>11</i></span>
                <span><i>12</i></span>
                <span><i>13</i></span>
            </var>
            <var class="numLine renumHeigth">
                <span><i>14</i></span>
                <span><i>15</i></span>
                <span><i>16</i></span>
                <span><i>17</i></span>
                <span><i>18</i></span>
                <span><i>19</i></span>
                <span><i>20</i></span>
                <span><i>21</i></span>
                <span><i>22</i></span>
                <span><i>23</i></span>
                <span><i>24</i></span>
                <span><i>25</i></span>
                <span><i>26</i></span>
                <span><i>27</i></span>
            </var>
        </li>
    </ul>
</div>
<%--直选跨度--%>
<div class="Pick cl-1002 cl-1006-zxkd">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：跨度：8，开奖号码：**129，最大号码9与最小号码1相减值等于8，所选号与跨度号码相同即中奖。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选数值与开奖号码前三位最大和最小数字相减之差，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="跨度">
            <b><i>跨度</i></b>
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
<%--组三复式--%>
<div class="Pick cl-1002 cl-1007-zsfs">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个或2个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：588开奖号码：前三位588(顺序不限)，即可中前三组选三。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9号码中至少选择2个号码组成两注，所选号码与开奖号码的万、千、十位相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="组三">
            <b><i>组三</i></b>
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
<%--组三单式--%>
<div class="Pick cl-1008-zsds">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码（三个数字中必须有二个数字相同）。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：001 开奖号码：前三位010(顺序不限)，即中前三组选三。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入一个3位数号码组成一注，三个数字中必须有两个数字相同，输入的数字与开奖的万、千、十位相同，顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
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

<%--组六复式--%>
<div class="Pick cl-1002 cl-1009-zlfs">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择3个或3个以上号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：258开奖号码：前三位852(顺序不限)，即可中前三组选六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9号码中至少选择3个号码组成一注，所选号码与开奖号码的万、千、十位相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="组六">
            <b><i>组六</i></b>
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

<%--组六单式--%>
<div class="Pick cl-1010-zlds">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码（三个数字完全不相同）。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：123 开奖号码：前三位321(顺序不限)，即中前三组选六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入一个3位数号码组成一注，所选的号码与开奖的号码的万、千、十位相同，顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
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
<%--混合组选--%>
<div class="Pick cl-1011-hhzx">
    <p class="p1">
        <span class="fr fl cl-1001">
            手动至少输入三个号码构成一注(不包含豹子号)。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：001和123 开奖号码：前三位010(顺序不限)，即中前三组选三，或前三位312(顺序不限)，即中前三组选六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>手动输入一个3位数号码组成一注(不包含豹子号)，开奖号码后3位为组选三或组选六形态，投注号码以开奖号码前三位相同，顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="content_jiang">
        <textarea class="content_tex" autofocus></textarea>
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
<%--组选和值--%>
<div class="Pick cl-1012-zxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从1-26中选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：和值：3，开奖号码：前三位003(顺序不限)，即中前三组选三，或者前三位012(顺序不限)即中前三组选六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>开奖号码后3位数号码组成一注(不包含豹子号)，开奖号码后3位为组选三或组选六形态，所选数值等于开奖号码的万、千、十位三个数字相加之和，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="li1012_hezhi" data-name="和值">
            <b><i>和值</i></b>
            <var class="numLine renumHeigth">
                <span><i>1</i></span>
                <span><i>2</i></span>
                <span><i>3</i></span>
                <span><i>4</i></span>
                <span><i>5</i></span>
                <span><i>6</i></span>
                <span><i>7</i></span>
                <span><i>8</i></span>
                <span><i>9</i></span>
                <span><i>10</i></span>
                <span><i>11</i></span>
                <span><i>12</i></span>
                <span><i>13</i></span>
            </var>
            <var class="numLine renumHeigth">
                <span><i>14</i></span>
                <span><i>15</i></span>
                <span><i>16</i></span>
                <span><i>17</i></span>
                <span><i>18</i></span>
                <span><i>19</i></span>
                <span><i>20</i></span>
                <span><i>21</i></span>
                <span><i>22</i></span>
                <span><i>23</i></span>
                <span><i>24</i></span>
                <span><i>25</i></span>
                <span><i>26</i></span>
            </var>
        </li>
    </ul>
</div>

<%--组选包胆--%>
<div class="Pick cl-1002 cl-1013-zxbd">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：包胆3：开奖号码：前三位3XX或者33X，即中前三组选三，前三位3XY，即中前三组选六</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从0-9号码中任意选择一个胆码，开奖号码前三位为组选三或组选六形态(不含豹子号，投注号码与开奖前三位中任意一位相同，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li data-name="包胆">
            <b><i>包胆</i></b>
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
        </li>
    </ul>
</div>
<%--和值尾数--%>
<div class="Pick cl-1002 cl-1014-hzws">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：和值尾数8 开奖号码：前三位936，和值尾数为8，即中和值尾数。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选号码等于开奖号码的万、千、十位数字相加之和的尾数，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="hzws_li" data-name="和值尾数">
            <b><i>和值尾数</i></b>
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
        </li>
    </ul>
</div>
<%--特殊号--%>
<div class="Pick cl-1002 cl-1015-tsh">
    <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个号码。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：豹子顺子对子 开奖号码：前三位888，即中豹子；前三位678，即中顺子；前三位558，即中对子。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>所选号码特殊属性与开奖号码前三位号码属性一致，即为中奖。其中：1.顺子号的万、千、十位不分顺序(特别号码：019、089也是顺子号)；2.对子号指的是开奖号码的前三位当中，任意两位数字相同的三位数号码</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="hzws_li tsh_li" data-name="特殊号">
            <b class="tsh-b"><i>特殊号</i></b>
            <span>豹子</span>
            <span>顺子</span>
            <span>对子</span>
        </li>
    </ul>
</div>


<div class="add_spot">
    <div class="left releft">
        <div class="sopt_wrap">
            <div class="slide_sp h3_slide_sp">
                奖金/返点
                <%--<p><span style="width: 4.89063px;"></span><var style="left: 4.89063px;"></var></p>--%>
                <%--<i><var>934058.63</var> / 7.0%</i>--%>
                <div class="cl-1003">
                    <div class="cl-1004">
                        <input type="hidden" class="slider-input"/>
                    </div>
                </div>
                <i class="base-fd change-base"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base-fd change-base-hszx"><var class="jiangjin-change-hszx">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base-fd change-base-zl"><var class="jiangjin-change-zl">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base-fd change-base-ws"><var class="jiangjin-change-ws">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base-fd change-base-tsh"><var class="jiangjin-change-tsh">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-tsh-sz">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-tsh-dz">0.0</var></i>
                <i class="base-fd change-1"><var class="fandian-bfb">0.0%</var></i>
                <i class="base-fd change-2"><var class="jiangjin-change-2">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-3">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-4">0.0</var></i>
                <i class="base-fd change-3"><var class="jiangjin-change-hszx">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-zl">0.0</var></i>

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
                <input type="text" value="2元" id="inputMoney" data-money="2" disabled="disabled">
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
            您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">1</i> 倍，返还 <i class="i1 i_fanD">0</i> 元，共投注 <i class="i1 i_money">0</i>元。
        </p>
    </div>
    <div class="rigth">
        <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
    </div>

</div>
<script>
    $(function () {
        //初始化复式选号模式
        $(".Pick").hide();
        $('.recl-1002').show();
        $(".base-fd").hide();
        $(".change-base").show();

        $(".btn_h3_zx span").click(function () {
            $(".base-fd").hide();
            $(".change-base").show();

            if ($(".group ul li p span").hasClass('acti')) {
                $(".group ul li p span").removeClass('acti');
            }
            $(".reboxt .right .suiji5").html("随机五注");
            $(".reboxt .right .suiji1").html("随机一注");
            //移除标签属性
            $(".Pick").removeAttr("data-flag");

            $(this).addClass('acti');
            var flag_name = $(this).data('name');
            if (flag_name == 'zxds') {
                $(".Pick").hide();
                $('.recl-1003').show();
                $('.recl-1003').attr("data-flag", "zxds_zx");
                allClear();
            } else if (flag_name == 'zxfs') {
                $(".Pick").hide();
                $('.recl-1002').show();
                $('.recl-1002').attr("data-flag", "zxfs_zx");
                allClear();
            } else if (flag_name == "hszh") {
                $(".Pick").hide();
                $('.cl-1004-hszh').show();
                $('.cl-1004-hszh').attr("data-flag", "hszh_zx");
                $(".base-fd").hide();
                $(".change-1").show();
                $(".change-2").show();
                allClear();
            } else if (flag_name == "zxhz") {
                $(".Pick").hide();
                $('.cl-1005-zxhz').show();
                $('.cl-1005-zxhz').attr("data-flag", "zxhz_zx");
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
                allClear();
            } else if (flag_name == "zxkd") {
                $(".Pick").hide();
                $('.cl-1006-zxkd').show();
                $('.cl-1006-zxkd').attr("data-flag", "zxkd_zx");
                allClear();
            }
        });

        $(".btn_h3_zux span").click(function () {
            $(".base-fd").hide();
            $(".change-base-hszx").show();

            if ($(".group ul li p span").hasClass('acti')) {
                $(".group ul li p span").removeClass('acti');
            }
            $(".reboxt .right .suiji5").html("随机五注");
            $(".reboxt .right .suiji1").html("随机一注");
            $(".Pick").removeAttr("data-flag");
            $(this).addClass("acti");
            var flag_name = $(this).data('name');
            if (flag_name == 'zsfs') {
                $(".Pick").hide();
                $('.cl-1007-zsfs').show();
                $('.cl-1007-zsfs').attr("data-flag", "zsfs_zux");
                allClear();
            } else if (flag_name == "zsds") {
                $(".Pick").hide();
                $(".cl-1008-zsds").show();
                $('.cl-1008-zsds').attr("data-flag", "zsds_zux");
                allClear();
            } else if (flag_name == "zlfs") {
                $(".Pick").hide();
                $(".cl-1009-zlfs").show();
                $(".cl-1009-zlfs").attr("data-flag", "zlfs_zux");
                $(".base-fd").hide();
                $(".change-base-zl").show();
                allClear();
            } else if (flag_name == "zlds") {
                $(".Pick").hide();
                $(".cl-1010-zlds").show();
                $(".cl-1010-zlds").attr("data-flag", "zlds_zux");
                $(".base-fd").hide();
                $(".change-base-zl").show();
                allClear();
            } else if (flag_name == "hhzx") {
                $(".Pick").hide();
                $(".cl-1011-hhzx").show();
                $(".cl-1011-hhzx").attr("data-flag", "hhzx_zux");
                $(".base-fd").hide();
                $(".change-1").show();
                $(".change-3").show();
                allClear();
            } else if (flag_name == "zxhz") {
                $(".Pick").hide();
                $(".cl-1012-zxhz").show();
                $(".cl-1012-zxhz").attr("data-flag", "zxhz_zux");
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
                $(".base-fd").hide();
                $(".change-1").show();
                $(".change-3").show();
                allClear();
            } else if (flag_name == "zxbd") {
                $(".Pick").hide();
                $(".cl-1013-zxbd").show();
                $(".cl-1013-zxbd").attr("data-flag", "zxbd_zux");
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
                $(".base-fd").hide();
                $(".change-1").show();
                $(".change-3").show();
                allClear();
            }
        });

        $(".btn_h3_qt span").click(function () {
            $(".base-fd").hide();
            $(".change-base-ws").show();
            if ($(".group ul li p span").hasClass('acti')) {
                $(".group ul li p span").removeClass('acti');
            }
            $(".reboxt .right .suiji5").html("随机五注");
            $(".reboxt .right .suiji1").html("随机一注");
            $(".Pick").removeAttr("data-flag");
            $(this).addClass("acti");
            var flag_name = $(this).data('name');
            if (flag_name == 'hzws') {
                $(".Pick").hide();
                $('.cl-1014-hzws').show();
                $(".cl-1014-hzws").attr("data-flag", "hzws_qt");
                allClear();
            } else if (flag_name == "tsh") {
                $(".Pick").hide();
                $('.cl-1015-tsh').show();
                $('.cl-1015-tsh').attr("data-flag", "tsh_qt");
                $(".base-fd").hide();
                $(".change-1").show();
                $(".change-base-tsh").show();
                allClear();
            }
        });

        // 选中特殊号
        $(".cl-1015-tsh ul .tsh_li span").click(function () {
            $(this).toggleClass('acti_tsh');
            if (typeof $(".cl-1015-tsh").attr('data-flag') != 'undefined') {
                var flag_str = 'tsh_qt';
                stateTouZhu(flag_str);
            }
        });

        $(".Pick ul li span i").click(function () {
            var flag_name = $(this).parent().parent().parent().parent().attr("data-flag");
            if(typeof flag_name == "undefined"){
                flag_name = $(this).parent().parent().parent().parent().parent().attr("data-flag");
            }
            if (flag_name == "zxbd_zux") {
                if ($(this).parent().hasClass('acti')) {
                    $(this).parent().removeClass('acti');
                } else {
                    $(".cl-1013-zxbd ul li span.acti").removeClass('acti');
                    $(this).parent().addClass('acti');
                }
            } else {
                $(this).parent().toggleClass('acti');
            }

            if (typeof stateTouZhu == "function") {
                if (flag_name == "hszh_zx") {
                    stateTouZhu(flag_name);
                } else if (flag_name == "zxhz_zx") {
                    stateTouZhu(flag_name);
                } else if (flag_name == "zxkd_zx") {
                    stateTouZhu(flag_name);
                } else if (flag_name == "zsfs_zux") {
                    stateTouZhu(flag_name);
                } else if (flag_name == "zlfs_zux") {
                    stateTouZhu(flag_name);
                } else if (flag_name == "zxhz_zux") {
                    stateTouZhu(flag_name);
                } else if (flag_name == "zxbd_zux") {
                    stateTouZhu(flag_name);
                } else if (flag_name == "hzws_qt") {
                    stateTouZhu(flag_name);
                } else {
                    stateTouZhu('fu');
                }
            }
        });

        //输入倍数十重新计算
        $("#inputBeishu").keyup(function () {
            var valStr = $("#inputBeishu").val();
            var nowValue = 0;
            if (typeof valStr == "undefined" || valStr == "") {
                nowValue = 1;
            } else {
                nowValue = $("#inputBeishu").val();
            }

            $("#inputBeishu").data("beishu", nowValue);

            if (typeof $('.recl-1003').attr('data-flag') != 'undefined') {
                stateTouZhu('dan');
            } else if (typeof $('.cl-1004-hszh').attr('data-flag') != 'undefined') {
                stateTouZhu('hszh_zx');
            } else if (typeof $('.cl-1005-zxhz').attr('data-flag') != 'undefined') {
                stateTouZhu('zxhz_zx');
            } else if (typeof $('.cl-1006-zxkd').attr('data-flag') != 'undefined') {
                stateTouZhu('zxkd_zx');
            } else if (typeof $('.cl-1007-zsfs').attr('data-flag') != 'undefined') {
                stateTouZhu('zsfs_zux');
            } else if (typeof $('.cl-1008-zsds').attr('data-flag') != 'undefined') {
                stateTouZhu('zsds_zux');
            } else if (typeof $('.cl-1009-zlfs').attr('data-flag') != 'undefined') {
                stateTouZhu('zlfs_zux');
            } else if (typeof $('.cl-1010-zlds').attr('data-flag') != 'undefined') {
                stateTouZhu('zlds_zux');
            } else if (typeof $('.cl-1011-hhzx').attr('data-flag') != 'undefined') {
                stateTouZhu('hhzx_zux');
            } else if (typeof $('.cl-1012-zxhz').attr('data-flag') != 'undefined') {
                stateTouZhu('zxhz_zux');
            } else if (typeof $('.cl-1013-zxbd').attr('data-flag') != 'undefined') {
                stateTouZhu('zxbd_zux');
            } else if (typeof $('.cl-1014-hzws').attr('data-flag') != 'undefined') {
                stateTouZhu('hzws_qt');
            } else if (typeof $('.cl-1015-tsh').attr('data-flag') != 'undefined') {
                stateTouZhu('tsh_qt');
            } else {
                stateTouZhu('fu');
            }
            $(".i_beishu").html(nowValue);
        });

        $("#inputBeishu").blur(function(){
            var valStr = $("#inputBeishu").val();
            if(valStr == "" || valStr == null || typeof valStr == "undefined"){
                $("#inputBeishu").val("1");
            }
        });

    });
</script>
<script>
    function getSuiji(total) {
        var betFormList = [];
        betFormList = suiji(total);
        $.each(betFormList, function (index, value) {
            addYuxuan(value);
        });
        calcAll();
    }

    function clearSelected() {
        var flag = $(".cl-1015-tsh").attr("data-flag");
        if (typeof flag != "undefined") {
            $(".cl-1015-tsh ul li span.acti_tsh").removeClass("acti_tsh");
        }
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $(".re-5x-i i.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        if (typeof clearStateTouZhu == 'function') {
            clearStateTouZhu();
        }
    }

    function allClear(){
        clearTextarea();
        clearSelected();
    }

    function clearTextarea() {
        $(".content_jiang textarea").val('');
    }

    function daoRu() {
        alert("开发中，敬请期待...");
    }

    function tjzd() {
        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1003').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getDsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1004-hszh').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getHsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1005-zxhz').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getHeZhiZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1006-zxkd').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1007-zsfs').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZuSanZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1008-zsds').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZsdsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1009-zlfs').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZuLiuZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1010-zlds').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZldsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1011-hhzx').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getHhzxZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1012-zxhz').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZxhzZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1013-zxbd').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZxbdZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1014-hzws').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getHzwsZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        } else if (typeof $('.cl-1015-tsh').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getTshZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            addYuxuan(betDsForm);
            calcAll();
        }
    }

    //获取手动输入的有效注数
    function getDsZhushu() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }
    //获取手动输入的有效注数-组选混合
    function getHhzxZhushu() {
        var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
        var newArr = [], tempArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (oneStr != twoStr && twoStr != threeStr && threeStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && threeStr != oneStr || threeStr == oneStr && oneStr != twoStr) {
                tempArr.push(newArr[n]);
            }
        }
        return tempArr.length;
    }

    //获取手动输入的有效注数-组选和值
    function getZxhzZhushu() {
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = fuShiArr.length;
        if (zlLength <= 0) {
            return 0;
        }
        newArr = getZxhzNewArrs(fuShiArr);
        return newArr.length;
    }

    //获取手动输入的有效注数-组六单式
    function getZldsZhushu() {
        var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    //获取手动输入的有效注数-组三单式
    function getZsdsZhushu() {
        var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        return newArr.length;
    }

    //前三直选-直选单式
    function getDsZhudan(obj) {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else {
                errorArr.push(arr_new[i]);
            }
        }

        if (newArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        zhushu = newArr.length;
        obj.showPlayName = "前三直选-单式";
        obj.showContent = "号码: (" + newArr + ")";
        obj.betContent = newArr.join("");
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


    //前三组选-组三单式
    function getZsdsZhudan(obj) {
        var zhushu = 0;
        var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }

        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        zhushu = tempArr.length;
        obj.showPlayName = "前三组选-组三单式";
        obj.showContent = "号码: (" + tempArr.join(', ') + ")";
        obj.betContent = tempArr.join("");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-hszx").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前三组选-组三复式
    function getZuSanZhudan(obj) {
        var flag_name = '', contentDan = '', playNameDan = '';//标签名称  注单内容  注单名称
        var zuSanArr = [];

        $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
            zuSanArr.push($.trim($(this).find("i").html()));
        });
        playNameDan = "前三组选-组三复式";
        contentDan = "组三: (" + zuSanArr.join(", ") + ")";
        obj.betContent = zuSanArr.join(",");
        var zhushu = getZuSanZhushu();
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = playNameDan;
        obj.showContent = contentDan;
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-hszx").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前三组选-组六复式
    function getZuLiuZhudan(obj) {
        var flag_name = '', contentDan = '', playNameDan = '';//标签名称  注单内容  注单名称
        var zuLiuArr = [];

        $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
            zuLiuArr.push($.trim($(this).find("i").html()));
        });
        playNameDan = "后六组选-组六复式";
        contentDan = "组六: (" + zuLiuArr.join(", ") + ")";

        var zhushu = getZuLiuZhushu();
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = playNameDan;
        obj.showContent = contentDan;
        obj.betContent = zuLiuArr.join(",");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-zl").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }


    //前三组选-混合组选
    function getHhzxZhudan(obj) {
        var zhushu = 0;
        var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            } else{
                errorArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }

        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        zhushu = tempArr.length;
        obj.showPlayName = "前三组选-混合组选";
        obj.showContent = "号码: (" + tempArr.join(', ') + ")";
        obj.betContent = tempArr.join(',');
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-zl").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前三组选-组六单式
    function getZldsZhudan(obj) {
        var zhushu = 0;
        var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }
        for (var n = 0; n < newArr.length; n++) {
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
                tempArr.push(newArr[n]);
            } else {
                errorArr.push(newArr[n]);
            }
        }

        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return false;
        }

        if (errorArr.length > 0) {
            for (var e = 0; e < errorArr.length; e++) {
                errorStr += errorArr[e] + ",";
            }
            alert("被过滤掉的错误号码" + errorStr);
        }

        zhushu = tempArr.length;
        obj.showPlayName = "前三组选-组六单式";
        obj.showContent = "号码: (" + tempArr.join(', ') + ")";
        obj.betContent = tempArr.join(',');
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-zl").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前三直选-直选复式
    function getZhudan(obj) {
        var flag_name = '', contentDan = '', playNameDan = '';//标签名称  注单内容  注单名称
        flag_name = $('.cl-1006-zxkd').attr('data-flag'); //获取当前是否为跨度界面
        if (flag_name == "zxkd_zx") {
            var kaDuArr = [];
            $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
                kaDuArr.push($.trim($(this).find("i").html()));
            });
            playNameDan = "前三直选-跨度";
            obj.showContent = "跨度: (" + kaDuArr.join(",") + ")";
            obj.betContent = kaDuArr.join(",");
        } else {
            var wanArr = [], qianArr = [], shiArr = [];
            $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
                wanArr.push($.trim($(this).find("i").html()));
            });
            $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
                qianArr.push($.trim($(this).find("i").html()));
            });
            $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
                shiArr.push($.trim($(this).find("i").html()));
            });
            playNameDan = "前三直选-复式";
            // 模板显示内容
            obj.showContent = "万位：({0})，千位：({1})，十位：({2})".format(
                wanArr.join(","),
                qianArr.join(","),
                shiArr.join(",")
            );
            // 转换投注格式
            // 投注内容
            obj.betContent = gfwf_3xfs(
                wanArr,
                qianArr,
                shiArr
            );
        }
        var zhushu = getZhushu(flag_name);
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        // 玩法名称
        obj.showPlayName = playNameDan;
        // 每注金额
        obj.betPerMoney = $("#inputMoney").data("money");
        // 注数
        obj.betZhushu = zhushu;
        // 倍数（1-元，obj.betMode2-角，3-分，4-厘）
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        // 每单总金额
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        // 彩种
        obj.betPlayGroupId = playGroupId;
        // 返点比例
        obj.betFandian = $(".fandian-bfb").data("value");
        // 赔率
        obj.betPlayPl = $(".jiangjin-change").data("value");
        // 赔率ID
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前三直选--直选和值
    function getHeZhiZhudan(obj) {
        var heZhiArr = [];
        $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getHezhiZhushu();

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "前三直选-和值";
        obj.showContent = "和值: (" + heZhiArr.join(", ") + ")";
        obj.betContent = heZhiArr.join(",");
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


    //前三组选--组选和值
    function getZxhzZhudan(obj) {
        var heZhiArr = [];
        $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZxhzZhushu();

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "前三组选-组选和值";
        obj.showContent = "和值: (" + heZhiArr.join(", ") + ")";
        obj.betContent = heZhiArr.join(",");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-hszx").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //前三组选--特殊号
    function getTshZhudan(obj) {
        var thArr = [];
        $.each($(".cl-1015-tsh ul li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
            thArr.push($.trim($(this).html()));
        });

        if (thArr.length <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "前三其它-特殊号";
        obj.showContent = "特殊号: (" + thArr.join(", ") + ")";
        obj.betContent = thArr.join(",");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = thArr.length ;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-tsh").data("value");
        obj.betPlayGroupId = playGroupId;
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }


    //前三组选--和值尾数
    function getHzwsZhudan(obj) {
        var hzArr = [];
        $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if (hzArr.length <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "前三组选-和值尾数";
        obj.showContent = "和值: (" + hzArr.join(", ") + ")";
        obj.betContent = hzArr.join(",");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = hzArr.length;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-ws").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }


    //前三组选--组选包胆
    function getZxbdZhudan(obj) {
        var bdArr = [];
        $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
            bdArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZxbdZhushu();
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "前三组选-组选包胆";
        obj.showContent = "包胆: (" + bdArr.join(", ") + ")";
        obj.betContent = bdArr.join(",");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-hszx").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }


    //前三直选--前三组合
    function getHsZhudan(obj) {
        var wanArr = [], qianArr = [], shiArr = [];
        $.each($(".cl-1004-hszh ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1004-hszh ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1004-hszh ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        var zhushu = getHsZhushu();

        if (typeof zhushu == "undefined" || zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.showPlayName = "前三直选-组合";
        // 模板显示内容
        obj.showContent = "万位：({0})，千位：({1})，十位：({2})".format(
            wanArr.join(","),
            qianArr.join(","),
            shiArr.join(",")
        );
        obj.betContent = gfwf_3xfs(
            wanArr,
            qianArr,
            shiArr
        );
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


    function getZhushu(flag_name) {
        var newArr = [];
        if (flag_name == "zxkd_zx") {
            var kaDuArr = [];
            $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
                kaDuArr.push($.trim($(this).find("i").html()));
                if (kaDuArr.length <= 0) {
                    return 0;
                }
                newArr = getKaduNewArrs(kaDuArr);
            });
        } else if (flag_name == "zxfs_zux") {
            var zuSanArr = [];
            $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
                zuSanArr.push($.trim($(this).find("i").html()));
            });
            newArr = getZuXuanNewArrs(zuSanArr);
        } else {
            var qianArr = [], baiArr = [], shiArr = [], geArr = [];
            $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
                baiArr.push($.trim($(this).find("i").html()));
            });
            $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
                shiArr.push($.trim($(this).find("i").html()));
            });
            $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
                geArr.push($.trim($(this).find("i").html()));
            });

            var baiLength = baiArr.length;
            var shiLength = shiArr.length;
            var geLength = geArr.length;
            if (baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
                return 0;
            }
            newArr = getThreeNewArrs(baiArr, shiArr, geArr);
        }

        return newArr.length;
    }
    //前三直选-跨度
    function getKaDuZhushu() {
        var kaDuArr = [], newArr = [];
        $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
            kaDuArr.push($.trim($(this).find("i").html()));
        });

        var heZhiLength = kaDuArr.length;
        if (heZhiLength <= 0) {
            return 0;
        }
        newArr = getKaduNewArrs(kaDuArr);
        return newArr.length;
    }

    //前三组选-组三复式
    function getZuSanZhushu() {
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });

        var heZhiLength = fuShiArr.length;
        if (heZhiLength <= 1) {
            return 0;
        }
        newArr = getZuXuanNewArrs(fuShiArr);
        return newArr.length;
    }

    //前三组选-组六复式
    function getZuLiuZhushu() {
        var fuShiArr = [], newArr = [];
        $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
            fuShiArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = fuShiArr.length;
        if (zlLength < 3) {
            return 0;
        }
        newArr = getZuLiuNewArrs(fuShiArr);
        return newArr.length;
    }

    // 前三组选-组选包胆
    function getZxbdZhushu() {
        var baoDanArr = [], newArr = [];
        $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
            baoDanArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = baoDanArr.length;
        if (zlLength < 0) {
            return 0;
        }
        newArr = getZxbdNewArrs(baoDanArr);
        return newArr.length;
    }

    // 前三组选-特殊号
    function getTshZhushu() {
        var tsArr = [], newArr = [];
        $.each($(".cl-1015-tsh ul li.tsh_li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
            tsArr.push($.trim($(this).html()));
        });
        var zlLength = tsArr.length;
        if (zlLength < 0) {
            return 0;
        }
        return zlLength;
    }

    // 前三组选-和值尾数
    function getZxwsZhushu() {
        var wsArr = [], newArr = [];
        $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
            wsArr.push($.trim($(this).find("i").html()));
        });
        var zlLength = wsArr.length;
        if (zlLength < 0) {
            return 0;
        }
        return zlLength;
    }

    // 前三直选-和值
    function getHezhiZhushu() {
        var heZhiArr = [], newArr = [];
        $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            heZhiArr.push($.trim($(this).find("i").html()));
        });

        var heZhiLength = heZhiArr.length;
        if (heZhiLength <= 0) {
            return 0;
        }

        newArr = getHezNewArrs(heZhiArr);
        return newArr.length;
    }

    //前三直选-前三组合
    function getHsZhushu() {
        var qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var baiLength = baiArr.length;
        var shiLength = shiArr.length;
        var geLength = geArr.length;

        if (baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
            return;
        }

        var newArr = getHszhNewArrs(baiArr, shiArr, geArr);
        return newArr.length;
    }

    function suiji(total) {
        var result = [];
        var flag_zhi = "dan";//默认为单式
        var playNameStr = '';
        var contentStr = '';
        var zhushu = 1; //默认为1注
        if (typeof $('.recl-1003').attr('data-flag') != 'undefined') {
            playNameStr = "前三直选-单式";
            flag_zhi = "dan";
        } else if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            playNameStr = "前三直选-复式";
            flag_zhi = "fu";
        } else if (typeof $('.cl-1004-hszh').attr('data-flag') != 'undefined') {
            playNameStr = "前三直选-组合";
            flag_zhi = "qszh-zx";
        } else if (typeof $('.cl-1005-zxhz').attr('data-flag') != 'undefined') {
            playNameStr = "前三直选-和值";
            flag_zhi = "qshz-zx";
        } else if (typeof $('.cl-1006-zxkd').attr('data-flag') != 'undefined') {
            playNameStr = "前三直选-跨度";
            flag_zhi = "zxkd-zx";
        } else if (typeof $('.cl-1007-zsfs').attr('data-flag') != 'undefined') {
            playNameStr = "前三组选-组三复式";
            flag_zhi = "zxfs-zux";
        } else if (typeof $('.cl-1008-zsds').attr('data-flag') != 'undefined') {
            playNameStr = "前三组选-组三单式";
            flag_zhi = "zsds-zux";
        } else if (typeof $('.cl-1009-zlfs').attr('data-flag') != 'undefined') {
            playNameStr = "前三组选-组六复式";
            flag_zhi = "zlfs-zux";
        } else if (typeof $('.cl-1010-zlds').attr('data-flag') != 'undefined') {
            playNameStr = "前三组选-组六单式";
            flag_zhi = "zlds-zux";
        } else if (typeof $('.cl-1011-hhzx').attr('data-flag') != 'undefined') {
            playNameStr = "前三组选-混合组选";
            flag_zhi = "hhzx-zux";
        } else if (typeof $('.cl-1012-zxhz').attr('data-flag') != 'undefined') {
            playNameStr = "前三组选-组选和值";
            flag_zhi = "zxhz-zux";
        } else if (typeof $('.cl-1013-zxbd').attr('data-flag') != 'undefined') {
            playNameStr = "前三组选-组选包胆";
            flag_zhi = "zxbd-zux";
        } else if (typeof $('.cl-1014-hzws').attr('data-flag') != 'undefined') {
            playNameStr = "前三其它-和值尾数";
            flag_zhi = "hzws-qt";
        } else if (typeof $('.cl-1015-tsh').attr('data-flag') != 'undefined') {
            playNameStr = "前三其它-特殊号";
            flag_zhi = "tsh-qt";
        }


        for (var numIndex = 0; numIndex < total; ++numIndex) {
            var obj = {};

            if (flag_zhi == "qshz-zx") {  //直选和值
                var arrZx = [];
                while (arrZx.length != 1) {
                    var m = parseInt(Math.random() * 28);
                    arrZx.push(m);
                }
                zhushu = getHezNewArrs(arrZx).length;
                contentStr = "和值: (" + arrZx[0] + ")";
                obj.betContent = arrZx[0];
            } else if (flag_zhi == "zxhz-zux") {  //组选和值
                var arrZxhz = [];
                while (arrZxhz.length != 1) {
                    var zhiZx = parseInt(Math.random() * 26) + 1;
                    arrZxhz.push(zhiZx);
                }
                zhushu = getZxhzNewArrs(arrZxhz).length;
                contentStr = "和值: (" + arrZxhz[0] + ")";
                obj.betContent = arrZxhz[0];
            } else if (flag_zhi == "hzws-qt") {  //和值尾数
                var arrHzws = [];
                while (arrHzws.length != 1) {
                    var zhiWs = parseInt(Math.random() * 10);
                    arrHzws.push(zhiWs);
                }
                zhushu = arrHzws.length;
                contentStr = "和值: (" + arrHzws[0] + ")";
                obj.betContent = arrHzws[0];
            } else if (flag_zhi == "tsh-qt") {  //特殊号
                var arrTsh = [], newArr = [];
                arrTsh[0] = "对子";
                arrTsh[1] = "顺子";
                arrTsh[2] = "豹子";
                while (newArr.length != 1) {
                    var zhiTsh = parseInt(Math.random() * 3);
                    newArr.push(arrTsh[parseInt(zhiTsh)]);
                }
                zhushu = 1;
                contentStr = "特殊号: (" + newArr[0] + ")";
                obj.betContent = newArr[0];
            } else if (flag_zhi == "zxbd-zux") {  //组选包胆
                var arrZxbd = [];
                while (arrZxbd.length != 1) {
                    var zhi = parseInt(Math.random() * 10);
                    arrZxbd.push(zhi);
                }
                zhushu = getZxbdNewArrs(arrZxbd).length;
                contentStr = "包胆: (" + arrZxbd[0] + ")";
                obj.betContent = arrZxbd[0];
            } else if (flag_zhi == "zxfs-zux") {  //组三复式
                var arrTemp = [];
                while (arrTemp.length != 2) {
                    var x = parseInt(Math.random() * 10);
                    var y = parseInt(Math.random() * 10);
                    if (x != y) {
                        arrTemp.push(x);
                        arrTemp.push(y);
                    }
                }
                contentStr = "组三: (" + arrTemp.join(', ') + ")";
                zhushu = (getZuXuanNewArrs(arrTemp)).length;
                obj.betContent = arrTemp.join(',');
            } else if (flag_zhi == "hhzx-zux") {
                var arrTemp_hhzx = [];
                while (arrTemp_hhzx.length != 3) {
                    var xHhzx = parseInt(Math.random() * 10);
                    var yHhzx = parseInt(Math.random() * 10);
                    var zHhzx = parseInt(Math.random() * 10);
                    if (xHhzx == yHhzx && yHhzx != zHhzx || xHhzx == zHhzx && zHhzx != yHhzx || yHhzx == zHhzx && zHhzx != xHhzx || xHhzx != yHhzx && yHhzx != zHhzx && zHhzx != xHhzx) {
                        arrTemp_hhzx.push(xHhzx);
                        arrTemp_hhzx.push(yHhzx);
                        arrTemp_hhzx.push(zHhzx);
                    }
                }
                contentStr = "号码: (" + arrTemp_hhzx.join("") + ")";
                obj.betContent = arrTemp_hhzx.join("");
            } else if (flag_zhi == "zsds-zux") {
                var arrTemp_zxds = [];
                while (arrTemp_zxds.length != 3) {
                    var xZxds = parseInt(Math.random() * 10);
                    var yZxds = parseInt(Math.random() * 10);
                    var zZxds = parseInt(Math.random() * 10);
                    if (xZxds == yZxds && yZxds != zZxds || xZxds == zZxds && zZxds != yZxds || yZxds == zZxds && zZxds != xZxds) {
                        arrTemp_zxds.push(xZxds);
                        arrTemp_zxds.push(yZxds);
                        arrTemp_zxds.push(zZxds);
                    }
                }
                contentStr = "号码: (" + arrTemp_zxds.join("") + ")";
                obj.betContent = arrTemp_zxds.join("");
            } else if (flag_zhi == "zlfs-zux" || flag_zhi == "zlds-zux") {
                var arrTemp_zlfs = [];
                while (arrTemp_zlfs.length != 3) {
                    var xZlfs = parseInt(Math.random() * 10);
                    var yZlfs = parseInt(Math.random() * 10);
                    var zZlfs = parseInt(Math.random() * 10);
                    if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
                        arrTemp_zlfs.push(xZlfs);
                        arrTemp_zlfs.push(yZlfs);
                        arrTemp_zlfs.push(zZlfs);
                    }
                }
                contentStr = "号码: (" + arrTemp_zlfs.join("") + ")";
                zhushu = (getZuLiuNewArrs(arrTemp_zlfs)).length;
                if(flag_zhi == "zlds-zux"){
                    obj.betContent = arrTemp_zlfs.join(""); //组六复式投注格式 123,456
                }else{
                    obj.betContent = arrTemp_zlfs.join(","); //组六复式投注格式 1,2,3
                }
            } else {
                var tempArr = [];
                for (var i = 0; i <= 9; ++i) {
                    tempArr[i] = i;
                }

                var arr = [];
                while (arr.length < 3) {
                    var num = parseInt(Math.random() * 10);
                    arr.push(tempArr[num]);
                }
                if (flag_zhi == "dan") {
                    contentStr = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
                    obj.betContent = arr[0] + "" + arr[1] + "" + arr[2];
                } else if (flag_zhi == "zxkd-zx") {
                    var nowArr = [];
                    contentStr = "跨度: (" + arr[0] + ")";
                    obj.betContent = arr[0];
                    nowArr[0] = arr[0];
                    var temp = getKaduNewArrs(nowArr);
                    zhushu = temp.length;
                } else if (flag_zhi == "fu" || flag_zhi == "qszh-zx") {
                    contentStr = "百位: (" + arr[0] + ") 十位: (" + arr[1] + ") 个位: (" + arr[2] + ")";
                    obj.betContent = arr[0] + "|" + arr[1] + "|" +arr[2];
                    if(flag_zhi == "qszh-zx"){
                        zhushu = 3;
                    }
                }
            }

            obj.showPlayName = playNameStr;
            obj.showContent = contentStr;
            obj.betPerMoney = $("#inputMoney").data("money");
            obj.betZhushu = zhushu;
            obj.betBeishu = $("#inputBeishu").data("beishu");
            obj.betMode = 1;
            obj.betTotalMoney = obj.betZhushu  * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
            if(flag_zhi == "zxfs-zux" || flag_zhi == "zsds-zux" || flag_zhi == "hhzx-zux" || flag_zhi == "zxhz-zux" || flag_zhi == "zxbd-zux"){
                obj.betFandian = $(".fandian-bfb").data("value");
                obj.betPlayPl = $(".jiangjin-change-hszx").data("value");
            }else if(flag_zhi == "zlfs-zux" || flag_zhi == "zlds-zux"){
                obj.betFandian = $(".fandian-bfb").data("value");
                obj.betPlayPl = $(".jiangjin-change-zl").data("value");
            }else if(flag_zhi == "hzws-qt"){
                obj.betFandian = $(".fandian-bfb").data("value");
                obj.betPlayPl = $(".jiangjin-change-ws").data("value");
            }else if(flag_zhi == "tsh-qt"){
                obj.betFandian = $(".fandian-bfb").data("value");
                obj.betPlayPl = $(".jiangjin-change-tsh").data("value");
            }else{
                // 返点比例
                obj.betFandian = $(".fandian-bfb").data("value");
                // 赔率
                obj.betPlayPl = $(".jiangjin-change").data("value");
            }
            obj.betPlayGroupId = playGroupId;
            // 赔率ID
            obj.betPlayPlId = getPlayPlId();
            // 玩法ID
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

        $('.recl-1003 .content_jiang .content_tex').keyup(function () {
            stateTouZhu('dan');
        });
        $('.cl-1008-zsds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('zsds_zux');
        });
        $('.cl-1010-zlds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('zlds_zux');
        });
        $('.cl-1011-hhzx .content_jiang .content_tex').keyup(function () {
            stateTouZhu('hhzx_zux');
        });
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
                    //直选复式、直选单式、直选和值、直选跨度
                    if(value.playPlId == 14221){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_zxfs = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change").data("value", money_zxfs);
                        $(".jiangjin-change").html(money_zxfs);
                    }
                    //后三组合
                    if(value.playPlId == 14219){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_hszh  = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change-2").html(money_hszh);
                        $(".jiangjin-change-3").html(money_hszh / 10);
                        $(".jiangjin-change-4").html(money_hszh / 100);
                    }

                    //组选复式、组选单式
                    if(value.playPlId == 14214){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_hszx  = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change-hszx").data("value", money_hszx);
                        $(".jiangjin-change-hszx").html(money_hszx);
                    }
                    //组六复式、组六单式
                    if(value.playPlId == 14212){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_zulfs  = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change-zl").data("value", money_zulfs);
                        $(".jiangjin-change-zl").html(money_zulfs);
                    }

                    //和值尾数
                    if(value.playPlId == 14226){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_ws  = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change-ws").data("value", money_ws);
                        $(".jiangjin-change-ws").html(money_ws);
                    }

                    //特殊号的拉动杆值 -豹子
                    if(value.playPlId == 14225){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_bz  = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change-tsh").data("value", money_bz);
                        $(".jiangjin-change-tsh").html(money_bz);
                    }
                    //特殊号的拉动杆值 -顺子
                    if(value.playPlId == 14224){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_sz  = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change-tsh-sz").data("value", money_sz);
                        $(".jiangjin-change-tsh-sz").html(money_sz);
                    }
                    //特殊号的拉动杆值 -对子
                    if(value.playPlId == 14223){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_dz  = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change-tsh-dz").data("value", money_dz);
                        $(".jiangjin-change-tsh-dz").html(money_dz);
                    }

                });


                if (typeof stateTouZhu == "function") {
                    var flag_str = '';
                    if (typeof $('.recl-1003').attr('data-flag') != 'undefined') {
                        flag_str = 'dan';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
                        flag_str = 'fu';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1004-hszh').attr('data-flag') != 'undefined') {
                        flag_str = 'hszh_zx';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1005-zxhz').attr('data-flag') != 'undefined') {
                        flag_str = 'zxhz_zx';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1006-zxkd').attr('data-flag') != 'undefined') {
                        flag_str = 'zxkd_zx';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1007-zsfs').attr('data-flag') != 'undefined') {
                        flag_str = 'zsfs_zux';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1008-zsds').attr('data-flag') != 'undefined') {
                        flag_str = 'zsds_zux';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1009-zlfs').attr('data-flag') != 'undefined') {
                        flag_str = 'zlfs_zux';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1010-zlds').attr('data-flag') != 'undefined') {
                        flag_str = 'zlds_zux';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1011-hhzx').attr('data-flag') != 'undefined') {
                        flag_str = 'hhzx_zux';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1012-zxhz').attr('data-flag') != 'undefined') {
                        flag_str = 'zxhz_zux';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1013-zxbd').attr('data-flag') != 'undefined') {
                        flag_str = 'zxbd_zux';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1014-hzws').attr('data-flag') != 'undefined') {
                        flag_str = 'hzws_qt';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.cl-1015-tsh').attr('data-flag') != 'undefined') {
                        flag_str = 'tsh_qt';
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
