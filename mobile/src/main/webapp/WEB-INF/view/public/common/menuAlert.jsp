<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="bg"></div>

<div class="menu_alert">
    <span class="arrows"></span>
    <span class="list-block">
        <ul>
            <li>
                <c:choose>
                    <c:when test="${not empty userSession}">
                        <div class="item-inner-r" style="background: #fffcef">
                    <span class="item-innerss">余额:</span><span style="color: red" class="userMoney">${userSession.balance}元</span></div>
                    </c:when>
                </c:choose>
            </li>
            <li>
                <a href="<%=basePath%>member/tzjl/list.html" class="item-content">
                    <div class="item-medias"><i class="icon bg-img-tzjl"></i></div>
                    <div class="item-inner">
                        <div class="item-inners">投注记录</div>
                    </div>
                </a>
            </li>
            <c:if test="${empty param.playGroupId}">
                <li>
                    <a href="<%=basePath%>ssc/zst/lhc/jbzst.html" class="item-content">
                        <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                        <div class="item-inner">
                            <div class="item-inners">走势图表</div>
                        </div>
                    </a>
                </li>
            </c:if>
            <c:if test="${not empty param.playGroupId}">
                <c:choose>
                    <c:when test="${param.playGroupId == 1}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/cqssc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 2}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/tjssc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 3}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/xjssc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 4}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/pl3/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 5}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/fc3d/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 6}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/lhc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 7}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/xy28/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 8}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/kl8/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 9}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/pk10/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 10}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/xync/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 11}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/klsf/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 13}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/sfssc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 14}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/xyft/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 15}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/ffssc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 16}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/efssc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 17}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/wfssc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 18}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/jsk3/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 19}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/hbk3/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 20}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/ahk3/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 21}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/jlk3/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 22}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/sflhc/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 23}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/jspk10/jbzst.html" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                </c:choose>
            </c:if>

            <c:if test="${empty param.playGroupId}">
                <li>
                    <a href="<%=basePath%>ssc/kjjl/all.html" class="item-content">
                        <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                        <div class="item-inner">
                            <div class="item-inners">开奖记录</div>
                        </div>
                    </a>
                </li>
            </c:if>

            <c:if test="${not empty param.playGroupId}">
                <c:choose>
                    <c:when test="${param.playGroupId == 1}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=1" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 2}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=2" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 3}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=3" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 4}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=4" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 5}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=5" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 6}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=6" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 7}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=7" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 8}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=8" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 9}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=9" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 10}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=10" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 11}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=11" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 12}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=12" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 13}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=13" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 14}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=14" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 15}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=15" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 16}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=16" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 17}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=17" class="item-content">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                </c:choose>
            </c:if>

            <c:if test="${not empty param.playGroupId}">
                <c:choose>
                    <c:when test="${param.playGroupId == 1}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-cqssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 2}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-tjssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 3}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-xjssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 4}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-pl3"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 5}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-3d"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 6}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-lhc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 7}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-xy28"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 8}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-kl8"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 9}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-pk10"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 10}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-cqxync"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 11}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-klsf"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 13}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-sfssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 14}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-xyft"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 15}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-ffssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 16}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-efssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 17}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-wfssc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 18}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-jsk3"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 19}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-hbk3"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 20}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-ahk3"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 21}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-jlk3"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 22}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-sflhc"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 23}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-content">
                                <div class="item-medias"><i class="icon bg-img-jspk10"></i></div>
                                <div class="item-inner">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                </c:choose>
            </c:if>
            <li>
                <a href="<%=basePath%>member/index.html" class="item-content">
                    <div class="item-medias"><i class="icon bg-img-grzl"></i></div>
                    <div class="item-inner">
                        <div class="item-inners">会员中心</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>member/znx/list.html" class="item-content">
                    <div class="item-medias"><i class="icon bg-img-xxzx"></i></div>
                    <div class="item-inner">
                        <div class="item-inners">信息中心</div>
                    </div>
                </a>
            </li>
            <%--<li>--%>
            <%--<a href="<%=basePath%>member/zjjl/list.html" class="item-content">--%>
            <%--<div class="item-medias"><i class="icon bg-img-jymx"></i></div>--%>
            <%--<div class="item-inner">--%>
            <%--<div class="item-inners">资金记录</div>--%>
            <%--</div>--%>
            <%--</a>--%>
            <%--</li>--%>
            <li>
                <a href="<%=basePath%>member/cqk/ck.html" class="item-content">
                    <div class="item-medias"><i class="icon bg-img-cz"></i></div>
                    <div class="item-inner">
                        <div class="item-inners">充值/提款</div>
                    </div>
                </a>
            </li>
            <li>
                <div class="item-inner-r">
                    <div class="item-inner-re">
                    <span>今日输赢</span></div>
                    <div class="item-inner-re">
                    <span style="color:red ">(0.00)</span></div>
                </div>
            </li>

        </ul>
    </span>
</div>