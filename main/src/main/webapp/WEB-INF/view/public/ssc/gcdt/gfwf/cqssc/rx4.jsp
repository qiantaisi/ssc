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
            <b>任四直选</b>
            <p class="btn_fu_zhi">
                <span class="acti" data-name="zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span data-name="zxds"><a href="javascript:void(0)">直选单式</a></span>
            </p>
        </li>
        <li>
            <b>任四组选</b>
            <p class="btn_fu_zhi">
                <span data-name="zux24"><a href="javascript:void(0)">组选24</a></span>
                <span data-name="zux12"><a href="javascript:void(0)">组选12</a></span>
                <span data-name="zux6"><a href="javascript:void(0)">组选6</a></span>
                <span data-name="zux4"><a href="javascript:void(0)">组选4</a></span>
            </p>
        </li>
    </ul>
</div>
<div class="Pick cl-1002 recl-1002" data-flag="rx4-zxfs">
    <p class="p1">
        <span class="fr fl cl-1001">
           从万位、千位、百位、十位、个位中至少四位上各选1个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：万位5，千位1,百位8,十位1 开奖号码：51812，即中任四直选。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择四个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
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
            从万位、千位、百位、十位、个位中至少选择四个位置,至少手动输入一个四位数的号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万位、千位、百位、十位，输入号码5181 开奖号码：51812，即中任四直选(单式)。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择四个位置,至少手动输入一个四位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
            </a>

        </span>
    </p>
    <div class="selposition re-select-ds">
        <label for="position_ds_0"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_0" value="1"/>万位</label>
        <label for="position_ds_1"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_1" value="2"/>千位</label>
        <label for="position_ds_2"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_2" value="3"/>百位</label>
        <label for="position_ds_3"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_3" value="4"/>十位</label>
        <label for="position_ds_4"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_4" value="5"/>个位</label>
        <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-ds" class="rxcount">4</var>
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

<%--组选24--%>
<div class="Pick cl-1002 recl-1004-zux24">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择四个位置,号码区至少选择四个号码构成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择千、百、十、个位,号码选择0568 开奖号码：10568(指定位置号码顺序不限且没有重复)，即可中任四组选24。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择四个位置,号码区至少选择四个号码构成一注，所选号码与开奖号码指定位置上的号码相同，顺序不限，且开奖号码没有重复，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition re-select-zux24">
                <label for="position_zux240"><input type="checkbox" class="selpositioninput" name="position_zux24" id="position_zux240" value="1"/>万位</label>
                <label for="position_zux241"><input type="checkbox" class="selpositioninput" name="position_zux24" checked="checked" id="position_zux241" value="2"/>千位</label>
                <label for="position_zux242"><input type="checkbox" class="selpositioninput" name="position_zux24" checked="checked" id="position_zux242" value="3"/>百位</label>
                <label for="position_zux243"><input type="checkbox" class="selpositioninput" name="position_zux24" checked="checked" id="position_zux243" value="4"/>十位</label>
                <label for="position_zux244"><input type="checkbox" class="selpositioninput" name="position_zux24" checked="checked" id="position_zux244" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zux24" class="rxcount">4</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zux24" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="组选24">
            <b><i>组选24</i></b>
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

<%--组选12--%>
<div class="Pick cl-1002 recl-1005-zux12">
    <p class="p1">
        <span class="fr fl cl-1001">
           从万位、千位、百位、十位、个位中至少选择四个位置,从“二重号”选择一个号码，“单号”中选择两个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择千、百、十、个位,二重号：8；单号：06 开奖号码：10688(指定位置号码顺序不限)，即可中任四组选12。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择四个位置,从“二重号”中至少选择一个号码，“单号”中至少选择两个号码组成一注，所选号码与开奖号码指定位置上的号码相同，且所选的二重号码在开奖号码指定位置中出现2次，顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition re-select-zux12">
                <label for="position_zux120"><input type="checkbox" class="selpositioninput" name="position_zux12" id="position_zux120" value="1"/>万位</label>
                <label for="position_zux121"><input type="checkbox" class="selpositioninput" name="position_zux12" checked="checked" id="position_zux121" value="2"/>千位</label>
                <label for="position_zux122"><input type="checkbox" class="selpositioninput" name="position_zux12" checked="checked" id="position_zux122" value="3"/>百位</label>
                <label for="position_zux123"><input type="checkbox" class="selpositioninput" name="position_zux12" checked="checked" id="position_zux123" value="4"/>十位</label>
                <label for="position_zux124"><input type="checkbox" class="selpositioninput" name="position_zux12" checked="checked" id="position_zux124" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zux12" class="rxcount">4</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zux12" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="二重号">
            <b><i>二重号</i></b>
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
        <li data-name="单号">
            <b><i>单号</i></b>
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

