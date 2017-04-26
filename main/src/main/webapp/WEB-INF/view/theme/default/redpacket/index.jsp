<%@ page import="org.apache.commons.lang3.time.DateFormatUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>抢红包</title>
    <link rel="stylesheet" href="${resPath}redpacket/css/style.css" type="text/css"><!--页面CSS-->
    <link rel="stylesheet" href="${resPath}redpacket/css/animate.min.css" type="text/css"><!--CSS3动画-->
    <script type="text/javascript" src="${resPath}redpacket/js/jquery-3.1.1.min.js"></script><!--jQuery库-->
    <script type="text/javascript" src="${resPath}js/global.js"></script><!--jQuery库-->
</head>
<body>

<div class="top">
    <div class="wid">
        <p class="fl">
            <a href="<%=basePath%>">官网首页</a>|<a href="<%=basePath%>register.html">会员注册</a>
        </p>
        <div class="logo"><img src="${resPath}redpacket/img/logo.png" alt=""></div>
        <p class="fr">
            <a href="<%=basePath%>yhhd.html">优惠活动</a>|<a href="${kefuUrl}" target="_blank">在线客服</a>
        </p>
    </div>
</div><!--top-->

<div class="actity">
    <div class="wid">
        <div class="box1">
            <%--<p>活动时间：北京时间<%=DateFormatUtils.format(DateUtils.getYesterdayStart(), "yyyy年MM月dd日")%>累积存款将于第二天北京时间15：00-15：30开始抢红包！</p>--%>
            <p>活动已结束</p>
        </div>
        <div class="box2">
            <input type="text" placeholder="请输入会员账号" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" id="inputAccount">
            <a class="btn-rob" onclick="qhb()" href="javascript:void(0)"></a>
            <a class="btn-query" onclick="query()" href="javascript:void(0)"></a>
        </div>
        <%--<%--%>
            <%--Date destTime = null;--%>
            <%--Date now = DateUtils.getBeijingCalendar().getTime();--%>
            <%--Calendar calendar = Calendar.getInstance();--%>
            <%--calendar.setTime(now);--%>
            <%--calendar.set(Calendar.HOUR_OF_DAY, 15);--%>
            <%--calendar.set(Calendar.MINUTE, 0);--%>
            <%--calendar.set(Calendar.SECOND, 0);--%>
            <%--calendar.set(Calendar.MILLISECOND, 0);--%>
            <%--Date startTime = calendar.getTime();--%>
            <%--calendar.set(Calendar.MINUTE, 30);--%>
            <%--Date endTime = calendar.getTime();--%>
            <%--if (now.getTime() < endTime.getTime()) {--%>
                <%--destTime = startTime;--%>
            <%--} else {--%>
                <%--calendar.setTime(startTime);--%>
                <%--calendar.add(Calendar.DAY_OF_MONTH, 1);--%>
                <%--destTime = calendar.getTime();--%>
            <%--}--%>
        <%--%>--%>
        <%--<div class="box3" end-timer="<%=DateFormatUtils.format(destTime, "yyyy:MM:dd:15:00:00")%>">--%>
        <div class="box3" end-timer="2017:02:13:15:30:00">
            <ul>
                <li class="t"><span class="sp1">0</span><span class="sp2">0</span></li>
                <li class="s"><span class="sp1">0</span><span class="sp2">0</span></li>
                <li class="f"><span class="sp1">0</span><span class="sp2">0</span></li>
                <li class="m"><span class="sp1">0</span><span class="sp2">0</span></li>
            </ul>
        </div>
    </div>
