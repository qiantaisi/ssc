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
            <b>任二直选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti" data-play_id="559" data-play_pl_id="14277"  data-name="zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-play_id="560" data-play_pl_id="14278"  data-name="zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span class="playPlIdBtn" data-play_id="561" data-play_pl_id="14279"  data-name="zxhz"><a href="javascript:void(0)">直选和值</a></span>
            </p>
        </li>
        <li>
            <b>任二组选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn" data-play_id="562" data-play_pl_id="14280" data-name="zuxfs"><a href="javascript:void(0)">组选复式</a></span>
                <span class="playPlIdBtn" data-play_id="563" data-play_pl_id="14281" data-name="zuxds"><a href="javascript:void(0)">组选单式</a></span>
                <span class="playPlIdBtn" data-play_id="564" data-play_pl_id="14282" data-name="zuxhz"><a href="javascript:void(0)">组选和值</a></span>
            </p>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1002" data-flag="rx2-zxfs">
    <p class="p1">
        <span class="fr fl cl-1001">
           从万位、千位、百位、十位、个位中至少两位上各选1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：万位5，百位8 开奖号码：51812，即中任二直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
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
        <li data-name="百">
            <b><i>百位</i></b>
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
        <li data-name="个">
            <b><i>个位</i></b>
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

<%--直选单式--%>
<div class="Pick cl-1003 recl-1003-zxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，输入号码58 开奖号码：51812，即中任二直选(单式)。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-ds">
        <label for="position_ds_0"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_0"
                                          value="1"/>万位</label>
        <label for="position_ds_1"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_1"
                                          value="2"/>千位</label>
        <label for="position_ds_2"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_2"
                                          value="3"/>百位</label>
        <label for="position_ds_3"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked"
                                          id="position_ds_3" value="4"/>十位</label>
        <label for="position_ds_4"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked"
                                          id="position_ds_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-ds" class="rxcount">2</var>
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
                <li onclick="delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
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
            从万位、千位、百位、十位、个位中至少选择两个位置,至少选择一个和值号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择和值号码13 开奖号码：51812，即中任二直选和值。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择一个和值号码构成一注，所选两个位置的开奖号码相加之和与所选和值一致，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition recl-1004-hz">
                <label for="position_0"><input type="checkbox" class="selpositioninput" name="position_hz"
                                               id="position_0" value="1"/>万位</label>
                <label for="position_1"><input type="checkbox" class="selpositioninput" name="position_hz"
                                               id="position_1" value="2"/>千位</label>
                <label for="position_2"><input type="checkbox" class="selpositioninput" name="position_hz"
                                               id="position_2" value="3"/>百位</label>
                <label for="position_3"><input type="checkbox" class="selpositioninput" name="position_hz"
                                               checked="checked" id="position_3" value="4"/>十位</label>
                <label for="position_4"><input type="checkbox" class="selpositioninput" name="position_hz"
                                               checked="checked" id="position_4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-hz" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-hz" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="和值" class="hz-q2 re-zxhz-rx2 rehz-q2">
            <b class="hz-dir"><i>和值</i></b>
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
            </var>
            <var class="numLine renumHeigth">
                <span><i>10</i></span>
                <span><i>11</i></span>
                <span><i>12</i></span>
                <span><i>13</i></span>
                <span><i>14</i></span>
                <span><i>15</i></span>
                <span><i>16</i></span>
                <span><i>17</i></span>
                <span><i>18</i></span>
            </var>
        </li>
    </ul>
</div>

<%--组选复式--%>
<div class="Pick cl-1002 recl-1005-zuxfs">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,号码区至少选择两个号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择号码85 开奖号码：51812或者81512，即中任二组选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择两个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition recl-1005-fs">
                <label for="position_zux0"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                  id="position_zux0" value="1"/>万位</label>
                <label for="position_zux1"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                  id="position_zux1" value="2"/>千位</label>
                <label for="position_zux2"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                  id="position_zux2" value="3"/>百位</label>
                <label for="position_zux3"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                  checked="checked" id="position_zux3" value="4"/>十位</label>
                <label for="position_zux4"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                  checked="checked" id="position_zux4" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zufs" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zufs" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="组选">
            <b><i>组选</i></b>
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

