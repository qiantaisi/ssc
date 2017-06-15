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
            <span class="wanwei">百位</span>
            <span class="xz">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>
        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz">0</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">1</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">2</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">3</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">4</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">5</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">6</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">7</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">8</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">9</span>
                <span class="pl">8.8</span>
            </div>
        </div>
    </div>

    <div class="cus_common">
        <div class="wan_top">
            <span class="wanwei">十位</span>
            <span class="xz">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>
        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz">0</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">1</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">2</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">3</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">4</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">5</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">6</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">7</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">8</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">9</span>
                <span class="pl">8.8</span>
            </div>
        </div>
    </div>

    <div class="cus_common">
        <div class="wan_top">
            <span class="wanwei">个位</span>
            <span class="xz">
                <i onclick="selectFun_1(this)">全</i>
                <i onclick="selectFun_2(this)">大</i>
                <i onclick="selectFun_3(this)">小</i>
                <i onclick="selectFun_4(this)">奇</i>
                <i onclick="selectFun_5(this)">偶</i>
                <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>
        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz">0</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">1</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">2</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">3</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">4</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">5</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">6</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">7</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">8</span>
                <span class="pl">8.8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz">9</span>
                <span class="pl">8.8</span>
            </div>
        </div>
    </div>
</div>
