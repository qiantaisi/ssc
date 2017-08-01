<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="eveb_tab">
    <ul>
        <li class="on">
            <a href="#"><p class="num">1</p><p>待领取</p></a>
            <i class="icon icon_tab_tip"></i>
        </li>
        <li class="">
            <a href="#"><p class="num">0</p><p>已领取 锁定中</p></a>
            <i class="icon icon_tab_tip"></i>
        </li>
        <li class="">
            <a href="#"><p class="num">0</p><p>已领取</p></a>
            <i class="icon icon_tab_tip"></i>
        </li>
        <li class="">
            <a href="#"><p class="num">0</p><p>已取消</p></a>
            <i class="icon icon_tab_tip"></i>
        </li>
        <li class="">
            <a href="#"><p class="num">0</p><p>已过期</p></a>
            <i class="icon icon_tab_tip"></i>
        </li>
    </ul>
</div>
<div class="eveb_market_list">
    <table class="eveb_box eveb_table" style="display: table;">
        <tbody><tr>
            <th>优惠名称</th>
            <th>优惠类型</th>
            <th>金额</th>
            <th>有效期至</th>
            <th>投注额要求</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        <tr>
            <td colspan="7">没有符合条件的记录</td>
        </tr>
        </tbody></table>

    <table class="eveb_box eveb_table" style="display: none;">
        <tbody><tr>
            <th>优惠名称</th>
            <th>优惠类型</th>
            <th>金额</th>
            <th>申请日期</th>
            <th>投注额要求</th>
            <th>还需投注额</th>
            <th>过期日期</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        <tr>
            <td colspan="9">没有符合条件的记录</td>
        </tr>
        </tbody></table>
    <table class="eveb_box eveb_table" style="display: none;">
        <tbody><tr>
            <th>优惠名称</th>
            <th>优惠类型</th>
            <th>金额</th>
            <th>领取时间</th>
            <th>投注额要求</th>
            <th>状态</th>
        </tr>
        <tr>
            <td colspan="6">没有符合条件的记录</td>
        </tr>
        </tbody></table>
    <table class="eveb_box eveb_table" style="display: none;">
        <tbody><tr>
            <th>优惠名称</th>
            <th>优惠类型</th>
            <th>金额</th>
            <th>取消时间</th>
            <th>有效期至</th>
            <th>投注额要求</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        <tr>
            <td colspan="8">没有符合条件的记录</td>
        </tr>
        </tbody></table>
    <table class="eveb_box eveb_table" style="display: none;">
        <tbody><tr>
            <th>优惠名称</th>
            <th>优惠类型</th>
            <th>金额</th>
            <th>过期日期</th>
            <th>投注额要求</th>
            <th>状态</th>
        </tr>
        <tr>
            <td colspan="6">没有符合条件的记录</td>
        </tr>
        </tbody></table>
</div>