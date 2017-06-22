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
<div class="wrap">
    <div class="cus_common">
        <div class="wan_top">
            <span class="wanwei">万位</span>
            <span class="xz">
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>

        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz">大</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">小</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">单</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">双</span>
                            
            </div>
        </div>
    </div>

    <div class="cus_common">
        <div class="wan_top">
            <span class="wanwei">千位</span>
            <span class="xz">
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>

        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz">大</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">小</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">单</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">双</span>
                            
            </div>
        </div>
    </div>


    <div class="cus_common">
        <div class="wan_top">
            <span class="wanwei">百位</span>
            <span class="xz">
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>

        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz">大</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">小</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">单</span>
                            
            </div>
            <div class="cus-flex-item">
                <span class="xz">双</span>
                            
            </div>
        </div>
    </div>
</div>