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
    <div class="cus_common zxhzStr">
        <div class="wan_top">
            <span class="wanwei">直选和值</span>
            <span class="xz">
                   <i onclick="selectFun_1(this)">全</i>
            <i onclick="selectFun_6(this)">清</i>
            </span>
        </div>
        <div class="wan_bottom">
            <div class="cus-flex-item">
                <span class="xz n0" onclick="danSelect(this)">0</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n1" onclick="danSelect(this)">1</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n2" onclick="danSelect(this)">2</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n3" onclick="danSelect(this)">3</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n4" onclick="danSelect(this)">4</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n5" onclick="danSelect(this)">5</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n6" onclick="danSelect(this)">6</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n7" onclick="danSelect(this)">7</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n8" onclick="danSelect(this)">8</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n9" onclick="danSelect(this)">9</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n10" onclick="danSelect(this)">10</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n11" onclick="danSelect(this)">11</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n12" onclick="danSelect(this)">12</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n13" onclick="danSelect(this)">13</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n14" onclick="danSelect(this)">14</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n15" onclick="danSelect(this)">15</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n16" onclick="danSelect(this)">16</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n17" onclick="danSelect(this)">17</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n18" onclick="danSelect(this)">18</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n19" onclick="danSelect(this)">19</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n20" onclick="danSelect(this)">20</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n21" onclick="danSelect(this)">21</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n22" onclick="danSelect(this)">22</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n23" onclick="danSelect(this)">23</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n24" onclick="danSelect(this)">24</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n25" onclick="danSelect(this)">25</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n26" onclick="danSelect(this)">26</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n27" onclick="danSelect(this)">27</span>
            </div>
            <div class="foot_checkbox" id="checkSelected" data-fun_checkbox="checkCkRx2">
                <label class="myLabel"><input type="checkbox" value="万"><i>✓</i>万位</label>
                <label class="myLabel"><input type="checkbox" value="千"><i>✓</i>千位</label>
                <label class="myLabel"><input type="checkbox" value="百" checked><i>✓</i>百位</label>
                <label class="myLabel"><input type="checkbox" value="十" checked><i>✓</i>十位</label>
                <label class="myLabel"><input type="checkbox" value="个" checked><i>✓</i>个位</label>
            </div>
        </div>
    </div>
</div>
</div>