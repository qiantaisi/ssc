<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left main-left-xyft">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table class="xyft-table" style="width:100%!important;">
                <tbody>
                <tr>
                    <td class="td_style_pm">
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">冠军</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="14140"></td>
                                <td><input class="amount-input" data-name="冠军-1" data-plid="14140" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14089"></td>
                                <td><input class="amount-input" data-name="冠军-2" data-plid="14089" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14077"></td>
                                <td><input class="amount-input" data-name="冠军-3" data-plid="14077" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="14098"></td>
                                <td><input class="amount-input" data-name="冠军-4" data-plid="14098" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="14101"></td>
                                <td><input class="amount-input" data-name="冠军-5" data-plid="14101" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14011"></td>
                                <td><input class="amount-input" data-name="冠军-6" data-plid="14011" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="13996"></td>
                                <td><input class="amount-input" data-name="冠军-7" data-plid="13996" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14018"></td>
                                <td><input class="amount-input" data-name="冠军-8" data-plid="14018" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14015"></td>
                                <td><input class="amount-input" data-name="冠军-9" data-plid="14015" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14128"></td>
                                <td><input class="amount-input" data-name="冠军-10" data-plid="14128" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14034"></td>
                                <td><input class="amount-input" data-name="冠军-大" data-plid="14034" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14109"></td>
                                <td><input class="amount-input" data-name="冠军-小" data-plid="14109" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14105"></td>
                                <td><input class="amount-input" data-name="冠军-单" data-plid="14105" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="13988"></td>
                                <td><input class="amount-input" data-name="冠军-双" data-plid="13988" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="14029"></td>
                                <td><input class="amount-input" data-name="冠军-龙" data-plid="14028" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="13995"></td>
                                <td><input class="amount-input" data-name="冠军-虎" data-plid="13995" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">第六名</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="14178"></td>
                                <td><input class="amount-input" data-name="第六名-1" data-plid="14178" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14167"></td>
                                <td><input class="amount-input" data-name="第六名-2" data-plid="14167" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14135"></td>
                                <td><input class="amount-input" data-name="第六名-3" data-plid="14135" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="14080"></td>
                                <td><input class="amount-input" data-name="第六名-4" data-plid="14080" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="14121"></td>
                                <td><input class="amount-input" data-name="第六名-5" data-plid="14121" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14119"></td>
                                <td><input class="amount-input" data-name="第六名-6" data-plid="14119" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="14117"></td>
                                <td><input class="amount-input" data-name="第六名-7" data-plid="14117" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14085"></td>
                                <td><input class="amount-input" data-name="第六名-8" data-plid="14085" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14081"></td>
                                <td><input class="amount-input" data-name="第六名-9" data-plid="14081" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14092"></td>
                                <td><input class="amount-input" data-name="第六名-10" data-plid="14092" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14090"></td>
                                <td><input class="amount-input" data-name="第六名-大" data-plid="14090" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14079"></td>
                                <td><input class="amount-input" data-name="第六名-小" data-plid="14079" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14102"></td>
                                <td><input class="amount-input" data-name="第六名-单" data-plid="14102" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="14104"></td>
                                <td><input class="amount-input" data-name="第六名-双" data-plid="14104" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style_pm">
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">亚军</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="14096"></td>
                                <td><input class="amount-input" data-name="亚军-1" data-plid="14096" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14173"></td>
                                <td><input class="amount-input" data-name="亚军-2" data-plid="14173" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14179"></td>
                                <td><input class="amount-input" data-name="亚军-3" data-plid="14179" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="14148"></td>
                                <td><input class="amount-input" data-name="亚军-4" data-plid="14148" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="14137"></td>
                                <td><input class="amount-input" data-name="亚军-5" data-plid="14137" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14059"></td>
                                <td><input class="amount-input" data-name="亚军-6" data-plid="14059" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="14067"></td>
                                <td><input class="amount-input" data-name="亚军-7" data-plid="14067" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14064"></td>
                                <td><input class="amount-input" data-name="亚军-8" data-plid="14064" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14061"></td>
                                <td><input class="amount-input" data-name="亚军-9" data-plid="14061" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14097"></td>
                                <td><input class="amount-input" data-name="亚军-10" data-plid="14097" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14068"></td>
                                <td><input class="amount-input" data-name="亚军-大" data-plid="14068" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14147"></td>
                                <td><input class="amount-input" data-name="亚军-小" data-plid="14147" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14073"></td>
                                <td><input class="amount-input" data-name="亚军-单" data-plid="14073" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="14136"></td>
                                <td><input class="amount-input" data-name="亚军-双" data-plid="14136" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="14153"></td>
                                <td><input class="amount-input" data-name="亚军-龙" data-plid="14153" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="14058"></td>
                                <td><input class="amount-input" data-name="亚军-虎" data-plid="14058" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">第七名</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="13986"></td>
                                <td><input class="amount-input" data-name="第七名-1" data-plid="13986" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14037"></td>
                                <td><input class="amount-input" data-name="第七名-2" data-plid="14037" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14044"></td>
                                <td><input class="amount-input" data-name="第七名-3" data-plid="14044" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="14057"></td>
                                <td><input class="amount-input" data-name="第七名-4" data-plid="14057" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="13992"></td>
                                <td><input class="amount-input" data-name="第七名-5" data-plid="13992" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14054"></td>
                                <td><input class="amount-input" data-name="第七名-6" data-plid="14054" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="14051"></td>
                                <td><input class="amount-input" data-name="第七名-7" data-plid="14051" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14043"></td>
                                <td><input class="amount-input" data-name="第七名-8" data-plid="14043" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14056"></td>
                                <td><input class="amount-input" data-name="第七名-9" data-plid="14056" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14113"></td>
                                <td><input class="amount-input" data-name="第七名-10" data-plid="14113" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14023"></td>
                                <td><input class="amount-input" data-name="第七名-大" data-plid="14023" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14174"></td>
                                <td><input class="amount-input" data-name="第七名-小" data-plid="14174" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14133"></td>
                                <td><input class="amount-input" data-name="第七名-单" data-plid="14133" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="14142"></td>
                                <td><input class="amount-input" data-name="第七名-双" data-plid="14142" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style_pm">
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">第三名</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="14048"></td>
                                <td><input class="amount-input" data-name="第三名-1" data-plid="14048" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="13991"></td>
                                <td><input class="amount-input" data-name="第三名-2" data-plid="13991" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="13979"></td>
                                <td><input class="amount-input" data-name="第三名-3" data-plid="13979" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="13982"></td>
                                <td><input class="amount-input" data-name="第三名-4" data-plid="13982" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="13987"></td>
                                <td><input class="amount-input" data-name="第三名-5" data-plid="13987" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14112"></td>
                                <td><input class="amount-input" data-name="第三名-6" data-plid="14112" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="14041"></td>
                                <td><input class="amount-input" data-name="第三名-7" data-plid="14041" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14106"></td>
                                <td><input class="amount-input" data-name="第三名-8" data-plid="14106" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14129"></td>
                                <td><input class="amount-input" data-name="第三名-9" data-plid="14129" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14050"></td>
                                <td><input class="amount-input" data-name="第三名-10" data-plid="14050" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14022"></td>
                                <td><input class="amount-input" data-name="第三名-大" data-plid="14022" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14166"></td>
                                <td><input class="amount-input" data-name="第三名-小" data-plid="14166" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14005"></td>
                                <td><input class="amount-input" data-name="第三名-单" data-plid="14005" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="14078"></td>
                                <td><input class="amount-input" data-name="第三名-双" data-plid="14078" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="14084"></td>
                                <td><input class="amount-input" data-name="第三名-龙" data-plid="14084" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="14001"></td>
                                <td><input class="amount-input" data-name="第三名-虎" data-plid="14001" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">第八名</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="13994"></td>
                                <td><input class="amount-input" data-name="第八名-1" data-plid="13994" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14039"></td>
                                <td><input class="amount-input" data-name="第八名-2" data-plid="14039" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14052"></td>
                                <td><input class="amount-input" data-name="第八名-3" data-plid="14052" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="13989"></td>
                                <td><input class="amount-input" data-name="第八名-4" data-plid="13989" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="13983"></td>
                                <td><input class="amount-input" data-name="第八名-5" data-plid="13983" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14007"></td>
                                <td><input class="amount-input" data-name="第八名-6" data-plid="14007" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="14017"></td>
                                <td><input class="amount-input" data-name="第八名-7" data-plid="14017" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14177"></td>
                                <td><input class="amount-input" data-name="第八名-8" data-plid="14177" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14168"></td>
                                <td><input class="amount-input" data-name="第八名-9" data-plid="14168" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14171"></td>
                                <td><input class="amount-input" data-name="第八名-10" data-plid="14171" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="13981"></td>
                                <td><input class="amount-input" data-name="第八名-大" data-plid="13981" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14175"></td>
                                <td><input class="amount-input" data-name="第八名-小" data-plid="14175" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14004"></td>
                                <td><input class="amount-input" data-name="第八名-单" data-plid="14004" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="14014"></td>
                                <td><input class="amount-input" data-name="第八名-双" data-plid="14014" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style_pm">
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">第四名</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="13998"></td>
                                <td><input class="amount-input" data-name="第四名-1" data-plid="13998" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14049"></td>
                                <td><input class="amount-input" data-name="第四名-2" data-plid="14049" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14038"></td>
                                <td><input class="amount-input" data-name="第四名-3" data-plid="14038" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="14030"></td>
                                <td><input class="amount-input" data-name="第四名-4" data-plid="14030" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="14035"></td>
                                <td><input class="amount-input" data-name="第四名-5" data-plid="14035" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="13997"></td>
                                <td><input class="amount-input" data-name="第四名-6" data-plid="13997" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="13993"></td>
                                <td><input class="amount-input" data-name="第四名-7" data-plid="13993" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14163"></td>
                                <td><input class="amount-input" data-name="第四名-8" data-plid="14163" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14172"></td>
                                <td><input class="amount-input" data-name="第四名-9" data-plid="14172" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14010"></td>
                                <td><input class="amount-input" data-name="第四名-10" data-plid="14010" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14154"></td>
                                <td><input class="amount-input" data-name="第四名-大" data-plid="14154" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14021"></td>
                                <td><input class="amount-input" data-name="第四名-小" data-plid="14021" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14164"></td>
                                <td><input class="amount-input" data-name="第四名-单" data-plid="14164" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="14042"></td>
                                <td><input class="amount-input" data-name="第四名-双" data-plid="14042" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="14027"></td>
                                <td><input class="amount-input" data-name="第四名-龙" data-plid="14027" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="14008"></td>
                                <td><input class="amount-input" data-name="第四名-虎" data-plid="14008" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">第九名</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="14091"></td>
                                <td><input class="amount-input" data-name="第九名-1" data-plid="14091" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14181"></td>
                                <td><input class="amount-input" data-name="第九名-2" data-plid="14181" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14141"></td>
                                <td><input class="amount-input" data-name="第九名-3" data-plid="14141" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="14159"></td>
                                <td><input class="amount-input" data-name="第九名-4" data-plid="14159" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="14157"></td>
                                <td><input class="amount-input" data-name="第九名-5" data-plid="14157" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14138"></td>
                                <td><input class="amount-input" data-name="第九名-6" data-plid="14138" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="14024"></td>
                                <td><input class="amount-input" data-name="第九名-7" data-plid="14024" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14146"></td>
                                <td><input class="amount-input" data-name="第九名-8" data-plid="14146" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14125"></td>
                                <td><input class="amount-input" data-name="第九名-9" data-plid="14125" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14047"></td>
                                <td><input class="amount-input" data-name="第九名-10" data-plid="14047" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14029"></td>
                                <td><input class="amount-input" data-name="第九名-大" data-plid="14029" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14065"></td>
                                <td><input class="amount-input" data-name="第九名-小" data-plid="14065" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14033"></td>
                                <td><input class="amount-input" data-name="第九名-单" data-plid="14033" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="13999"></td>
                                <td><input class="amount-input" data-name="第九名-双" data-plid="13999" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                    <td class="td_style_pm">
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">第五名</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="14083"></td>
                                <td><input class="amount-input" data-name="第五名-1" data-plid="14083" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14118"></td>
                                <td><input class="amount-input" data-name="第五名-2" data-plid="14118" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14108"></td>
                                <td><input class="amount-input" data-name="第五名-3" data-plid="14108" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="14123"></td>
                                <td><input class="amount-input" data-name="第五名-4" data-plid="14123" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="14127"></td>
                                <td><input class="amount-input" data-name="第五名-5" data-plid="14127" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14139"></td>
                                <td><input class="amount-input" data-name="第五名-6" data-plid="14139" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="14149"></td>
                                <td><input class="amount-input" data-name="第五名-7" data-plid="14149" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14144"></td>
                                <td><input class="amount-input" data-name="第五名-8" data-plid="14144" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14013"></td>
                                <td><input class="amount-input" data-name="第五名-9" data-plid="14013" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14176"></td>
                                <td><input class="amount-input" data-name="第五名-10" data-plid="14176" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14158"></td>
                                <td><input class="amount-input" data-name="第五名-大" data-plid="14158" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14074"></td>
                                <td><input class="amount-input" data-name="第五名-小" data-plid="14074" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14107"></td>
                                <td><input class="amount-input" data-name="第五名-单" data-plid="14107" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="14070"></td>
                                <td><input class="amount-input" data-name="第五名-双" data-plid="14070" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="14062"></td>
                                <td><input class="amount-input" data-name="第五名-龙" data-plid="14062" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="14161"></td>
                                <td><input class="amount-input" data-name="第五名-虎" data-plid="14161" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="touzhuArea touzhuArea_pm">
                            <thead>
                            <tr>
                                <th colspan="3" style="width: 100%">第十名</th>
                            </tr>
                            <tr>
                                <th>号</th>
                                <th>赔率</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="number num1"></span></td>
                                <td class="pl pl-color" data-plid="14111"></td>
                                <td><input class="amount-input" data-name="第十名-1" data-plid="14111" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="14122"></td>
                                <td><input class="amount-input" data-name="第十名-2" data-plid="14122" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="14130"></td>
                                <td><input class="amount-input" data-name="第十名-3" data-plid="14130" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="14103"></td>
                                <td><input class="amount-input" data-name="第十名-4" data-plid="14103" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="14093"></td>
                                <td><input class="amount-input" data-name="第十名-5" data-plid="14093" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="14082"></td>
                                <td><input class="amount-input" data-name="第十名-6" data-plid="14082" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="14086"></td>
                                <td><input class="amount-input" data-name="第十名-7" data-plid="14086" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="14087"></td>
                                <td><input class="amount-input" data-name="第十名-8" data-plid="14087" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="14076"></td>
                                <td><input class="amount-input" data-name="第十名-9" data-plid="14076" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="14094"></td>
                                <td><input class="amount-input" data-name="第十名-10" data-plid="14094" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="14115"></td>
                                <td><input class="amount-input" data-name="第十名-大" data-plid="14115" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="14099"></td>
                                <td><input class="amount-input" data-name="第十名-小" data-plid="14099" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="14124"></td>
                                <td><input class="amount-input" data-name="第十名-单" data-plid="14124" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="14150"></td>
                                <td><input class="amount-input" data-name="第十名-双" data-plid="14150" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right main-right-xyft cl-10 lm_height relm_height">
    </div>
</div>
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 23;
    var playId = 496;
    var playGroupName = '数字盘';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common .touzhuArea input").each(function () {
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