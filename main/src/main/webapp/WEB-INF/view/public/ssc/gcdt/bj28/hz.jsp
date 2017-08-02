<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">和值</th>
                </tr>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><span class="ball-28xyicon grayxy28">0</span></td>
                    <td><strong class="color-red pl" data-plid="9350"></strong></td>
                    <td><input type="text" class="table-txt" data-name="0" data-plid="9350"/></td>

                    <td><span class="ball-28xyicon greenxy28">1</span></td>
                    <td><strong class="color-red pl" data-plid="9351"></strong></td>
                    <td><input type="text" class="table-txt" data-name="1" data-plid="9351"/></td>

                    <td><span class="ball-28xyicon bluexy28">2</span></td>
                    <td><strong class="color-red pl" data-plid="9352"></strong></td>
                    <td><input type="text" class="table-txt" data-name="2" data-plid="9352"/></td>

                    <td><span class="ball-28xyicon ball-28xy3">3</span></td>
                    <td><strong class="color-red pl" data-plid="9353"></strong></td>
                    <td><input type="text" class="table-txt" data-name="3" data-plid="9353"/></td>
                </tr>

                <tr>
                    <td><span class="ball-28xyicon greenxy28">4</span></td>
                    <td><strong class="color-red pl" data-plid="9354"></strong></td>
                    <td><input type="text" class="table-txt" data-name="4" data-plid="9354"/></td>

                    <td><span class="ball-28xyicon bluexy28">5</span></td>
                    <td><strong class="color-red pl" data-plid="9355"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5" data-plid="9355"/></td>

                    <td><span class="ball-28xyicon ball-28xy6">6</span></td>
                    <td><strong class="color-red pl" data-plid="9356"></strong></td>
                    <td><input type="text" class="table-txt" data-name="6" data-plid="9356"/></td>

                    <td><span class="ball-28xyicon greenxy28">7</span></td>
                    <td><strong class="color-red pl" data-plid="9357"></strong></td>
                    <td><input type="text" class="table-txt" data-name="7" data-plid="9357"/></td>
                </tr>

                <tr>
                    <td><span class="ball-28xyicon bluexy28">8</span></td>
                    <td><strong class="color-red pl" data-plid="9358"></strong></td>
                    <td><input type="text" class="table-txt" data-name="8" data-plid="9358"/></td>

                    <td><span class="ball-28xyicon ball-28xy9">9</span></td>
                    <td><strong class="color-red pl" data-plid="9359"></strong></td>
                    <td><input type="text" class="table-txt" data-name="9" data-plid="9359"/></td>

                    <td><span class="ball-28xyicon greenxy28">10</span></td>
                    <td><strong class="color-red pl" data-plid="9360"></strong></td>
                    <td><input type="text" class="table-txt" data-name="10" data-plid="9360"/></td>

                    <td><span class="ball-28xyicon bluexy28">11</span></td>
                    <td><strong class="color-red pl" data-plid="9361"></strong></td>
                    <td><input type="text" class="table-txt" data-name="11" data-plid="9361"/></td>
                </tr>

                <tr>
                    <td><span class="ball-28xyicon ball-28xy12">12</span></td>
                    <td><strong class="color-red pl" data-plid="9362"></strong></td>
                    <td><input type="text" class="table-txt" data-name="12" data-plid="9362"/></td>

                    <td><span class="ball-28xyicon grayxy28">13</span></td>
                    <td><strong class="color-red pl" data-plid="9363"></strong></td>
                    <td><input type="text" class="table-txt" data-name="13" data-plid="9363"/></td>

                    <td><span class="ball-28xyicon grayxy28">14</span></td>
                    <td><strong class="color-red pl" data-plid="9364"></strong></td>
                    <td><input type="text" class="table-txt" data-name="14" data-plid="9364"/></td>

                    <td><span class="ball-28xyicon ball-28xy15">15</span></td>
                    <td><strong class="color-red pl" data-plid="9365"></strong></td>
                    <td><input type="text" class="table-txt" data-name="15" data-plid="9365"/></td>
                </tr>

                <tr>
                    <td><span class="ball-28xyicon greenxy28">16</span></td>
                    <td><strong class="color-red pl" data-plid="9366"></strong></td>
                    <td><input type="text" class="table-txt" data-name="16" data-plid="9366"/></td>

                    <td><span class="ball-28xyicon bluexy28">17</span></td>
                    <td><strong class="color-red pl" data-plid="9367"></strong></td>
                    <td><input type="text" class="table-txt" data-name="17" data-plid="9367"/></td>

                    <td><span class="ball-28xyicon ball-28xy18">18</span></td>
                    <td><strong class="color-red pl" data-plid="9368"></strong></td>
                    <td><input type="text" class="table-txt" data-name="18" data-plid="9368"/></td>

                    <td><span class="ball-28xyicon greenxy28">19</span></td>
                    <td><strong class="color-red pl" data-plid="9369"></strong></td>
                    <td><input type="text" class="table-txt" data-name="19" data-plid="9369"/></td>
                </tr>

                <tr>
                    <td><span class="ball-28xyicon bluexy28">20</span></td>
                    <td><strong class="color-red pl" data-plid="9370"></strong></td>
                    <td><input type="text" class="table-txt" data-name="20" data-plid="9370"/></td>

                    <td><span class="ball-28xyicon ball-28xy21">21</span></td>
                    <td><strong class="color-red pl" data-plid="9371"></strong></td>
                    <td><input type="text" class="table-txt" data-name="21" data-plid="9371"/></td>

                    <td><span class="ball-28xyicon greenxy28">22</span></td>
                    <td><strong class="color-red pl" data-plid="9372"></strong></td>
                    <td><input type="text" class="table-txt" data-name="22" data-plid="9372"/></td>

                    <td><span class="ball-28xyicon bluexy28">23</span></td>
                    <td><strong class="color-red pl" data-plid="9373"></strong></td>
                    <td><input type="text" class="table-txt" data-name="23" data-plid="9373"/></td>
                </tr>

                <tr>
                    <td><span class="ball-28xyicon ball-28xy24">24</span></td>
                    <td><strong class="color-red pl" data-plid="9374"></strong></td>
                    <td><input type="text" class="table-txt" data-name="24" data-plid="9374"/></td>

                    <td><span class="ball-28xyicon greenxy28">25</span></td>
                    <td><strong class="color-red pl" data-plid="9375"></strong></td>
                    <td><input type="text" class="table-txt" data-name="25" data-plid="9375"/></td>

                    <td><span class="ball-28xyicon bluexy28">26</span></td>
                    <td><strong class="color-red pl" data-plid="9376"></strong></td>
                    <td><input type="text" class="table-txt" data-name="26" data-plid="9376"/></td>

                    <td><span class="ball-28xyicon grayxy27">27</span></td>
                    <td><strong class="color-red pl" data-plid="9377"></strong></td>
                    <td><input type="text" class="table-txt" data-name="27" data-plid="9377"/></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>

        <c:import url="common/bottom_zs.jsp"/>
    </div>
    <div class="fr main-right cl-10"></div>
