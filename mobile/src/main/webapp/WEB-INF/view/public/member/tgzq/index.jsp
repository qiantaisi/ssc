<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<div class="page-group">
    <div class="page page-current" id="page-tgzq-index">
        <header class="bar bar-nav">
            <a class="button button-link button-nav pull-left fanhui" href="javascript:void(0)">
                <span class="icon icon-left"></span>
                返回
            </a>
            <a class="button button-link pull-right shouye">
                <span class="icon icon-home"></span>
            </a>
            <h1 class="title">
                推广赚钱
            </h1>
        </header>
        <div class="content">
            <div class="cl-205 cl-308">
                <div class="list-block">
                    <ul>
                        <li>
                            <a href="<%=basePath%>member/tgzq/hylb.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-hylb"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">会员列表</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/tgzq/tjhy.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-tjhy"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">添加会员</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/tgzq/cwbb.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-cwbb"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">财务报表</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/tgzq/tdls/list.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-tdls"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">团队流水</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/tgzq/tdbb/list.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-tdye"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">团队报表</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/tgzq/tdtz/list.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-tdtz"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">团队投注</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath%>member/tgzq/yjjl/list.html" class="item-content item-link">
                                <div class="item-media"><i class="icon icon-tdtz"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">佣金记录</div>
                                    <div class="item-after"></div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="list-block">
                    <ul>
                        <li>
                            <div href="" class="item-content">
                                <div class="item-media"><i class="icon icon-tglj"></i></div>
                                <div class="item-inner">
                                    <div class="item-title">
                                        推广链接：
                                        <span href="javascript:void(0)" id="tglj" class="cl-801 click_ts">
                                            <%=request.getScheme() + "://" + request.getServerName() + path + "/"%>?p=${userSession.id}
                                        </span>
                                    </div>
                                    <div class="item-after"></div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cl-206 cl-307">
                <p>若点击按钮复制不上，可长按链接进行复制</p>
                <a href="javascript:void(0)" id="btn-copy" class="button button-fill">点击复制</a>
            </div>
            <c:import url="../../common/copyright.jsp" />
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script>
    $(function () {
        $(document).on('click','.click_ts',function () {
            $.alert($('.click_ts').html());
        });
    });
</script>
<c:import url="../../common/bodyEnd.jsp"/>