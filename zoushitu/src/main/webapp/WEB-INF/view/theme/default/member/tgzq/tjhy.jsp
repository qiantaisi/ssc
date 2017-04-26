<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-agent-tjhy">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <%--<h1 class="title">--%>
                <%--<a href="<%=basePath%>"><img src="${resPath}img/ico13.png" alt="" height="100%"></a>--%>
            <%--</h1>--%>
            <h1 class="title">添加下属会员</h1>
        </header>
        <div class="content">
            <div class="cl-302 cl-311">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-dlzh"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">登录账号：</div>
                                    <div class="item-input">
                                        <input type="text" name="account" />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="cl-303">
                        以字母开头，由 <i>0-9、a-z、A-Z </i>组成的<i>6-12</i>个字符
                    </div>
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-dlmm"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">登录密码：</div>
                                    <div class="item-input">
                                        <input type="password" name="password" />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="cl-303">
                        由数字和字母组成<i>6-16</i>个字符
                    </div>
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-qq"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">QQ：</div>
                                    <div class="item-input">
                                        <input type="text" name="qq" />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="cl-303">
                        请填写真实QQ号以便联系
                    </div>
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-zsxm"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">真实姓名：</div>
                                    <div class="item-input">
                                        <input type="text" name="name" />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="cl-303">
                        请填写真实用户真实名,绑卡开户名需与此名一致
                    </div>
                </div>
            </div>
            <div class="cl-102">
                <a href="javascript:void(0)" id="btn-submit" class="cl-103">确认添加</a>
            </div>
            <c:import url="../../common/copyright.jsp" />
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>