</div>

<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }

    function registerLogin() {
        var loginAccount = $.trim($("#registerLoginAccount").val());
        var loginPassword = $.trim($("#registerLoginPassword").val());
        var yzm = $.trim($("#registerLoginYzm").val());

        if (!loginAccount) {
            alert("请输入账号");
            return;
        }
        if (!loginPassword) {
            alert("请输入密码");
            return;
        }
        if (!yzm) {
            alert("请输入验证码");
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>member/ajaxLogin.json",
            data: {
                yzm: yzm,
                account: loginAccount,
                password: $.md5(loginPassword)
            },
            beforeSend: function () {
                showLoading();
            },
            success: function (json) {
                if (json.result == 1) {
                    $.cookie("uid", json.userId, {path: "/"});
                    $.cookie("token", json.token, {path: "/"});
                    parent.getUserSession();
                    $(".alert_log .alert_log_col h5 i").trigger("click");
                    $("#bottomInfo .tabs ul li:first").trigger("click");
                } else {
                    refreshYzm(document.getElementById('registerYzmImg2'));
                    Tools.toast("登录失败：" + json.description);
                }
                hideLoading();
            }
        });
    }

    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }
    $(window).resize(function () {
        ate();
    });

    function ate() {
        var hei = $(window).height();
        $(".back").css("height", hei - 27 + "px");
    }

    $(function () {
        parent.getUserSession();
    });
</script>
<script>
    var playGroupId = 7;
    var playId = 293;
    var playGroupName = '和值';

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
</script>