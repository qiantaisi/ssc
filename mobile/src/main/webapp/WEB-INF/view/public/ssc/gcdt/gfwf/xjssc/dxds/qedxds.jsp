<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="wrap">
    <div class="cus_common wanStr">
        <div class="wan_top">
            <span class="wanwei">万位</span>
            <span class="xz">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>

        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz n0" onclick="danSelect(this)">大</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n1" onclick="danSelect(this)">小</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n2" onclick="danSelect(this)">单</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n3" onclick="danSelect(this)">双</span>
            </div>
        </div>
    </div>

    <div class="cus_common qianStr">
        <div class="wan_top">
            <span class="wanwei">千位</span>
            <span class="xz">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>

        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz n0" onclick="danSelect(this)">大</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n1" onclick="danSelect(this)">小</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n2" onclick="danSelect(this)">单</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n3" onclick="danSelect(this)">双</span>
            </div>
        </div>
    </div>
</div>