<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%--<div class="cover1">--%>
    <%--&lt;%&ndash;显示蒙版&ndash;%&gt;--%>
<%--</div>--%>
<div class="coveron1 hw">
    <div class="consele1">
        <div class="xuan">
            <div class="xuan1"></div>
            <div class="xuan2">五星</div>
            <div class="xuan1"></div>
        </div>
        <div class="xuan_cz">
            <div class="xuan_cz1">直选复式</div>
            <div class="xuan_cz2">直选单式</div>
            <div class="xuan_cz3">任选二</div>
        </div>
        <div class="xuan">
            <div class="xuan1"></div>
            <div class="xuan2">四星</div>
            <div class="xuan1"></div>
        </div>
        <div class="xuan_cz">
            <div class="xuan_cz1">直选复式</div>
            <div class="xuan_cz2">直选单式</div>
            <div class="xuan_cz3">任选二</div>
        </div>
        <div class="xuan">
            <div class="xuan1"></div>
            <div class="xuan2">三星</div>
            <div class="xuan1"></div>
        </div>
        <div class="xuan_cz">
            <div class="xuan_cz1">直选复式</div>
            <div class="xuan_cz2">直选单式</div>
            <div class="xuan_cz3">任选二</div>
        </div>
        <div class="xuan">
            <div class="xuan1"></div>
            <div class="xuan2">二星</div>
            <div class="xuan1"></div>
        </div>
        <div class="xuan_cz">
            <div class="xuan_cz1">直选复式</div>
            <div class="xuan_cz2">直选单式</div>
            <div class="xuan_cz3">任选二</div>
        </div>
        <div class="xuan">
            <div class="xuan1"></div>
            <div class="xuan2">一星</div>
            <div class="xuan1"></div>
        </div>
        <div class="xuan_cz">
            <div class="xuan_cz1">直选复式</div>
            <div class="xuan_cz2">直选单式</div>
            <div class="xuan_cz3">任选二</div>
        </div>
    </div>
</div>
