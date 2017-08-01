<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="eveb_tip eveb_market_tip">
    <span class="color-888">您的推荐链接&nbsp;<a href="#" class="color-df3c31">http://www.eveb.com/?u=009527</a></span>
    <a href="#;" class="button_small button_1" onclick="copyToClipboard('http://www.eveb.com/?u=009527')">复制到剪切板</a>
</div>
<div class="eveb_tab eveb_tab_2">
    <ul>
        <li class="on">
            <p class="num">0</p><p>总推荐人数</p>
        </li>
        <li>
            <p class="num">0</p><p>访问人数</p>
        </li>
        <li>
            <p class="num">0</p><p>注册人数</p>
        </li>
        <li>
            <p class="num">0</p><p>成功推荐人数</p>
        </li>
    </ul>
</div>
<h3>
    <div class="eveb_search">
        起止时间：
        <input name="starttime" id="starttime" type="text" size="10" class="suminp"> - <input name="endtime" id="endtime" type="text" size="10" class="suminp">
        <a href="#" class="button_small button_1">筛选</a>
        <a href="#" class="button_small button_4" onclick="searchday(1)">今日</a>
        <a href="#" class="button_small button_4" onclick="searchday(3)">3天</a>
        <a href="#" class="button_small button_4" onclick="searchday(7)">本周</a>
    </div>
    推荐记录
</h3>
<div class="eveb_market_list">
    <table class="eveb_box eveb_table" style="display: table;">
        <tbody><tr>
            <th>会员名</th>
            <th>真实姓名</th>
            <th>注册日期</th>
            <th>累计存款金额</th>
            <th>推荐优惠</th>
            <th>状态</th>
            <th>备注</th>
        </tr>
        <tr>
            <td colspan="7">没有符合条件的记录</td>
        </tr>
        </tbody></table>
</div>
<div class="eveb_page fr">
    <a href="#">&lt;</a>
    <a href="#" class="on">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <span>...</span>
    <a href="#">&gt;</a>
</div>