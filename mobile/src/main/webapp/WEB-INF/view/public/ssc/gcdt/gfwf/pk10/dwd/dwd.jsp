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
    <div class="cus_common di1m">
        <div class="wan_top">
            <span class="wanwei">冠军</span>
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
        </div>
    </div>


    <div class="cus_common di2m">
        <div class="wan_top">
            <span class="wanwei">亚军</span>
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
        </div>
    </div>

    <div class="cus_common di3m">
        <div class="wan_top">
            <span class="wanwei">季军</span>
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
        </div>
    </div>

    <div class="cus_common di4m">
        <div class="wan_top">
            <span class="wanwei">第四名</span>
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
        </div>
    </div>

    <div class="cus_common di5m">
        <div class="wan_top">
            <span class="wanwei">第五名</span>
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
        </div>
    </div>

    <div class="cus_common di6m">
        <div class="wan_top">
            <span class="wanwei">第六名</span>
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
        </div>
    </div>

    <div class="cus_common di7m">
        <div class="wan_top">
            <span class="wanwei">第七名</span>
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
        </div>
    </div>

    <div class="cus_common di8m">
        <div class="wan_top">
            <span class="wanwei">第八名</span>
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
        </div>
    </div>

    <div class="cus_common di9m">
        <div class="wan_top">
            <span class="wanwei">第九名</span>
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
        </div>
    </div>


    <div class="cus_common di10m">
        <div class="wan_top">
            <span class="wanwei">第十名</span>
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
        </div>
    </div>
</div>
