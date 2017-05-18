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
                <span class="acti" data-name="zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span data-name="zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span data-name="hszh"><a href="javascript:void(0)">前三组合</a></span>
                <span data-name="zxhz"><a href="javascript:void(0)">直选和值</a></span>
                <span data-name="zxkd"><a href="javascript:void(0)">直选跨度</a></span>
            </p>
        </li>
        <li>
            <b>前三组选</b>
            <p class="btn_h3_zux">
                <span data-name="zsfs"><a href="javascript:void(0)">组三复式</a></span>
                <span data-name="zsds"><a href="javascript:void(0)">组三单式</a></span>
                <span data-name="zlfs"><a href="javascript:void(0)">组六复式</a></span>
                <span data-name="zlds"><a href="javascript:void(0)">组六单式</a></span>
                <span data-name="hhzx"><a href="javascript:void(0)">混合组选</a></span>
                <span data-name="zxhz"><a href="javascript:void(0)">组选和值</a></span>
                <span data-name="zxbd"><a href="javascript:void(0)">组选包胆</a></span>
            </p>
        </li>
        <li>
            <b>前三其它</b>
            <p class="btn_h3_qt">
                <span data-name="hzws"><a href="javascript:void(0)">和值尾数</a></span>
                <span data-name="tsh"><a href="javascript:void(0)">特殊号</a></span>
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
                <li onclick="delRrepet()"><a href="javascript:void(0)">删除重复号</a></li>
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
                <li onclick="delRrepet()"><a href="javascript:void(0)">删除重复号</a></li>
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
                <li onclick="delRrepet()"><a href="javascript:void(0)">删除重复号</a></li>
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
                <li onclick="delRrepet()"><a href="javascript:void(0)">删除重复号</a></li>
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
            <b><i>特殊号</i></b>
            <span>豹子</span>
            <span>顺子</span>
            <span>对子</span>
        </li>
    </ul>
</div>


