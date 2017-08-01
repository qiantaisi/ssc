<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<style>

</style>
<div class="xyft-sm">
    <h5><strong>具体游戏规则如下:</strong></h5>
    <p><strong>1～10 两面：指 单、双；大、小。</strong></br>
        <strong>单、双</strong>号码为双数叫双，如4、8；号码为单数叫单，如 5、9。
        <strong>大、小：</strong>开出之号码大于或等于6为大，小于或等于5为小。
        <strong>第一名～第十名</strong>船号指定：每一个船号为一投注组合，开奖结果“投注船号”
        对应所投名次视为中奖，其余情形视为不中奖。
    </p>
    <p><strong>1～5龙虎 【注意规则】 为:</strong></br>
        <strong>冠军 龙/虎：</strong>“第一名”船号大于“第十名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余情形视为不中奖。
        <strong>亚军 龙/虎：</strong>“第二名”船号大于“第九名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余情形视为不中奖。
        <strong>第三名 龙/虎：</strong>“第三名”船号大于“第八名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余情形视为不中奖。
        <strong>第四名 龙/虎：</strong>“第四名”船号大于“第七名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余情形视为不中奖。
        <strong>第五名 龙/虎：</strong>“第五名”船号大于“第六名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余情形视为不中奖。
    </p>
    <p><strong>“冠军船号＋亚军船号＝冠亚和值”:</strong></br>
        <strong>冠亚和单双：</strong>“冠亚和值”为单视为投注“单”的注单视为中奖，为双视为投注“双”的注单视为中奖，其余视为不中奖。
        <strong>冠亚和大小：</strong>“冠亚和值”大于11时投注“大”的注单视为中奖，小于或等于11时投注“小”的注单视为中奖，其余视为不中奖。
        <strong>冠亚和指定：</strong>“冠亚和值”可能出现的结果为3～19， 投中对应“冠亚和值”数字的视为中奖，其余视为不中奖。
    </p>
</div>
<div class="help_col">
    <h5><strong>开奖说明</strong></h5>
    <p>幸运飞艇（开奖网） 北京时间（GMT+8）</br>
        每天白天从中午13:04 开到凌晨04:04，</br>
        每5分钟开一次奖, 每天开奖180期</p>
</div>