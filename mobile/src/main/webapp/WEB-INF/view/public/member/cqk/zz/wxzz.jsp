<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-cqk-zz-wxzz">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">微信存款</h1>
        </header>
        <div class="content cl-700">
            <div class="list-block cl-708">
                <div class="cl-303 hide" style="text-align:center;color:#fa6200" id="description"></div>
                <div class="cl-303">存款信息</div>
                <ul>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请输入存款金额" id="money" name="money">
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="cl-303 hide" id="wxts"></div>
                <ul>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请输入微信昵称" id="name" name="name"/>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请填写入款时间" id="time" name="time" readonly/>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="cl-303">微信信息</div>
                <ul>
                    <li>
                        <div class="item-content item-link">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请选择微信账号" id="inputSkInfo" readonly>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="cl-810 hide">
                    <img src="" alt="">
                    <p>请使用微信扫描二维码完成支付</p>
                </div>
                <ul>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-title">收款账号：</div>
                                <div class="item-after" id="skzh"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-title">收款人：</div>
                                <div class="item-after" id="skr"></div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="cl-102">
                <a href="javascript:void(0)" id="btn-submit" class="cl-103">提交申请</a>
            </div>
        </div>
    </div>
</div>
<c:import url="../../../common/commonJs.jsp"/>
<script>
    var skInfoList = ${skInfoList};
</script>
<c:import url="../../../common/bodyEnd.jsp"/>