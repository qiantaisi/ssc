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
            <span class="wanwei">红球</span>
        </div>
        <div class="wan_bottom">
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
            <div class="cus-flex-item">
                <span class="xz n28" onclick="danSelect(this)">28</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n29" onclick="danSelect(this)">29</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n30" onclick="danSelect(this)">30</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n31" onclick="danSelect(this)">31</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n31" onclick="danSelect(this)">32</span>
            </div>
            <div class="cus-flex-item">
                <span class="xz n31" onclick="danSelect(this)">33</span>
            </div>
        </div>
    </div>


    <div class="cus_common qianweiStr">
        <div class="wan_top">
            <span class="wanwei">篮球</span>
        </div>
        <div class="wan_bottom">
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
        </div>
    </div>

</div>
