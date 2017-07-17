<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-member-index">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">会员中心</h1>
        </header>
        <%--<c:import url="../common/bottomNav.jsp" />--%>
        <c:import url="../theme/common/bottomNav.jsp" />
        <div class="content">
            <div class="row cl-200">
                <div class="col-20 cl-201">
                    <img src="${resPath}img/ico17.png" alt="">
                </div>
                <div class="col-20 cl-202">
                    <span>您好！${userSession.account}</span>
                    <span>余额:<font>${userSession.balance}</font>元</span>
                    <span>
                      <var>
                        <i>v1</i>
                        <%--${userSession.layerName}--%>
                          普通会员
                      </var>
                    </span>
                </div>
                <div class="col-20 cl-203">
                    <span class="timeInfo"></span>
                    <span>您的贵宾网址</span>
                    <span>
                  <i>${userSession.privateUrl}</i>
                </span>
                </div>
            </div>
            <div class="row cl-204">
                <c:choose>
                    <c:when test="${layerInfo.canDeposit}">
                        <a class="col-50" href="<%=basePath%>member/cqk/ck.html">
                            <span>充值</span>
                        </a>
                    </c:when>
                    <c:otherwise>
                        <a class="col-50" onclick="noaccessToast('${userSession.layerName}')">
                            <span>充值</span>
                        </a>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${layerInfo.canWithdraw}">
                        <a class="col-50" href="<%=basePath%>member/cqk/qk.html">
                            <span>提款</span>
                        </a>
                    </c:when>
                    <c:otherwise>
                        <a class="col-50" onclick="noaccessToast('${userSession.layerName}')">
                            <span>提款</span>
                        </a>
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="cl-205">
                <div class="list-block">
                    <ul>
                        <li>
                            <c:choose>
                            <c:when test="${layerInfo.canWithdraw}">
                        <li>
                        <a href="<%=basePath%>member/grzl/index.html" class="item-content item-link">
                            <div class="item-media"><i class="icon icon-grxx"></i></div>
                            <div class="item-inner">
                                <div class="item-title">个人资料</div>
                                <div class="item-after"></div>
                            </div>
                        </a>
                        </li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <a onclick="noaccessToast('${userSession.layerName}')" class="item-content item-link">
                                    <div class="item-media"><i class="icon icon-grxx"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title">个人资料</div>
                                        <div class="item-after"></div>
                                    </div>
                                </a>
                            </li>
                        </c:otherwise>
                        </c:choose>
                        </li>
                        <c:choose>
                            <c:when test="${layerInfo.canEditUserBank}">
                                <li>
                                    <a href="<%=basePath%>member/yhkgl/index.html" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-yhkgl"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">银行卡管理</div>
                                            <div class="item-after">添加，修改，删除银行卡</div>
                                        </div>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a onclick="noaccessToast('${userSession.layerName}')" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-yhkgl"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">银行卡管理</div>
                                            <div class="item-after">添加，修改，删除银行卡</div>
                                        </div>
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${layerInfo.canEditPassword}">
                                <li>
                                    <a href="<%=basePath%>member/xgmm/index.html" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-dlmm"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">登录密码</div>
                                            <div class="item-after">修改登录密码</div>
                                        </div>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a onclick="noaccessToast('${userSession.layerName}')" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-dlmm"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">登录密码</div>
                                            <div class="item-after">修改登录密码</div>
                                        </div>
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${istrue!=false}">
                                <c:choose>
                                    <c:when test="${empty userSession.drawPassword}">
                                        <li>
                                            <a href="<%=basePath%>member/xgmm/setqkmm.html" class="item-content item-link">
                                                <div class="item-media"><i class="icon icon-dlmm"></i></div>
                                                <div class="item-inner">
                                                    <div class="item-title">取款密码</div>
                                                    <div class="item-after">设置取款密码</div>
                                                </div>
                                            </a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            <a href="<%=basePath%>member/xgmm/resetqkmm.html" class="item-content item-link">
                                                <div class="item-media"><i class="icon icon-dlmm"></i></div>
                                                <div class="item-inner">
                                                    <div class="item-title">取款密码</div>
                                                    <div class="item-after">修改取款密码</div>
                                                </div>
                                            </a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
                <c:choose>
                    <c:when test="${layerInfo.canAgent}">
                        <div class="list-block">
                            <ul>
                                <li>
                                    <a href="<%=basePath%>member/tgzq/index.html" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-jfmx"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">代理赚钱</div>
                                            <div class="item-after"></div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </c:when>
                </c:choose>
                <div class="list-block">
                    <ul>
                        <c:choose>
                            <c:when test="${layerInfo.canDeposit}">
                                <li>
                                    <a href="<%=basePath%>member/czjl/list.html" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-czjl"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">充值记录</div>
                                            <div class="item-after"></div>
                                        </div>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a onclick="noaccessToast('${userSession.layerName}')" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-czjl"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">充值记录</div>
                                            <div class="item-after"></div>
                                        </div>
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${layerInfo.canWithdraw}">
                                <li>
                                    <a href="<%=basePath%>member/tkjl/list.html" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-tkjl"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">提现记录</div>
                                            <div class="item-after"></div>
                                        </div>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a onclick="noaccessToast('${userSession.layerName}')" class="item-content item-link">
                                        <div class="item-media"><i class="icon icon-tkjl"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title">提现记录</div>
                                            <div class="item-after"></div>
                                        </div>
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <li>
                            <a href="<%=basePath%>member/zjjl/list.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-zjjl"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">资金记录</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/tzjl/list.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-tzjl"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">投注记录</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <%--<li>--%>
                            <%--<a href="<%=basePath%>member/zjjl/list.html" class="item-content item-link">--%>
                                <%--<div class="item-media"><i class="icon icon-tzjl"></i></div>--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-title">资金记录</div>--%>
                                    <%--<div class="item-after"></div>--%>
                                <%--</div>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    </ul>
                </div>
                <div class="list-block">
                    <ul>
                        <li>
                            <a href="<%=basePath%>member/znx/list.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-znx"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">站内信</div>
                                    <div class="item-after">
                                        <c:choose>
                                            <c:when test="${not empty unReadZnxCount && unReadZnxCount > 0}">
                                                <i class="cl-207">${unReadZnxCount}</i>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/gonggao/list.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-gg"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">公告</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>kefu.html" class="item-content item-link external" target="_blank">
                                <div class="item-media"><i class="icon icon-lxwm"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">联系我们</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cl-206">
                <a href="javascript:void(0)" onclick="sigout()" class="button button-fill">退出登录</a>
            </div>
        </div>
    </div>
</div>
<c:import url="../common/commonJs.jsp"/>
<script>
    var CONFIG = {
        BASEURL: "<%=basePath%>"
    }
</script>
<script>
    // 判断是否需要取款密码并且判断用户是否设置了密码
    <c:if test="${not empty istrue && istrue == true}">
        <c:if test="${empty userSession.drawPassword}">
            $.confirm("取款密码尚未设置，是否设置密码？", ''
            , function(){
                window.location.href = CONFIG.BASEURL + "member/xgmm/setqkmm.html";
            }, function(){
            });
        </c:if>
    </c:if>
</script>
<c:import url="../common/bodyEnd.jsp"/>