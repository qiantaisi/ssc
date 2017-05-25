<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="fix_ico">
    <ul>
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
            <a href="http://www.5y333.com">
                <div class="pict">
                    <i><img src="${resPath}img/wzdh.png" alt=""></i>
                </div>
                <div class="text">
                    <p>网址导航</p>
                </div>
            </a>
        </li>
        <li>
            <a href="http://www.wuyicaipiao.com" class="a0">
                <div class="pict">
                    <i><img src="${resPath}img/xljc.png" alt=""></i>
                </div>
                <div class="text">
                    <p>线路检查</p>
                </div>
            </a>
        </li>
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