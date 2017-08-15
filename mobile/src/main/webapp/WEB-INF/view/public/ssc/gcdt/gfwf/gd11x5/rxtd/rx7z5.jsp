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
    <div class="cus_common wanweiStr">
        <div class="wan_top">
            <span class="wanwei">胆码</span>
            <span class="xz">
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>
        <div class="wan_bottom qm_danma_selected">
            <div class="cus-flex-item">
                <span class="xz n1" onclick="danSelect(this)">01</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n2" onclick="danSelect(this)">02</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n3" onclick="danSelect(this)">03</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n4" onclick="danSelect(this)">04</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n5" onclick="danSelect(this)">05</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n6" onclick="danSelect(this)">06</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n7" onclick="danSelect(this)">07</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n8" onclick="danSelect(this)">08</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n9" onclick="danSelect(this)">09</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n10" onclick="danSelect(this)">10</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n11" onclick="danSelect(this)">11</span>
            </div>
        </div>
    </div>


    <div class="cus_common qianweiStr">
        <div class="wan_top">
            <span class="wanwei">拖胆</span>
            <span class="xz">
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>
        <div class="wan_bottom tuodan_selected">
            <div class="cus-flex-item">
                <span class="xz n1" onclick="danSelect(this)">01</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n2" onclick="danSelect(this)">02</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n3" onclick="danSelect(this)">03</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n4" onclick="danSelect(this)">04</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n5" onclick="danSelect(this)">05</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n6" onclick="danSelect(this)">06</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n7" onclick="danSelect(this)">07</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n8" onclick="danSelect(this)">08</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n9" onclick="danSelect(this)">09</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n10" onclick="danSelect(this)">10</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n11" onclick="danSelect(this)">11</span>
            </div>
        </div>
    </div>

</div>