<div class="add_spot">
    <div class="left">
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
                <i class="change-base"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="change-base-hszx"><var class="jiangjin-change-hszx">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="change-base-zl"><var class="jiangjin-change-zl">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="change-base-ws"><var class="jiangjin-change-ws">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="change-base-tsh"><var class="jiangjin-change-tsh">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-tsh-sz">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-tsh-dz">0.0</var></i>
                <i class="change-1"><var class="fandian-bfb">0.0%</var></i>
                <i class="change-2"><var class="jiangjin-change-2">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-3">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-4">0.0</var></i>
                <i class="change-3"><var class="jiangjin-change-hszx">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-zl">0.0</var></i>

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
            您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">0</i> 倍，返还 <i class="i1 i_fanD">0.00</i> 元，共投注 <i
                class="i1 i_money">0.00</i>元。
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
        $(".change-1").hide();
        $(".change-2").hide();
        $(".change-3").hide();
        $(".change-base-hszx").hide();
        $(".change-base-zl").hide();
        $(".change-base-ws").hide();
        $(".change-base-tsh").hide();

        $(".btn_h3_zx span").click(function () {
            $(".change-1").hide();
            $(".change-2").hide();
            $(".change-3").hide();
            $(".change-base-hszx").hide();
            $(".change-base-zl").hide();
            $(".change-base-ws").hide();
            $(".change-base-tsh").hide();
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
            } else if (flag_name == 'zxfs') {
                $(".Pick").hide();
                $('.recl-1002').show();
                $('.recl-1002').attr("data-flag", "zxfs_zx");
            } else if (flag_name == "hszh") {
                $(".Pick").hide();
                $('.cl-1004-hszh').show();
                $('.cl-1004-hszh').attr("data-flag", "hszh_zx");
                $(".change-1").show();
                $(".change-2").show();
                $(".change-base").hide();
            } else if (flag_name == "zxhz") {
                $(".Pick").hide();
                $('.cl-1005-zxhz').show();
                $('.cl-1005-zxhz').attr("data-flag", "zxhz_zx");
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
            } else if (flag_name == "zxkd") {
                $(".Pick").hide();
                $('.cl-1006-zxkd').show();
                $('.cl-1006-zxkd').attr("data-flag", "zxkd_zx");
            }
        });

        $(".btn_h3_zux span").click(function () {
            $(".change-1").hide();
            $(".change-2").hide();
            $(".change-3").hide();
            $(".change-base").hide();
            $(".change-base-zl").hide();
            $(".change-base-ws").hide();
            $(".change-base-tsh").hide();
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
            } else if (flag_name == "zsds") {
                $(".Pick").hide();
                $(".cl-1008-zsds").show();
                $('.cl-1008-zsds').attr("data-flag", "zsds_zux");
            } else if (flag_name == "zlfs") {
                $(".Pick").hide();
                $(".cl-1009-zlfs").show();
                $(".cl-1009-zlfs").attr("data-flag", "zlfs_zux");
                $(".change-base-zl").show();
                $(".change-base-hszx").hide();
            } else if (flag_name == "zlds") {
                $(".Pick").hide();
                $(".cl-1010-zlds").show();
                $(".cl-1010-zlds").attr("data-flag", "zlds_zux");
                $(".change-base-zl").show();
                $(".change-base-hszx").hide();
            } else if (flag_name == "hhzx") {
                $(".Pick").hide();
                $(".cl-1011-hhzx").show();
                $(".cl-1011-hhzx").attr("data-flag", "hhzx_zux");
                $(".change-base-hszx").hide();
                $(".change-1").show();
                $(".change-3").show();
            } else if (flag_name == "zxhz") {
                $(".Pick").hide();
                $(".cl-1012-zxhz").show();
                $(".cl-1012-zxhz").attr("data-flag", "zxhz_zux");
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
                $(".change-base-hszx").hide();
                $(".change-1").show();
                $(".change-3").show();
            } else if (flag_name == "zxbd") {
                $(".Pick").hide();
                $(".cl-1013-zxbd").show();
                $(".cl-1013-zxbd").attr("data-flag", "zxbd_zux");
                $(".reboxt .right .suiji5").html("随机五组");
                $(".reboxt .right .suiji1").html("随机一组");
                $(".change-base-hszx").hide();
                $(".change-1").show();
                $(".change-3").show();
            }
        });

        $(".btn_h3_qt span").click(function () {
            $(".change-1").hide();
            $(".change-2").hide();
            $(".change-3").hide();
            $(".change-base").hide();
            $(".change-base-hszx").hide();
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
            } else if (flag_name == "tsh") {
                $(".Pick").hide();
                $('.cl-1015-tsh').show();
                $('.cl-1015-tsh').attr("data-flag", "tsh_qt");
                $(".change-base-ws").hide();
                $(".change-1").show();
                $(".change-base-tsh").show();
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
            if(flag_name == "zxbd_zux"){
                if( $(this).parent().hasClass('acti')){
                    $(this).parent().removeClass('acti');
                }else{
                    $(".cl-1013-zxbd ul li span.acti").removeClass('acti');
                    $(this).parent().addClass('acti');
                }
            }else{
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

        //官方玩法
        $(".Playmethod ul li span").click(function () {

            var name_flag = $(this).parent().data('name');
            if (name_flag == 'gfwf') {
                var flag_acti = $(this).parent().parent().next().find('b').hasClass('acti');
                if (flag_acti == true) {
                    $(this).parent().parent().next().find('b').removeClass('acti');
                }
                $(this).parent().parent().find('b').addClass('acti');
                $(".left_it0").show();
                $(".right_it1").show();
                $(".Detailedlist").show();
            } else {
                var flag_acti = $(this).parent().parent().prev().find("b").hasClass('acti');
                if (flag_acti == true) {
                    $(this).parent().parent().prev().find("b").removeClass('acti');
                }
                $(this).parent().parent().find('b').addClass('acti');
                $(".left_it0").hide();
                $(".right_it1").hide();
                $(".Detailedlist").hide();
            }

        });


    });
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
        var flag = $(".cl-1015-tsh").attr("data-flag");
        if(typeof flag != "undefined"){
            $(".cl-1015-tsh ul li span.acti_tsh").removeClass("acti_tsh");
        }
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $(".re-5x-i i.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        if (typeof clearStateTouZhu == 'function') {
            clearStateTouZhu();
        }
        calc();
    }

    function removeThisItem(obj) {
        $(obj).parent().parent().parent().remove();
        calcAll();
    }
    function clearZhudan() {
        $("#zhudanList li:not('.head')").remove();
        calcAll();
    }

    function calc() {
        var money = $("#inputMoney").data("money");
        var beishu = $("#inputBeishu").data("beishu");
        var zhushu = $("#zhushuInfo").data("zhushu");

        var totalMoney = mul(beishu * zhushu, money);

        $("#beishuInfo").html(beishu);
        $("#totalMoneyInfo").data("total_money", totalMoney).html(totalMoney);
    }

    function clearTextarea() {
        $(".content_jiang textarea").val('');
    }

    function daoRu() {
        alert("开发中，敬请期待...");
    }

    function delRrepet() {
        alert("开发中，敬请期待...");
    }

    function tjzd() {
        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1003').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getDsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();

        } else if (typeof $('.cl-1004-hszh').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getHsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();

        } else if (typeof $('.cl-1005-zxhz').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getHeZhiZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();

        } else if (typeof $('.cl-1006-zxkd').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1007-zsfs').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZuSanZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1008-zsds').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZsdsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1009-zlfs').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZuLiuZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1010-zlds').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZldsZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1011-hhzx').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getHhzxZhudan(betDsForm)) {
                return;
            }
            clearTextarea();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1012-zxhz').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZxhzZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1013-zxbd').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getZxbdZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1014-hzws').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getHzwsZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.cl-1015-tsh').attr('data-flag') != 'undefined') {
            var betDsForm = {};
            if (!getTshZhudan(betDsForm)) {
                return;
            }
            clearSelected();
            clearStateTouZhu();
            var html = template("template_touzhu", betDsForm);
            $("#zhudanList").append(html);
            calcAll();
        }
    }

    //获取手动输入的有效注数
    function getDsZhushu() {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
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
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
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
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
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
            if (oneStr != twoStr && twoStr != threeStr && threeStr != oneStr) {
                tempArr.push(newArr[n]);
            }
        }
        return tempArr.length;
    }

    //获取手动输入的有效注数-组三单式
    function getZsdsZhushu() {
        var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [];
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
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
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && threeStr != oneStr || threeStr == oneStr && oneStr != twoStr) {
                tempArr.push(newArr[n]);
            }
        }
        return tempArr.length;
    }

    //前三直选-直选单式
    function getDsZhudan(obj) {
        var textStr = $(".content_jiang .content_tex").val();
        var newArr = [];
        var errorArr = [];
        var errorStr = '';
        var zhushu = 0;
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
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
        obj.playName = "前三直选-单式";
        obj.content = "号码: (" + newArr + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }


    //前三组选-组三单式
    function getZsdsZhudan(obj) {
        var zhushu = 0;
        var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
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
        obj.playName = "前三组选-组三单式";
        obj.content = "号码: (" + tempArr.join(', ') + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-hszx").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
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

        var zhushu = getZuSanZhushu();
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = playNameDan;
        obj.content = contentDan;
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-hszx").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
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
        obj.playName = playNameDan;
        obj.content = contentDan;
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zl").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }


    //前三组选-混合组选
    function getHhzxZhudan(obj) {
        var zhushu = 0;
        var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
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
        obj.playName = "前三组选-混合组选";
        obj.content = "号码: (" + tempArr.join(', ') + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-hszx").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前三组选-组六单式
    function getZldsZhudan(obj) {
        var zhushu = 0;
        var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
        var newArr = [], tempArr = [], errorStr = '', errorArr = [];
        textStr = $.trim(textStr.replace(/[^1-9]/g, ','));
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
        obj.playName = "前三组选-组六单式";
        obj.content = "号码: (" + tempArr.join(', ') + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zl").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
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
            contentDan = "跨度: (" + kaDuArr.join(", ") + ")";
        } else {
            var baiArr = [], shiArr = [], geArr = [];
            $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
                baiArr.push($.trim($(this).find("i").html()));
            });
            $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
                shiArr.push($.trim($(this).find("i").html()));
            });
            $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
                geArr.push($.trim($(this).find("i").html()));
            });
            playNameDan = "前三直选-复式";
            contentDan = "万位: " + baiArr.join("") + " 千位: " + shiArr.join("") + " 十位: " + geArr.join("");
        }
        var zhushu = getZhushu(flag_name);
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = playNameDan;
        obj.content = contentDan;
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
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
        obj.playName = "前三直选-和值";
        obj.content = "和值: (" + heZhiArr.join(", ") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
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
        obj.playName = "前三组选-组选和值";
        obj.content = "和值: (" + heZhiArr.join(", ") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-hszx").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //前三组选--特殊号
    function getTshZhudan(obj) {
        var bdArr = [];
        $.each($(".cl-1015-tsh ul li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
            bdArr.push($.trim($(this).html()));
        });

        if (bdArr.length <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.playName = "前三其它-特殊号";
        obj.content = "特殊号: (" + bdArr.join(", ") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * bdArr.length;
        obj.zhushu = bdArr.length;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        if(bdArr.length == 1) {
           var flag_name = $(".cl-1015-tsh ul li[data-name = '特殊号'] span.acti_tsh").html();
           if(flag_name == "豹子"){
               obj.jiangJfanD = $(".jiangjin-change-tsh").html() + "/" + $(".fandian-bfb").html();
           }else if(flag_name == "顺子"){
               obj.jiangJfanD = $(".jiangjin-change-tsh-sz").html() + "/" + $(".fandian-bfb").html();
           }else if(flag_name == "对子"){
               obj.jiangJfanD = $(".jiangjin-change-tsh-dz").html() + "/" + $(".fandian-bfb").html();
           }
        }else if(bdArr.length > 1){
            obj.jiangJfanD = $(".jiangjin-change-tsh").html() + "/" + $(".fandian-bfb").html();
        }
        obj.playGroupId = playGroupId;
        return true;
    }


    //前三组选--和值尾数
    function getHzwsZhudan(obj) {
        var bdArr = [];
        $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
            bdArr.push($.trim($(this).find("i").html()));
        });

        if (bdArr.length <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "前三组选-和值尾数";
        obj.content = "和值: (" + bdArr.join(", ") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * bdArr.length;
        obj.zhushu = bdArr.length;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-ws").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
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
        obj.playName = "前三组选-组选包胆";
        obj.content = "包胆: (" + bdArr.join(", ") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-hszx").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }


    //前三直选--前三组合
    function getHsZhudan(obj) {
        var baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1004-hszh ul li[data-name = '万'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1004-hszh ul li[data-name = '千'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1004-hszh ul li[data-name = '十'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });
        var zhushu = getHsZhushu();

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "前三直选-组合";
        obj.content = "万位: " + baiArr.join("") + " 千位: " + shiArr.join("") + " 十位: " + geArr.join("");
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
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


    function calcAll() {
        var totalZhushu = 0;
        var totalBeishu = 0;
        var totalMoney = 0;

        $("#zhudanList li:not('.head')").each(function () {
            totalZhushu = add(totalZhushu, $(this).data("zhushu"));
            totalBeishu = add(totalBeishu, $(this).data("beishu"));
            totalMoney = add(totalMoney, $(this).data("total_money"));
        });

        var str = '总投 <span>' + totalZhushu + '</span> 注，<span>' + totalBeishu + '</span> 倍，共 <span>' + totalMoney + '</span> 元。';
        $("#zongtouInfo").html(str);
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
            flag_zhi = "hszh-zx";
        } else if (typeof $('.cl-1005-zxhz').attr('data-flag') != 'undefined') {
            playNameStr = "前三直选-和值";
            flag_zhi = "hshz-zx";
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
            if (flag_zhi == "hshz-zx") {  //直选和值
                var arrZx = [];
                while (arrZx.length != 1) {
                    var m = parseInt(Math.random() * 27) + 1;
                    arrZx.push(m);
                }
                zhushu = getHezNewArrs(arrZx).length;
                contentStr = "和值: (" + arrZx[0] + ")";
            } else if (flag_zhi == "zxhz-zux") {  //组选和值
                var arrZxhz = [];
                while (arrZxhz.length != 1) {
                    var zhiZx = parseInt(Math.random() * 26) + 1;
                    arrZxhz.push(zhiZx);
                }
                zhushu = getZxhzNewArrs(arrZxhz).length;
                contentStr = "和值: (" + arrZxhz[0] + ")";
            } else if (flag_zhi == "hzws-qt") {  //和值尾数
                var arrHzws = [];
                while (arrHzws.length != 1) {
                    var zhiWs = parseInt(Math.random() * 10);
                    arrHzws.push(zhiWs);
                }
                zhushu = arrHzws.length;
                contentStr = "和值: (" + arrHzws[0] + ")";
            } else if (flag_zhi == "tsh-qt") {  //特殊号
                var arrTsh = [];
                while (arrTsh.length != 1) {
                    var zhiTsh = parseInt(Math.random() * 10);
                    arrTsh.push(zhiTsh);
                }
                zhushu = arrTsh.length;
                contentStr = "特殊号: (" + arrTsh[0] + ")";
            } else if (flag_zhi == "zxbd-zux") {  //组选包胆
                var arrZxbd = [];
                while (arrZxbd.length != 1) {
                    var zhi = parseInt(Math.random() * 10);
                    arrZxbd.push(zhi);
                }
                zhushu = getZxbdNewArrs(arrZxbd).length;
                contentStr = "包胆: (" + arrZxbd[0] + ")";
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
            } else {
                var redArr = [];
                for (var i = 0; i <= 9; ++i) {
                    redArr[i] = 0;
                }

                var arr = [];
                while (arr.length != 6) {
                    var num = parseInt(Math.random() * 10);
                    if (redArr[num] != 1) {
                        redArr[num] = 1;
                        arr.push(num);
                    }
                }
                if (flag_zhi == "dan") {
                    contentStr = "号码: (" + arr[2] + "" + arr[3] + "" + arr[4] + ")";
                } else if (flag_zhi == "zxkd-zx") {
                    contentStr = "跨度: (" + arr[4] + ")";
                } else if (flag_zhi == "fu" || flag_zhi == "hszh-zx") {
                    contentStr = "万位: " + arr[2] + " 千位: " + arr[3] + " 十位: " + arr[4];
                }
            }

            var obj = {};
            obj.playName = playNameStr;
            obj.content = contentStr;
            obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money"));
            obj.zhushu = zhushu;
            obj.beishu = $("#inputBeishu").data("beishu");
            obj.money = $("#inputMoney").data("money");
            if(flag_zhi == "zxfs-zux" || flag_zhi == "zsds-zux" || flag_zhi == "hhzx-zux" || flag_zhi == "zxhz-zux" || flag_zhi == "zxbd-zux"){
                obj.jiangJfanD = $(".jiangjin-change-hszx").html() + "/" + $(".fandian-bfb").html();
            }else if(flag_zhi == "zlfs-zux" || flag_zhi == "zlds-zux"){
                obj.jiangJfanD = $(".jiangjin-change-zl").html() + "/" + $(".fandian-bfb").html();
            }else if(flag_zhi == "hzws-qt"){
                obj.jiangJfanD = $(".jiangjin-change-ws").html() + "/" + $(".fandian-bfb").html();
            }else if(flag_zhi == "tsh-qt"){
                obj.jiangJfanD = $(".jiangjin-change-tsh").html() + "/" + $(".fandian-bfb").html();
            }else{
                obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
            }
            obj.playGroupId = playGroupId;
            result.push(obj);
        }
        return result;
    }
</script>
<script>
    $(function () {
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
            to: 13,
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
                    $(".fandian-bfb").html(money_jangjin + "%");
                    money_jangjin = 980 - (money_jangjin * 10);
                    $(".jiangjin-change").html(money_jangjin);
                    //特殊号的拉动杆值
                    var money_tsh = parseFloat(money_jangjin / 10).toFixed(2);
                    $(".jiangjin-change-tsh").html(money_tsh);
                    money_tsh = parseFloat(money_tsh / 6).toFixed(2);
                    $(".jiangjin-change-tsh-sz").html(money_tsh);
                    money_tsh = parseFloat(money_tsh / 4.5).toFixed(2);
                    $(".jiangjin-change-tsh-dz").html(money_tsh);
                    //特殊号尾数和值的拉动杆值
                    var money_ws = parseFloat(money_jangjin / 100).toFixed(2);
                    $(".jiangjin-change-ws").html(money_ws);
                    //组三拉动干值
                    var money_hszx = parseFloat(money_jangjin / 3).toFixed(2);
                    $(".jiangjin-change-hszx").html(money_hszx);
                    //组六拉动杆值
                    var money_zl = parseFloat(money_jangjin / 6).toFixed(2);
                    $(".jiangjin-change-zl").html(money_zl);
                    $(".jiangjin-change-2").html(money_jangjin);
                    $(".jiangjin-change-3").html(money_jangjin / 10);
                    $(".jiangjin-change-4").html(money_jangjin / 100);


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
            calc();
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

            calc();
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

            calc();
        });
    });
</script>

<script type="text/html" id="template_touzhu">
    <li
            data-zhushu="{{zhushu}}"
            data-beishu="{{beishu}}"
            data-total_money="{{totalMoney}}"
            data-money="{{money}}"
            data-play_group_id="{{playGroupId}}"
            data-content="{{content}}"
            class="re_touzhu_tem"
    >
        <div class="head-name">
            <span>{{playName}}</span>
        </div>
        <div class="content-jiang">
            <span class="neirong"><font color="red">{{content.split("|")[0]}}</font>&nbsp;</span>
            <span class="span1">{{zhushu}}注</span>
            <span class="span2">{{jiangJfanD}}</span>
            <span class="span3">{{totalMoney}}元</span>
            <span class="span4"><a href="javascript:void(0)" onclick="removeThisItem(this)"><img
                    src="${resPath}img/ico53.png" alt=""></a></span>
        </div>
    </li>
</script>