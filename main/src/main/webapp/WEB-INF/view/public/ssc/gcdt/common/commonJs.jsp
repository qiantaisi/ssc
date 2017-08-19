<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script src="${resPath}js/ssc/gcdt/ssc.js?v=20170819"></script>

<div class="alert_log two2">
    <div class="alert_log_col">
        <h5>欢迎您登录<i>×</i></h5>
        <form onsubmit="registerLogin();return false;">
            <div>
                <h4><span><img src="${resPath}img/l1.png" /></span></h4>
                <p><input type="text" id="registerLoginAccount" placeholder="请输入您的账号" /></p>
            </div>
            <div>
                <h4><span><img src="${resPath}img/l2.png" /></span></h4>
                <p><input type="password" id="registerLoginPassword" placeholder="密码" /></p>
            </div>
            <div>
                <h4><span><img src="${resPath}img/l2.png" /></span></h4>
                <p><input type="text" id="registerLoginYzm" placeholder="验证码" onfocus="refreshYzm(document.getElementById('registerYzmImg2'))" /><img id="registerYzmImg2" onclick="refreshYzm(this)" src="<%=basePath%>code/yzm?imgWidth=113&imgHeight=43&imgFontHeight=40&imgCodeY=35&imgCodeX=2" /></p>
            </div>
            <h3><input type="checkbox" /><a href="#">记住密码</a><span><a href="<%=basePath%>?u=${kefuUrl}" target="_blank">忘记密码？</a></span></h3>
            <h6><input type="submit" class="sub"  value="登录"/></h6>
        </form>
    </div>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>
<script>
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
                    parent.parent.ifm.window.location.reload();