</div>
<div class="Cumulative wid">
    <table>
        <tr class="head">
            <td width="244">当日累计存款</td>
            <td width="170">参与次数</td>
            <td width="197">红包最高金额</td>
            <td width="197">流水限制</td>
            <td width="305">抽奖时间</td>
        </tr>
        <tr>
            <td>500+</td>
            <td>1</td>
            <td rowspan="6">8888元</td>
            <td rowspan="6">无需打码即可提款</td>
            <td rowspan="6">北京时间15：00-15：30</td>
        </tr>
        <tr>
            <td>1000+</td>
            <td>2</td>
        </tr>
        <tr>
            <td>5000+</td>
            <td>3</td>
        </tr>
        <tr>
            <td>10000+</td>
            <td>4</td>
        </tr>
        <tr>
            <td>50000+</td>
            <td>5</td>
        </tr>
        <tr>
            <td>100000+</td>
            <td>6</td>
        </tr>

    </table>
    <div class="box">
        <p><i>温馨提示：</i>时间有限过期不候，请大家准时参与哦！</p>
        <p><i>申请方式：</i>联系在线客服申请获取资格即可参与抢红包活动</p>
    </div>
</div>

<div class="rules wid">
    <h3>活动细则</h3>
    <p>1. 会员注册及累计存款计算方式采用的是北京时间，即北京时间每天中午00:00至23:59。</p>
    <p>2. 如果您当日达到参与条件，则参与抢红包时间为：（第二天北京时间15：00至15：30）若超过限定抢红包时间，将视为自动放弃参与资格。</p>
    <p>3. 所有会员参与条件资格由系统自动统计，若有任何异议，以系统统计为准，部分套利、违反公司条例会员不在赠送名单之内。</p>
    <p>4. 每位玩家、每个IP地址当日累计抢红包次数最多为6次，参与次数不可累计，为保证正常玩家的利益，如发现玩家同一个IP下注册 多个账号参与抢红包，公司有权拒绝赠送其彩金并做账号冻结处理。</p>
    <p>5. 红包运行过程通过网络计算以及系统概率设定由计算机自主运行，不涉及任何人工干预，抽奖结果公平公正。</p>
    <p>6. 如系统发生一些不可预测超出本站控制之外的技术错误，或人为不可控制的因素，${webName}保留最终处理权。</p>
    <p>7. 无论是个人或团体，如有任何威胁、滥用或使用不诚实方式套利的行为，经风险部门核实，${webName}保留权利向此团队或个人 停止、取消优惠或索回已支付的全部优惠红利。此外，公司亦保留权利向这些客户扣取相当于优惠红利价值的行政费用，以补偿我们的 行政成本。</p>
    <p>8. ${webName}保留对活动的最终解释权，以及在无通知的情况下修改、终止活动的权利，适用于所有优惠。</p>
</div>

<div class="copyright">
    <p>2009 - 2017  ©${webName}</p>
</div>

<div class="query_box">

    <div class="layout">
        <i class="close"></i>
        <div class="box">
            <ul>
                <li class="head"><span>红包金额</span><span>领取时间</span><span>是否派彩</span></li>
            </ul>
        </div>
        <div class="box">
            <ul id="dataList">
            </ul>
        </div>
    </div>
</div>

<div class="alert_box show">
    <div class="layout">
        <i class="close"></i>
        <img src="${resPath}redpacket/img/ico4.png" alt="">
        <div class="text">
            <h2>恭喜您</h2>
            <h2 id="choujiangInfo"></h2>
            <a href="<%=basePath%>">前往官网</a>
        </div>
    </div>
</div>

<div class="alert_box">
    <div class="layout">
        <i class="close"></i>
        <img src="${resPath}redpacket/img/ico3.png" alt="" class="img0">
        <div class="text">
            <h2>很遗憾</h2>
            <h2>红包已被抢完</h2>
            <a href="<%=basePath%>">前往官网</a>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="${resPath}redpacket/js/scrollanim.min.js"></script> <!--"动画库"-->
<script src="${resPath}redpacket/js/type.js"></script><!--自定义封装函数-->
<script>
    CountDown(".actity .box3",".actity .box3 ul li");
    $(".query_box .layout i.close").click(function(event) {
        $(".query_box").fadeOut();
    });

    $(".alert_box .layout i.close").click(function(event) {
        $(".alert_box").fadeOut();
    });
