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
                                <td class="pl pl-color" data-plid="14182"></td>
                                <td><input class="amount-input" data-name="冠亚和-3" data-plid="14182" type="text"/></td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td class="pl pl-color" data-plid="14186"></td>
                                <td><input class="amount-input" data-name="冠亚和-7" data-plid="14186" type="text"/></td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td class="pl pl-color" data-plid="14190"></td>
                                <td><input class="amount-input" data-name="冠亚和-11" data-plid="14190" type="text"/></td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td class="pl pl-color" data-plid="14194"></td>
                                <td><input class="amount-input" data-name="冠亚和-15" data-plid="14194" type="text"/></td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td class="pl pl-color" data-plid="14198"></td>
                                <td><input class="amount-input" data-name="冠亚和-19" data-plid="14198" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚大</td>
                                <td class="pl pl-color" data-plid="14201"></td>
                                <td><input class="amount-input" data-name="冠亚和-大" data-plid="14201" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚大双</td>
                                <td class="pl pl-color" data-plid="14203"></td>
                                <td><input class="amount-input" data-name="冠亚和-大双" data-plid="14203" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>4</td>
                                <td class="pl pl-color" data-plid="14183"></td>
                                <td><input class="amount-input" data-name="冠亚和-4" data-plid="14183" type="text"/></td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td class="pl pl-color" data-plid="14187"></td>
                                <td><input class="amount-input" data-name="冠亚和-8" data-plid="14187" type="text"/></td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td class="pl pl-color" data-plid="14191"></td>
                                <td><input class="amount-input" data-name="冠亚和-12" data-plid="14191" type="text"/></td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td class="pl pl-color" data-plid="14195"></td>
                                <td><input class="amount-input" data-name="冠亚和-16" data-plid="14195" type="text"/></td>
                            </tr>
                            <tr class="wu">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>冠亚小</td>
                                <td class="pl pl-color" data-plid="14204"></td>
                                <td><input class="amount-input" data-name="冠亚和-小" data-plid="14204" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚大单</td>
                                <td class="pl pl-color" data-plid="14202"></td>
                                <td><input class="amount-input" data-name="冠亚和-大单" data-plid="14202" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>5</td>
                                <td class="pl pl-color" data-plid="14184"></td>
                                <td><input class="amount-input" data-name="冠亚和-5" data-plid="14184" type="text"/></td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td class="pl pl-color" data-plid="14188"></td>
                                <td><input class="amount-input" data-name="冠亚和-9" data-plid="14188" type="text"/></td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td class="pl pl-color" data-plid="14192"></td>
                                <td><input class="amount-input" data-name="冠亚和-13" data-plid="14192" type="text"/></td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td class="pl pl-color" data-plid="14196"></td>
                                <td><input class="amount-input" data-name="冠亚和-17" data-plid="14196" type="text"/></td>
                            </tr>
                            <tr class="wu">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>冠亚单</td>
                                <td class="pl pl-color" data-plid="14199"></td>
                                <td><input class="amount-input" data-name="冠亚和-单" data-plid="14199" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚小双</td>
                                <td class="pl pl-color" data-plid="14206"></td>
                                <td><input class="amount-input" data-name="冠亚和-小双" data-plid="14206" type="text"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>

                    <td class="td_style">
                        <table class="touzhuArea touzhuArea_gyjh_content">
                            <tbody>
                            <tr>
                                <td>6</td>
                                <td class="pl pl-color" data-plid="14185"></td>
                                <td><input class="amount-input" data-name="冠亚和-6" data-plid="14185" type="text"/></td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td class="pl pl-color" data-plid="14189"></td>
                                <td><input class="amount-input" data-name="冠亚和-10" data-plid="14189" type="text"/></td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td class="pl pl-color" data-plid="14193"></td>
                                <td><input class="amount-input" data-name="冠亚和-14" data-plid="14193" type="text"/></td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td class="pl pl-color" data-plid="14197"></td>
                                <td><input class="amount-input" data-name="冠亚和-18" data-plid="14197" type="text"/></td>
                            </tr>
                            <tr class="wu">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>冠亚双</td>
                                <td class="pl pl-color" data-plid="14200"></td>
                                <td><input class="amount-input" data-name="冠亚和-双" data-plid="14200" type="text"/></td>
                            </tr>
                            <tr>
                                <td>冠亚小单</td>
                                <td class="pl pl-color" data-plid="14205"></td>
                                <td><input class="amount-input" data-name="冠亚和-小单" data-plid="14205" type="text"/></td>
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
    var playGroupId = 23;
    var playId = 495;
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
                data.reverse(); //期数翻转
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
        var classFlag_dx = 0; //大小背景样式
        var n_dx = 0;
        var td_col_x = 0;


        //第二选项卡中的变量值
        var arr_hzInfo = [];
        var classFlag_hz = 0; //大小背景样式
        var n_hz = 0;
        var td_col_z = 0;

        //第三个选项卡中的变量值
        var arr_dsInfo = [];
        var classFlag_ds = 0; //大小背景样式
        var n_ds = 0;
        var td_col_d = 0;


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


        var xStrDx = [];
        var xStrDs = [];
        var xStrHz = [];

        //以大小或单双。大小中与相邻且相同的标签为一组划分，分别放入数组中进行排序
        for (var i = 0; i < 100; i++) {
            xStrDx[i] = {
                content_info: []  //每组数的内容
            };
            xStrDs[i] = {
                content_info: []  //每组数的内容
            };
            xStrHz[i] = {
                content_info: []  //每组数的内容
            };
        }

        var flagNumDx = 0;
        var flagNumDs = 0;
        var flagNumHz = 0;


        //遍历数组获取新分组
        for (var i = 0; i < arr_res.length - 1; i++) {
            //把第一个数的内容装入容器
            if (i == 0) {
                xStrDx[i].content_info.push(arr_res[i]);
                xStrDs[i].content_info.push(arr_dsInfo[i]);
                xStrHz[i].content_info.push(arr_hzInfo[i]);
            }

            //大小分组新数组（组成新的分组数组）
            if (arr_res[i].flag_dx == arr_res[i + 1].flag_dx) {
                xStrDx[flagNumDx].content_info.push(arr_res[i + 1]);
            } else {
                flagNumDx++;
                xStrDx[flagNumDx].content_info.push(arr_res[i + 1]);
            }

            //单双分组新数组
            if (arr_dsInfo[i].flag_ds == arr_dsInfo[i + 1].flag_ds) {
                xStrDs[flagNumDs].content_info.push(arr_dsInfo[i + 1]);
            } else {
                flagNumDs++;
                xStrDs[flagNumDs].content_info.push(arr_dsInfo[i + 1]);
            }

            //和值分组新数组
            if (arr_hzInfo[i].flag_hz == arr_hzInfo[i + 1].flag_hz) {
                xStrHz[flagNumHz].content_info.push(arr_hzInfo[i + 1]);
            } else {
                flagNumHz++;
                xStrHz[flagNumHz].content_info.push(arr_hzInfo[i + 1]);
            }

        }

        //获取大小组成的新数组有效长度
        var flagX = true;
        var dxZsLen = 0; //组成新的长度数组
        for (var i_dx = 0; i_dx < 100; i_dx++) {
            if (xStrDx[i_dx].content_info.length == 0) {
                if (flagX) {
                    dxZsLen = i_dx;
                    flagX = false;
                }
            }

        }

        //获取单双组成的新数组有效长度
        var flagD = true;
        var dsZsLen = 0; //组成新的长度数组
        for (var i_ds = 0; i_ds < 100; i_ds++) {
            if (xStrDs[i_ds].content_info.length == 0) {
                if (flagD) {
                    dsZsLen = i_ds;
                    flagD = false;
                }
            }

        }

        //获取和值组成的新数组有效长度
        var flagH = true;
        var hzZsLen = 0; //组成新的长度数组
        for (var i_hz = 0; i_hz < 100; i_hz++) {
            if (xStrHz[i_hz].content_info.length == 0) {
                if (flagH) {
                    hzZsLen = i_hz;
                    flagH = false;
                }
            }

        }


        //遍历冠亚和大小写入表格中
        for (var i = (dxZsLen - 30); i < dxZsLen; i++) {  //获取数组32长度
            for (var k = 0; k < xStrDx[i].content_info.length; k++) {
                if (xStrDx[i].content_info[k].flag_dx == '小') {
                    classFlag_dx = 'dishReload_small';
                } else {
                    classFlag_dx = 'dishReload_da';
                }

                if (n_dx >= 6) {
                    td_col_x++;
                    n_dx = 0;
                }

                $("#rmTr" + n_dx + " td").eq(td_col_x).addClass(classFlag_dx);
                $("#rmTr" + n_dx + " td").eq(td_col_x).attr('title', xStrDx[i].content_info[k].content);
                n_dx++;
            }
            td_col_x++;  //每走完一小组右移动一列
            n_dx = 0;
        }

        for (var i = (dsZsLen - 32); i < dsZsLen; i++) {  //获取数组32长度
            for (var k = 0; k < xStrDs[i].content_info.length; k++) {
                if (xStrDs[i].content_info[k].flag_ds == '单') {
                    classFlag_ds = 'dishReload_dan';
                } else {
                    classFlag_ds = 'dishReload_shuang';
                }

                if (n_ds >= 6) {
                    td_col_d++;
                    n_ds = 0;
                }

                $("#rm3Tr" + n_ds + " td").eq(td_col_d).addClass(classFlag_ds);
                $("#rm3Tr" + n_ds + " td").eq(td_col_d).attr('title', xStrDs[i].content_info[k].content);
                n_ds++;
            }
            td_col_d++;  //每走完一小组右移动一列
            n_ds = 0;
        }

        for (var i = (hzZsLen - 32); i < hzZsLen; i++) {  //获取数组32长度
            for (var k = 0; k < xStrHz[i].content_info.length; k++) {  //遍历每组的元素内容
                $("#rm2Tr" + n_hz + " td").eq(td_col_z).html(xStrHz[i].content_info[k].flag_hz);
                $("#rm2Tr" + n_hz + " td").eq(td_col_z).attr('title', xStrHz[i].content_info[k].content);

                n_hz++; //行坐标往下移动一位
                if (n_hz >= 6) {//如果超过6行另起一列继续写
                    td_col_z++;//右移一列
                    n_hz = 0;//行清零
                }
            }
            td_col_z++;  //每走完一小组右移动一列
            n_hz = 0; //走完组内元素（即写完一列六行清零）
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