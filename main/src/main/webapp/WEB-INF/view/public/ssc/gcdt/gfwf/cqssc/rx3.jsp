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
            <b>任三直选</b>
            <p class="btn_fu_zhi">
                <span class="acti" data-name="zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span data-name="zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span data-name="zxhz"><a href="javascript:void(0)">直选和值</a></span>
            </p>
        </li>
        <li>
            <b>任三组选</b>
            <p class="btn_fu_zhi">
                <span data-name="zu3fs"><a href="javascript:void(0)">组三复式</a></span>
                <span data-name="zu3ds"><a href="javascript:void(0)">组三单式</a></span>
                <span data-name="zu6fs"><a href="javascript:void(0)">组六复式</a></span>
                <span data-name="zu6ds"><a href="javascript:void(0)">组六单式</a></span>
                <span data-name="hhzux"><a href="javascript:void(0)">混合组选</a></span>
                <span data-name="zuxhz"><a href="javascript:void(0)">组选和值</a></span>
            </p>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1002" data-flag="rx3-zxfs">
    <p class="p1">
        <span class="fr fl cl-1001">
           从万位、千位、百位、十位、个位中至少三位上各选1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：万位5，百位8,个位2 开奖号码：51812，即中任三直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
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
        <li data-name="百">
            <b><i>百位</i></b>
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
        <li data-name="个">
            <b><i>个位</i></b>
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

<%--直选单式--%>
<div class="Pick cl-1003 recl-1003-zxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,至少手动输入一个三位数的号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百,个位，输入号码582 开奖号码：51812，即中任三直选(单式)。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少手动输入一个三位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-ds">
        <label for="position_ds_0"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_0" value="1"/>万位</label>
        <label for="position_ds_1"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_1" value="2"/>千位</label>
        <label for="position_ds_2"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_2" value="3"/>百位</label>
        <label for="position_ds_3"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_3" value="4"/>十位</label>
        <label for="position_ds_4"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-ds" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-ds" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
    </div>
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
<%--直选和值--%>
<div class="Pick cl-1002 recl-1004-zxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,至少选择一个和值号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百、个位，选择和值号码15 开奖号码：51812，即中任三直选和值。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少选择一个和值号码构成一注，所选三个位置的开奖号码相加之和与所选和值一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition recl-1004-hz">
                <label for="position_0"><input type="checkbox" class="selpositioninput" name="position_hz" id="position_0" value="1"/>万位</label>
                <label for="position_1"><input type="checkbox" class="selpositioninput" name="position_hz" id="position_1" value="2"/>千位</label>
                <label for="position_2"><input type="checkbox" class="selpositioninput" name="position_hz" checked="checked" id="position_2" value="3"/>百位</label>
                <label for="position_3"><input type="checkbox" class="selpositioninput" name="position_hz" checked="checked" id="position_3" value="4"/>十位</label>
                <label for="position_4"><input type="checkbox" class="selpositioninput" name="position_hz" checked="checked" id="position_4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-hz" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-hz" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="和值" class="hz-rx3">
            <b class="hz-dir"><i>和值</i></b>
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

