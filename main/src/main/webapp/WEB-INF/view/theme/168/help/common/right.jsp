<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="fix_ico">
    <ul>
        <li>
            <a href="javascript:void(0)" onclick="openHyzx('zhsz/grzl')">
                <div class="pict">
                    <i><img src="${resPath}img/ico208.png" alt=""></i>
                </div>
                <div class="text">
                    <p>修改资料</p>
                </div>
            </a>
        </li>
        <li>
            <a href="javascript:void(0)" onclick="openHyzx()">
                <div class="pict">
                    <i><img src="${resPath}img/ico209.png" alt=""></i>
                </div>
                <div class="text">
                    <p>会员中心</p>
                </div>
            </a>
        </li>
        <li>
            <a href="javascript:void(0)" onclick="openHyzx('zhsz/dlmm')">
                <div class="pict">
                    <i><img src="${resPath}img/ico210.png" alt=""></i>
                </div>
                <div class="text">
                    <p>修改密码</p>
                </div>
            </a>
        </li>
        <li>
            <a href="<%=basePath%>register.html" class="a0">
                <div class="pict">
                    <i><img src="${resPath}img/ico211.png" alt=""></i>
                </div>
                <div class="text">
                    <p>免费注册</p>
                </div>
            </a>
        </li>
        <li>
            <a href="${kefuUrl}" target="_blank">
                <div class="pict">
                    <i><img src="${resPath}img/ico212.png" alt=""></i>
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