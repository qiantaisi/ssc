<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
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
    <div class="page page-current" id="page-kjjl-all">
        <header class="bar bar-nav rekjcl-1">
            <a href="javascript:void(0)" class="button button-link button-nav pull-left fanhui cpkj_1">
                <span class="icon icon-left reicon"></span>
                返回
            </a>
            <h1 class="title reimg cpkj_1">
                <%--<img src="${resPath}img/kaihead_06.png"/>--%>
                    ${webCompanyName}彩票开奖
            </h1>
            <a href="javascript:void(0)" class="button button-link button-nav pull-right btn_xz cpkj_1">
                <span>选择彩种</span>
            </a>

        </header>
        <c:import url="../../../../public/theme/common/bottomNav.jsp"/>
        <%--隐藏块--%>
        <%--弹窗--%>
        <div class="modal-overlay modal-overlay-visible re-modal vipcp-hide"></div>

        <div class="outer vipcp-hide">
            <div class="clearfix_ alert_main">
                <p class="alert_tl">选择您想看的彩种</p>
                <ul class="clearfix alert_ul">
                    <li data-id="15">
                        <a href="javascript:void(0);">分分时时彩
                            <em></em>
                        </a>
                    </li>
                    <li data-id="9">
                        <a href="javascript:void(0);">北京pk10
                            <em></em>
                        </a>
                    </li>
                    <li data-id="1">
                        <a href="javascript:void(0);">重庆时时彩
                            <em></em>
                        </a>
                    </li>
                    <li data-id="18">
                        <a href="javascript:void(0);">江苏快3
                            <em></em>
                        </a>
                    </li>
                    <li data-id="21">
                        <a href="javascript:void(0);">吉林快3
                            <em></em>
                        </a>
                    </li>
                    <li data-id="13">
                        <a href="javascript:void(0);">三分时时彩
                            <em></em>
                        </a>
                    </li>
                    <li data-id="16">
                        <a href="javascript:void(0);">两分时时彩
                            <em></em>
                        </a>
                    </li>
                    <li data-id="14">
                        <a href="javascript:void(0);">幸运飞艇
                            <em></em>
                        </a>
                    </li>
                    <li data-id="23">
                        <a href="javascript:void(0);">极速PK10
                            <em></em>
                        </a>
                    </li>
                    <li data-id="20">
                        <a href="javascript:void(0);">安徽快3
                            <em></em>
                        </a>
                    </li>
                    <li data-id="19">
                        <a href="javascript:void(0);">湖北快3
                            <em></em>
                        </a>
                    </li>
                    <li data-id="3">
                        <a href="javascript:void(0);">新疆时时彩
                            <em></em>
                        </a>
                    </li>
                    <li data-id="2">
                        <a href="javascript:void(0);">天津时时彩
                            <em></em>
                        </a>
                    </li>
                    <li data-id="11">
                        <a href="javascript:void(0);">广东快乐十分
                            <em></em>
                        </a>
                    </li>
                    <li data-id="17">
                        <a href="javascript:void(0);">五分时时彩
                            <em></em>
                        </a>
                    </li>
                    <li data-id="7">
                        <a href="javascript:void(0);">北京28
                            <em></em>
                        </a>
                    </li>
                    <li data-id="10">
                        <a href="javascript:void(0);">重庆幸运农场
                            <em></em>
                        </a>
                    </li>
                    <li data-id="8">
                        <a href="javascript:void(0);">北京快乐8
                            <em></em>
                        </a>
                    </li>
                    <li data-id="6">
                        <a href="javascript:void(0);">香港六合彩
                            <em></em>
                        </a>
                    </li>
                    <li data-id="5">
                        <a href="javascript:void(0);">福彩3d
                            <em></em>
                        </a>
                    </li>
                    <li data-id="4">
                        <a href="javascript:void(0);">体彩排列3
                            <em></em>
                        </a>
                    </li>
                    <li data-id="24">
                        <a href="javascript:void(0);">广东11选5
                            <em></em>
                        </a>
                    </li>
                </ul>
                <div class="alert_xuan clearfix">
                    <a href="javascript:void(0);" class="quanxuan left">全选</a>
                    <a href="javascript:void(0);" class="fangxuan right">反选</a>
                </div>
                <a href="javascript:void(0);" class="alertbtn">确定</a>
            </div>
        </div>
        <div class="content pull-to-refresh-content re-conten-kjjg">
            <!-- 默认的下拉刷新层 -->
            <div class="pull-to-refresh-layer">
                <div class="preloader"></div>
                <div class="pull-to-refresh-arrow"></div>
            </div>
            <%--<div class="row cl-102-kjjg">--%>
                <div class="row cl-scroll swiper-container swiper-container-horizontal re-vipvp-head" id="lunbo">
                    <div class="swiper-wrapper">
                        <div class="img-sz swiper-slide"><a href="http://zhcai01.com/zhcaicom138178_2014.apk"><img src="${resPath}img/qiuban_02.jpg" alt=""></a></div>
                        <div class="img-sz swiper-slide"><a href="http://zhcai01.com/zhcaicom138178_2014.apk"><img src="${resPath}img/qiuban_02.jpg" alt=""></a></div>
                        <div class="img-sz swiper-slide"><a href="http://zhcai01.com/zhcaicom138178_2014.apk"><img src="${resPath}img/qiuban_02.jpg" alt=""></a></div>
                    </div>
                    <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets re-swiper-pag"></div>
                </div>
            <%--</div>--%>
            <div class="content-block cl-8 cl-990">
                <div class="no-right-record hide"></div>
                <div class="list-block media-list bottom2" id="dataList">
                    <ul class="list-container re-l-con">
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script type="text/html" id="template_1">
    <li data-id="1">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=1">
            <div class="item-media"><img src="${resPath}img/cz/cz-1.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">重庆时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_2">
    <li data-id="2">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=2">
            <div class="item-media"><img src="${resPath}img/cz/cz-2.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">天津时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_3">
    <li data-id="3">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=3">
            <div class="item-media"><img src="${resPath}img/cz/cz-3.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">新疆时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle lhc_item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_4">
    <li data-id="4">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=4">
            <div class="item-media"><img src="${resPath}img/cz/cz-4.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">体彩排列3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res"></div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_5">
    <li data-id="5">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=5">
            <div class="item-media"><img src="${resPath}img/cz/cz-5.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">福彩3D</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_6">
    <li data-id="6">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=6">
            <div class="item-media"><img src="${resPath}img/cz/cz-6.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">香港六合彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle lhc_item-subtitle">
                    <span class="ball {{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                    <span class="ball {{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                    <span class="ball {{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                    <span class="ball {{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                    <span class="ball {{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                    <span class="ball {{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                    <span class="symbol">+</span>
                    <span class="ball {{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
                </div>
                <div class="item-text">
                    <span>{{sx1}}</span>
                    <span>{{sx2}}</span>
                    <span>{{sx3}}</span>
                    <span>{{sx4}}</span>
                    <span>{{sx5}}</span>
                    <span>{{sx6}}</span>
                    <i>&nbsp;&nbsp;&nbsp;</i>
                    <span>{{sx7}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_7">
    <li data-id="7">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=7">
            <div class="item-media"><img src="${resPath}img/cz/cz-7.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京28</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_8">
    <li data-id="8">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=8">
            <div class="item-media"><img src="${resPath}img/cz/cz-8.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京快乐8</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle item-subtitle_res">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                    <span class="ball">{{num9}}</span>
                    <span class="ball">{{num10}}</span>
                    <span class="ball">{{num11}}</span>
                    <span class="ball">{{num12}}</span>
                    <span class="ball">{{num13}}</span>
                    <span class="ball">{{num14}}</span>
                    <span class="ball">{{num15}}</span>
                    <span class="ball">{{num16}}</span>
                    <span class="ball">{{num17}}</span>
                    <span class="ball">{{num18}}</span>
                    <span class="ball">{{num19}}</span>
                    <span class="ball">{{num20}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_9">
    <li data-id="9">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=9">
            <div class="item-media"><img src="${resPath}img/cz/cz-9.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京PK10</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_10">
    <li data-id="10">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=10">
            <div class="item-media"><img src="${resPath}img/cz/cz-10.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">重庆幸运农场</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                </div>
                <div class="item-text">
                    <span>{{str1}}</span>
                    <span>{{str2}}</span>
                    <span>{{str3}}</span>
                    <span>{{str4}}</span>
                    <span>{{str5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_11">
    <li data-id="11">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=11">
            <div class="item-media"><img src="${resPath}img/cz/cz-11.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">广东快乐十分</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                </div>
                <div class="item-text">
                    <span>{{str1}}</span>
                    <span>{{str2}}</span>
                    <span>{{str3}}</span>
                    <span>{{str4}}</span>
                    <span>{{str5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_13">
    <li data-id="13">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=13">
            <div class="item-media"><img src="${resPath}img/cz/cz-13.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">三分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_14">
    <li data-id="14">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=14">
            <div class="item-media"><img src="${resPath}img/cz/cz-14.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">幸运飞艇</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_15">
    <li data-id="15">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=15">
            <div class="item-media"><img src="${resPath}img/cz/cz-15.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">分分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_16">
    <li data-id="16">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=16">
            <div class="item-media"><img src="${resPath}img/cz/cz-16.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">两分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_17">
    <li data-id="17">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=17">
            <div class="item-media"><img src="${resPath}img/cz/cz-17.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">五分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_18">
    <li data-id="18">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=18">
            <div class="item-media"><img src="${resPath}img/cz/cz-18.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">江苏快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text">
                    <span>{{hezhi}}</span>
                    <span>{{danS}}</span>
                    <span>{{daX}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_19">
    <li data-id="19">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=19">
            <div class="item-media"><img src="${resPath}img/cz/cz-19.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">湖北快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text">
                    <span>{{hezhi}}</span>
                    <span>{{danS}}</span>
                    <span>{{daX}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_20">
    <li data-id="20">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=20">
            <div class="item-media"><img src="${resPath}img/cz/cz-20.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">安徽快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text">
                    <span>{{hezhi}}</span>
                    <span>{{danS}}</span>
                    <span>{{daX}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_21">
    <li data-id="21">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=21">
            <div class="item-media"><img src="${resPath}img/cz/cz-21.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">吉林快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text">
                    <span>{{hezhi}}</span>
                    <span>{{danS}}</span>
                    <span>{{daX}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<%--<script type="text/html" id="template_22">--%>
    <%--<li>--%>
        <%--<a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=22">--%>
            <%--<div class="item-media"><img src="${resPath}img/cz/cz-22.png" style='width: 2.2rem;'></div>--%>
            <%--<div class="item-inner">--%>
                <%--<div class="item-title-row">--%>
                    <%--<div class="item-title">10分六合彩</div>--%>
                    <%--<div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |--%>
                        <%--dateFormat:'yy-mm-dd HH:MM'}}--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="item-subtitle lhc_item-subtitle">--%>
                    <%--<span class="ball {{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>--%>
                    <%--<span class="ball {{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>--%>
                    <%--<span class="ball {{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>--%>
                    <%--<span class="ball {{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>--%>
                    <%--<span class="ball {{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>--%>
                    <%--<span class="ball {{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>--%>
                    <%--<span class="symbol">+</span>--%>
                    <%--<span class="ball {{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>--%>
                <%--</div>--%>
                <%--<div class="item-text">--%>
                    <%--<span>{{sx1}}</span>--%>
                    <%--<span>{{sx2}}</span>--%>
                    <%--<span>{{sx3}}</span>--%>
                    <%--<span>{{sx4}}</span>--%>
                    <%--<span>{{sx5}}</span>--%>
                    <%--<span>{{sx6}}</span>--%>
                    <%--<i>&nbsp;&nbsp;&nbsp;</i>--%>
                    <%--<span>{{sx7}}</span>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</a>--%>
    <%--</li>--%>
<%--</script>--%>
<script type="text/html" id="template_23">
    <li data-id="23">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=23">
            <div class="item-media"><img src="${resPath}img/cz/cz-23.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">极速PK10</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_24">
    <li data-id="24">
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=24">
            <div class="item-media"><img src="${resPath}img/cz/cz-24.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">广东11选5</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<c:import url="../../common/bodyEnd.jsp"/>