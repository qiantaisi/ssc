<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<%--<div class="wfsm_top" style="height: 40px" id="test1"> </div>--%>
<div class="help_col show">
    <h5><strong>双色球玩法说明</strong></h5>
    <p><strong>◎一等奖： </strong>
        中5个红球和1个蓝球，顺序不限；如开奖号：红球123456蓝球1，投注号码红球12345蓝球1</p></br>
    <p><strong>◎二等奖： </strong>
        中4个红球1个蓝球或者5个红球，顺序不限</p></br>
    <p><strong>◎三等奖： </strong>
        中3个红球1个蓝球或4个红球，顺序不限</p></br>
    <p><strong>◎四等奖： </strong>
        中2个红球1个蓝球或1个红球1个蓝球或者1个蓝球，即中奖，顺序不限</p></br>
</div>