<%--组选单式--%>
<div class="Pick cl-1003 recl-1006-zuxds">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，输入号码85 开奖号码：51812或者81512，即中任二组选(单式)。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-zuxds">
        <label for="position_zuds_0"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                            id="position_zuds_0" value="1"/>万位</label>
        <label for="position_zuds_1"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                            id="position_zuds_1" value="2"/>千位</label>
        <label for="position_zuds_2"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                            id="position_zuds_2" value="3"/>百位</label>
        <label for="position_zuds_3"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                            checked="checked" id="position_zuds_3" value="4"/>十位</label>
        <label for="position_zuds_4"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                            checked="checked" id="position_zuds_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zuds" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zuds" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
    </div>
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
<div class="Pick cl-1002 recl-1007-zuxhz">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少选择一个和值号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择和值号码13 开奖号码：51812，即中任二组选和值。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择一个和值号码构成一注，所选两个位置的开奖号码相加之和与所选和值一致(不含对子号)，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition re-select-zuxhz">
                <label for="position_zuxhz0"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                    id="position_zuxhz0" value="1"/>万位</label>
                <label for="position_zuxhz1"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                    id="position_zuxhz1" value="2"/>千位</label>
                <label for="position_zuxhz2"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                    id="position_zuxhz2" value="3"/>百位</label>
                <label for="position_zuxhz3"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                    checked="checked" id="position_zuxhz3" value="4"/>十位</label>
                <label for="position_zuxhz4"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                    checked="checked" id="position_zuxhz4" value="5"/>个位</label>
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
        <li data-name="和值" class="hz-q2 re-zuxhz-rx2">
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
                <span><i>14</i></span>
                <span><i>15</i></span>
                <span><i>16</i></span>
                <span><i>17</i></span>
            </var>
        </li>
    </ul>
</div>