<%--组选6--%>
<div class="Pick cl-1002 recl-1006-zux6">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择四个位置,从“二重号”中选择两个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择千、百、十、个位,二重号：28 开奖号码：12288(指定位置号码顺序不限)，即可中任四组选6。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择四个位置,从“二重号”中至少选择两个号码组成一注，所选号码与开奖号码指定位置上的号码相同，且所选的2个二重号码在开奖号码指定位置中分别出现了2次，顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition re-select-zux6">
                <label for="position_zux60"><input type="checkbox" class="selpositioninput" name="position_zux6" id="position_zux60" value="1"/>万位</label>
                <label for="position_zux61"><input type="checkbox" class="selpositioninput" name="position_zux6" checked="checked" id="position_zux61" value="2"/>千位</label>
                <label for="position_zux62"><input type="checkbox" class="selpositioninput" name="position_zux6" checked="checked" id="position_zux62" value="3"/>百位</label>
                <label for="position_zux63"><input type="checkbox" class="selpositioninput" name="position_zux6" checked="checked" id="position_zux63" value="4"/>十位</label>
                <label for="position_zux64"><input type="checkbox" class="selpositioninput" name="position_zux6" checked="checked" id="position_zux64" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zux6" class="rxcount">4</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zux6" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="二重号">
            <b><i>二重号</i></b>
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
<%--组选4--%>
<div class="Pick cl-1002 recl-1007-zux4">
    <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择四个位置,从“三重号”中选择一个号码，“单号”中选择一个号码组成一注。
            <a><img src="${resPath}img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择千、百、十、个位,三重号：8；单号：2 开奖号码：18828(指定位置号码顺序不限)，即可中任四组选4。</var>
            </a>
            <a>
                <img src="${resPath}img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择四个位置,从“三重号”中至少选择一个号码，“单号”中至少选择一个号码组成一注，所选号码与开奖号码指定位置上的号码相同，且所选三重号码在在开奖号码指定位置中出现3次，顺序不限，即为中奖。</var>
            </a>
        </span>
    </p>
    <ul>
        <li class="re2-1004-li">
            <div class="selposition re-select-zux4">
                <label for="position_zux40"><input type="checkbox" class="selpositioninput" name="position_zux4" id="position_zux40" value="1"/>万位</label>
                <label for="position_zux41"><input type="checkbox" class="selpositioninput" name="position_zux4" checked="checked" id="position_zux41" value="2"/>千位</label>
                <label for="position_zux42"><input type="checkbox" class="selpositioninput" name="position_zux4" checked="checked" id="position_zux42" value="3"/>百位</label>
                <label for="position_zux43"><input type="checkbox" class="selpositioninput" name="position_zux4" checked="checked" id="position_zux43" value="4"/>十位</label>
                <label for="position_zux44"><input type="checkbox" class="selpositioninput" name="position_zux4" checked="checked" id="position_zux44" value="5"/>个位</label>
                <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zux4" class="rxcount">4</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zux4" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
            </div>
        </li>
        <li data-name="三重号">
            <b><i>三重号</i></b>
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
        <li data-name="单号">
            <b><i>单号</i></b>
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

