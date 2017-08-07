<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:if test="${not empty param.index5e && param.index5e == 1}">
    <div class="fix_ico refix_ico">
</c:if>
<c:if test="${empty param.index5e}">
    <div class="fix_ico">
</c:if>
    <ul>
        <li>
            <a href="${kefuUrl}"  target="_blank">
                <div class="pict">
                    <i><img src="${resPath}img/zxkf.png" alt=""></i>
                </div>
                <div class="text">
                    <p>在线客服</p>
                </div>
            </a>
        </li>
        <li>
            <a href="tencent://message/?uin=1597523456&Site=在线客服&Menu=yes">
                <div class="pict">
                    <i><img src="${resPath}img/qqkf.png" alt=""></i>
                </div>
                <div class="text">
                    <p>QQ客服</p>
                </div>
            </a>
        </li>
        <li>
            <a href="tencent://message/?uin=1902616161&Site=在线客服&Menu=yes">
                <div class="pict">
                    <i><img src="${resPath}img/dljm.png" alt=""></i>
                </div>
                <div class="text">
                    <p>代理加盟</p>
                </div>
            </a>
        </li>
        <li>
            <a href="http://www.5y333.com" target="_blank">
                <div class="pict">
                    <i><img src="${resPath}img/wzdh.png" alt=""></i>
                </div>
                <div class="text">
                    <p>网址导航</p>
                </div>
            </a>
        </li>
        <li>
            <a href="http://www.wuyicaipiao.com" class="a0" target="_blank">
                <div class="pict">
                    <i><img src="${resPath}img/xljc.png" alt=""></i>
                </div>
                <div class="text">
                    <p>线路检查</p>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <div class="pict">
                    <i><img src="${resPath}img/ico213.png" alt=""></i>
                </div>
                <div class="text">
                    <p>返回顶部</p>
                </div>
            </a>
        </li>
    </ul>
</div>