<div class="add_spot">
    <div class="left releft">
        <div class="sopt_wrap">
            <div class="slide_sp">
                奖金/返点
                <%--<p><span style="width: 4.89063px;"></span><var style="left: 4.89063px;"></var></p>--%>
                <%--<i><var>934058.63</var> / 7.0%</i>--%>
                <div class="cl-1003">
                    <div class="cl-1004">
                        <input type="hidden" class="slider-input"/>
                    </div>
                </div>
                <i class="base-i base-rx2"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var
                        class="fandian-bfb">1.0%</var></i>
                <i class="base-i base-rx2-zux"><var class="jiangjin-change-zux">0.0</var><var>&nbsp;/&nbsp;</var><var
                        class="fandian-bfb">1.0%</var></i>
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
        $(".base-i").hide();
        $(".base-rx2").show();
        $('.recl-1002').show();

        $(".btn_fu_zhi span").click(function () {
            if ($(this).siblings().hasClass('acti')) {
                $(this).siblings().removeClass('acti');
            }

            $(this).addClass('acti');
        });

        $(".Pick ul li span i").click(function () {
            $(this).parent().toggleClass('acti');
            var flagName = $(this).parent().parent().parent().parent().attr("data-flag");
            if(typeof flagName == "undefined"){
                flagName = $(this).parent().parent().parent().parent().parent().attr("data-flag");
            }
            if (flagName == "rx2-zxfs") {
                stateTouZhu(flagName);
            } else if (flagName == "rx2-zxhz") {
                stateTouZhu(flagName);
            } else if (flagName == "rx2-zuxfs") {
                stateTouZhu(flagName);
            } else if (flagName == "rx2-zuxhz") {
                stateTouZhu(flagName);
            }
        });

        //选中位置自动获取组成方案-直选单式
        $(".re-select-ds input[name='position_ds']").click(function () {
            var arrTemp = [];
            $(".re-select-ds input[name='position_ds']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-ds").html(arrTemp.length);
            if (arrTemp.length == 3) {
                $("#positioninfo-ds").html(3);
            } else if (arrTemp.length == 4) {
                $("#positioninfo-ds").html(6);
            } else if (arrTemp.length == 5) {
                $("#positioninfo-ds").html(10);
            } else if (arrTemp.length == 2) {
                $("#positioninfo-ds").html(1);
            } else {
                $("#positioninfo-ds").html(0);
            }
            stateTouZhu("rx2-zxds");
        });

        //选中位置自动获取组成方案-组选单式
        $(".re-select-zuxds input[name='position_zuds']").click(function () {
            var arrTemp = [];
            $(".re-select-zuxds input[name='position_zuds']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zuds").html(arrTemp.length);
            if (arrTemp.length == 3) {
                $("#positioninfo-zuds").html(3);
            } else if (arrTemp.length == 4) {
                $("#positioninfo-zuds").html(6);
            } else if (arrTemp.length == 5) {
                $("#positioninfo-zuds").html(10);
            } else if (arrTemp.length == 2) {
                $("#positioninfo-zuds").html(1);
            } else {
                $("#positioninfo-zuds").html(0);
            }
            stateTouZhu("rx2-zuxds");
        });

        //获取注数-组选复式
        $(".recl-1005-fs input[name='position_zufs']").click(function () {
            var arrTemp = [];
            $(".recl-1005-fs input[name='position_zufs']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zufs").html(arrTemp.length);
            if (arrTemp.length == 3) {
                $("#positioninfo-zufs").html(3);
            } else if (arrTemp.length == 4) {
                $("#positioninfo-zufs").html(6);
            } else if (arrTemp.length == 5) {
                $("#positioninfo-zufs").html(10);
            } else if (arrTemp.length == 2) {
                $("#positioninfo-zufs").html(1);
            } else {
                $("#positioninfo-zufs").html(0);
            }
            stateTouZhu("rx2-zuxfs");
        });

        //选中位置自动获取组成方案-直选和值
        $(".recl-1004-hz input[name='position_hz']").click(function () {
            var arrTemp = [];
            $(".recl-1004-hz input[name='position_hz']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-hz").html(arrTemp.length);
            if (arrTemp.length == 3) {
                $("#positioninfo-hz").html(3);
            } else if (arrTemp.length == 4) {
                $("#positioninfo-hz").html(6);
            } else if (arrTemp.length == 5) {
                $("#positioninfo-hz").html(10);
            } else if (arrTemp.length == 2) {
                $("#positioninfo-hz").html(1);
            } else {
                $("#positioninfo-hz").html(0);
            }
            stateTouZhu("rx2-zxhz");
        });

        //选中位置自动获取组成方案-组选和值
        $(".recl-1007-zuxhz input[name='position_zuxhz']").click(function () {
            var arrTemp = [];
            $(".recl-1007-zuxhz input[name='position_zuxhz']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount_zuhz").html(arrTemp.length);
            if (arrTemp.length == 3) {
                $("#positioninfo-zuhz").html(3);
            } else if (arrTemp.length == 4) {
                $("#positioninfo-zuhz").html(6);
            } else if (arrTemp.length == 5) {
                $("#positioninfo-zuhz").html(10);
            } else if (arrTemp.length == 2) {
                $("#positioninfo-zuhz").html(1);
            } else {
                $("#positioninfo-zuhz").html(0);
            }
            stateTouZhu("rx2-zuxhz");
        });

        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass('acti');

            var nameVal = $(this).data("name");
            if (nameVal == "zxfs") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1002').show();
                $('.recl-1002').attr("data-flag", "rx2-zxfs");
                $(".base-i").hide();
                $(".base-rx2").show();
                allClearJl();
            } else if (nameVal == "zxds") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1003-zxds').show();
                $('.recl-1003-zxds').attr("data-flag", "rx2-zxds");
                $(".base-i").hide();
                $(".base-rx2").show();
                allClearJl();
            } else if (nameVal == "zxhz") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1004-zxhz').show();
                $('.recl-1004-zxhz').attr("data-flag", "rx2-zxhz");
                $(".base-i").hide();
                $(".base-rx2").show();
                allClearJl();
            } else if (nameVal == "zuxfs") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1005-zuxfs').show();
                $('.recl-1005-zuxfs').attr("data-flag", "rx2-zuxfs");
                $(".base-i").hide();
                $(".base-rx2-zux").show();
                allClearJl();
            } else if (nameVal == "zuxds") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1006-zuxds').show();
                $('.recl-1006-zuxds').attr("data-flag", "rx2-zuxds");
                $(".base-i").hide();
                $(".base-rx2-zux").show();
                allClearJl();
            } else if (nameVal == "zuxhz") {
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1007-zuxhz').show();
                $('.recl-1007-zuxhz').attr("data-flag", "rx2-zuxhz");
                $(".base-i").hide();
                $(".base-rx2-zux").show();
                allClearJl();
            }
        });

    });