<div class="add_spot">
    <div class="left">
        <div class="sopt_wrap">
            <div class="slide_sp rx4_slide_sp">
                奖金/返点
                <%--<p><span style="width: 4.89063px;"></span><var style="left: 4.89063px;"></var></p>--%>
                <%--<i><var>934058.63</var> / 7.0%</i>--%>
                <div class="cl-1003">
                    <div class="cl-1004">
                        <input type="hidden" class="slider-input"/>
                    </div>
                </div>
                <i class="base-i base-rx4"><var class="jiangjin-change">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base-i base-rx4-zux24"><var class="jiangjin-change-zux24">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base-i base-rx4-zux12"><var class="jiangjin-change-zux12">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base-i base-rx4-zux6"><var class="jiangjin-change-zux6">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
                <i class="base-i base-rx4-zux4"><var class="jiangjin-change-zux4">0.0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb">0.0%</var></i>
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
    $(function(){
        $(".Pick").hide();
        $(".base-i").hide();
        $(".base-rx4").show();
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
            if(typeof flagName == "undefined"){
                flagName = $(this).parent().parent().parent().parent().parent().attr("data-flag");
            }
            if(flagName == "rx4-zxfs"){
                stateTouZhu(flagName);
            } else if(flagName == "rx4-zux24"){
                stateTouZhu(flagName);
            } else if(flagName == "rx4-zux12"){
                stateTouZhu(flagName);
            } else if(flagName == "rx4-zux6"){
                stateTouZhu(flagName);
            } else if(flagName == "rx4-zux4"){
                stateTouZhu(flagName);
            }
        });

        //任选四-直选单式
        $(".re-select-ds input[name='position_ds']").click(function () {
            var arrTemp = [];
            $(".re-select-ds input[name='position_ds']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-ds").html(arrTemp.length);
            if(arrTemp.length == 4){
                $("#positioninfo-ds").html(1);
            } else if(arrTemp.length == 5){
                $("#positioninfo-ds").html(5);
            } else{
                $("#positioninfo-ds").html(0);
            }
            stateTouZhu("rx4-zxds");
        });

        //任选四-组选24
        $(".re-select-zux24 input[name='position_zux24']").click(function () {
            var arrTemp = [];
            $(".re-select-zux24 input[name='position_zux24']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zux24").html(arrTemp.length);
            if(arrTemp.length == 4){
                $("#positioninfo-zux24").html(1);
            } else if(arrTemp.length == 5){
                $("#positioninfo-zux24").html(5);
            } else{
                $("#positioninfo-zux24").html(0);
            }
            stateTouZhu("rx4-zux24");
        });

        //任选四-组选12
        $(".re-select-zux12 input[name='position_zux12']").click(function () {
            var arrTemp = [];
            $(".re-select-zux12 input[name='position_zux12']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zux12").html(arrTemp.length);
            if(arrTemp.length == 4){
                $("#positioninfo-zux12").html(1);
            } else if(arrTemp.length == 5){
                $("#positioninfo-zux12").html(5);
            } else{
                $("#positioninfo-zux12").html(0);
            }
            stateTouZhu("rx4-zux12");
        });

        //任选四-组选6
        $(".re-select-zux6 input[name='position_zux6']").click(function () {
            var arrTemp = [];
            $(".re-select-zux6 input[name='position_zux6']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zux6").html(arrTemp.length);
            if(arrTemp.length == 4){
                $("#positioninfo-zux6").html(1);
            } else if(arrTemp.length == 5){
                $("#positioninfo-zux6").html(5);
            } else{
                $("#positioninfo-zux6").html(0);
            }
            stateTouZhu("rx4-zux6");
        });

        //任选四-组选4
        $(".re-select-zux4 input[name='position_zux4']").click(function () {
            var arrTemp = [];
            $(".re-select-zux4 input[name='position_zux4']:checked").each(function () {
                arrTemp.push($(this).val());
            });
            $("#positioncount-zux4").html(arrTemp.length);
            if(arrTemp.length == 4){
                $("#positioninfo-zux4").html(1);
            } else if(arrTemp.length == 5){
                $("#positioninfo-zux4").html(5);
            } else{
                $("#positioninfo-zux4").html(0);
            }
            stateTouZhu("rx4-zux4");
        });


        $(".group ul li p span").click(function () {
            $(".group ul li p span.acti").removeClass("acti");
            $(this).addClass('acti');

            var nameVal = $(this).data("name");
            if(nameVal == "zxfs"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1002').show();
                $('.recl-1002').attr("data-flag", "rx4-zxfs");
                $(".base-i").hide();
                $(".base-rx4").show();
                allClearJl();
            } else if(nameVal == "zxds"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1003-zxds').show();
                $('.recl-1003-zxds').attr("data-flag", "rx4-zxds");
                $(".base-i").hide();
                $(".base-rx4").show();
                allClearJl();
            } else if(nameVal == "zux24"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1004-zux24').show();
                $('.recl-1004-zux24').attr("data-flag", "rx4-zux24");
                $(".base-i").hide();
                $(".base-rx4-zux24").show();
                allClearJl();
            } else if(nameVal == "zux12"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1005-zux12').show();
                $('.recl-1005-zux12').attr("data-flag", "rx4-zux12");
                $(".base-i").hide();
                $(".base-rx4-zux12").show();
                allClearJl();
            } else if(nameVal == "zux6"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1006-zux6').show();
                $('.recl-1006-zux6').attr("data-flag", "rx4-zux6");
                $(".base-i").hide();
                $(".base-rx4-zux6").show();
                allClearJl();
            } else if(nameVal == "zux4"){
                $(".Pick").removeAttr("data-flag");
                $(".Pick").hide();
                $('.recl-1007-zux4').show();
                $('.recl-1007-zux4').attr("data-flag", "rx4-zux4");
                $(".base-i").hide();
                $(".base-rx4-zux4").show();
                allClearJl();
            }
        });

    });
