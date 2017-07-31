<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:if test="${param.flagGroup == 11}">
    <div class="hd clearfix rehd tzgz" id="toptouzhu">
        <c:if test="${param.navGroup == 1}">
            <div class="fl refl">
                快捷金额：
                <input type="text" class="txt"/>
            </div>
        </c:if>
        <c:if test="${param.navGroup == 2}">
            <div class="fl refl xzje"><%--xzje(下注金额)--%>
                下注金额：<input type="text" class="txt" id="inputMoney">
            </div>
        </c:if>
        <div class="kjanniu">
            <a href="javascript:void(0)" class="img-50" data-num="50"></a>
            <a href="javascript:void(0)" class="img-100" data-num="100"></a>
            <a href="javascript:void(0)" class="img-500" data-num="500"></a>
            <a href="javascript:void(0)" class="img-1000" data-num="1000"></a>
            <a href="javascript:void(0)" class="img-5000" data-num="5000"></a>
            <a href="javascript:void(0)" class="img-10000" data-num="10000"></a>
        </div>
        <%--<span class="fr">--%>
               <%--<a><img src="<%=basePath%>static/theme/600w/img/ico60.png" alt="">选号规则--%>
                      <%--<var>从百位、十位、个位中选择一个3位数号码</var>--%>
                <%--</a>--%>
               <%--<a><img src="<%=basePath%>static/theme/600w/img/ico61.png" alt="">中奖说明--%>
                       <%--<var>从百位、十位、个位中选择一个3位数号码</var>--%>
                <%--</a>--%>
         <%--</span>--%>
    </div>
</c:if>
<c:if test="${param.flagGroup == 22}">
    <div class="fl refl">
        快捷金额：<input type="text" class="txt"/>
    </div>
    <div class="kjanniu">
        <a href="javascript:void(0)" class="img-50" data-num="50"></a>
        <a href="javascript:void(0)" class="img-100" data-num="100"></a>
        <a href="javascript:void(0)" class="img-500" data-num="500"></a>
        <a href="javascript:void(0)" class="img-1000" data-num="1000"></a>
        <a href="javascript:void(0)" class="img-5000" data-num="5000"></a>
        <a href="javascript:void(0)" class="img-10000" data-num="10000"></a>
    </div>
</c:if>

