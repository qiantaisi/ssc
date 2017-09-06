<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<style>
    .menu_alert{padding:0;left:initial;right:0;top:2.2rem;text-align:center;margin:0;width:9rem;}
    .menu_alert .list-block .item-innerss{font-size:0.65rem;padding:0;}
    .menu_alert .list-block .item-innerss:nth-child(1):after{border:none;}
    .menu_alert .item-medias{display:none;}
    .menu_alert .list-block .item-contents{padding:0;}
    .arrow-up{
        width:0;
        height:0;
        border-left:0.7rem solid transparent;
        border-right:0.7rem solid transparent;
        border-bottom:0.7rem solid #fff;
        margin:auto;
        margin-left:7rem;
        margin-right:0.6rem;
    }
    .item-innerss,.item-inners{text-align:center;display:block;}
    .item-innerss{width:100%;}
    .list-block .ul{width:100px;margin-left:70px;}
    .bg{background-color:#000; opacity:0.6;filter:alpha(opacity=60);}
</style>
<div class="bg"></div>
<div class="menu_alert">
    <div class="arrow-up"></div>
    <span class="list-block">
        <ul class="ul">
                <li style="height: 3rem; height: 2rem;">
                <c:choose>
                    <c:when test="${not empty userSession}">
                        <div class="item-inner-r" style="background: rgba(253, 255, 239, 0.8)">
                            <div style="height: 1rem;">
                                <span style="font-size: 0.61rem;font-weight: bold;color:gray;">即时注单:</span>
                            </div>
                            <div  style="height: 1rem;">
                                <span style="color: red;font-size: 0.7rem;display: block; font-weight: bold;" data-img="${resPath}img/small-loading.gif" id="menu-jszd"></span>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <a href="<%=basePath%>login.html">
                            <div class="item-inners-r"  style="height: 2rem; line-height:2rem;">
                                <span style="font-size: 0.7rem;font-weight: bold;">前往登录</span>
                            </div>
                        </a>
                    </c:otherwise>
                </c:choose>

                </li>
            <li>
                <a href="<%=basePath%>member/tzjl/list.html" class="item-contents">
                    <div class="item-innerss">
                        <div class="item-inners">投注记录</div>
                    </div>
                </a>
            </li>
            <c:if test="${empty param.playGroupId}">
                <li>
                    <a href="<%=basePath%>ssc/zst/lhc/jbzst.html" class="item-contents">
                        <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                        <div class="item-innerss">
                            <div class="item-inners">走势图表</div>
                        </div>
                    </a>
                </li>
            </c:if>
            <c:if test="${not empty param.playGroupId}">
                <c:choose>
                    <c:when test="${param.playGroupId == 1}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/cqssc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 2}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/tjssc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 3}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/xjssc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 4}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/pl3/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 5}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/fc3d/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 6}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/lhc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 7}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/bj28/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 8}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/kl8/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 9}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/pk10/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 10}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/xync/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 11}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/klsf/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 13}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/sfssc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 14}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/xyft/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 15}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/ffssc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 16}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/efssc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 17}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/wfssc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 18}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/jsk3/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 19}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/hbk3/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 20}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/ahk3/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 21}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/jlk3/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 22}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/sflhc/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 23}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/jspk10/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 24}">
                        <li>
                            <a href="<%=basePath%>ssc/zst/gd11x5/jbzst.html" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-zst"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">走势图表</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                </c:choose>
            </c:if>

            <c:if test="${empty param.playGroupId}">
                <li>
                    <a href="<%=basePath%>ssc/kjjl/all.html" class="item-contents">
                        <div class="item-innerss">
                            <div class="item-inners">开奖记录</div>
                        </div>
                    </a>
                </li>
            </c:if>

            <c:if test="${not empty param.playGroupId}">
                <c:choose>
                    <c:when test="${param.playGroupId == 1}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=1" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 2}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=2" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 3}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=3" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 4}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=4" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 5}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=5" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 6}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=6" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 7}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=7" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 8}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=8" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 9}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=9" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 10}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=10" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 11}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=11" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 12}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=12" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 13}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=13" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 14}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=14" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 15}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=15" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 16}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=16" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 17}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=17" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">开奖记录</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 24}">
                        <li>
                            <a href="<%=basePath%>ssc/kjjl/list.html?playGroupId=24" class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-allssc"></i></div>
                                <div class="item-innerss">
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
                            <c:choose>
                                <c:when test="${param.gfwfFlag == 2}">
                                    <a href="<%=basePath%>ssc/wfsm/wfsm-gfwf.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-tjssc"></i></div>
                                        <div class="item-innerss">
                                           <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-tjssc"></i></div>
                                        <div class="item-innerss">
                                           <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:otherwise>
                            </c:choose>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 2}">
                        <li>
                            <c:choose>
                                <c:when test="${param.gfwfFlag == 1}">
                                    <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-tjssc"></i></div>
                                        <div class="item-innerss">
                                           <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a href="<%=basePath%>ssc/wfsm/wfsm-gfwf.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-tjssc"></i></div>
                                        <div class="item-innerss">
                                           <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:otherwise>
                            </c:choose>

                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 3}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-xjssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 4}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-pl3"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 5}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-3d"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 6}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-lhc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 7}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-bj28"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 8}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-kl8"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 9}">
                        <li>
                            <c:choose>
                                <c:when test="${param.gfwfFlag == 2}">
                                    <a href="<%=basePath%>ssc/wfsm/wfsm-gfwf.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-pk10"></i></div>
                                        <div class="item-innerss">
                                           <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-pk10"></i></div>
                                        <div class="item-innerss">
                                           <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:otherwise>
                            </c:choose>

                        </li>

                    </c:when>
                    <c:when test="${param.playGroupId == 10}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-cqxync"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 11}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-klsf"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 13}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-sfssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 14}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-xyft"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 15}">
                        <li>
                            <c:choose>
                                <c:when test="${param.gfwfFlag == 2}">
                                    <a href="<%=basePath%>ssc/wfsm/wfsm-gfwf.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-ffssc"></i></div>
                                        <div class="item-innerss">
                                             <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                       <div class="item-medias"><i class="icon bg-img-ffssc"></i></div>
                                       <div class="item-innerss">
                                            <div class="item-inners">玩法说明</div>
                                       </div>
                                    </a>
                                </c:otherwise>
                            </c:choose>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 16}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-efssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 17}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-wfssc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 18}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-jsk3"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 19}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-hbk3"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 20}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-ahk3"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 21}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-jlk3"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 22}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-sflhc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 24}">
                        <li>
                            <a href="<%=basePath%>ssc/wfsm/wfsm-gfwf.html?playGroupId=${param.playGroupId}"
                               class="item-contents">
                                <div class="item-medias"><i class="icon bg-img-sflhc"></i></div>
                                <div class="item-innerss">
                                    <div class="item-inners">玩法说明</div>
                                </div>
                            </a>
                        </li>
                    </c:when>
                    <c:when test="${param.playGroupId == 23}">
                        <li>
                            <c:choose>
                                <c:when test="${param.gfwfFlag == 2}">
                                    <a href="<%=basePath%>ssc/wfsm/wfsm-gfwf.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-jspk10"></i></div>
                                        <div class="item-innerss">
                                           <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:when>

                                <c:otherwise>
                                    <a href="<%=basePath%>ssc/wfsm/wfsm.html?playGroupId=${param.playGroupId}"
                                       class="item-contents">
                                        <div class="item-medias"><i class="icon bg-img-jspk10"></i></div>
                                        <div class="item-innerss">
                                           <div class="item-inners">玩法说明</div>
                                        </div>
                                    </a>
                                </c:otherwise>
                            </c:choose>

                        </li>
                    </c:when>
                </c:choose>
            </c:if>
            <li>
                <a href="<%=basePath%>member/index.html" class="item-contents">
                    <div class="item-medias"><i class="icon bg-img-grzl"></i></div>
                    <div class="item-innerss">
                        <div class="item-inners">会员中心</div>
                    </div>
                </a>
            </li>
            <li>
                <a href="<%=basePath%>member/znx/list.html" class="item-contents">
                    <div class="item-medias"><i class="icon bg-img-xxzx"></i></div>
                    <div class="item-innerss">
                        <div class="item-inners">信息中心</div>
                    </div>
                </a>
            </li>
            <%--<li>--%>
            <%--<a href="<%=basePath%>member/zjjl/list.html" class="item-contents">--%>
            <%--<div class="item-medias"><i class="icon bg-img-jymx"></i></div>--%>
            <%--<div class="item-innerss">--%>
            <%--<div class="item-inners">资金记录</div>--%>
            <%--</div>--%>
            <%--</a>--%>
            <%--</li>--%>
            <li>
                <a href="<%=basePath%>member/cqk/ck.html" class="item-contents">
                    <div class="item-medias"><i class="icon bg-img-cz"></i></div>
                    <div class="item-innerss">
                        <div class="item-inners">充值/提款</div>
                    </div>
                </a>
            </li>

            <li class="item-inner-r">
                <div class="item-inner-re">
                <span style="font-size: 0.61rem;">今日输赢</span>
                </div>


                <c:choose>
                    <c:when test="${not empty userSession}">
                        <%--<div class="item-inner-re" style="line-height:0.7rem;"><span style="color:red " id="jieSuan">刷新中...</span></div>--%>
                        <div class="item-inner-re" style="line-height:0.7rem;">
                            <span style="color:red " id="jieSuan" data-img="${resPath}img/small-loading.gif">
                            </span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <a href="<%=basePath%>login.html">
                            <div class="item-inner-re"><span style="color:red;line-height:0.8rem; ">前往登录</span></div>
                        </a>
                    </c:otherwise>
                </c:choose>
            </li>
        </ul>
    </span>
    </div>