</script>
<script>
    var isRunning = false;
    function qhb() {
        if (isRunning) {
            return;
        }

        var account = $.trim($("#inputAccount").val());
        if (!account) {
            alert("请输入会员账号");
            return;
        }

        alert("活动已结束");
        return;

        <%--ajaxRequest({--%>
            <%--url: "<%=basePath%>redpacket/ajaxChoujiang.json",--%>
            <%--data: {--%>
                <%--account: account--%>
            <%--},--%>
            <%--beforeSend: function() {--%>
                <%--isRunning = true;--%>
            <%--},--%>
            <%--success: function(json) {--%>
                <%--if (json.result != 1) {--%>
                    <%--alert(json.description);--%>
                    <%--return;--%>
                <%--}--%>

                <%--var str = "";--%>
                <%--if (json.type == 1) {--%>
                    <%--str = "抽中<i>8</i>元";--%>
                <%--} else if (json.type == 2) {--%>
                    <%--str = "抽中<i>18</i>元";--%>
                <%--} else if (json.type == 3) {--%>
                    <%--str = "抽中<i>28</i>元";--%>
                <%--} else if (json.type == 4) {--%>
                    <%--str = "抽中<i>38</i>元";--%>
                <%--} else if (json.type == 5) {--%>
                    <%--str = "抽中<i>58</i>元";--%>
                <%--} else if (json.type == 6) {--%>
                    <%--str = "抽中<i>88</i>元";--%>
                <%--} else if (json.type == 7) {--%>
                    <%--str = "抽中<i>188</i>元";--%>
                <%--} else if (json.type == 8) {--%>
                    <%--str = "抽中<i>288</i>元";--%>
                <%--} else if (json.type == 9) {--%>
                    <%--str = "抽中<i>888</i>元";--%>
                <%--} else if (json.type == 10) {--%>
                    <%--str = "抽中<i>8888</i>元";--%>
                <%--} else if (json.type == 11) {--%>
                    <%--str = "好运连连";--%>
                <%--} else if (json.type == 12) {--%>
                    <%--str = "新年快乐";--%>
                <%--} else if (json.type == 13) {--%>
                    <%--str = "恭喜发财";--%>
                <%--} else if (json.type == 14) {--%>
                    <%--str = "阖家欢乐";--%>
                <%--} else if (json.type == 15) {--%>
                    <%--str = "财源广进";--%>
                <%--} else if (json.type == 16) {--%>
                    <%--str = "合家团聚";--%>
                <%--}--%>
                <%--$("#choujiangInfo").html(str);--%>

                <%--$(".show").fadeIn();--%>
            <%--},--%>
            <%--complete: function() {--%>
                <%--isRunning = false;--%>
            <%--}--%>
        <%--});--%>
    }

    function query() {
        if (isRunning) {
            return;
        }

        var account = $.trim($("#inputAccount").val());
        if (!account) {
            alert("请输入会员账号");
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>redpacket/ajaxGetList.json",
            data: {
                account: account
            },
            beforeSend: function() {
                isRunning = true;
            },
            success: function(json) {
                if (json.result != 1) {
                    alert(json.description);
                    return;
                }
                if (json.redPacketList.length == 0) {
                    alert("暂无中奖记录");
                    return;
                }
                var str = '';
                for (var i = 0; i < json.redPacketList.length; ++i) {
                    var o = json.redPacketList[i];
                    str += '<li><span>' + o.remarks + '</span><span>' + Tools.formatDate(o.createTime) + '</span><span>' + (o.type <= 10 ? '已派彩' : '&nbsp;') + '</span></li>';
                }

                $("#dataList").html(str);

                $(".query_box").fadeIn();
            },
            complete: function() {
                isRunning = false;
            }
        });
    }
</script>
</html>