<%--组三复式--%>
<div class="Pick cl-1002 recl-1005-zu3fs">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,号码区至少选择两个号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,选择号码12 开奖号码：11812，即中任三组三。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少选择两个号码构成两注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition recl-1005-zu3Rx3">
                <label for="position_zux0"><input type="checkbox" class="selpositioninput" name="position_zu3fs" id="position_zux0" value="1"/>万位</label>
                <label for="position_zux1"><input type="checkbox" class="selpositioninput" name="position_zu3fs" id="position_zux1" value="2"/>千位</label>
                <label for="position_zux2"><input type="checkbox" class="selpositioninput" name="position_zu3fs" checked="checked" id="position_zux2" value="3"/>百位</label>
                <label for="position_zux3"><input type="checkbox" class="selpositioninput" name="position_zu3fs" checked="checked" id="position_zux3" value="4"/>十位</label>
                <label for="position_zux4"><input type="checkbox" class="selpositioninput" name="position_zu3fs" checked="checked" id="position_zux4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zu3fs" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zu3fs" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
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
<div class="Pick cl-1003 recl-1006-zu3ds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,手动至少输入三个号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,输入号码112 开奖号码：11812，即中任三组三(单式)。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注，三个数字中必须有二个数字相同，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-zu3ds">
        <label for="position_zu3ds_0"><input type="checkbox" class="selpositioninput" name="position_zu3ds" id="position_zu3ds_0" value="1"/>万位</label>
        <label for="position_zu3ds_1"><input type="checkbox" class="selpositioninput" name="position_zu3ds" id="position_zu3ds_1" value="2"/>千位</label>
        <label for="position_zu3ds_2"><input type="checkbox" class="selpositioninput" name="position_zu3ds" checked="checked" id="position_zu3ds_2" value="3"/>百位</label>
        <label for="position_zu3ds_3"><input type="checkbox" class="selpositioninput" name="position_zu3ds" checked="checked" id="position_zu3ds_3" value="4"/>十位</label>
        <label for="position_zu3ds_4"><input type="checkbox" class="selpositioninput" name="position_zu3ds" checked="checked" id="position_zu3ds_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zu3ds" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zu3ds" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
    </div>
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
<div class="Pick cl-1002 recl-1007-zu6fs">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,号码区至少选择三个号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,选择号码512 开奖号码：51812，即中任三组六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少选择三个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition recl-1005-fs re-select-zu6fs">
                <label for="position_zu6fs0"><input type="checkbox" class="selpositioninput" name="position_zu6fs" id="position_zu6fs0" value="1"/>万位</label>
                <label for="position_zu6fs1"><input type="checkbox" class="selpositioninput" name="position_zu6fs" id="position_zu6fs1" value="2"/>千位</label>
                <label for="position_zu6fs2"><input type="checkbox" class="selpositioninput" name="position_zu6fs" checked="checked" id="position_zu6fs2" value="3"/>百位</label>
                <label for="position_zu6fs3"><input type="checkbox" class="selpositioninput" name="position_zu6fs" checked="checked" id="position_zu6fs3" value="4"/>十位</label>
                <label for="position_zu6fs4"><input type="checkbox" class="selpositioninput" name="position_zu6fs" checked="checked" id="position_zu6fs4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zu6fs" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zu6fs" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
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
<div class="Pick cl-1003 recl-1008-zu6ds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,手动至少输入三个号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,输入号码512 开奖号码：51812，即中任三组六(单式)。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-zu6ds">
        <label for="position_zu6ds_0"><input type="checkbox" class="selpositioninput" name="position_zu6ds" id="position_zu6ds_0" value="1"/>万位</label>
        <label for="position_zu6ds_1"><input type="checkbox" class="selpositioninput" name="position_zu6ds" id="position_zu6ds_1" value="2"/>千位</label>
        <label for="position_zu6ds_2"><input type="checkbox" class="selpositioninput" name="position_zu6ds" checked="checked" id="position_zu6ds_2" value="3"/>百位</label>
        <label for="position_zu6ds_3"><input type="checkbox" class="selpositioninput" name="position_zu6ds" checked="checked" id="position_zu6ds_3" value="4"/>十位</label>
        <label for="position_zu6ds_4"><input type="checkbox" class="selpositioninput" name="position_zu6ds" checked="checked" id="position_zu6ds_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zu6ds" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zu6ds" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
    </div>
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
<div class="Pick cl-1003 recl-1009-hhzux">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,手动至少输入三个号码构成一注(不包含豹子号)。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：选择位置万、十、个位，输入号码001以及512 开奖号码：03410(指定位置号码顺序不限)即中任三组三；或者51812(指定位置号码顺序不限)即中任三组六。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注(不含豹子号)，开奖号码指定位置的号码为组三或组六形态，所选号码与开奖号码指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-hhzux">
        <label for="position_hhzux_0"><input type="checkbox" class="selpositioninput" name="position_hhzux" id="position_hhzux_0" value="1"/>万位</label>
        <label for="position_hhzux_1"><input type="checkbox" class="selpositioninput" name="position_hhzux" id="position_hhzux_1" value="2"/>千位</label>
        <label for="position_hhzux_2"><input type="checkbox" class="selpositioninput" name="position_hhzux" checked="checked" id="position_hhzux_2" value="3"/>百位</label>
        <label for="position_hhzux_3"><input type="checkbox" class="selpositioninput" name="position_hhzux" checked="checked" id="position_hhzux_3" value="4"/>十位</label>
        <label for="position_hhzux_4"><input type="checkbox" class="selpositioninput" name="position_hhzux" checked="checked" id="position_hhzux_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-hhzux" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-hhzux" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
    </div>
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
<div class="Pick cl-1002 recl-1010-zuxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少选择一个和值号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,选择和值号码8 开奖号码：51812，即中任三组选和值。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少选择一个和值号码构成一注，所选三个位置的开奖号码相加之和与所选和值一致(不包含豹子号)，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition re-select-zuxhz">
                <label for="position_zuxhz0"><input type="checkbox" class="selpositioninput" name="position_zuxhz" id="position_zuxhz0" value="1"/>万位</label>
                <label for="position_zuxhz1"><input type="checkbox" class="selpositioninput" name="position_zuxhz" id="position_zuxhz1" value="2"/>千位</label>
                <label for="position_zuxhz2"><input type="checkbox" class="selpositioninput" name="position_zuxhz" id="position_zuxhz2" value="3"/>百位</label>
                <label for="position_zuxhz3"><input type="checkbox" class="selpositioninput" name="position_zuxhz" checked="checked" id="position_zuxhz3" value="4"/>十位</label>
                <label for="position_zuxhz4"><input type="checkbox" class="selpositioninput" name="position_zuxhz" checked="checked" id="position_zuxhz4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount_zuhz" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zuhz" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="和值" class="hz-q2 re-zuxhz-rx3">
            <b class="hz-dir"><i>和值</i></b>
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


