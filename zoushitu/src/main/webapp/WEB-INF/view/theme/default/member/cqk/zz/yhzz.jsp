<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-cqk-zz-yhzz">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">银行汇款</h1>
        </header>
        <div class="content cl-700">
            <div class="list-block cl-708">
                <div class="cl-303">银行信息</div>
                <ul>
                    <li>
                        <div class="item-content item-link">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" id="inputSystemBank" placeholder="请选择银行" readonly >
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-title">开户银行：</div>
                                <div class="item-after" id="khyh"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-title">开户网点：</div>
                                <div class="item-after" id="khwd"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-title">开户姓名：</div>
                                <div class="item-after" id="khxm"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-title">卡号：</div>
                                <div class="item-after" id="kh"></div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="cl-303">存款信息</div>
                <ul>
                    <li>
                        <div class="item-content item-link">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请选择转出银行" id="inputBankName" readonly name="userBankName">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content item-link">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请选择存款方式" id="inputType" readonly>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请输入存款金额" id="money" name="money">
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="请输入银行卡号的后四位" id="bankAccount" name="bankAccount" onkeyup="this.value=this.value.replace(/\D/gi,'')" >
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="cl-303">姓名：</div>
                <ul>
                    <li>
                        <div class="item-content">
                            <div class="item-inner">
                                <div class="item-input">
                                    <input type="text" placeholder="姓名" value="${userSession.name}" readonly>
                                </div>
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
    var yhzzList = ${yhzzList};
</script>
<c:import url="../../../common/bodyEnd.jsp"/>