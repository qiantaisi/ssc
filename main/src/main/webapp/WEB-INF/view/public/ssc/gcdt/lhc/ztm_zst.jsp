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
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zyt')">正一特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zet')">正二特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zst')" class="active">正三特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zsit')">正四特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zwt')">正五特</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-ztm_zlt')">正六特</a>
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
                    <td><strong class="color-red pl" data-plid="6393"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-1" data-plid="6393"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td><strong class="color-red pl" data-plid="6403"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-11" data-plid="6403"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td><strong class="color-red pl" data-plid="6413"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-21" data-plid="6413"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td><strong class="color-red pl" data-plid="6423"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-31" data-plid="6423"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td><strong class="color-red pl" data-plid="6433"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-41" data-plid="6433"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td><strong class="color-red pl" data-plid="6394"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-2" data-plid="6394"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td><strong class="color-red pl" data-plid="6404"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-12" data-plid="6404"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td><strong class="color-red pl" data-plid="6414"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-22" data-plid="6414"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td><strong class="color-red pl" data-plid="6424"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-32" data-plid="6424"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td><strong class="color-red pl" data-plid="6434"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-42" data-plid="6434"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td><strong class="color-red pl" data-plid="6395"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-3" data-plid="6395"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td><strong class="color-red pl" data-plid="6405"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-13" data-plid="6405"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td><strong class="color-red pl" data-plid="6415"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-23" data-plid="6415"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td><strong class="color-red pl" data-plid="6425"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-33" data-plid="6425"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td><strong class="color-red pl" data-plid="6435"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-43" data-plid="6435"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td><strong class="color-red pl" data-plid="6396"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-4" data-plid="6396"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td><strong class="color-red pl" data-plid="6406"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-14" data-plid="6406"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td><strong class="color-red pl" data-plid="6416"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-24" data-plid="6416"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td><strong class="color-red pl" data-plid="6426"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-34" data-plid="6426"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td><strong class="color-red pl" data-plid="6436"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-44" data-plid="6436"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td><strong class="color-red pl" data-plid="6397"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-5" data-plid="6397"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td><strong class="color-red pl" data-plid="6407"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-15" data-plid="6407"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td><strong class="color-red pl" data-plid="6417"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-25" data-plid="6417"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td><strong class="color-red pl" data-plid="6427"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-35" data-plid="6427"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td><strong class="color-red pl" data-plid="6437"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-45" data-plid="6437"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td><strong class="color-red pl" data-plid="6398"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-6" data-plid="6398"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td><strong class="color-red pl" data-plid="6408"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-16" data-plid="6408"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td><strong class="color-red pl" data-plid="6418"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-26" data-plid="6418"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td><strong class="color-red pl" data-plid="6428"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-36" data-plid="6428"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td><strong class="color-red pl" data-plid="6438"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-46" data-plid="6438"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td><strong class="color-red pl" data-plid="6399"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-7" data-plid="6399"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td><strong class="color-red pl" data-plid="6409"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-17" data-plid="6409"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td><strong class="color-red pl" data-plid="6419"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-27" data-plid="6419"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td><strong class="color-red pl" data-plid="6429"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-37" data-plid="6429"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td><strong class="color-red pl" data-plid="6439"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-47" data-plid="6439"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td><strong class="color-red pl" data-plid="6400"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-8" data-plid="6400"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td><strong class="color-red pl" data-plid="6410"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-18" data-plid="6410"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td><strong class="color-red pl" data-plid="6420"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-28" data-plid="6420"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td><strong class="color-red pl" data-plid="6430"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-38" data-plid="6430"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td><strong class="color-red pl" data-plid="6440"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-48" data-plid="6440"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td><strong class="color-red pl" data-plid="6401"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-9" data-plid="6401"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td><strong class="color-red pl" data-plid="6411"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-19" data-plid="6411"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td><strong class="color-red pl" data-plid="6421"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-29" data-plid="6421"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td><strong class="color-red pl" data-plid="6431"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-39" data-plid="6431"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td><strong class="color-red pl" data-plid="6441"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-49" data-plid="6441"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td><strong class="color-red pl" data-plid="6402"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-10" data-plid="6402"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td><strong class="color-red pl" data-plid="6412"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-20" data-plid="6412"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td><strong class="color-red pl" data-plid="6422"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-30" data-plid="6422"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td><strong class="color-red pl" data-plid="6432"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-40" data-plid="6432"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="6442"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-单" data-plid="6442"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="6444"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-大" data-plid="6444"/></td>

                    <td>合单</td>
                    <td><strong class="color-red pl" data-plid="6450"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-合单" data-plid="6450"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="6452"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-红波" data-plid="6452"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="6453"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-蓝波" data-plid="6453"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="6443"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-双" data-plid="6443"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="6445"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-小" data-plid="6445"/></td>

                    <td>合双</td>
                    <td><strong class="color-red pl" data-plid="6451"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-合双" data-plid="6451"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="6454"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正三特-绿波" data-plid="6454"/></td>

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
    var playGroupId = 6;
    var playId = 206;
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