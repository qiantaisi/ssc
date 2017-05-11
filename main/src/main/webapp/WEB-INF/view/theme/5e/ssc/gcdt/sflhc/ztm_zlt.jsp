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
    <div class="fl main-left">
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zyt')">正一特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zet')">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zst')">正三特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zsit')">正四特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zwt')">正五特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('sflhc-ztm_zlt')" class="active">正六特</a>
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
                    <td><strong class="color-red pl" data-plid="13674"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-1" data-plid="13674"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="13676"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-11" data-plid="13676"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="13687"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-21" data-plid="13687"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="13698"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-31" data-plid="13698"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="13709"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-41" data-plid="13709"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="13685"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-2" data-plid="13685"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="13677"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-12" data-plid="13677"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="13688"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-22" data-plid="13688"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="13699"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-32" data-plid="13699"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="13710"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-42" data-plid="13710"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="13696"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-3" data-plid="13696"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="13678"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-13" data-plid="13678"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="13689"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-23" data-plid="13689"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="13700"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-33" data-plid="13700"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="13711"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-43" data-plid="13711"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="13707"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-4" data-plid="13707"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="13679"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-14" data-plid="13679"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="13690"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-24" data-plid="13690"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="13701"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-34" data-plid="13701"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="13712"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-44" data-plid="13712"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="13718"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-5" data-plid="13718"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="13680"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-15" data-plid="13680"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="13691"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-25" data-plid="13691"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="13702"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-35" data-plid="13702"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="13713"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-45" data-plid="13713"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="13719"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-6" data-plid="13719"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="13681"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-16" data-plid="13681"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="13692"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-26" data-plid="13692"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="13703"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-36" data-plid="13703"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="13714"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-46" data-plid="13714"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="13720"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-7" data-plid="13720"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="13682"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-17" data-plid="13682"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="13693"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-27" data-plid="13693"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="13704"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-37" data-plid="13704"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="13715"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-47" data-plid="13715"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="13721"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-8" data-plid="13721"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="13683"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-18" data-plid="13683"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="13694"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-28" data-plid="13694"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="13705"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-38" data-plid="13705"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="13716"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-48" data-plid="13716"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="13722"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-9" data-plid="13722"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="13684"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-19" data-plid="13684"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="13695"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-29" data-plid="13695"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="13706"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-39" data-plid="13706"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="13717"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-49" data-plid="13717"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="13675"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-10" data-plid="13675"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="13686"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-20" data-plid="13686"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="13697"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-30" data-plid="13697"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="13708"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-40" data-plid="13708"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="13723"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-单" data-plid="13723"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="13727"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-大" data-plid="13727"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="13725"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-合单" data-plid="13725"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="13729"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-红波" data-plid="13729"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="13731"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-蓝波" data-plid="13731"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="13724"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-双" data-plid="13724"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="13728"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-小" data-plid="13728"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="13726"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-合双" data-plid="13726"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="13730"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正六特-绿波" data-plid="13730"/></td>

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
    </div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 22;
    var playId = 473;
    var playGroupName = '正码特';

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