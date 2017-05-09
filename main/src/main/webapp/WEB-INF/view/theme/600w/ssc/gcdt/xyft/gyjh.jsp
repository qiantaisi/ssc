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
                <thead>
                <tr style="line-height: 23px;">
                    <td style="border: 0" colspan="4">
                        <table class="touzhuArea_gyjh" style="width: 100%;">
                            <tbody>
                            <tr>
                                <th colspan="4" style="width: 100%;background: white;font-weight: bold;">冠、亚军和(冠军车号 +
                                    亚军车号 = 和)
                                </th>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>3</td>
                                <td class="pl pl-color" data-plid="10002"></td>
                                <td><input class="amount-input" data-name="冠亚和-3" data-plid="10002" type="text"/></td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td class="pl pl-color" data-plid="10006"></td>
                                <td><input class="amount-input" data-name="冠亚和-7" data-plid="10006" type="text"/></td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td class="pl pl-color" data-plid="10010"></td>
                                <td><input class="amount-input" data-name="冠亚和-11" data-plid="10010" type="text"/></td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td class="pl pl-color" data-plid="10014"></td>
                                <td><input class="amount-input" data-name="冠亚和-15" data-plid="10014" type="text"/></td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td class="pl pl-color" data-plid="10018"></td>
                                <td><input class="amount-input" data-name="冠亚和-19" data-plid="10018" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚大</td>
                                <td class="pl pl-color" data-plid="10019"></td>
                                <td><input class="amount-input" data-name="冠亚和-大" data-plid="10019" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚大双</td>
                                <td class="pl pl-color" data-plid="10024"></td>
                                <td><input class="amount-input" data-name="冠亚和-大双" data-plid="10024" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>4</td>
                                <td class="pl pl-color" data-plid="10003"></td>
                                <td><input class="amount-input" data-name="冠亚和-4" data-plid="10003" type="text"/></td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td class="pl pl-color" data-plid="10007"></td>
                                <td><input class="amount-input" data-name="冠亚和-8" data-plid="10007" type="text"/></td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td class="pl pl-color" data-plid="10011"></td>
                                <td><input class="amount-input" data-name="冠亚和-12" data-plid="10011" type="text"/></td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td class="pl pl-color" data-plid="10015"></td>
                                <td><input class="amount-input" data-name="冠亚和-16" data-plid="10015" type="text"/></td>
                            </tr>
                            <tr class="wu">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>冠亚小</td>
                                <td class="pl pl-color" data-plid="10020"></td>
                                <td><input class="amount-input" data-name="冠亚和-小" data-plid="10020" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚大单</td>
                                <td class="pl pl-color" data-plid="10023"></td>
                                <td><input class="amount-input" data-name="冠亚和-大单" data-plid="10023" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>5</td>
                                <td class="pl pl-color" data-plid="10004"></td>
                                <td><input class="amount-input" data-name="冠亚和-5" data-plid="10004" type="text"/></td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td class="pl pl-color" data-plid="10008"></td>
                                <td><input class="amount-input" data-name="冠亚和-9" data-plid="10008" type="text"/></td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td class="pl pl-color" data-plid="10012"></td>
                                <td><input class="amount-input" data-name="冠亚和-13" data-plid="10012" type="text"/></td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td class="pl pl-color" data-plid="10016"></td>
                                <td><input class="amount-input" data-name="冠亚和-17" data-plid="10016" type="text"/></td>
                            </tr>
                            <tr class="wu">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>冠亚单</td>
                                <td class="pl pl-color" data-plid="10021"></td>
                                <td><input class="amount-input" data-name="冠亚和-单" data-plid="10021" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚小双</td>
                                <td class="pl pl-color" data-plid="10026"></td>
                                <td><input class="amount-input" data-name="冠亚和-小双" data-plid="10026" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>6</td>
                                <td class="pl pl-color" data-plid="10005"></td>
                                <td><input class="amount-input" data-name="冠亚和-6" data-plid="10005" type="text"/></td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td class="pl pl-color" data-plid="10009"></td>
                                <td><input class="amount-input" data-name="冠亚和-10" data-plid="10009" type="text"/></td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td class="pl pl-color" data-plid="10013"></td>
                                <td><input class="amount-input" data-name="冠亚和-14" data-plid="10013" type="text"/></td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td class="pl pl-color" data-plid="10017"></td>
                                <td><input class="amount-input" data-name="冠亚和-18" data-plid="10017" type="text"/></td>
                            </tr>
                            <tr class="wu">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>冠亚双</td>
                                <td class="pl pl-color" data-plid="10022"></td>
                                <td><input class="amount-input" data-name="冠亚和-双" data-plid="10022" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚小单</td>
                                <td class="pl pl-color" data-plid="10025"></td>
                                <td><input class="amount-input" data-name="冠亚和-小单" data-plid="10025" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>


                </tr>
                </tbody>
            </table>
        </div>
        <div class="table-common">
            <table class="head_table" id="rttt" style="width:100%">
                <tbody>
                <tr>
                    <th class="tab_one">冠、亚军和 大小</th>
                    <th class="tab_two">冠、亚军和</th>
                    <th class="tab_three">冠亚军和单双</th>
                </tr>
                </tbody>
            </table>
            <table class="body_table" style="width: 100%;margin-top:0;">
                <tbody class="gydx">
                <tr class="ballqueue_result" id="rmTr0">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rmTr1">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rmTr2">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rmTr3">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rmTr4">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rmTr5">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>

                <tbody class="gyhz">
                <tr class="ballqueue_result" id="rm2Tr0">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm2Tr1">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm2Tr2">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm2Tr3">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm2Tr4">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm2Tr5">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                </tbody>

                <tbody class="gyds">
                <tr class="ballqueue_result" id="rm3Tr0">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm3Tr1">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm3Tr2">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm3Tr3">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm3Tr4">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="ballqueue_result" id="rm3Tr5">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
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
    var playId = 319;
    var playGroupName = '冠、亚军组合';

    $(function () {
        //获取30期开奖数据
        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: {
                pageIndex: 1,
                pageSize: 100,  //默认为所有期数号码
                playGroupId: playGroupId
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                var data = json.sscHistoryList;
                //data.reverse(); //期数翻转
                gyDxjs(data);
            }

        });


        $(".head_table th").eq(0).addClass('th_bg');

        $(".head_table th").bind('click', function () {
            $(".head_table th").each(function (index, value) {
                var obj = $(this);
                if (obj.hasClass('th_bg')) {
                    obj.removeClass('th_bg');
                }
            });
            $(".body_table tbody").each(function (n, m) {
                $(this).hide();
            });
            var calss_name = $(this).attr('class');
            if (calss_name == 'tab_one') {
                $(".gydx").show();
            } else if (calss_name == 'tab_two') {
                $(".gyhz").show();
            } else if (calss_name == 'tab_three') {
                $(".gyds").show();
            }
            $(this).addClass('th_bg');


        });
    });


    //冠亚军和值大小长龙分析
    function gyDxjs(data) {
        var arr_res = [];
        var lieYiDongFlag = false;
        var n = 0;
        var td_col = 31;

        //第二选项卡中的变量值
        var arr_hzInfo = [];
        var tab2_lieYiDongFlag = false;
        var tab2_td_col = 31;
        var tab2_n = 0;

        //第三个选项卡中的变量值
        var arr_dsInfo = [];
        var tab3_lieYiDongFlag = false;
        var tab3_td_col = 31;
        var tab3_n = 0;

        for (var m = 0; m < data.length; m++) {
            var result = {
                qiHaoInfo: {content: '内容', flag_dx: '大小'}
            };
            var resultHz = {
                hzInfo: {content: '内容', flag_hz: 0}
            };
            var resultDs = {
                dsInfo: {content: '内容', flag_ds: '单双'}
            };

            arr_res[m] = result.qiHaoInfo; //初始化容器
            arr_hzInfo[m] = resultHz.hzInfo; //初始化容器
            arr_dsInfo[m] = resultDs.dsInfo; //初始化容器


            var openCode = data[m].openCode.split(",");

            var num1 = Tools.parseInt(openCode[0]);
            var num2 = Tools.parseInt(openCode[1]);
            var qiStr = data[m].number;
            var qiHaoma = data[m].openCode;
            var qiContent = '第' + qiStr + '期, 号码' + qiHaoma;


            var result_num = num1 + num2;

            if (result_num > 11) {
                arr_res[m].flag_dx = '大';
            } else {
                arr_res[m].flag_dx = '小';
            }

            arr_hzInfo[m].flag_hz = result_num; //存储冠亚和值

            if (result_num % 2 == 0) {
                arr_dsInfo[m].flag_ds = '双';
            } else {
                arr_dsInfo[m].flag_ds = '单';
            }

            arr_res[m].content = qiContent; //存储号码和期号
            arr_hzInfo[m].content = qiContent;
            arr_dsInfo[m].content = qiContent;

        }


        //遍历冠亚和大小写入表格中
        for (var i = 0; i < arr_res.length; i++) {
            if (i > 0 && i < arr_res.length - 1) {
                if (arr_res[i].flag_dx != arr_res[i - 1].flag_dx) {
                    td_col--; //发现前一个值不等换行 右移动一列单元格
                    n = 0;//发现前一个值不等换行 初始化为第一行
                    lieYiDongFlag = true;
                }

                if (arr_hzInfo[i].flag_hz != arr_hzInfo[i - 1].flag_hz) {
                    tab2_td_col--;
                    tab2_n = 0;
                    tab2_lieYiDongFlag = true;
                }

                if (arr_dsInfo[i].flag_ds != arr_dsInfo[i - 1].flag_ds) {
                    tab3_td_col--;
                    tab3_n = 0;
                    tab3_lieYiDongFlag = true;
                }
            }

            //第一个选项卡
            if (td_col >= 0) {
                if (arr_res[i].flag_dx == '小') {
                    $("#rmTr" + n + " td").eq(td_col).addClass('dishReload_small');
                    $("#rmTr" + n + " td").eq(td_col).attr('title', arr_res[i].content);
                    n++;
                } else {
                    $("#rmTr" + n + " td").eq(td_col).addClass('dishReload_da');
                    $("#rmTr" + n + " td").eq(td_col).attr('title', arr_res[i].content);
                    n++;
                }

            }

            //写完六行
            if (n == 6) {
                n = 0;  //初始化为第一行
                //如写满六行发现刚好也变值这时判断上面的是否已经移动过列（没有则移动列否则不移动）
                if (lieYiDongFlag != true) {
                    td_col--; //左移动一列
                }
                //初始化左移动标记
                lieYiDongFlag = false;
            }


            //第二个选项卡
            if (tab2_td_col >= 0) {
                $("#rm2Tr" + tab2_n + " td").eq(tab2_td_col).html(arr_hzInfo[i].flag_hz);
                $("#rm2Tr" + tab2_n + " td").eq(tab2_td_col).attr('title', arr_hzInfo[i].content);
                tab2_n++;
            }

            //写完六行
            if (tab2_n == 6) {
                tab2_n = 0;  //初始化为第一行
                //如写满六行发现刚好也变值这时判断上面的是否已经移动过列（没有则移动列否则不移动）
                if (tab2_lieYiDongFlag != true) {
                    tab2_td_col--; //左移动一列
                }
                //初始化左移动标记
                tab2_lieYiDongFlag = false;
            }


            //第三个选项卡
            if (tab3_td_col >= 0) {
                if (arr_dsInfo[i].flag_ds == '单') {
                    $("#rm3Tr" + tab3_n + " td").eq(tab3_td_col).addClass('dishReload_dan');
                    $("#rm3Tr" + tab3_n + " td").eq(tab3_td_col).attr('title', arr_dsInfo[i].content);
                    tab3_n++;
                } else {
                    $("#rm3Tr" + tab3_n + " td").eq(tab3_td_col).addClass('dishReload_shuang');
                    $("#rm3Tr" + tab3_n + " td").eq(tab3_td_col).attr('title', arr_dsInfo[i].content);
                    tab3_n++;
                }

            }

            //写完六行
            if (tab3_n == 6) {
                tab3_n = 0;  //初始化为第一行
                //如写满六行发现刚好也变值这时判断上面的是否已经移动过列（没有则移动列否则不移动）
                if (tab3_lieYiDongFlag != true) {
                    tab3_td_col--; //左移动一列
                }
                //初始化左移动标记
                tab3_lieYiDongFlag = false;
            }
        }
    }

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