</script>
<script>

    //任选四-直选单式
    function getZxdsrx4Zhushu() {
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
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
                newArr.push(arr_new[i]);
            }
        }

        var temp = newArr.length;
        var shu = $("#positioninfo-ds").html();
            lengthArr = temp * shu;
        return lengthArr;
    }

    //任选四-组选4
    function getZux4Zhushu() {
        var sanChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [];
        $.each($(".recl-1007-zux4 ul li[data-name = '三重号'] span.acti"), function (index, value) {
            sanChongHaoArr.push($.trim($(this).find("i").html()));
        });

        $.each($(".recl-1007-zux4 ul li[data-name = '单号'] span.acti"), function (index, value) {
            danHaoArr.push($.trim($(this).find("i").html()));
        });

        for (var d = 0; d < sanChongHaoArr.length; d++) {
            for (var n = 0; n < danHaoArr.length; n++) {
                if (sanChongHaoArr[d] != danHaoArr[n]) {
                    tempArr.push(sanChongHaoArr[d] + "" + danHaoArr[n]);
                }
            }
        }
        if (tempArr.length < 1) {
            return 0;
        }
        var zhushu = tempArr.length;
        var shu = $("#positioninfo-zux4").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    //任选四-组选6
    function getZux6Zhushu() {
        var erChongHaoArr = [], tempArr = [], nowArr = [];
        $.each($(".recl-1006-zux6 ul li[data-name = '二重号'] span.acti"), function (index, value) {
            erChongHaoArr.push($.trim($(this).find("i").html()));
        });
        if (erChongHaoArr.length < 2) {
            return;
        }
        for (var d = 0; d < erChongHaoArr.length; d++) {
            for (var n = 0; n < erChongHaoArr.length; n++) {
                if (erChongHaoArr[d] != erChongHaoArr[n]) {
                    var arr = [];
                    arr.push(erChongHaoArr[d]);
                    arr.push(erChongHaoArr[n]);
                    arr.sort();
                    tempArr.push(arr.join(""));
                }
            }
        }
        tempArr = tempArr.uniqueArr();
        var zhushu = tempArr.length;
        var shu = $("#positioninfo-zux6").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    //任选四-组选12
    function getZux12Zhushu() {
        var erChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [];
        $.each($(".recl-1005-zux12 ul li[data-name = '二重号'] span.acti"), function (index, value) {
            erChongHaoArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1005-zux12 ul li[data-name = '单号'] span.acti"), function (index, value) {
            danHaoArr.push($.trim($(this).find("i").html()));
        });

        if (danHaoArr.length < 2 && erChongHaoArr.length < 1) {
            return;
        }
        //单号两两组合一共有若干对
        for (var d = 0; d < danHaoArr.length; d++) {
            for (var n = 0; n < danHaoArr.length; n++) {
                if (danHaoArr[d] != danHaoArr[n]) {
                    var arr = [];
                    arr.push(danHaoArr[d]);
                    arr.push(danHaoArr[n]);
                    arr.sort();
                    tempArr.push(arr.join(""));
                }
            }
        }
        tempArr = tempArr.uniqueArr();

        for (var i = 0; i < erChongHaoArr.length; i++) {
            for (var m = 0; m < tempArr.length; m++) {
                var onestr = (tempArr[m].toString()).substr(0, 1);
                var twostr = (tempArr[m].toString()).substr(1, 1);
                if (parseInt(onestr) != erChongHaoArr[i] && parseInt(twostr) != erChongHaoArr[i]) {
                    var arr = [];
                    arr.push(onestr);
                    arr.push(twostr);
                    arr.sort();
                    nowArr.push(erChongHaoArr[i] + "" + arr.join(""));
                }
            }
        }
        nowArr = nowArr.uniqueArr();
        var zhushu = nowArr.length;
        var shu = $("#positioninfo-zux12").html();
        var lengthArr = zhushu * shu;
        return lengthArr;
    }

    //任选四-组选24
    function getZux24Zhushu() {
            var fuShiArr = [], newArr = [];
            $.each($(".recl-1004-zux24 ul li[data-name = '组选24'] span.acti"), function (index, value) {
                fuShiArr.push($.trim($(this).find("i").html()));
            });
            var zlLength = fuShiArr.length;
            if (zlLength < 4) {
                return 0;
            }

            for(var n1 = 0; n1 < fuShiArr.length; n1++){
                for(var n2 = 0; n2 < fuShiArr.length; n2++){
                    for(var n3 = 0; n3 < fuShiArr.length; n3++){
                        for(var n4 = 0; n4 < fuShiArr.length; n4++){
                            if(fuShiArr[n1] != fuShiArr[n2] && fuShiArr[n1] != fuShiArr[n3] && fuShiArr[n1] != fuShiArr[n4] && fuShiArr[n2] != fuShiArr[n3] && fuShiArr[n2] != fuShiArr[n4]  && fuShiArr[n3] != fuShiArr[n4]){
                                var arr = [];
                                arr.push(fuShiArr[n1]);
                                arr.push(fuShiArr[n2]);
                                arr.push(fuShiArr[n3]);
                                arr.push(fuShiArr[n4]);
                                arr.sort();
                                newArr.push(arr.join(""));
                            }
                        }
                    }
                }
            }
            newArr = newArr.uniqueArr();
            var zhushu = newArr.length;
            var shu = $("#positioninfo-zux24").html();
            var lengthArr = zhushu * shu;
            return lengthArr;
    }

    //任选四--直选复式
    function getZxfsRx4Zhushu(){
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

        if (numArr.length < 4) {
            return 0;
        }

        var tmpArr = getFlagArrs(numArr, 4);
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
            if (!getrx4zxfsZhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getrx4zxdsZhudan(betForm)) {
                return;
            }
            clearTextarea();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1004-zux24').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZux24Zhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1005-zux12').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZux12Zhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1006-zux6').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZux6Zhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        } else if (typeof $('.recl-1007-zux4').attr('data-flag') != 'undefined') {
            var betForm = {};
            if (!getZux4Zhudan(betForm)) {
                return;
            }
            clearSelected();
            var html = template("template_touzhu", betForm);
            $("#zhudanList").append(html);
            calcAll();
        }
    }

    //任选四-组选4
    function getZux4Zhudan(obj) {
        var sanChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [];
        $.each($(".recl-1007-zux4 ul li[data-name = '三重号'] span.acti"), function (index, value) {
            sanChongHaoArr.push($.trim($(this).find("i").html()));
        });

        $.each($(".recl-1007-zux4 ul li[data-name = '单号'] span.acti"), function (index, value) {
            danHaoArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZux4Zhushu();
        $(".re-select-zux4 input[name='position_zux4']:checked").each(function () {
            tempArr.push($(this).val());
        });
        if (tempArr.length < 4) {
            alert("[任选四]至少需要选择4个位置");
            return false;
        }

        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "任四组选-组选4";
        obj.content = "三重号: (" + sanChongHaoArr.join(",") + "), " + "单号: (" + danHaoArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux4").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选四-组选6
    function getZux6Zhudan(obj) {
        var erChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [], arrTemp = [];
        $.each($(".recl-1006-zux6 ul li[data-name = '二重号'] span.acti"), function (index, value) {
            erChongHaoArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZux6Zhushu();
        $(".re-select-zux6 input[name='position_zux6']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 4) {
            alert("[任选四]至少需要选择4个位置");
            return false;
        }

        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "任四组选-组选6";
        obj.content = "二重号: (" + erChongHaoArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux6").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选四-组选12
    function getZux12Zhudan(obj) {
        var erChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [], arrTemp = [];
        $.each($(".recl-1005-zux12 ul li[data-name = '二重号'] span.acti"), function (index, value) {
            erChongHaoArr.push($.trim($(this).find("i").html()));
        });
        $.each($(".recl-1005-zux12 ul li[data-name = '单号'] span.acti"), function (index, value) {
            danHaoArr.push($.trim($(this).find("i").html()));
        });

        var zhushu = getZux12Zhushu();

        $(".re-select-zux12 input[name='position_zux12']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 4) {
            alert("[任选四]至少需要选择4个位置");
            return false;
        }

        if (zhushu <= 0 || typeof zhushu == "undefined") {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "任四组选-组选12";
        obj.content = "二重号: (" + erChongHaoArr.join(",") + "), " + "单号: (" + danHaoArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change-zux12").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选四-组选24
    function getZux24Zhudan(obj) {
        var hzArr = [];
        var arrTemp = [];
        $.each($(".recl-1004-zux24 ul li[data-name = '组选24'] span.acti"), function (index, value) {
            hzArr.push($.trim($(this).find("i").html()));
        });
        var zhushu = getZux24Zhushu();

        $(".re-select-zux24 input[name='position_zux24']:checked").each(function () {
            arrTemp.push($(this).val());
        });
        if (arrTemp.length < 4) {
            alert("[任选四]至少需要选择4个位置");
            return false;
        }

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "任四组选-组选24";
        obj.content = "组选24: (" + hzArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }

    //任选四-直选单式
    function getrx4zxdsZhudan(obj) {
        var errorStr = '';
        var repeatArr = [], allErrorArr = [];
        var errorArr = [];
        var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
        var newArr = [];
        textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
        var arr_new = textStr.split(",");
        for (var i = 0; i < arr_new.length; i++) {
            if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
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
        if (arrTemp.length < 4) {
            alert("[任选四]至少需要选择4个位置");
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

        obj.playName = "任四直选-直选单式";
        obj.content = "号码: (" + newArr.join(",") + ")";
        obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
        obj.zhushu = zhushu;
        obj.beishu = $("#inputBeishu").data("beishu");
        obj.money = $("#inputMoney").data("money");
        obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
        obj.playGroupId = playGroupId;
        return true;
    }


    //任选四-直选复式
    function getrx4zxfsZhudan(obj) {
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
        var zhushu = getZxfsRx4Zhushu();

        if (zhushu <= 0) {
            alert("至少选择1注号码才能投注");
            return false;
        }
        obj.playName = "任四直选-直选复式";
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

    function suiji(total) {
        var result = [];
        var playNameStr = '', flag_zhi = '', contentStr = '';
        var zhushu = 0;
        var shu = 0, hz_shu = 0;
        if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
            playNameStr = "任四直选-直选复式";
            flag_zhi = "rx4-zxfs";
        } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
            playNameStr = "任四直选-直选单式";
            flag_zhi = "rx4-zxds";
        } else if (typeof $('.recl-1004-zux24').attr('data-flag') != 'undefined') {
            playNameStr = "任四组选-组选24";
            flag_zhi = "rx4-zux24";
        } else if (typeof $('.recl-1005-zux12').attr('data-flag') != 'undefined') {
            playNameStr = "任四组选-组选12";
            flag_zhi = "rx4-zux12";
        } else if (typeof $('.recl-1006-zux6').attr('data-flag') != 'undefined') {
            playNameStr = "任四组选-组选6";
            flag_zhi = "rx4-zux6";
        } else if (typeof $('.recl-1007-zux4').attr('data-flag') != 'undefined') {
            playNameStr = "任四组选-组选4";
            flag_zhi = "rx4-zux4";
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
            if(flag_zhi == "rx4-zxfs"){
                contentStr = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
                zhushu = 5;
            } else if(flag_zhi == "rx4-zxds"){
                contentStr = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + "" + arr[3] + ")";
                var ds_shu = $("#positioninfo-ds").html();
                zhushu = ds_shu;
            } else if(flag_zhi == "rx4-zux24"){
                var arrZux24 = [];
                while (arrZux24.length < 1) {
                    var x1 = parseInt(Math.random() * 10);
                    var x2 = parseInt(Math.random() * 10);
                    var x3 = parseInt(Math.random() * 10);
                    var x4 = parseInt(Math.random() * 10);
                    if (x1 != x2 && x1 != x3 && x1 != x4 && x2 != x3 && x2 != x4 && x3 != x4) {
                        arrZux24.push(x1 + "," + x2 + "," + x3 + "," + x4);
                    }
                }
                var numZux24 = $("#positioninfo-zux24").html();
                contentStr = "组选24: (" + arrZux24.join("") + ")";
                zhushu = numZux24;
            } else if(flag_zhi == "rx4-zux12"){
                var arrZux12 = [];
                while (arrZux12.length < 1) {
                    var x1 = parseInt(Math.random() * 10);
                    var x2 = parseInt(Math.random() * 10);
                    var x3 = parseInt(Math.random() * 10);
                    if (x1 != x2 && x1 != x3 && x2 != x3) {
                        arrZux12.push("二重号: ("+ x1 + "), " + "单号: (" + x2 + "," + x3 + ")");
                    }
                }
                var numZux12 = $("#positioninfo-zux12").html();
                contentStr = arrZux12[0];
                zhushu = numZux12;
            } else if(flag_zhi == "rx4-zux6"){
                var arrZux6 = [];
                while (arrZux6.length < 1) {
                    var x1 = parseInt(Math.random() * 10);
                    var x2 = parseInt(Math.random() * 10);
                    if (x1 != x2) {
                        arrZux6.push("二重号: (" + x1 + "," + x2 +")");
                    }
                }
                var numZux6 = $("#positioninfo-zux6").html();
                contentStr = arrZux6[0];
                zhushu = numZux6;
            } else if(flag_zhi == "rx4-zux4"){
                var arrZux4 = [];
                while (arrZux4.length < 1) {
                    var x1 = parseInt(Math.random() * 10);
                    var x2 = parseInt(Math.random() * 10);
                    if (x1 != x2) {
                        arrZux4.push("三重号: (" + x1 + "), 单号: (" + x2 +")");
                    }
                }
                var numZux4 = $("#positioninfo-zux4").html();
                contentStr = arrZux4[0];
                zhushu = numZux4;
            }

            var obj = {};
            obj.playName = playNameStr;
            obj.content = contentStr;
            obj.totalMoney = parseInt($("#inputBeishu").data("beishu")) * parseInt($("#inputMoney").data("money")) * zhushu;
            obj.beishu = $("#inputBeishu").data("beishu");
            obj.money = $("#inputMoney").data("money");
            if(flag_zhi == "rx4-zxfs"){
                obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
            } else if(flag_zhi == "rx4-zxds"){
                obj.jiangJfanD = $(".jiangjin-change").html() + "/" + $(".fandian-bfb").html();
            } else if(flag_zhi == "rx4-zux24"){
                obj.jiangJfanD = $(".jiangjin-change-zux24").html() + "/" + $(".fandian-bfb").html();
            } else if(flag_zhi == "rx4-zux12"){
                obj.jiangJfanD = $(".jiangjin-change-zux12").html() + "/" + $(".fandian-bfb").html();
            } else if(flag_zhi == "rx4-zux6"){
                obj.jiangJfanD = $(".jiangjin-change-zux6").html() + "/" + $(".fandian-bfb").html();
            } else if(flag_zhi == "rx4-zux4"){
                obj.jiangJfanD = $(".jiangjin-change-zux4").html() + "/" + $(".fandian-bfb").html();
            }
            obj.zhushu = zhushu;
            obj.playGroupId = playGroupId;
            result.push(obj);
        }
        return result;
    }
</script>
<script>
    $(function () {
        $('.recl-1003-zxds .content_jiang .content_tex').keyup(function () {
            stateTouZhu('rx4-zxds');
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
                var money_jangjin_zux4 = 2450.0 - (2450.0 - 2125.0) / 13 * money_jangjin;
                var money_jangjin_zux6 = 1633.332 - (1633.332 - 1416.333) / 13 * money_jangjin;
                var money_jangjin_zux12 = 816.666 - (801.666 - 703.333) / 13 * money_jangjin;
                var money_jangjin_zux24 = 408.332 - (408.332 - 354.166) / 13 * money_jangjin;
                money_jangjin = 9800 - (9800 - 8500) / 13 * money_jangjin;
                $(".jiangjin-change").html(parseFloat(money_jangjin).toFixed(2));
                $(".jiangjin-change-zux24").html(parseFloat(money_jangjin_zux24).toFixed(3));
                $(".jiangjin-change-zux12").html(parseFloat(money_jangjin_zux12).toFixed(3));
                $(".jiangjin-change-zux6").html(parseFloat(money_jangjin_zux6).toFixed(3));
                $(".jiangjin-change-zux4").html(parseFloat(money_jangjin_zux4).toFixed(3));

                if(typeof stateTouZhu == "function"){
                    var flag_str = '';
                    if (typeof $('.recl-1002').attr('data-flag') != 'undefined') {
                        flag_str = 'rx4-zxfs';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1003-zxds').attr('data-flag') != 'undefined') {
                        flag_str = 'rx4-zxds';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1004-zxhz').attr('data-flag') != 'undefined') {
                        flag_str = 'rx4-zxhz';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1005-zu3fs').attr('data-flag') != 'undefined') {
                        flag_str = 'rx4-zu3fs';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1006-zu3ds').attr('data-flag') != 'undefined') {
                        flag_str = 'rx4-zu3ds';
                        stateTouZhu(flag_str);
                    } else if (typeof $('.recl-1007-zu3hz').attr('data-flag') != 'undefined') {
                        flag_str = 'rx4-zu3hz';
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

<%--<script type="text/html" id="template_touzhu">--%>
    <%--<li--%>
            <%--data-zhushu="{{zhushu}}"--%>
            <%--data-beishu="{{beishu}}"--%>
            <%--data-total_money="{{totalMoney}}"--%>
            <%--data-money="{{money}}"--%>
            <%--data-play_group_id="{{playGroupId}}"--%>
            <%--data-content="{{content}}"--%>
            <%--class="re_touzhu_tem"--%>
    <%-->--%>
            <%--<div class="head-name">--%>
                <%--<span>{{playName}}</span>--%>
            <%--</div>--%>
            <%--<div class="content-jiang">--%>
                <%--<span class="neirong"><font color="red">{{content.split("|")[0]}}</font>&nbsp;</span>--%>
                <%--<span class="span1">{{zhushu}}注&nbsp;&nbsp;{{jiangJfanD}}&nbsp;&nbsp;<var class="varColor">{{totalMoney}}元</var></span>--%>
                <%--<span class="span4"><a href="javascript:void(0)" onclick="removeThisItem(this)"><img--%>
                        <%--src="${resPath}img/ico53.png" alt=""></a></span>--%>
            <%--</div>--%>
    <%--</li>--%>
<%--</script>--%>