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
<div class="cus-tem-a betDemo">
    <h2 class="cus-flex-title ui-grid-a">
        <span class="cus-left">万位</span>
        <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
    </h2>
    <div class="cus-flex-list ui-grid-a">
        <div class="cus-flex-item">
            <span class="cus-round-red">1</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">2</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">3</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">4</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">5</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">6</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">7</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">8</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">9</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">10</span>
            <span class="cus-muted">32</span>
        </div>
    </div>
</div>

<div class="cus-tem-a betDemo">
    <h2 class="cus-flex-title ui-grid-a">
        <span class="cus-left">千位</span>
        <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
    </h2>
    <div class="cus-flex-list ui-grid-a">
        <div class="cus-flex-item">
            <span class="cus-round-red">1</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">2</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">3</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">4</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">5</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">6</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">7</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">8</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">9</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">10</span>
            <span class="cus-muted">32</span>
        </div>
    </div>
</div>

<div class="cus-tem-a betDemo">
    <h2 class="cus-flex-title ui-grid-a">
        <span class="cus-left">百位</span>
        <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
    </h2>
    <div class="cus-flex-list ui-grid-a">
        <div class="cus-flex-item">
            <span class="cus-round-red">1</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">2</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">3</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">4</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">5</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">6</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">7</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">8</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">9</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">10</span>
            <span class="cus-muted">32</span>
        </div>
    </div>
</div>


<div class="cus-tem-a betDemo">
    <h2 class="cus-flex-title ui-grid-a">
        <span class="cus-left">十位</span>
        <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
    </h2>
    <div class="cus-flex-list ui-grid-a">
        <div class="cus-flex-item">
            <span class="cus-round-red">1</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">2</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">3</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">4</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">5</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">6</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">7</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">8</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">9</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">10</span>
            <span class="cus-muted">32</span>
        </div>
    </div>
</div>

<div class="cus-tem-a betDemo">
    <h2 class="cus-flex-title ui-grid-a">
        <span class="cus-left">个位</span>
        <span class="cus-right">
                        <i>全</i>
                        <i>大</i>
                        <i>小</i>
                        <i>奇</i>
                        <i>偶</i>
                        <i>清</i>
                    </span>
    </h2>
    <div class="cus-flex-list ui-grid-a">
        <div class="cus-flex-item">
            <span class="cus-round-red">1</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">2</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">3</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">4</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">5</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">6</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">7</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">8</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">9</span>
            <span class="cus-muted">32</span>
        </div>
        <div class="cus-flex-item">
            <span class="cus-round-red">10</span>
            <span class="cus-muted">32</span>
        </div>
    </div>
</div>


