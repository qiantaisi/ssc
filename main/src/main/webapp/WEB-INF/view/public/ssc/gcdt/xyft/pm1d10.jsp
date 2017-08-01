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
                                <td class="pl pl-color" data-plid="9821"></td>
                                <td><input class="amount-input" data-name="冠军-1" data-plid="9821" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9822"></td>
                                <td><input class="amount-input" data-name="冠军-2" data-plid="9822" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9823"></td>
                                <td><input class="amount-input" data-name="冠军-3" data-plid="9823" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9824"></td>
                                <td><input class="amount-input" data-name="冠军-4" data-plid="9824" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9825"></td>
                                <td><input class="amount-input" data-name="冠军-5" data-plid="9825" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9826"></td>
                                <td><input class="amount-input" data-name="冠军-6" data-plid="9826" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9827"></td>
                                <td><input class="amount-input" data-name="冠军-7" data-plid="9827" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9828"></td>
                                <td><input class="amount-input" data-name="冠军-8" data-plid="9828" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9829"></td>
                                <td><input class="amount-input" data-name="冠军-9" data-plid="9829" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9830"></td>
                                <td><input class="amount-input" data-name="冠军-10" data-plid="9830" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10164"></td>
                                <td><input class="amount-input" data-name="冠军-大" data-plid="10164" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10165"></td>
                                <td><input class="amount-input" data-name="冠军-小" data-plid="10165" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10166"></td>
                                <td><input class="amount-input" data-name="冠军-单" data-plid="10166" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10167"></td>
                                <td><input class="amount-input" data-name="冠军-双" data-plid="10167" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="10168"></td>
                                <td><input class="amount-input" data-name="冠军-龙" data-plid="10168" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="10169"></td>
                                <td><input class="amount-input" data-name="冠军-虎" data-plid="10169" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9871"></td>
                                <td><input class="amount-input" data-name="第六名-1" data-plid="9871" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9872"></td>
                                <td><input class="amount-input" data-name="第六名-2" data-plid="9872" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9873"></td>
                                <td><input class="amount-input" data-name="第六名-3" data-plid="9873" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9874"></td>
                                <td><input class="amount-input" data-name="第六名-4" data-plid="9874" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9875"></td>
                                <td><input class="amount-input" data-name="第六名-5" data-plid="9875" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9876"></td>
                                <td><input class="amount-input" data-name="第六名-6" data-plid="9876" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9877"></td>
                                <td><input class="amount-input" data-name="第六名-7" data-plid="9877" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9878"></td>
                                <td><input class="amount-input" data-name="第六名-8" data-plid="9878" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9879"></td>
                                <td><input class="amount-input" data-name="第六名-9" data-plid="9879" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9880"></td>
                                <td><input class="amount-input" data-name="第六名-10" data-plid="9880" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10218"></td>
                                <td><input class="amount-input" data-name="第六名-大" data-plid="10218" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10220"></td>
                                <td><input class="amount-input" data-name="第六名-小" data-plid="10220" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10208"></td>
                                <td><input class="amount-input" data-name="第六名-单" data-plid="10208" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10207"></td>
                                <td><input class="amount-input" data-name="第六名-双" data-plid="10207" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9831"></td>
                                <td><input class="amount-input" data-name="亚军-1" data-plid="9831" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9832"></td>
                                <td><input class="amount-input" data-name="亚军-2" data-plid="9832" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9833"></td>
                                <td><input class="amount-input" data-name="亚军-3" data-plid="9833" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9834"></td>
                                <td><input class="amount-input" data-name="亚军-4" data-plid="9834" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9835"></td>
                                <td><input class="amount-input" data-name="亚军-5" data-plid="9835" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9836"></td>
                                <td><input class="amount-input" data-name="亚军-6" data-plid="9836" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9837"></td>
                                <td><input class="amount-input" data-name="亚军-7" data-plid="9837" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9838"></td>
                                <td><input class="amount-input" data-name="亚军-8" data-plid="9838" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9839"></td>
                                <td><input class="amount-input" data-name="亚军-9" data-plid="9839" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9840"></td>
                                <td><input class="amount-input" data-name="亚军-10" data-plid="9840" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10177"></td>
                                <td><input class="amount-input" data-name="亚军-大" data-plid="10177" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10180"></td>
                                <td><input class="amount-input" data-name="亚军-小" data-plid="10180" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10178"></td>
                                <td><input class="amount-input" data-name="亚军-单" data-plid="10178" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10181"></td>
                                <td><input class="amount-input" data-name="亚军-双" data-plid="10181" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="10179"></td>
                                <td><input class="amount-input" data-name="亚军-龙" data-plid="10179" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="10176"></td>
                                <td><input class="amount-input" data-name="亚军-虎" data-plid="10176" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9881"></td>
                                <td><input class="amount-input" data-name="第七名-1" data-plid="9881" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9882"></td>
                                <td><input class="amount-input" data-name="第七名-2" data-plid="9882" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9883"></td>
                                <td><input class="amount-input" data-name="第七名-3" data-plid="9883" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9884"></td>
                                <td><input class="amount-input" data-name="第七名-4" data-plid="9884" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9885"></td>
                                <td><input class="amount-input" data-name="第七名-5" data-plid="9885" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9886"></td>
                                <td><input class="amount-input" data-name="第七名-6" data-plid="9886" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9887"></td>
                                <td><input class="amount-input" data-name="第七名-7" data-plid="9887" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9888"></td>
                                <td><input class="amount-input" data-name="第七名-8" data-plid="9888" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9889"></td>
                                <td><input class="amount-input" data-name="第七名-9" data-plid="9889" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9890"></td>
                                <td><input class="amount-input" data-name="第七名-10" data-plid="9890" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10210"></td>
                                <td><input class="amount-input" data-name="第七名-大" data-plid="10210" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10211"></td>
                                <td><input class="amount-input" data-name="第七名-小" data-plid="10211" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10204"></td>
                                <td><input class="amount-input" data-name="第七名-单" data-plid="10204" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10203"></td>
                                <td><input class="amount-input" data-name="第七名-双" data-plid="10203" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9841"></td>
                                <td><input class="amount-input" data-name="第三名-1" data-plid="9841" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9842"></td>
                                <td><input class="amount-input" data-name="第三名-2" data-plid="9842" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9843"></td>
                                <td><input class="amount-input" data-name="第三名-3" data-plid="9843" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9844"></td>
                                <td><input class="amount-input" data-name="第三名-4" data-plid="9844" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9845"></td>
                                <td><input class="amount-input" data-name="第三名-5" data-plid="9845" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9846"></td>
                                <td><input class="amount-input" data-name="第三名-6" data-plid="9846" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9847"></td>
                                <td><input class="amount-input" data-name="第三名-7" data-plid="9847" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9848"></td>
                                <td><input class="amount-input" data-name="第三名-8" data-plid="9848" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9849"></td>
                                <td><input class="amount-input" data-name="第三名-9" data-plid="9849" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9850"></td>
                                <td><input class="amount-input" data-name="第三名-10" data-plid="9850" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10183"></td>
                                <td><input class="amount-input" data-name="第三名-大" data-plid="10183" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10186"></td>
                                <td><input class="amount-input" data-name="第三名-小" data-plid="10186" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10184"></td>
                                <td><input class="amount-input" data-name="第三名-单" data-plid="10184" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10187"></td>
                                <td><input class="amount-input" data-name="第三名-双" data-plid="10187" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="10185"></td>
                                <td><input class="amount-input" data-name="第三名-龙" data-plid="10185" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="10182"></td>
                                <td><input class="amount-input" data-name="第三名-虎" data-plid="10182" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9891"></td>
                                <td><input class="amount-input" data-name="第八名-1" data-plid="9891" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9892"></td>
                                <td><input class="amount-input" data-name="第八名-2" data-plid="9892" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9893"></td>
                                <td><input class="amount-input" data-name="第八名-3" data-plid="9893" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9894"></td>
                                <td><input class="amount-input" data-name="第八名-4" data-plid="9894" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9895"></td>
                                <td><input class="amount-input" data-name="第八名-5" data-plid="9895" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9896"></td>
                                <td><input class="amount-input" data-name="第八名-6" data-plid="9896" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9897"></td>
                                <td><input class="amount-input" data-name="第八名-7" data-plid="9897" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9898"></td>
                                <td><input class="amount-input" data-name="第八名-8" data-plid="9898" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9899"></td>
                                <td><input class="amount-input" data-name="第八名-9" data-plid="9899" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9900"></td>
                                <td><input class="amount-input" data-name="第八名-10" data-plid="9900" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10219"></td>
                                <td><input class="amount-input" data-name="第八名-大" data-plid="10219" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10205"></td>
                                <td><input class="amount-input" data-name="第八名-小" data-plid="10205" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10214"></td>
                                <td><input class="amount-input" data-name="第八名-单" data-plid="10214" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10212"></td>
                                <td><input class="amount-input" data-name="第八名-双" data-plid="10212" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9851"></td>
                                <td><input class="amount-input" data-name="第四名-1" data-plid="9851" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9852"></td>
                                <td><input class="amount-input" data-name="第四名-2" data-plid="9852" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9853"></td>
                                <td><input class="amount-input" data-name="第四名-3" data-plid="9853" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9854"></td>
                                <td><input class="amount-input" data-name="第四名-4" data-plid="9854" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9855"></td>
                                <td><input class="amount-input" data-name="第四名-5" data-plid="9855" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9856"></td>
                                <td><input class="amount-input" data-name="第四名-6" data-plid="9856" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9857"></td>
                                <td><input class="amount-input" data-name="第四名-7" data-plid="9857" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9858"></td>
                                <td><input class="amount-input" data-name="第四名-8" data-plid="9858" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9859"></td>
                                <td><input class="amount-input" data-name="第四名-9" data-plid="9859" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9860"></td>
                                <td><input class="amount-input" data-name="第四名-10" data-plid="9860" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10189"></td>
                                <td><input class="amount-input" data-name="第四名-大" data-plid="10189" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10192"></td>
                                <td><input class="amount-input" data-name="第四名-小" data-plid="10192" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10190"></td>
                                <td><input class="amount-input" data-name="第四名-单" data-plid="10190" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10193"></td>
                                <td><input class="amount-input" data-name="第四名-双" data-plid="10193" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="10191"></td>
                                <td><input class="amount-input" data-name="第四名-龙" data-plid="10191" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="10188"></td>
                                <td><input class="amount-input" data-name="第四名-虎" data-plid="10188" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9901"></td>
                                <td><input class="amount-input" data-name="第九名-1" data-plid="9901" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9902"></td>
                                <td><input class="amount-input" data-name="第九名-2" data-plid="9902" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9903"></td>
                                <td><input class="amount-input" data-name="第九名-3" data-plid="9903" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9904"></td>
                                <td><input class="amount-input" data-name="第九名-4" data-plid="9904" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9905"></td>
                                <td><input class="amount-input" data-name="第九名-5" data-plid="9905" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9906"></td>
                                <td><input class="amount-input" data-name="第九名-6" data-plid="9906" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9907"></td>
                                <td><input class="amount-input" data-name="第九名-7" data-plid="9907" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9908"></td>
                                <td><input class="amount-input" data-name="第九名-8" data-plid="9908" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9909"></td>
                                <td><input class="amount-input" data-name="第九名-9" data-plid="9909" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9910"></td>
                                <td><input class="amount-input" data-name="第九名-10" data-plid="9910" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10215"></td>
                                <td><input class="amount-input" data-name="第九名-大" data-plid="10215" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10206"></td>
                                <td><input class="amount-input" data-name="第九名-小" data-plid="10206" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10217"></td>
                                <td><input class="amount-input" data-name="第九名-单" data-plid="10217" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10222"></td>
                                <td><input class="amount-input" data-name="第九名-双" data-plid="10222" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9861"></td>
                                <td><input class="amount-input" data-name="第五名-1" data-plid="9861" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9862"></td>
                                <td><input class="amount-input" data-name="第五名-2" data-plid="9862" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9863"></td>
                                <td><input class="amount-input" data-name="第五名-3" data-plid="9863" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9864"></td>
                                <td><input class="amount-input" data-name="第五名-4" data-plid="9864" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9865"></td>
                                <td><input class="amount-input" data-name="第五名-5" data-plid="9865" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9866"></td>
                                <td><input class="amount-input" data-name="第五名-6" data-plid="9866" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9867"></td>
                                <td><input class="amount-input" data-name="第五名-7" data-plid="9867" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9868"></td>
                                <td><input class="amount-input" data-name="第五名-8" data-plid="9868" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9869"></td>
                                <td><input class="amount-input" data-name="第五名-9" data-plid="9869" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9870"></td>
                                <td><input class="amount-input" data-name="第五名-10" data-plid="9870" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10195"></td>
                                <td><input class="amount-input" data-name="第五名-大" data-plid="10195" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10198"></td>
                                <td><input class="amount-input" data-name="第五名-小" data-plid="10198" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10196"></td>
                                <td><input class="amount-input" data-name="第五名-单" data-plid="10196" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10199"></td>
                                <td><input class="amount-input" data-name="第五名-双" data-plid="10199" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">龙</span></td>
                                <td class="pl pl-color" data-plid="10197"></td>
                                <td><input class="amount-input" data-name="第五名-龙" data-plid="10197" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">虎</span></td>
                                <td class="pl pl-color" data-plid="10194"></td>
                                <td><input class="amount-input" data-name="第五名-虎" data-plid="10194" type="text"/></td>
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
                                <td class="pl pl-color" data-plid="9911"></td>
                                <td><input class="amount-input" data-name="第十名-1" data-plid="9911" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num2"></span></td>
                                <td class="pl pl-color" data-plid="9912"></td>
                                <td><input class="amount-input" data-name="第十名-2" data-plid="9912" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num3"></span></td>
                                <td class="pl pl-color" data-plid="9913"></td>
                                <td><input class="amount-input" data-name="第十名-3" data-plid="9913" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num4"></span></td>
                                <td class="pl pl-color" data-plid="9914"></td>
                                <td><input class="amount-input" data-name="第十名-4" data-plid="9914" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num5"></span></td>
                                <td class="pl pl-color" data-plid="9915"></td>
                                <td><input class="amount-input" data-name="第十名-5" data-plid="9915" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num6"></span></td>
                                <td class="pl pl-color" data-plid="9916"></td>
                                <td><input class="amount-input" data-name="第十名-6" data-plid="9916" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num7"></span></td>
                                <td class="pl pl-color" data-plid="9917"></td>
                                <td><input class="amount-input" data-name="第十名-7" data-plid="9917" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num8"></span></td>
                                <td class="pl pl-color" data-plid="9918"></td>
                                <td><input class="amount-input" data-name="第十名-8" data-plid="9918" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num9"></span></td>
                                <td class="pl pl-color" data-plid="9919"></td>
                                <td><input class="amount-input" data-name="第十名-9" data-plid="9919" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="number num10"></span></td>
                                <td class="pl pl-color" data-plid="9920"></td>
                                <td><input class="amount-input" data-name="第十名-10" data-plid="9920" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">大</span></td>
                                <td class="pl pl-color" data-plid="10213"></td>
                                <td><input class="amount-input" data-name="第十名-大" data-plid="10213" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">小</span></td>
                                <td class="pl pl-color" data-plid="10209"></td>
                                <td><input class="amount-input" data-name="第十名-小" data-plid="10209" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">单</span></td>
                                <td class="pl pl-color" data-plid="10221"></td>
                                <td><input class="amount-input" data-name="第十名-单" data-plid="10221" type="text"/></td>
                            </tr>
                            <tr>
                                <td><span class="">双</span></td>
                                <td class="pl pl-color" data-plid="10216"></td>
                                <td><input class="amount-input" data-name="第十名-双" data-plid="10216" type="text"/></td>
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
    var playGroupId = 14;
    var playId = 330;
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