<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
                    <th colspan="12">混合</th>
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
                    <td>大</td>
                    <td><strong class="color-red pl" data-plid="14393"></strong></td>
                    <td><input type="text" class="table-txt" data-name="大" data-plid="14393"/></td>

                    <td>小</td>
                    <td><strong class="color-red pl" data-plid="14394"></strong></td>
                    <td><input type="text" class="table-txt" data-name="小" data-plid="14394"/></td>

                    <td>红波</td>
                    <td><strong class="color-red pl" data-plid="14403"></strong></td>
                    <td><input type="text" class="table-txt" data-name="红波" data-plid="14403"/></td>

                    <td>豹子</td>
                    <td><strong class="color-red pl" data-plid="14406"></strong></td>
                    <td><input type="text" class="table-txt" data-name="豹子" data-plid="14406"/></td>
                </tr>

                <tr>
                    <td>单</td>
                    <td><strong class="color-red pl" data-plid="14395"></strong></td>
                    <td><input type="text" class="table-txt" data-name="单" data-plid="14395"/></td>

                    <td>双</td>
                    <td><strong class="color-red pl" data-plid="14396"></strong></td>
                    <td><input type="text" class="table-txt" data-name="双" data-plid="14396"/></td>

                    <td>绿波</td>
                    <td><strong class="color-red pl" data-plid="14404"></strong></td>
                    <td><input type="text" class="table-txt" data-name="绿波" data-plid="14404"/></td>

                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td>大单</td>
                    <td><strong class="color-red pl" data-plid="14397"></strong></td>
                    <td><input type="text" class="table-txt" data-name="大单" data-plid="14397"/></td>

                    <td>小单</td>
                    <td><strong class="color-red pl" data-plid="14398"></strong></td>
                    <td><input type="text" class="table-txt" data-name="小单" data-plid="14398"/></td>

                    <td>蓝波</td>
                    <td><strong class="color-red pl" data-plid="14405"></strong></td>
                    <td><input type="text" class="table-txt" data-name="蓝波" data-plid="14405"/></td>

                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td>大双</td>
                    <td><strong class="color-red pl" data-plid="14399"></strong></td>
                    <td><input type="text" class="table-txt" data-name="大双" data-plid="14399"/></td>

                    <td>小双</td>
                    <td><strong class="color-red pl" data-plid="14400"></strong></td>
                    <td><input type="text" class="table-txt" data-name="小双" data-plid="14400"/></td>

                    <td></td>
                    <td></td>
                    <td></td>

                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td>极大</td>
                    <td><strong class="color-red pl" data-plid="14401"></strong></td>
                    <td><input type="text" class="table-txt" data-name="极大" data-plid="14401"/></td>

                    <td>极小</td>
                    <td><strong class="color-red pl" data-plid="14402"></strong></td>
                    <td><input type="text" class="table-txt" data-name="极小" data-plid="14402"/></td>

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
    var playGroupId = 7;
    var playId = 657;
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