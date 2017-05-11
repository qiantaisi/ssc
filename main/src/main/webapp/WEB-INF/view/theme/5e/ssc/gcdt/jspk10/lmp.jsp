<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table class="xyft-table" style="width:100%!important;">
                <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th colspan="2">大</th>
                    <th colspan="2">小</th>
                    <th colspan="2">单</th>
                    <th colspan="2">双</th>
                    <th colspan="2">龙</th>
                    <th colspan="2">虎</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><strong>冠军</strong></td>
                    <td><strong class="color-red pl" data-plid="14134"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-大" data-plid="14134"/></td>
                    <td><strong class="color-red pl" data-plid="14160"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-小" data-plid="14160"/></td>
                    <td><strong class="color-red pl" data-plid="14170"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-单" data-plid="14170"/></td>
                    <td><strong class="color-red pl" data-plid="14155"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-双" data-plid="14155"/></td>
                    <td><strong class="color-red pl" data-plid="14165"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-龙" data-plid="14165"/></td>
                    <td><strong class="color-red pl" data-plid="14114"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-虎" data-plid="14114"/></td>
                </tr>

                <tr>
                    <td><strong>亚军</strong></td>
                    <td><strong class="color-red pl" data-plid="14066"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-大" data-plid="14066"/></td>
                    <td><strong class="color-red pl" data-plid="14031"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-小" data-plid="14031"/></td>
                    <td><strong class="color-red pl" data-plid="14045"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-单" data-plid="14045"/></td>
                    <td><strong class="color-red pl" data-plid="14126"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-双" data-plid="14126"/></td>
                    <td><strong class="color-red pl" data-plid="14025"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-龙" data-plid="14025"/></td>
                    <td><strong class="color-red pl" data-plid="14145"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-虎" data-plid="14145"/></td>
                </tr>

                <tr>
                    <td><strong>第三名</strong></td>
                    <td><strong class="color-red pl" data-plid="14019"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-大" data-plid="14019"/></td>
                    <td><strong class="color-red pl" data-plid="14053"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-小" data-plid="14053"/></td>
                    <td><strong class="color-red pl" data-plid="14002"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-单" data-plid="14002"/></td>
                    <td><strong class="color-red pl" data-plid="14071"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-双" data-plid="14071"/></td>
                    <td><strong class="color-red pl" data-plid="14055"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-龙" data-plid="14055"/></td>
                    <td><strong class="color-red pl" data-plid="14036"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第三名-虎" data-plid="14036"/></td>
                </tr>

                <tr>
                    <td><strong>第四名</strong></td>
                    <td><strong class="color-red pl" data-plid="13978"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-大" data-plid="13978"/></td>
                    <td><strong class="color-red pl" data-plid="13980"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-小" data-plid="13980"/></td>
                    <td><strong class="color-red pl" data-plid="13985"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-单" data-plid="13985"/></td>
                    <td><strong class="color-red pl" data-plid="14012"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-双" data-plid="14012"/></td>
                    <td><strong class="color-red pl" data-plid="13984"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-龙" data-plid="13984"/></td>
                    <td><strong class="color-red pl" data-plid="14009"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-虎" data-plid="14009"/></td>
                </tr>

                <tr>
                    <td><strong>第五名</strong></td>
                    <td><strong class="color-red pl" data-plid="14016"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-大" data-plid="14016"/></td>
                    <td><strong class="color-red pl" data-plid="14026"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-小" data-plid="14026"/></td>
                    <td><strong class="color-red pl" data-plid="14020"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-单" data-plid="14020"/></td>
                    <td><strong class="color-red pl" data-plid="14000"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-双" data-plid="14000"/></td>
                    <td><strong class="color-red pl" data-plid="14003"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-龙" data-plid="14003"/></td>
                    <td><strong class="color-red pl" data-plid="13990"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-虎" data-plid="13990"/></td>
                </tr>

                <tr>
                    <td><strong>第六名</strong></td>
                    <td><strong class="color-red pl" data-plid="14072"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-大" data-plid="14072"/></td>
                    <td><strong class="color-red pl" data-plid="14063"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-小" data-plid="14063"/></td>
                    <td><strong class="color-red pl" data-plid="14060"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-单" data-plid="14060"/></td>
                    <td><strong class="color-red pl" data-plid="14006"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-双" data-plid="14006"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第七名</strong></td>
                    <td><strong class="color-red pl" data-plid="14032"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-大" data-plid="14032"/></td>
                    <td><strong class="color-red pl" data-plid="14046"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-小" data-plid="14046"/></td>
                    <td><strong class="color-red pl" data-plid="14040"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-单" data-plid="14040"/></td>
                    <td><strong class="color-red pl" data-plid="14069"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-双" data-plid="14069"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第八名</strong></td>
                    <td><strong class="color-red pl" data-plid="14151"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-大" data-plid="14151"/></td>
                    <td><strong class="color-red pl" data-plid="14152"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-小" data-plid="14152"/></td>
                    <td><strong class="color-red pl" data-plid="14143"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-单" data-plid="14143"/></td>
                    <td><strong class="color-red pl" data-plid="14132"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-双" data-plid="14132"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第九名</strong></td>
                    <td><strong class="color-red pl" data-plid="14156"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-大" data-plid="14156"/></td>
                    <td><strong class="color-red pl" data-plid="14162"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-小" data-plid="14162"/></td>
                    <td><strong class="color-red pl" data-plid="14180"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-单" data-plid="14180"/></td>
                    <td><strong class="color-red pl" data-plid="14169"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-双" data-plid="14169"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>第十名</strong></td>
                    <td><strong class="color-red pl" data-plid="14120"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-大" data-plid="14120"/></td>
                    <td><strong class="color-red pl" data-plid="14131"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-小" data-plid="14131"/></td>
                    <td><strong class="color-red pl" data-plid="14116"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-单" data-plid="14116"/></td>
                    <td><strong class="color-red pl" data-plid="14110"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-双" data-plid="14110"/></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong>冠亚和</strong></td>
                    <td><strong class="color-red pl" data-plid="14075"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠亚和-大" data-plid="14075"/></td>
                    <td><strong class="color-red pl" data-plid="14088"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠亚和-小" data-plid="14088"/></td>
                    <td><strong class="color-red pl" data-plid="14100"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠亚和-单" data-plid="14100"/></td>
                    <td><strong class="color-red pl" data-plid="14095"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠亚和-双" data-plid="14095"/></td>
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
    </div>
</div>
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 23;
    var playId = 494;
    var playGroupName = '双面';

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