<div class="add_spot">
    <div class="left">
        <div class="sopt_wrap">
            <div class="slide_sp rx3_slide_sp">
                奖金/返点
                <%--<p><span style="width: 4.89063px;"></span><var style="left: 4.89063px;"></var></p>--%>
                <%--<i><var>934058.63</var> / 7.0%</i>--%>
                <div class="cl-1003">
                    <div class="cl-1004">
                        <input type="hidden" class="slider-input"/>
                    </div>
                </div>
                <i class="base-i base-rx3"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">1.0%</var></i>
                <i class="base-i base-rx3-zux"><var class="jiangjin-change-zux">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">1.0%</var></i>
                <i class="base-i base-rx3-zu6"><var class="jiangjin-change-zu6">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">1.0%</var></i>
                <i class="base-i change-1"><var class="fandian-bfb">0.0%</var></i>
                <i class="base-i change-2"><var class="jiangjin-change-zux">0.0</var>&nbsp;/&nbsp;<var class="jiangjin-change-zu6">0.0</var></i>
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
            您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">0</i> 倍，返还 <i class="i1 i_fanD">0.00</i> 元，共投注 <i class="i1 i_money">0.00</i>元。
        </p>
    </div>
    <div class="rigth">
        <a href="javascript:void(0)" onclick="tjzd()"><img src="${resPath}img/ico65.png" alt="">添加注单</a>
    </div>

</div>
<script>
    $(function(){
        $(".Pick").hide();
        $(".base-i").hide();
        $(".base-rx3").show();
        $('.recl-1002').show();

        $(".btn_fu_zhi span").click(function () {
           if($(this).siblings().hasClass('acti')){
               $(this).siblings().removeClass('acti');
           }

           $(this).addClass('acti');
        });

        $(".Pick ul li span i").click(function () {
            $(this).parent().toggleClass('acti');
            var flagName = $(this).parent().parent().parent().parent().attr("data-flag");
            console.log(flagName);
            if(flagName == "rx3-zxfs"){
                stateTouZhu(flagName);
            } else if(flagName == "rx3-zxds"){
                stateTouZhu(flagName);
            } else if(flagName == "rx3-zxhz"){
                stateTouZhu(flagName);
            } else if(flagName == "rx3-zu3fs"){
                stateTouZhu(flagName);
            } else if(flagName == "rx3-zu6fs"){
                stateTouZhu(flagName);
            }
        });

        //任选三-直选单式
        $(".re-select-ds input[name='position_ds']").click(function () {
            var arrTemp = [];
            $(".re-select-ds input[name='position_ds']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-ds").html(arrTemp.length);
            if(arrTemp.length == 3){
                $("#positioninfo-ds").html(1);
            } else if(arrTemp.length == 4){
                $("#positioninfo-ds").html(4);
            } else if(arrTemp.length == 5){
                $("#positioninfo-ds").html(10);
            } else{
                $("#positioninfo-ds").html(0);
            }
            stateTouZhu("rx3-zxds");
        });

        //任选三-组三单式
        $(".re-select-zu3ds input[name='position_zu3ds']").click(function () {
            var arrTemp = [];
            $(".re-select-zu3ds input[name='position_zu3ds']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zu3ds").html(arrTemp.length);
            if(arrTemp.length == 3){
                $("#positioninfo-zu3ds").html(1);
            } else if(arrTemp.length == 4){
                $("#positioninfo-zu3ds").html(4);
            } else if(arrTemp.length == 5){
                $("#positioninfo-zu3ds").html(10);
            } else{
                $("#positioninfo-zu3ds").html(0);
            }
            stateTouZhu("rx3-zu3ds");
        });

        //任选三-组三复式
        $(".recl-1005-zu3Rx3 input[name='position_zu3fs']").click(function () {
            var arrTemp = [];
            $(".recl-1005-zu3Rx3 input[name='position_zu3fs']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zu3fs").html(arrTemp.length);
            if(arrTemp.length == 3){
                $("#positioninfo-zu3fs").html(1);
            } else if(arrTemp.length == 4){
                $("#positioninfo-zu3fs").html(4);
            } else if(arrTemp.length == 5){
                $("#positioninfo-zu3fs").html(10);
            } else{
                $("#positioninfo-zu3fs").html(0);
            }
            stateTouZhu("rx3-zu3fs");
        });

        //任选三--直选和值
        $(".recl-1004-hz input[name='position_hz']").click(function () {
            var arrTemp = [];
            $(".recl-1004-hz input[name='position_hz']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-hz").html(arrTemp.length);
            if(arrTemp.length == 3){
                $("#positioninfo-hz").html(1);
            } else if(arrTemp.length == 4){
                $("#positioninfo-hz").html(4);
            } else if(arrTemp.length == 5){
                $("#positioninfo-hz").html(10);
            } else{
                $("#positioninfo-hz").html(0);
            }
            stateTouZhu("rx3-zxhz");
        });

        //任选三--组六复式
        $(".re-select-zu6fs input[name='position_zu6fs']").click(function () {
            var arrTemp = [];
            $(".re-select-zu6fs input[name='position_zu6fs']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zu6fs").html(arrTemp.length);
            if(arrTemp.length == 3){
                $("#positioninfo-zu6fs").html(1);
            } else if(arrTemp.length == 4){
                $("#positioninfo-zu6fs").html(4);
            } else if(arrTemp.length == 5){
                $("#positioninfo-zu6fs").html(10);
            } else{
                $("#positioninfo-zu6fs").html(0);
            }
            stateTouZhu("rx3-zu6fs");
        });

        //任选三-组六单式
        $(".re-select-zu6ds input[name='position_zu6ds']").click(function () {
            var arrTemp = [];
            $(".re-select-zu6ds input[name='position_zu6ds']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zu6ds").html(arrTemp.length);
            if(arrTemp.length == 3){
                $("#positioninfo-zu6ds").html(1);
            } else if(arrTemp.length == 4){
                $("#positioninfo-zu6ds").html(4);
            } else if(arrTemp.length == 5){
                $("#positioninfo-zu6ds").html(10);
            } else{
                $("#positioninfo-zu6ds").html(0);
            }
            stateTouZhu("rx3-zu6ds");
        });

        //任选三-混合组选
        $(".re-select-hhzux input[name='position_hhzux']").click(function () {
            var arrTemp = [];
            $(".re-select-hhzux input[name='position_hhzux']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-hhzux").html(arrTemp.length);
            if(arrTemp.length == 3){
                $("#positioninfo-hhzux").html(1);
            } else if(arrTemp.length == 4){
                $("#positioninfo-hhzux").html(4);
            } else if(arrTemp.length == 5){
                $("#positioninfo-hhzux").html(10);
            } else{
                $("#positioninfo-hhzux").html(0);
            }
            stateTouZhu("rx3-hhzux");
        });

        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass('acti');

            var nameVal = $(this).data("name");
            if(nameVal == "zxfs"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1002').show();
                $('.recl-1002').attr("data-flag", "rx3-zxfs");
                $(".base-i").hide();
                $(".base-rx3").show();
                allClearJl();
            } else if(nameVal == "zxds"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1003-zxds').show();
                $('.recl-1003-zxds').attr("data-flag", "rx3-zxds");
                $(".base-i").hide();
                $(".base-rx3").show();
                allClearJl();
            } else if(nameVal == "zxhz"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1004-zxhz').show();
                $('.recl-1004-zxhz').attr("data-flag", "rx3-zxhz");
                $(".base-i").hide();
                $(".base-rx3").show();
                allClearJl();
            } else if(nameVal == "zu3fs"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1005-zu3fs').show();
                $('.recl-1005-zu3fs').attr("data-flag", "rx3-zu3fs");
                $(".base-i").hide();
                $(".base-rx3-zux").show();
                allClearJl();
            } else if(nameVal == "zu3ds"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1006-zu3ds').show();
                $('.recl-1006-zu3ds').attr("data-flag", "rx3-zu3ds");
                $(".base-i").hide();
                $(".base-rx3-zux").show();
                allClearJl();
            } else if(nameVal == "zu6fs"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1007-zu6fs').show();
                $('.recl-1007-zu6fs').attr("data-flag", "rx3-zu6fs");
                $(".base-i").hide();
                $(".base-rx3-zu6").show();
                allClearJl();
            } else if(nameVal == "zu6ds"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1008-zu6ds').show();
                $('.recl-1008-zu6ds').attr("data-flag", "rx3-zu6ds");
                $(".base-i").hide();
                $(".base-rx3-zu6").show();
                allClearJl();
            } else if(nameVal == "hhzux"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1009-hhzux').show();
                $('.recl-1009-hhzux').attr("data-flag", "rx3-hhzux");
                $(".base-i").hide();
                $(".change-1").show();
                $(".change-2").show();
                allClearJl();
            } else if(nameVal == "zuxhz"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1010-zuxhz').show();
                $('.recl-1010-zuxhz').attr("data-flag", "rx3-zuxhz");
                $(".base-i").hide();
                $(".change-1").show();
                $(".change-2").show();
                allClearJl();
            }
        });

    });
