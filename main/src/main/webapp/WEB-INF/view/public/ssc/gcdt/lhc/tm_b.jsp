<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-tm_a')">特A</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-tm_b')" class="active">特B</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><span class="ball-icon ball-01"></span></td>
                    <td data-num="1"><strong class="color-red pl" data-plid="6034"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-1" data-plid="6034"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td data-num="11"><strong class="color-red pl" data-plid="6044"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-11" data-plid="6044"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td data-num="21"><strong class="color-red pl" data-plid="6054"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-21" data-plid="6054"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td data-num="31"><strong class="color-red pl" data-plid="6064"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-31" data-plid="6064"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td data-num="41"><strong class="color-red pl" data-plid="6074"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-41" data-plid="6074"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td data-num="2"><strong class="color-red pl" data-plid="6035"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-2" data-plid="6035"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td data-num="12"><strong class="color-red pl" data-plid="6045"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-12" data-plid="6045"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td data-num="22"><strong class="color-red pl" data-plid="6055"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-22" data-plid="6055"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td data-num="32"><strong class="color-red pl" data-plid="6065"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-32" data-plid="6065"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td data-num="42"><strong class="color-red pl" data-plid="6075"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-42" data-plid="6075"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td data-num="3"><strong class="color-red pl" data-plid="6036"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-3" data-plid="6036"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td data-num="13"><strong class="color-red pl" data-plid="6046"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-13" data-plid="6046"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td data-num="23"><strong class="color-red pl" data-plid="6056"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-23" data-plid="6056"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td data-num="33"><strong class="color-red pl" data-plid="6066"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-33" data-plid="6066"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td data-num="43"><strong class="color-red pl" data-plid="6076"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-43" data-plid="6076"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td data-num="4"><strong class="color-red pl" data-plid="6037"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-4" data-plid="6037"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td data-num="14"><strong class="color-red pl" data-plid="6047"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-14" data-plid="6047"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td data-num="24"><strong class="color-red pl" data-plid="6057"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-24" data-plid="6057"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td data-num="34"><strong class="color-red pl" data-plid="6067"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-34" data-plid="6067"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td data-num="44"><strong class="color-red pl" data-plid="6077"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-44" data-plid="6077"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td data-num="5"><strong class="color-red pl" data-plid="6038"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-5" data-plid="6038"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td data-num="15"><strong class="color-red pl" data-plid="6048"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-15" data-plid="6048"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td data-num="25"><strong class="color-red pl" data-plid="6058"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-25" data-plid="6058"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td data-num="35"><strong class="color-red pl" data-plid="6068"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-35" data-plid="6068"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td data-num="45"><strong class="color-red pl" data-plid="6078"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-45" data-plid="6078"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td data-num="6"><strong class="color-red pl" data-plid="6039"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-6" data-plid="6039"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td data-num="16"><strong class="color-red pl" data-plid="6049"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-16" data-plid="6049"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td data-num="26"><strong class="color-red pl" data-plid="6059"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-26" data-plid="6059"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td data-num="36"><strong class="color-red pl" data-plid="6069"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-36" data-plid="6069"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td data-num="46"><strong class="color-red pl" data-plid="6079"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-46" data-plid="6079"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td data-num="7"><strong class="color-red pl" data-plid="6040"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-7" data-plid="6040"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td data-num="17"><strong class="color-red pl" data-plid="6050"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-17" data-plid="6050"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td data-num="27"><strong class="color-red pl" data-plid="6060"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-27" data-plid="6060"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td data-num="37"><strong class="color-red pl" data-plid="6070"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-37" data-plid="6070"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td data-num="47"><strong class="color-red pl" data-plid="6080"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-47" data-plid="6080"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td data-num="8"><strong class="color-red pl" data-plid="6041"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-8" data-plid="6041"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td data-num="18"><strong class="color-red pl" data-plid="6051"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-18" data-plid="6051"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td data-num="28"><strong class="color-red pl" data-plid="6061"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-28" data-plid="6061"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td data-num="38"><strong class="color-red pl" data-plid="6071"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-38" data-plid="6071"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td data-num="48"><strong class="color-red pl" data-plid="6081"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-48" data-plid="6081"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td data-num="9"><strong class="color-red pl" data-plid="6042"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-9" data-plid="6042"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td data-num="19"><strong class="color-red pl" data-plid="6052"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-19" data-plid="6052"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td data-num="29"><strong class="color-red pl" data-plid="6062"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-29" data-plid="6062"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td data-num="39"><strong class="color-red pl" data-plid="6072"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-39" data-plid="6072"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td data-num="49"><strong class="color-red pl" data-plid="6082"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-49" data-plid="6082"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td data-num="10"><strong class="color-red pl" data-plid="6043"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-10" data-plid="6043"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td data-num="20"><strong class="color-red pl" data-plid="6053"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-20" data-plid="6053"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td data-num="30"><strong class="color-red pl" data-plid="6063"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-30" data-plid="6063"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td data-num="40"><strong class="color-red pl" data-plid="6073"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-40" data-plid="6073"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="6083"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-单" data-plid="6083"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="6085"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-大" data-plid="6085"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="6087"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-合单" data-plid="6087"/></td>

                    <td>尾大</td>
                    <td><strong class="color-red pl" data-plid="6089"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-尾大" data-plid="6089"/></td>

                    <td>家禽</td>
                    <td><strong class="color-red pl" data-plid="6091"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-家禽" data-plid="6091"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="6084"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-双" data-plid="6084"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="6086"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-小" data-plid="6086"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="6088"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-合双" data-plid="6088"/></td>

                    <td>尾小</td>
                    <td><strong class="color-red pl" data-plid="6090"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-尾小" data-plid="6090"/></td>

                    <td>野兽</td>
                    <td><strong class="color-red pl" data-plid="6092"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-野兽" data-plid="6092"/></td>
                </tr>

                <tr>
                    <td>大单</td>
                    <td><strong class="color-red pl" data-plid="6093"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-大单" data-plid="6093"/></td>

                    <td>大双</td>
                    <td><strong class="color-red pl" data-plid="6094"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-大双" data-plid="6094"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="6097"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-红波" data-plid="6097"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="6099"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-绿波" data-plid="6099"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>小单</td>
                    <td><strong class="color-red pl" data-plid="6095"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-小单" data-plid="6095"/></td>

                    <td>小双</td>
                    <td><strong class="color-red pl" data-plid="6096"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-小双" data-plid="6096"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="6098"></strong></td>
                    <td><input type="text" class="table-txt" data-name="特码B-蓝波" data-plid="6098"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right cl-10">
        <div class="table-common table-border-color">
            <table width="100%" border="1">
                <tbody>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>合单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>合双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>大单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>小单</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>大双</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>小双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>尾大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>尾小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>鼠</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>牛</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>虎</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>兔</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>龙</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>蛇</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>马</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>羊</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>猴</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>鸡</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>狗</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>猪</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>家禽</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>野兽</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-red">红</span>大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-red">红</span>小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-red">红</span>单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-red">红</span>双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-blue">蓝</span>大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-blue">蓝</span>小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-blue">蓝</span>单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-blue">蓝</span>双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-green">绿</span>大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-green">绿</span>小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-green">绿</span>单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-green">绿</span>双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>红波</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>蓝波</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>绿波</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>全选</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<c:import url="common/commonJs.jsp"/>
<script>
    var playGroupId = 6;
    var playId = 204;
    var playGroupName = '特码';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common input").each(function () {
            var inputMoney = $(this).val();
            if (typeof inputMoney != 'undefined' && inputMoney != '') {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: $("#number").data("number"),
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: $(this).data("name"),
                    playPlId: $(this).data("plid"),
                    playPl: $(this).data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            }
        });
        return betForm;
    }

    function checkZhudan() {
        return true;
    }
</script>