</script>
<script>

    //获取手动输入的有效注数
    function getZxdsRx2Zhushu() {
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
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                newArr.push(arr_new[i]);
            }
        }

        var temp = newArr.length;
        var shu = $("#positioninfo-ds").html();
        lengthArr = temp * shu;
        return lengthArr;
    }

    //获取手动输入的有效注数--组选单式
    function getZuxdsRx2Zhushu() {
        var strLen = 0;
        var lengthArr = 0;
        var textStr = $(".recl-1006-zuxds .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                var oneStr = (arr_new[i].toString()).substr(0, 1);
                var twoStr = (arr_new[i].toString()).substr(1, 1);
                var arr = [];
                arr.push(parseInt(oneStr));
                arr.push(parseInt(twoStr));
                arr.sort();
                newArr.push(arr.join(""));
            }
        }

        newArr = newArr.uniqueArr();
        var temp = newArr.length;
        var shu = $("#positioninfo-zuds").html();
        lengthArr = temp * shu;
        return lengthArr;
    }

    //获取和值注数-直选任选二
    function getZxhzRx2Zhushu() {
        var hzArr = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if (hzArr.length <= 0) {
            return 0;
        }
        var zhushu = getRx2zxhzZhushu(hzArr);
        var shu = $("#positioninfo-hz").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    //获取和值注数-直选任选二
    function getZuxhzRx2Zhushu() {
        var hzArr = [];
        $.each($(".recl-1007-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });

        if (hzArr.length <= 0) {
            return 0;
        }
        var zhushu = getRx2zuxhzZhushu(hzArr);
        var shu = $("#positioninfo-zuhz").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    //获取注数--直选复式
    function stateZxfsZhuShu() {
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

        if (wanArr.length > 0) {
            newArr.push(wanArr);
        }
        if (qianArr.length > 0) {
            newArr.push(qianArr);
        }
        if (baiArr.length > 0) {
            newArr.push(baiArr);
        }
        if (shiArr.length > 0) {
            newArr.push(shiArr);
        }
        if (geArr.length > 0) {
            newArr.push(geArr);
        }

        if (newArr.length < 2) {
            return;
        }

        var zhushu = getRx2zxfsZhushu(wanArr, qianArr, baiArr, shiArr, geArr);
        return zhushu;

    }

    //获取注数--组选复式
    function stateZuxfsZhuShu() {
        var zuArr = [], newArr = [];
        $.each($(".recl-1005-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });

        var zuLength = zuArr.length;

        if (zuLength < 2) {
            return;
        }

        var zhushu = getRx2zuxfsZhushu(zuArr);
        var shu = $("#positioninfo-zufs").html();
        var lengthArr = zhushu * shu;
        return lengthArr;

    }

    // 任选二直选和值注数算法
    function getRx2zxhzZhushu(arr) {
        var newArr = [];
        for (var i = 0; i < arr.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    if (x + y == arr[i]) {
                        newArr.push(x + "" + y);
                    }
                }
            }
        }

        return newArr.length;
    }

    // 任选二组选和值注数算法
    function getRx2zuxhzZhushu(zuxhzArr) {
        var newArr = [];
        for (var i = 0; i < zuxhzArr.length; i++) {
            for (var x = 0; x < 10; x++) {
                for (var y = 0; y < 10; y++) {
                    if ((x + y) == zuxhzArr[i] && x != y) {
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

    // 组选复式
    function getRx2zuxfsZhushu(arrNew) {
        var tempArr = [];
        for (var i = 0; i < arrNew.length; i++) {
            for (var i1 = 0; i1 < arrNew.length; i1++) {
                if (arrNew[i] != arrNew[i1]) {
                    var arr = [];
                    arr.push(arrNew[i]);
                    arr.push(arrNew[i1]);
                    arr.sort();
                    tempArr.push(arr.join(""));
                }
            }
        }

        tempArr = tempArr.uniqueArr();
        return tempArr.length;
    }

    function getRx2zxfsZhushu(wanArr, qianArr, baiArr, shiArr, geArr) {
        var arrNew = [], tempArr = [];
        if (wanArr.length > 0) {
            arrNew.push(wanArr);
        }
        if (qianArr.length > 0) {
            arrNew.push(qianArr);
        }
        if (baiArr.length > 0) {
            arrNew.push(baiArr);
        }
        if (shiArr.length > 0) {
            arrNew.push(shiArr);
        }
        if (geArr.length > 0) {
            arrNew.push(geArr);
        }
        for (var i = 0; i < arrNew.length; i++) {
            for (var i1 = 0; i1 < arrNew[i].length; i1++) {
                for (var x = i + 1; x < arrNew.length; x++) {
                    for (var n = 0; n < arrNew[x].length; n++) {
                        tempArr.push(arrNew[i][i1] + "" + arrNew[x][n]);
                    }
                }
            }
        }
        return tempArr.length;
    }
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

    function allClearJl() {
        clearSelected();
        clearTextarea();
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
        var flag_str = '';
        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx2zxfsZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx2zxdsZhudan(betForm)) {
                return;
            }
            clearTextarea();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx2zxhzZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1005-zuxfs').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx2zuxfsZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1006-zuxds').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx2zuxdsZhudan(betForm)) {
                return;
            }
            clearTextarea();
            addYuxuan(betForm);
            calcAll();
        } else if (typeof $('.recl-1007-zuxhz').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getRx2zuxhzZhudan(betForm)) {
                return;
            }
            clearSelected();
            addYuxuan(betForm);
            calcAll();
        }

    }

    //任选二-组选和值注单
    function getRx2zuxhzZhudan(obj) {
        var hzArr = [], arrTemp = [];
        var checkArr = [],checkStrArr = [];
        //选取选中checkbox
        $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function(index, value){
             checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getWeiStr(checkArr);
        $.each($(".recl-1007-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });
        var zhushu = getZuxhzRx2Zhushu();
        $(".recl-1007-zuxhz input[name='position_zuxhz']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return false;
        }
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }


        obj.showPlayName = "任二组选-组选和值";
        obj.showContent = "号码: (" + hzArr.join(",") + ")";
        obj.betContent = checkStrArr.join(',') + "|" + hzArr.join(",");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-zux").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //任选二-直选和值注单
    function getRx2zxhzZhudan(obj) {
        var hzArr = [], arrTemp = [], checkStrArr = [], checkArr = [];
        $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });
        //选取选中checkbox
        $.each($(".recl-1004-hz input[type='checkbox']:checked"), function(index, value){
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getWeiStr(checkArr);

        var zhushu = getZxhzRx2Zhushu();
        $(".recl-1004-zxhz input[name='position_hz']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return false;
        }
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "任二直选-直选和值";
        obj.showContent = "号码: (" + hzArr.join(",") + ")";
        obj.betContent = checkStrArr.join(',') + "|" + hzArr.join(",");
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

    //任选二-直选单式注单
    function getRx2zxdsZhudan(obj) {
        var checkStrArr = [], checkArr =[];
        var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
        //选取选中checkbox
        $.each($(".re-select-ds input[type='checkbox']:checked"), function(index, value){
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getWeiStr(checkArr);
        var newArr = [], arrTemp = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                newArr.push(arr_new[i]);
            }
        }

        var temp = newArr.length;
        var shu = $("#positioninfo-ds").html();
        var zhushu = temp * shu;
        $(".recl-1003-zxds input[name='position_ds']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return false;
        }
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "任二直选-直选单式";
        obj.showContent = "号码: (" + newArr.join(",") + ")";
        obj.betContent = checkStrArr.join(',') + "|" + newArr.join(',');
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

    //任选二-组选单式注单
    function getRx2zuxdsZhudan(obj) {
        var checkStrArr = [], checkArr =[];
        //选取选中checkbox
        $.each($(".re-select-zuxds input[type='checkbox']:checked"), function(index, value){
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getWeiStr(checkArr);

        var errorStr = '';
        var repeatArr = [], allErrorArr = [];
        var errorArr = [], arrTemp = [];
        var textStr = $(".recl-1006-zuxds .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
                var oneStr = (arr_new[i].toString()).substr(0, 1);
                var twoStr = (arr_new[i].toString()).substr(1, 1);
                var arr = [];
                arr.push(parseInt(oneStr));
                arr.push(parseInt(twoStr));
                arr.sort();
                newArr.push(arr.join(""));
            } else {
                if (arr_new[i] != "") {
                    errorArr.push(arr_new[i]);
                }
            }
        }

        repeatArr = newArr.duplicate(); //重复号码
        newArr = newArr.uniqueArr();
        var temp = newArr.length;
        var shu = $("#positioninfo-ds").html();
        var zhushu = temp * shu;

        if (checkArr.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return false;
        }
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        if (repeatArr.length > 0) {
            allErrorArr.push("自动过滤重复号码:");
            for (var r = 0; r < repeatArr.length; r++) {
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

        obj.showPlayName = "任二组选-组选单式";
        obj.showContent = "号码: (" + newArr.join(",") + ")";
        obj.betContent = checkStrArr.join(',') + "|" + newArr.join(",");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-zux").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    //任选二-直选复式注单
    function getRx2zxfsZhudan(obj) {
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
        var zhushu = getRx2zxfsZhushu(wanArr, qianArr, baiArr, shiArr, geArr);

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        var wanStr = wanArr.length > 0 ? ("万位: " + wanArr.join("")) : '';
        var qianStr = qianArr.length > 0 ? (" 千位: " + qianArr.join("")) : '';
        var baiStr = baiArr.length > 0 ? (" 百位: " + baiArr.join("")) : '';
        var shiStr = shiArr.length > 0 ? (" 十位: " + shiArr.join("")) : '';
        var geStr = geArr.length > 0 ? (" 个位: " + geArr.join("")) : '';
        var strTemp = $.trim(
            (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
            (qianStr == ' ' ? ' ': qianArr.join(",") + "|") +
            (baiStr == ' ' ? ' ': baiArr.join(",") + "|") +
            (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
            (geStr == ' ' ? ' ': geArr.join(","))
        );

        obj.showPlayName = "任二直选-直选复式";
        obj.showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
        obj.betContent = strTemp;
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


    //任选二-组选复式注单
    function getRx2zuxfsZhudan(obj) {
        var checkStrArr = [], checkArr =[];
        //选取选中checkbox
        $.each($(".recl-1005-fs input[type='checkbox']:checked"), function(index, value){
            checkArr.push($(this).val());
        });
        //获取位数字符串
        checkStrArr = getWeiStr(checkArr);

        var zuArr = [], arrTemp = [];
        $.each($(".recl-1005-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
            zuArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getRx2zuxfsZhushu(zuArr);
        if (checkArr.length < 2) {
            alert("[任选二]至少需要选择2个位置");
            return false;
        }
        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }

        obj.showPlayName = "任二组选-组选复式";
        obj.showContent = "号码: (" + zuArr.join(",") + ")";
        obj.betContent = checkStrArr.join(',') + "|" + zuArr.join(",");
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = 1;
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayGroupId = playGroupId;
        obj.betFandian = $(".fandian-bfb").data("value");
        obj.betPlayPl = $(".jiangjin-change-zux").data("value");
        obj.betPlayPlId = getPlayPlId();
        obj.betPlayId = getPlayId();
        return true;
    }

    function suiji(total) {
        var result = [];
        var playNameStr = '', flag_zhi = '', contentStr = '';
        var checkStrArr = [], checkArr =[];

        var shu = 0, hz_shu = 0;
        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            playNameStr = "任二直选-直选复式";
            flag_zhi = "rx2-zxfs";
        } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
            playNameStr = "任二直选-直选单式";
            flag_zhi = "rx2-zxds";
        } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
            playNameStr = "任二直选-直选和值";
            flag_zhi = "rx2-zxhz";
        } else if (typeof $('.recl-1005-zuxfs').attr('data-flag') != 'undefined') {
            playNameStr = "任二组选-组选复式";
            flag_zhi = "rx2-zuxfs";
        } else if (typeof $('.recl-1006-zuxds').attr('data-flag') != 'undefined') {
            playNameStr = "任二组选-组选单式";
            flag_zhi = "rx2-zuxds";
        } else if (typeof $('.recl-1007-zuxhz').attr('data-flag') != 'undefined') {
            playNameStr = "任二组选-组选和值";
            flag_zhi = "rx2-zuxhz";
        }

        for (var numIndex = 0; numIndex < total; ++numIndex) {
            var obj = {};
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
            if (flag_zhi == "rx2-zxfs") {
                contentStr = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
                obj.betContent = arr[0] + "|" + arr[1] + "|" + arr[2] + "|" + arr[3] + "|" + arr[4];
            } else if (flag_zhi == "rx2-zxds" || flag_zhi == "rx2-zuxds") {
                if(flag_zhi === "rx2-zxds"){
                    var checkArr = [], checkStrArr = [];
                    //选取选中checkbox
                    $.each($(".re-select-ds input[type='checkbox']:checked"), function(index, value){
                        checkArr.push($(this).val());
                    });
                    //获取位数字符串
                    checkStrArr = getWeiStr(checkArr);
                    contentStr = "号码: (" + arr[0] + "" + arr[1] + ")";
                    obj.betContent = checkStrArr.join(',') + "|" + arr[0] + "" + arr[1];
                }else{
                    var checkArr = [], checkStrArr = [];
                    //选取选中checkbox
                    $.each($(".re-select-zuxds input[type='checkbox']:checked"), function(index, value){
                        checkArr.push($(this).val());
                    });
                    //获取位数字符串
                    checkStrArr = getWeiStr(checkArr);
                    contentStr = "号码: (" + arr[0] + "" + arr[1] + ")";
                    obj.betContent = checkStrArr.join(',') + "|" + arr[0] + "" + arr[1];
                }

            } else if (flag_zhi == "rx2-zxhz") {
                var hzsj = [];
                var checkArr = [], checkStrArr = [];
                //选取选中checkbox
                $.each($(".recl-1004-hz input[type='checkbox']:checked"), function(index, value){
                    checkArr.push($(this).val());
                });
                //获取位数字符串
                checkStrArr = getWeiStr(checkArr);
                hzsj.push(parseInt(Math.random() * 19));
                shu = getRx2zxhzZhushu(hzsj);
                hz_shu = $("#positioninfo-hz").html();
                contentStr = "号码: (" + hzsj[0] + ")";
                obj.betContent = checkStrArr.join(',') + "|" + hzsj.join(',');
            } else if (flag_zhi == "rx2-zuxhz") {
                var zuxhz = [];
                var checkArr = [], checkStrArr = [];
                //选取选中checkbox
                $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function(index, value){
                    checkArr.push($(this).val());
                });
                //获取位数字符串
                checkStrArr = getWeiStr(checkArr);
                zuxhz.push(parseInt(Math.random() * 19));
                shu = getRx2zuxhzZhushu(zuxhz);
                hz_shu = $("#positioninfo-zuhz").html();
                contentStr = "号码: (" + zuxhz[0] + ")";
                obj.betContent = checkStrArr.join(',') + "|" + zuxhz.join(',');
            } else if (flag_zhi == "rx2-zuxfs") {
                var checkArr = [],checkStrArr = [];
                //选取选中checkbox
                $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function(index, value){
                    checkArr.push($(this).val());
                });
                //获取位数字符串
                checkStrArr = getWeiStr(checkArr);
                contentStr = "号码: (" + arr[0] + "," + arr[1] + ")";
                obj.betContent = checkStrArr.join(',') + "|" + arr[0] + "," + arr[1];
            }

            obj.showPlayName = playNameStr;
            obj.showContent = contentStr;
            obj.betPerMoney = $("#inputMoney").data("money");
            obj.betBeishu = $("#inputBeishu").data("beishu");
            obj.betMode = 1;

            if (flag_zhi == "rx2-zuxfs") {
                obj.betPlayPl = $(".jiangjin-change-zux").html();
                var zufs_shu = $("#positioninfo-zufs").html();
                obj.betZhushu = zufs_shu;
            } else if (flag_zhi == "rx2-zuxds") {
                obj.betPlayPl = $(".jiangjin-change-zux").html();
                var zuds_shu = $("#positioninfo-zuds").html();
                obj.betZhushu = zuds_shu;
            } else if (flag_zhi == "rx2-zuxhz") {
                obj.betPlayPl = $(".jiangjin-change-zux").html();
                obj.betZhushu = hz_shu * shu;
            } else if (flag_zhi == "rx2-zxds") {
                obj.betPlayPl = $(".jiangjin-change").html();
                var ds_shu = $("#positioninfo-ds").html();
                obj.betZhushu = ds_shu;
            } else if (flag_zhi == "rx2-zxhz") {
                obj.betPlayPl = $(".jiangjin-change").html();
                obj.betZhushu = hz_shu * shu;
            } else {
                obj.betPlayPl = $(".jiangjin-change").html();
                obj.betZhushu = 10;
            }
            obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
            obj.betPlayGroupId = playGroupId;
            obj.betFandian = $(".fandian-bfb").data("value");
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

        $('.recl-1003-zxds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('rx2-zxds');
        });
        $('.recl-1006-zuxds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('rx2-zuxds');
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
                    //任二直选
                    if(value.playPlId == 14277){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_r2zx = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change").data("value", money_r2zx);
                        $(".jiangjin-change").html(money_r2zx);
                    }

                    //任二直选
                    if(value.playPlId == 14280){
                        var maxPlayPl = value.playPl;
                        var maxFandian = value.maxFdBl;
                        var minPl = value.minPl;
                        var convertBlMoney = (maxPlayPl - minPl) / maxFandian;
                        var money_r2zux = (maxPlayPl - parseFloat(money_jangjin).toFixed(1) * convertBlMoney).toFixed(3);
                        $(".jiangjin-change-zux").data("value", money_r2zux);
                        $(".jiangjin-change-zux").html(money_r2zux);
                    }
                });

                if (typeof stateTouZhu == "function") {
                    var flag_str = '';
                    if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
                        flag_str = 'rx2-zxfs';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
                        flag_str = 'rx2-zxds';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
                        flag_str = 'rx2-zxhz';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1005-zuxfs').attr('data-flag') != 'undefined') {
                        flag_str = 'rx2-zuxfs';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1006-zuxds').attr('data-flag') != 'undefined') {
                        flag_str = 'rx2-zuxds';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1007-zuxhz').attr('data-flag') != 'undefined') {
                        flag_str = 'rx2-zuxhz';
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