</script>
<script>

    //获取手动输入的有效注数
    function getZxdsRx3Zhushu() {
        var strLen = 0;
        var arrTemp = [];
        var lengthArr = 0;
        strLen = $(".re-select-ds input[name='position_ds']:checked").length;
        $(".re-select-ds input[name='position_ds']:checked").each(function () {
            arrTemp.push($(this).val());
        });

        var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }
        }

        var temp = newArr.length;
        var shu = $("#positioninfo-ds").html();
            lengthArr = temp * shu;
        return lengthArr;
    }

    //获取手动输入的有效注数--组六单式
    function getZu6dsRx3Zhushu() {
        var strLen = 0;
        var lengthArr = 0;
        var textStr = $(".recl-1008-zu6ds .content_jiang .content_tex").val();
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
            if (oneStr != twoStr && threeStr != oneStr && threeStr != twoStr) {
                tempArr.push(newArr[n]);
            }
        }

        strLen = tempArr.length;
        var shu = $("#positioninfo-zu6ds").html();
        lengthArr = strLen * shu;
        return lengthArr;
    }

    //获取手动输入的有效注数--混合组选
    function getHhzuxRx3Zhushu() {
        var strLen = 0;
        var lengthArr = 0;
        var textStr = $(".recl-1009-hhzux .content_jiang .content_tex").val();
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
            var arr = [];
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            tempArr.push(arr.join(""));
        }
        tempArr = tempArr.uniqueArr();
        strLen = tempArr.length;
        var shu = $("#positioninfo-hhzux").html();
        lengthArr = strLen * shu;
        return lengthArr;
    }

    //获取手动输入的有效注数--组选单式
    function getZu3dsRx3Zhushu() {
        var strLen = 0;
        var lengthArr = 0;
        var textStr = $(".recl-1006-zu3ds .content_jiang .content_tex").val();
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
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && threeStr != oneStr || threeStr == oneStr && oneStr != twoStr) {
                tempArr.push(newArr[n]);
            }
        }

        strLen = tempArr.length;
        var shu = $("#positioninfo-zu3ds").html();
        lengthArr = strLen * shu;
        return lengthArr;
    }

    //获取和值注数-直选任选二
    function getZxhzRx3Zhushu() {
        var hzArr = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if(hzArr.length <= 0){
            return 0;
        }

        var newArr = [];
        for(var i = 0; i < hzArr.length; i++){
            for(var x = 0; x < 10; x++){
                for(var y = 0; y < 10; y++){
                    for(var y1 = 0; y1 < 10; y1++) {
                        if (x + y + y1 == hzArr[i]) {
                            newArr.push(x + "" + y + "" + y1);
                        }
                    }
                }
            }
        }

        var zhushu = newArr.length;
        var shu = $("#positioninfo-hz").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    function getRx3zxhzZhushu(hzArr){
        var newArr = [];
        for(var i = 0; i < hzArr.length; i++){
            for(var x = 0; x < 10; x++){
                for(var y = 0; y < 10; y++){
                    for(var y1 = 0; y1 < 10; y1++) {
                        if (x + y + y1 == hzArr[i]) {
                            newArr.push(x + "" + y + "" + y1);
                        }
                    }
                }
            }
        }
        return newArr.length;
    }

    //任选三-组六复式
    function getZu6fsRx3Zhushu() {
            var fuShiArr = [], newArr = [];
            $.each($(".recl-1007-zu6fs ul li[data-name = '组六'] span.acti"), function (index, value) {
                fuShiArr.push($.trim($(this).find("i").html()));
            });
            var zlLength = fuShiArr.length;
            if (zlLength < 3) {
                return 0;
            }

            newArr = getZuLiuNewArrs(fuShiArr);
            var zhushu = newArr.length;
            var shu = $("#positioninfo-zu6fs").html();
            var lengthArr = zhushu * shu;
            return lengthArr;
    }

    //直选复式-任选三
    function getZxfsRx3Zhushu(){
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });

        var numArr = [];
        var indexArr = [wanArr, qianArr, baiArr, shiArr, geArr];

        if (wanArr.length > 0) {
            numArr.push(0);
        }
        if (qianArr.length > 0) {
            numArr.push(1);
        }
        if (baiArr.length > 0) {
            numArr.push(2);
        }
        if (shiArr.length > 0) {
            numArr.push(3);
        }
        if (geArr.length > 0) {
            numArr.push(4);
        }

        if (numArr.length < 3) {
            return 0;
        }

        var tmpArr = getFlagArrs(numArr, 3);
        var result = 0;
        $.each(tmpArr, function(index, value) {
            var tmpResult = 0;
            var tmpIndexArr = value.split(" ");
            $.each(tmpIndexArr, function(index2, value2) {
                tmpResult = tmpResult == 0 ? 1 : tmpResult;
                tmpResult *= indexArr[parseInt(value2)].length;

            });
            result += tmpResult;
        });
        return result;
    }

    //获取注数--组选复式
    function stateZu3fsZhuShu(){
        var zuArr = [], newArr = [];
        $.each($(".recl-1005-zu3fs ul li[data-name = '组三'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });

        var zuLength = zuArr.length;
        if (zuLength < 2) {
            return;
        }

        var zhushu = getRx3zu3fsZhushu(zuArr);
        var shu = $("#positioninfo-zu3fs").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    // 任选二组选和值注数算法
    function getrx3zuxhzZhushu(zuxhzArr){
        var newArr = [];
        for(var i = 0; i < zuxhzArr.length; i++){
            for(var x = 0; x < 10; x++){
                for(var y = 0; y < 10; y++){
                    if((x + y) == zuxhzArr[i] && x != y){
                        var arr = [];
                        arr.push(x);
                        arr.push(y);
                        arr.sort();
                        newArr.push(arr.join(""));
                    }
                }
            }
        }
        newArr = newArr.uniqueArr();
        return newArr.length;
    }

    // 组三复式--任选三
    function getRx3zu3fsZhushu(arrNew) {
        var tempArr = [];
        for (var i = 0; i < arrNew.length; i++) {
            for (var i1 = 0; i1 < arrNew.length; i1++) {
                if (arrNew[i] != arrNew[i1]) {
                    tempArr.push(arrNew[i] + "" + arrNew[i1]);
                }
            }
        }

        return tempArr.length;
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

    function allClearJl(){
        clearSelected();
        clearTextarea();
    }

    function clearSelected() {
        $(".Single .layout .Pick ul li span.acti").removeClass("acti");
        $(".re-5x-i i.acti").removeClass("acti");
        $("#zhushuInfo").data("zhushu", 0);
        if(typeof clearStateTouZhu == 'function'){
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
        clearStateTouZhu();
    }

    function daoRu() {
        alert("开发中，敬请期待...");
    }

    function delRrepet() {
        alert("开发中，敬请期待...");
    }

    function tjzd() {
        var flag_str = '';
        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx3zxfsZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx3zxdsZhudan(betForm)) {
                return;
            }
            clearTextarea();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx3zxhzZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1005-zu3fs').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx3zu3fsZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1006-zu3ds').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx3zuxdsZhudan(betForm)) {
                return;
            }
            clearTextarea();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1007-zu6fs').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx3zu6fsZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1008-zu6ds').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx3zu6dsZhudan(betForm)) {
                return;
            }
            clearTextarea();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1009-hhzux').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx3hhzuxZhudan(betForm)) {
                return;
            }
            clearTextarea();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        }

    }

    //任选三-组六复式
    function getRx3zu6fsZhudan(obj) {
        var zuArr = [];
        var arrTemp = [];
        $.each($(".recl-1007-zu6fs ul li[data-name = '组六'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });

        $(".re-select-zu6fs input[name='position_zu6fs']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 3) {
            alert("[任选三]至少选择3个位置");
            return false;
        }

        var zhushu = getZu6fsRx3Zhushu(zuArr);
        $(".recl-1007-zu6fs input[name='position_zu6fs']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return false;
        }
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.playName = "任三组选-组六复式";
        obj.content = "号码: (" + zuArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zu6").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选三-直选和值注单
    function getRx3zxhzZhudan(obj) {
        var hzArr = [];
        var arrTemp = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });
        var zhushu = getZxhzRx3Zhushu();

        $(".re-select-hz input[name='position_hz']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return false;
        }

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "任三直选-直选和值";
        obj.content = "号码: (" + hzArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选三-直选单式
    function getRx3zxdsZhudan(obj) {
        var errorStr = '';
        var repeatArr = [], allErrorArr = [];
        var errorArr = [];
        var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
                newArr.push(arr_new[i]);
            }else{
                if(arr_new[i] != ""){
                    errorArr.push(arr_new[i]);
                }
            }
        }

        repeatArr = newArr.duplicate(); //重复号码

        newArr = newArr.uniqueArr();
        var temp = newArr.length;
        var shu = $("#positioninfo-ds").html();
        var zhushu = temp * shu;
        var arrTemp = [];

        $(".re-select-ds input[name='position_ds']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return false;
        }

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for(var r = 0; r < repeatArr.length; r++){
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert(errorStr);
        }

        obj.playName = "任三直选-直选单式";
        obj.content = "号码: (" + newArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选三-组三单式
    function getRx3zuxdsZhudan(obj) {
        var errorStr = '', zhushu = 0;
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var textStr = $(".recl-1006-zu3ds .content_jiang .content_tex").val();
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
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
                tempArr.push(arr.join(""));
            } else{
                errorArr.push(newArr[n]);
            }
        }
        repeatArr = tempArr.duplicate(); //重复号码
        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        $(".recl-1006-zu3ds input[name='position_zu3ds']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return false;
        }
        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for(var r = 0; r < repeatArr.length; r++){
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码:");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert($.trim(errorStr));
        }

        zhushu = tempArr.length;
        var tempNum =  $("#positioninfo-zu3ds").html();
        zhushu = tempNum * zhushu;

        obj.playName = "任三组选-组三单式";
        obj.content = "号码: (" + tempArr.join(', ') + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选三-混合组选
    function getRx3hhzuxZhudan(obj) {
        var errorStr = '', zhushu = 0;
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var textStr = $(".recl-1009-hhzux .content_jiang .content_tex").val();
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
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (twoStr == threeStr  && oneStr == threeStr  && twoStr == oneStr) {
                errorArr.push(newArr[n]);
            } else{
                tempArr.push(arr.join(""));
            }
        }
        repeatArr = tempArr.duplicate(); //重复号码
        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        $(".recl-1009-hhzux input[name='position_hhzux']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return false;
        }
        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for(var r = 0; r < repeatArr.length; r++){
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码:");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert($.trim(errorStr));
        }

        zhushu = tempArr.length;
        var tempNum =  $("#positioninfo-hhzux").html();
        zhushu = tempNum * zhushu;
        obj.playName = "任三组选-混合组选";
        obj.content = "号码: (" + tempArr.join(', ') + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选三-组六单式
    function getRx3zu6dsZhudan(obj) {
        var errorStr = '', zhushu = 0;
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var textStr = $(".recl-1008-zu6ds .content_jiang .content_tex").val();
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
            var arr = [];
            var temp = newArr[n].toString();
            var oneStr = temp.substr(0, 1);
            var twoStr = temp.substr(1, 1);
            var threeStr = temp.substr(2, 1);
            arr.push(oneStr);
            arr.push(twoStr);
            arr.push(threeStr);
            arr.sort();
            if (twoStr != threeStr  && oneStr != threeStr  && twoStr != oneStr) {
                tempArr.push(arr.join(""));
            } else{
                errorArr.push(newArr[n]);
            }
        }
        repeatArr = tempArr.duplicate(); //重复号码
        tempArr = tempArr.uniqueArr(); // 去掉重复号码

        $(".recl-1008-zu6ds input[name='position_zu6ds']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return false;
        }
        if (tempArr.length <= 0) {
            alert("号码或金额输入有误，请重新输入");
            return;
        }

        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for(var r = 0; r < repeatArr.length; r++){
                allErrorArr.push(repeatArr[r]);
            }
        }
        if (errorArr.length > 0) {
            allErrorArr.push(" 被过滤掉的错误号码:");
            for (var l = 0; l < errorArr.length; l++) {
                allErrorArr.push(errorArr[l]);
            }
        }

        if (allErrorArr.length > 0) {
            for (var e = 0; e < allErrorArr.length; e++) {
                errorStr += allErrorArr[e] + " ";
            }
            alert($.trim(errorStr));
        }

        zhushu = tempArr.length;
        var tempNum =  $("#positioninfo-zu6ds").html();
        zhushu = tempNum * zhushu;
        obj.playName = "任三组选-组六单式";
        obj.content = "号码: (" + tempArr.join(', ') + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zu6").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选二-直选复式注单
    function getRx3zxfsZhudan(obj) {
        var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
        $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
            wanArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
            qianArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
            baiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
            shiArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
            geArr.push($.trim($(this).find("i").html()));
        });
        var zhushu = getrx3zxfsZhushu(wanArr, qianArr, baiArr, shiArr, geArr);

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "任三直选-直选复式";
        var wanStr = wanArr.length > 0 ? ("万位: " + wanArr.join("")) : '';
        var qianStr = qianArr.length > 0 ? (" 千位: " + qianArr.join("")) : '';
        var baiStr = baiArr.length > 0 ? (" 百位: " + baiArr.join("")) : '';
        var shiStr = shiArr.length > 0 ?  (" 十位: " + shiArr.join("")) : '';
        var geStr = geArr.length > 0 ? (" 个位: " + geArr.join("")) : '';
        obj.content = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }


    //任选二-组选复式注单
    function getRx3zu3fsZhudan(obj) {
        var zuArr = [], arrTemp = [];
        $.each($(".recl-1005-zu3fs ul li[data-name = '组三'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });
        var zhushu = getRx3zu3fsZhushu(zuArr);

        $(".recl-1005-zu3fs input[name='position_zu3fs']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 3) {
            alert("[任选三]至少需要选择3个位置");
            return false;
        }

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "任三组选-组三复式";

        obj.content = "号码: (" + zuArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
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
        var playNameStr = '', flag_zhi = '', contentStr = '';
        var shu = 0, hz_shu = 0;
        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            playNameStr = "任三直选-直选复式";
            flag_zhi = "rx3-zxfs";
        } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
            playNameStr = "任三直选-直选单式";
            flag_zhi = "rx3-zxds";
        } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
            playNameStr = "任三直选-直选和值";
            flag_zhi = "rx3-zxhz";
        } else if (typeof $('.recl-1005-zu3fs').attr('data-flag') != 'undefined') {
            playNameStr = "任三组选-组三复式";
            flag_zhi = "rx3-zu3fs";
        } else if (typeof $('.recl-1006-zu3ds').attr('data-flag') != 'undefined') {
            playNameStr = "任三组选-组三单式";
            flag_zhi = "rx3-zu3ds";
        } else if (typeof $('.recl-1007-zu6fs').attr('data-flag') != 'undefined') {
            playNameStr = "任三组选-组六复式";
            flag_zhi = "rx3-zu6fs";
        } else if (typeof $('.recl-1008-zu6ds').attr('data-flag') != 'undefined') {
            playNameStr = "任三组选-组六单式";
            flag_zhi = "rx3-zu6ds";
        } else if (typeof $('.recl-1009-hhzux').attr('data-flag') != 'undefined') {
            playNameStr = "任三组选-混合组选";
            flag_zhi = "rx3-hhzux";
        }

        for (var numIndex = 0; numIndex < total; ++numIndex) {
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
            if(flag_zhi == "rx3-zxfs"){
                contentStr = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
            } else if(flag_zhi == "rx3-zxds"){
                contentStr = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
            } else if(flag_zhi == "rx3-zxhz"){
                var hzsj = [];
                hzsj.push(parseInt(Math.random() * 19));
                shu = getRx3zxhzZhushu(hzsj);
                hz_shu = $("#positioninfo-hz").html();
                contentStr = "号码: (" + hzsj[0] +")";
            } else if(flag_zhi == "rx3-zu3fs"){
                contentStr = "号码: (" + arr[0] + "," + arr[1] +")";
            } else if(flag_zhi == "rx3-zu3ds"){
                var arrZu3ds = [];
                while (arrZu3ds.length < 1) {
                    var num1 = parseInt(Math.random() * 10);
                    var num2 = parseInt(Math.random() * 10);
                    var num3 = parseInt(Math.random() * 10);
                    if (num1 == num2 && num2 != num3 || num2 == num3 && num3 != num1 || num3 == num1 && num1 != num2) {
                        arrZu3ds.push(num1 + "" + num2 + "" + num3);
                    }
                }
                contentStr = "号码: (" + arrZu3ds[0] + ")";
            } else if(flag_zhi == "rx3-zu6fs" || flag_zhi == "rx3-zu6ds"){
                var arrZu6 = [];
                while (arrZu6.length < 1) {
                    var x1 = parseInt(Math.random() * 10);
                    var x2 = parseInt(Math.random() * 10);
                    var x3 = parseInt(Math.random() * 10);
                    if (x1 != x2 && x2 != x3 && x3 != x2) {
                        if(flag_zhi == "rx3-zu6fs"){
                            arrZu6.push(x1 + "," + x2 + "," + x3);
                        }
                        if(flag_zhi == "rx3-zu6ds"){
                            arrZu6.push(x1 + "" + x2 + "" + x3);
                        }
                    }
                }
                contentStr = "号码: (" + arrZu6[0] + ")";
            } else if(flag_zhi == "rx3-hhzux"){
                var arrHhzux = [];
                while (arrHhzux.length < 1) {
                    var Hhzux1 = parseInt(Math.random() * 10);
                    var Hhzux2 = parseInt(Math.random() * 10);
                    var Hhzux3 = parseInt(Math.random() * 10);
                    if (!(Hhzux1 == Hhzux2 && Hhzux2 == Hhzux3 && Hhzux1 == Hhzux3)) {
                      arrHhzux.push(Hhzux1 + "" + Hhzux2 + "" + Hhzux3);
                    }
                }
                contentStr = "号码: (" + arrHhzux[0] + ")";
            }

            var obj = {};
            obj.playName = playNameStr;
            obj.content = contentStr;
            obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money"));

            obj.beishu = $("#inputBeishu").data("beishu");
            obj.money = $("#inputMoney").data("money");
            if(flag_zhi == "rx3-zu3fs"){
                obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
                var zu3fs_shu = $("#positioninfo-zu3fs").html();
                obj.zhushu = zu3fs_shu * 2;
            } else if(flag_zhi == "rx3-zu6fs"){
                obj.jiangJfanD = $(".jiangjin-change-zu6").html() + "/" + $(".fandian-bfb").html();
                var zu6fs_shu = $("#positioninfo-zu6fs").html();
                obj.zhushu = zu6fs_shu;
            } else if(flag_zhi == "rx3-zu6ds"){
                obj.jiangJfanD = $(".jiangjin-change-zu6").html() + "/" + $(".fandian-bfb").html();
                var zu6ds_shu = $("#positioninfo-zu6ds").html();
                obj.zhushu = zu6ds_shu;
            } else if(flag_zhi == "rx3-zu3ds"){
                obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
                var zuds_shu = $("#positioninfo-zu3ds").html();
                obj.zhushu = zuds_shu;
            }  else if(flag_zhi == "rx3-hhzux"){
                obj.jiangJfanD = $(".jiangjin-change-zux").html() + "/" + $(".fandian-bfb").html();
                var hhzux_shu = $("#positioninfo-hhzux").html();
                obj.zhushu = hhzux_shu;
            } else if(flag_zhi == "rx3-zxds"){
                obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
                var ds_shu = $("#positioninfo-ds").html();
                obj.zhushu = ds_shu;
            } else if(flag_zhi == "rx3-zxhz"){
                obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
                obj.zhushu = hz_shu * shu;
            } else{
                obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
                obj.zhushu = 1;
            }
            obj.playGroupId = playGroupId;
            result.push(obj);
        }
        return result;
    }