//                    location.reload();
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
            shade: [0.1,'#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);
        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function(index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        console.log(src);
        $(obj).attr("src", src);
    }

</script>
<script type="text/html" id="wdtzTemplate">
    <ul>
        <li class="not">
            <span>游戏种类</span>
            <span>期号</span>
            <span>玩法</span>
            <span>投注号码</span>
            <span>投注额</span>
            <span>奖金</span>
            <span>状态</span>
        </li>
        {{each list as value index}}
        {{if index % 2 == 0}}
        <li class="odd">
            {{else}}
        <li>
            {{/if}}
            <span>{{value.playGroupName}}</span>
            <span>{{value.number}}</span>
            <span>{{value.playName}}</span>
            <span>{{value.content}}</span>
            <span>{{value.totalMoney}}</span>
            <span>{{value.jiangjin}}</span>
            {{if value.status == 0}}
            <span>等待开奖</span>
            {{else if value.status == 1}}
            {{if value.zjMoney > 0}}
            <span>已中奖</span>
            {{else}}
            <span>未中奖</span>
            {{/if}}
            {{else if value.status == 2}}
            <span>已撤单</span>
            {{/if}}
        </li>
        {{/each}}
        <li style="width:100%;text-align:center;"><a  href="javascript:void(0);" onclick="openHyzx('member/lsjl.html?module=tzjl')">查看更多</a></li>
    </ul>
</script>
<script type="text/html" id="wdzjTemplate">
    <ul>
        <li class="not">
            <span>游戏种类</span>
            <span>期号</span>
            <span>玩法</span>
            <span>投注号码</span>
            <span>投注额</span>
            <span>中奖金额</span>
            <span>状态</span>
        </li>
        {{each list as value index}}
        {{if index % 2 == 0}}
        <li class="odd">
            {{else}}
        <li>
            {{/if}}
            <span>{{value.playGroupName}}</span>
            <span>{{value.number}}</span>
            <span>{{value.playName}}</span>
            <span>{{value.content}}</span>
            <span>{{value.totalMoney}}</span>
            <span>{{value.zjMoney}}</span>
            {{if value.status == 0}}
            <span>等待开奖</span>
            {{else if value.status == 1}}
            {{if value.zjMoney > 0}}
            <span>已中奖</span>
            {{else}}
            <span>未中奖</span>
            {{/if}}
            {{else if value.status == 2}}
            <span>已撤单</span>
            {{/if}}
        </li>
        {{/each}}
        <li style="width:100%;text-align:center;"><a  href="javascript:void(0);" onclick="openHyzx('member/lsjl.html?module=tzjl')">查看更多</a></li>
    </ul>
</script>
<script type="text/html" id="kjhmTemplate">
    <ul>
        <li class="not">
            <span>游戏种类</span>
            <span>期号</span>
            <span>奖号</span>
            <span>开奖时间</span>
        </li>
        {{each list as value index}}
        {{if index % 2 == 0}}
        <li class="odd">
            {{else}}
        <li>
            {{/if}}
            <span>{{value.playGroupName}}</span>
            <span>{{value.number}}</span>
            <span style="color:red;">{{value.openCode}}</span>
            <span>{{value.openTime}}</span>
            <span class="pid" style="visibility: hidden">{{value.playGroupId}}</span>
        </li>
        {{/each}}
        <li style="width:100%;text-align:center;"><a href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId={{playGroupId}}" target="_blank">查看更多</a></li>
    </ul>
</script>
<script>
    function openHyzx(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
            alert("请先登录");
            if ($("#loginAccount1").length > 0) {
                $("#loginAccount1").focus();
                return;
            }
            window.location.href = "<%=basePath%>main.html";
            return;
        }
        var subUrl = "";
        if (module) {
            subUrl = "#" + CONFIG.BASEURL + module;
        }
        windowOpen(CONFIG.BASEURL + 'member/index.html' + subUrl, '会员中心', 1250, 834);
    }
    <%--var plInterval;--%>
    <%--var plstauts;--%>

    <%--function autoLeftTime() {--%>
        <%--var time = $("#leftTime").data("time");--%>
        <%--if (isNaN(time) || time < 0) {--%>
            <%--return;--%>
        <%--}--%>
        <%--var tmpTime = time;--%>
        <%--var hour = Math.floor(tmpTime / 60 / 60);--%>
        <%--tmpTime = tmpTime - hour * 60 * 60;--%>
        <%--var minute = Math.floor(tmpTime / 60);--%>
        <%--tmpTime = tmpTime - minute * 60;--%>
        <%--var second = tmpTime;--%>

        <%--var str = '';--%>
        <%--str += '<ol class="s">';--%>
        <%--str += '<span class="sp1">' + (Math.floor(hour / 10)) + '</span>';--%>
        <%--str += '<span class="sp2">' + (Math.floor(hour % 10)) + '</span>';--%>
        <%--str += '</ol>';--%>
        <%--str += '<ol class="f">';--%>
        <%--str += '<span class="sp1">' + (Math.floor(minute / 10)) + '</span>';--%>
        <%--str += '<span class="sp2">' + (Math.floor(minute % 10)) + '</span>';--%>
        <%--str += '</ol>';--%>
        <%--str += '<ol class="m">';--%>
        <%--str += '<span class="sp1">' + (Math.floor(second / 10)) + '</span>';--%>
        <%--str += '<span class="sp2">' + (Math.floor(second % 10)) + '</span>';--%>
        <%--str += '</ol>';--%>

        <%--$("#leftTime").data("time", --time).html(str);--%>

        <%--// 播放铃声--%>
        <%--if (hour == 0 && minute == 0 && second < 10 && second > 0) {--%>
            <%--var file = $("#selectCount").find("option:selected").data("file");--%>
            <%--play(file);--%>
        <%--}--%>
    <%--}--%>

    <%--// 幸运选号--%>
    <%--var xyxhNums = '${param.nums}';--%>
    <%--var xyxhMoney = '${param.money}';--%>
    <%--$(function() {--%>
        <%--$(".Playmethod ul li p span a").click(function() {--%>
            <%--$(".Playmethod ul li p span.acti").removeClass("acti");--%>
            <%--$(this).parent().addClass("acti");--%>
            <%--getSscSubPage($(this).data("url"));--%>
        <%--});--%>
        <%--$(".cqssc").click(function(){--%>
            <%--getSscSubPage($(this).data("url"));--%>
        <%--});--%>

        <%--var navIndex = Tools.parseInt('${param.navIndex}');--%>
        <%--if (isNaN(navIndex)) {--%>
            <%--navIndex = 0;--%>
        <%--}--%>

        <%--$(".Playmethod ul li p span a").eq(navIndex).trigger("click");--%>
        <%--$(".cqssc").trigger("click");--%>

        <%--setInterval(function() {--%>
            <%--if (typeof autoLeftTime == 'function') {--%>
                <%--autoLeftTime();--%>
            <%--}--%>
        <%--}, 1000);--%>

        <%--setInterval(function() {--%>
            <%--if (typeof autoGetDataNumber == 'function') {--%>
                <%--autoGetDataNumber(null);--%>
            <%--}--%>
        <%--}, 1000);--%>
        <%--parent.hideLoading();--%>

        <%--$(".table-common input[type='text']").keyup(function() {--%>
            <%--var obj = this;--%>
            <%--var v = parseInt($(obj).val());--%>
            <%--//先把非数字的都替换掉，除了数字和.--%>
            <%--obj.value = obj.value.replace(/[^\d.]/g,"");--%>
            <%--//必须保证第一个为数字而不是.--%>
            <%--obj.value = obj.value.replace(/^\./g,"");--%>
            <%--//必须保证第一个为非零数据--%>
            <%--obj.value = obj.value.replace(/^0/g,"");--%>
            <%--//保证只有出现一个.而没有多个.--%>
            <%--obj.value = obj.value.replace(/\.{2,}/g,".");--%>
            <%--//保证.只出现一次，而不能出现两次以上--%>
            <%--obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");--%>
            <%--if (obj.value.indexOf(".") > 0 && obj.value.indexOf(".") + 0  <= obj.value.length) {--%>
                <%--obj.value = obj.value.substr(0, obj.value.indexOf(".") + 0);--%>
            <%--}--%>
            <%--if(isNaN(v)|| v <= 0){--%>
                <%--$(obj).val('');--%>
            <%--}--%>

        <%--});--%>
    <%--});--%>

    <%--function getZstPage(){--%>

    <%--}--%>


    <%--var  getPlStauts = false;  //获取当前刷新赔率时有或无赔率的标记--%>
    <%--function getSscSubPage(url) {--%>
        <%--url = "<%=basePath%>ssc/gcdt/" + url.split("-").join("/") + ".html";--%>
        <%--ajaxRequest({--%>
            <%--url: url,--%>
            <%--type: 'GET',--%>
            <%--dataType: 'html',--%>
            <%--beforeSend: function(){--%>
                <%--$("#sscContent").html('<img src="${resPath}img/base_loading.gif" style="display: block;margin: auto;margin: 50px auto;">');--%>
            <%--},--%>
            <%--success: function(html) {--%>
                <%--$("#sscContent").html(html);--%>
                <%--plstauts = $(".pl").eq(0).html();--%>
                <%--if (typeof plstauts == 'undefined' || plstauts == null || plstauts == '') {--%>
                    <%--getPlStauts = true;--%>
                    <%--getDataNumber(playGroupId, playId, true);--%>
                <%--}--%>
<%--//                $("#sscContent .btns button[type='submit']").click(function() {--%>
<%--//                    xd();--%>
<%--//                });--%>
<%--//                $("#sscContent .btns .btn-2").click(function() {--%>
<%--//                    reset();--%>
<%--//                });--%>
<%--//                    $(".main-left .fl input").keyup(function() {--%>
<%--//                        $(".table-common input").val($(this).val());--%>
<%--//                    });--%>

<%--//                    $(".table-common input").focus(function() {--%>
<%--//                        var val = $(".main-left .fl input").val();--%>
<%--//                        if (typeof val != 'undefined' && val) {--%>
<%--//                            $(this).val($(".main-left .fl input").val());--%>
<%--//                        }--%>
<%--//                    });--%>
                <%--$('#sscContent input').keyup(function(){--%>
                    <%--var obj = this;--%>
                    <%--var v = parseInt($(obj).val());--%>
                    <%--//先把非数字的都替换掉，除了数字和.--%>
                    <%--obj.value = obj.value.replace(/[^\d.]/g,"");--%>
                    <%--//必须保证第一个为数字而不是.--%>
                    <%--obj.value = obj.value.replace(/^\./g,"");--%>
                    <%--//必须保证第一个为非零数据--%>
                    <%--obj.value = obj.value.replace(/^0/g,"");--%>
                    <%--//保证只有出现一个.而没有多个.--%>
                    <%--obj.value = obj.value.replace(/\.{2,}/g,".");--%>
                    <%--//保证.只出现一次，而不能出现两次以上--%>
                    <%--obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");--%>
                    <%--if (obj.value.indexOf(".") > 0 && obj.value.indexOf(".") + 0 <= obj.value.length) {--%>
                        <%--obj.value = obj.value.substr(0, obj.value.indexOf(".") + 0);--%>
                    <%--}--%>
                    <%--if(isNaN(v)|| v <= 0){--%>
                        <%--$(obj).val('');--%>
                    <%--}--%>
                <%--})--%>
            <%--},--%>
            <%--complete: function() {--%>
            <%--}--%>
        <%--});--%>
    <%--}--%>
</script>
