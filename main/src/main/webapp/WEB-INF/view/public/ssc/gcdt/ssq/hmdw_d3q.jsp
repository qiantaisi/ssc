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
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                    <a href="javascript:void(0)" onclick="getSscSubPage('ssq-hmdw_d1q')">第一球</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ssq-hmdw_d2q')">第二球</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ssq-hmdw_d3q')" class="active">第三球</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ssq-hmdw_d4q')">第四球</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ssq-hmdw_d5q')">第五球</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('ssq-hmdw_d6q')">第六球</a>
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
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td>01</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="1" data-plid="14933"/></td>

                    <td>02</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="2" data-plid="14933"/></td>

                    <td>03</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="3" data-plid="14933"/></td>

                    <td>04</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="4" data-plid="14933"/></td>
                </tr>

                <tr>
                    <td>05</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="5" data-plid="14933"/></td>

                    <td>06</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="6" data-plid="14933"/></td>

                    <td>07</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="7" data-plid="14933"/></td>

                    <td>08</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="8" data-plid="14933"/></td>
                </tr>

                <tr>
                    <td>09</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="9" data-plid="14933"/></td>

                    <td>10</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="10" data-plid="14933"/></td>

                    <td>11</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="11" data-plid="14933"/></td>

                    <td>12</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="12" data-plid="14933"/></td>
                </tr>

                <tr>
                    <td>13</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="13" data-plid="14933"/></td>

                    <td>14</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="14" data-plid="14933"/></td>

                    <td>15</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="15" data-plid="14933"/></td>

                    <td>16</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="16" data-plid="14933"/></td>
                </tr>

                <tr>
                    <td>17</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="17" data-plid="14933"/></td>

                    <td>18</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="18" data-plid="14933"/></td>

                    <td>19</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="19" data-plid="14933"/></td>

                    <td>20</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="20" data-plid="14933"/></td>
                </tr>

                <tr>
                    <td>21</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="21" data-plid="14933"/></td>

                    <td>22</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="22" data-plid="14933"/></td>

                    <td>23</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="23" data-plid="14933"/></td>

                    <td>24</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="24" data-plid="14933"/></td>
                </tr>

                <tr>
                    <td>25</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="25" data-plid="14933"/></td>

                    <td>26</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="26" data-plid="14933"/></td>

                    <td>27</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="27" data-plid="14933"/></td>

                    <td>28</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="28" data-plid="14933"/></td>
                </tr>

                <tr>
                    <td>29</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="21" data-plid="14933"/></td>

                    <td>30</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="22" data-plid="14933"/></td>

                    <td>31</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="23" data-plid="14933"/></td>

                    <td>32</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="24" data-plid="14933"/></td>
                </tr>

                <tr>
                    <td>33</td>
                    <td><strong class="color-red pl" data-plid="14933"></strong></td>
                    <td><input type="text" class="table-txt" data-name="33" data-plid="14933"/></td>

                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="14934"></strong></td>
                    <td><input type="text" class="table-txt" data-name="大" data-plid="14934"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="14935"></strong></td>
                    <td><input type="text" class="table-txt" data-name="小" data-plid="14935"/></td>

                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="14936"></strong></td>
                    <td><input type="text" class="table-txt" data-name="单" data-plid="14936"/></td>
                </tr>

                <tr>
                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="14937"></strong></td>
                    <td><input type="text" class="table-txt" data-name="双" data-plid="14937"/></td>

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
    var playGroupId = 12;
    var playId = 1037;
    var playGroupName = '混合';

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