</script>
<script>
    $(function () {
        $('.recl-1003-zxds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('rx3-zxds');
        });
        $('.recl-1006-zu3ds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('rx3-zu3ds');
        });
        $('.recl-1008-zu6ds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('rx3-zu6ds');
        });
        $('.recl-1009-hhzux .content_jiang .content_tex').keyup(function () {
            stateTouZhu('rx3-hhzux');
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
                var money_jangjin_zu6 = 163.333 - (163.333 - 141.667) / 13 * money_jangjin;
                var money_jangjin_zux = 326.666 - (326.666 - 283.333) / 13 * money_jangjin;
                money_jangjin = 980 - (980 - 850) / 13 * money_jangjin;
                $(".jiangjin-change").html(parseFloat(money_jangjin).toFixed(2));
                $(".jiangjin-change-zux").html(parseFloat(money_jangjin_zux).toFixed(3));
                $(".jiangjin-change-zu6").html(parseFloat(money_jangjin_zu6).toFixed(3));
                if(typeof stateTouZhu == "function"){
                    var flag_str = '';
                    if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
                        flag_str = 'rx3-zxfs';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
                        flag_str = 'rx3-zxds';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
                        flag_str = 'rx3-zxhz';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1005-zu3fs').attr('data-flag') != 'undefined') {
                        flag_str = 'rx3-zu3fs';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1006-zu3ds').attr('data-flag') != 'undefined') {
                        flag_str = 'rx3-zu3ds';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1007-zu3hz').attr('data-flag') != 'undefined') {
                        flag_str = 'rx3-zu3hz';
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

            calc();
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

            calc();
            changeStateCommon();
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
                <span class="span1">{{zhushu}}注&nbsp;&nbsp;{{jiangJfanD}}&nbsp;&nbsp;<var class="varColor">{{totalMoney}}元</var></span>
                <span class="span4"><a href="javascript:void(0)" onclick="removeThisItem(this)"><img
                        src="${resPath}img/ico53.png" alt=""></a></span>
            </div>
    </li>
</script>