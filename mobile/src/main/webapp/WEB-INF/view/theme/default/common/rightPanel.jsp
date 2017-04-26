<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="panel-overlay"></div>
<div class="panel panel-right panel-reveal cl-320" id='panel-right'>
    <div class="cl-321">
        <div class="cl-322">
            <img src="${resPath}img/ico888.png" alt="">
        </div>
        <div class="cl-323">
            <c:choose>
                <c:when test="${not empty userSession}">
                    <div class="cl-324">${userSession.account}</div>
                    <div class="cl-325">余额:<font class="userMoney">${userSession.balance}</font>元<a
                            href="javascript:void(0)" onclick="refreshMoney()"><img src="${resPath}img/hico36.png"
                                                                                    alt=""></a></div>
                </c:when>
                <c:otherwise>
                    <div class="cl-400"><a href="<%=basePath%>login.html">前往登录</a></div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <div class="list-block">
        <ul>
            <li>
                <a href="<%=basePath%>main.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-sy"></i></div>
                    <div class="item-inner">
                        <div class="item-title">首页</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>member/cqk/ck.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-cz"></i></div>
                    <div class="item-inner">
                        <div class="item-title">充值/提款</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>member/tzjl/list.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-tzjl"></i></div>
                    <div class="item-inner">
                        <div class="item-title">投注记录</div>
                    </div>
                </a>
            </li>
            <c:if test="${empty param.playGroupId}">
                <li>
                    <a href="<%=basePath%>ssc/kjjl/all.html" class="item-content">
                        <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                        <div class="item-inner">
                            <div class="item-title">开奖记录</div>
                        </div>
                    </a>
                </li>
            </c:if>

            <c:if test="${not empty param.playGroupId}">
                <c:choose>
                    <c:when test="${param.playGroupId == 1}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=1" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 2}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=2" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 3}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=3" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 4}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=4" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 5}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=5" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 6}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=6" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 7}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=7" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 8}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=8" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 9}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=9" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 10}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=10" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 11}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=11" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 12}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=12" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 13}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=13" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 14}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=14" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 15}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=15" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 16}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=16" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 17}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=17" class="item-content">
                                <div class="item-media"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                </c:choose>
            </c:if>
            <%--<li>--%>
            <%--<a href="<%=basePath%>member/cqk/qk.html" class="item-content">--%>
            <%--<div class="item-media"><i class="icon bg-img-tx"></i></div>--%>
            <%--<div class="item-inner">--%>
            <%--<div class="item-title">提款</div>--%>
            <%--</div>--%>
            <%--</a>--%>
            <%--</li>--%>
            <c:if test="${not empty param.playGroupId}">
                <c:choose>
                    <c:when test="${param.playGroupId == 1}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-cqssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 2}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-tjssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 3}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-xjssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 4}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-pl3"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 5}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-3d"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 6}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-lhc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 7}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-xy28"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 8}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-kl8"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 9}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-pk10"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 10}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-cqxync"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 11}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-klsf"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 13}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-sfssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 14}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-xyft"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 15}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-ffssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 16}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-efssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 17}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-wfssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 18}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-jsk3"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 19}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-hbk3"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 20}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-ahk3"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 21}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-jlk3"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 22}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-sflhc"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 23}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-media"><i class="icon bg-img-jspk10"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                </c:choose>
            </c:if>
            <li>
                <a href="<%=basePath%>ssc/gcdt.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-yxdt"></i></div>
                    <div class="item-inner">
                        <div class="item-title">购彩大厅</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>member/index.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-grzl"></i></div>
                    <div class="item-inner">
                        <div class="item-title">会员中心</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>member/znx/list.html" class="item-content">
                    <div class="item-media"><i class="icon bg-img-xxzx"></i></div>
                    <div class="item-inner">
                        <div class="item-title">信息中心</div>
                    </div>
                </a>
            </li>
            <%--<li>--%>
            <%--<a href="<%=basePath%>member/zjjl/list.html" class="item-content">--%>
            <%--<div class="item-media"><i class="icon bg-img-jymx"></i></div>--%>
            <%--<div class="item-inner">--%>
            <%--<div class="item-title">资金记录</div>--%>
            <%--</div>--%>
            <%--</a>--%>
            <%--</li>--%>
            <li>
                <a href="<%=basePath%>kefu.html" class="item-content external" target="_blank">
                    <div class="item-media"><i class="icon bg-img-zxkf3"></i></div>
                    <div class="item-inner">
                        <div class="item-title">在线客服</div>
                    </div>
                </a>
            </li>
            <%--<li>--%>
            <%--<a href="<%=basePath%>member/yhkgl/index.html" class="item-content">--%>
            <%--<div class="item-media"><i class="icon bg-img-bdyhk"></i></div>--%>
            <%--<div class="item-inner">--%>
            <%--<div class="item-title">绑定银行卡</div>--%>
            <%--</div>--%>
            <%--</a>--%>
            <%--</li>--%>
        </ul>
    </div>
    <div class="cl-102">
        <a href="javascript:void(0)" onclick="sigout()" class="cl-103 cl-326">注销登录</a>
    </div>
</div>