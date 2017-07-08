<%@ page import="project38.api.common.utils.JSONUtils" %>
<%@ page import="project38.api.result.WebNoticeResult" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp"/>
<c:import url="top.jsp"/>

<div class="head_middle">
    <div class="container clearfix">
        <a href="index.html" class="left logo">
            <img src="${resPath}images/index_11.png" />
        </a>
        <div class="left head_middle_yuye">
            <a href="#">
                <img src="${resPath}images/index_14.png" />
            </a>
        </div>
        <div class="right clearfix">
            <div class="left head_middle_tel">
                400-690-8888
            </div>
            <a href="#" class="left head_middle_kf">
                <img src="${resPath}images/index_20.png" />
                联系客服
            </a>
        </div>
    </div>
</div>
<div class="menu">
    <div class="container clearfix">
        <div class="left all_fenlei clearfix">
            <span class="left all_fenlei_tl">全部彩种</span>
            <img src="${resPath}images/index_30.png" class="right all_fenlei_img" />
            <div class="all_fenlei_yin" style="display: block;">
                <a href="<%=basePath%>ssc/zst/ffssc.html" target="_blank" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_39.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        分分时时彩
                    </div>
                </a>
                <a href="<%=basePath%>ssc/zst/jspk10.htm" target="_blank" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_42.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        极速PK拾
                    </div>
                </a>
                <a href="<%=basePath%>ssc/zst/sfssc.html" target="_blank" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_45.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        三分彩
                    </div>
                </a>
                <a href="<%=basePath%>ssc/zst/pk10.html" target="_blank" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index_49.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        北京PK拾
                    </div>
                </a>
                <a href="<%=basePath%>ssc/zst/kl8.html" target="_blank" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index51.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        北京快乐8
                    </div>
                </a>
                <a href="<%=basePath%>ssc/zst/tjssc.html" target="_blank" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index1-16.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        天津时时彩
                    </div>
                </a>
                <a href="<%=basePath%>ssc/zst/lhc.html" target="_blank" class="all_fenlei_yin_list clearfix">
                    <div class="left">
                        <img src="${resPath}images/index51-17.png"/>
                    </div>
                    <div class="all_fenlei_yin_list_rt">
                        香港六合彩
                    </div>
                </a>
                <div class="all_fenlei_b">
                    <div class="all_fenlei_b_gp clearfix">
                        <div class="left all_fenlei_b_name" style="background: #ffcdcd;border: 1px solid #ffcdcd;color: #ff4444;">
                            高频彩
                        </div>
                        <div class="all_fenlei_b_gp_rt clearfix">
                            <ul class="all_fenlei_b_gp_rt_ul_lf clearfix">
                                <li>
                                    <a href="<%=basePath%>ssc/zst/ffssc.html" target="_blank">分分时时彩</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>ssc/zst/jspk10.htm" target="_blank">极速PK拾</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>ssc/zst/sfssc.html" target="_blank">三分彩</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>ssc/zst/pk10.html" target="_blank">北京PK拾</a>
                                </li>
                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">高频彩</p>
                            <div class="clearfix all_fenlei_b_yin_a">
                                <a href="<%=basePath%>ssc/zst/pk10.html"    target="_blank">北京PK10</a>
                                <a href="<%=basePath%>ssc/zst/jspk10.htm"  target="_blank">极速PK10</a>
                                <a href="<%=basePath%>ssc/zst/xyft.html"    target="_blank">幸运飞艇</a>
                                <a href="<%=basePath%>ssc/zst/cqssc.html"   target="_blank">重庆时时彩</a>
                                <a href="<%=basePath%>ssc/zst/tjssc.html"   target="_blank">天津时时彩</a>
                                <a href="<%=basePath%>ssc/zst/xjssc.html"   target="_blank">新疆时时彩</a>
                                <a href="<%=basePath%>ssc/zst/ffssc.html"   target="_blank">分分时时彩</a>
                                <a href="<%=basePath%>ssc/zst/efssc.html"   target="_blank">两分时时彩</a>
                                <a href="<%=basePath%>ssc/zst/sfssc.html" target="_blank">三分时时彩</a>
                                <a href="<%=basePath%>ssc/zst/wfssc.html" target="_blank">五分时时彩</a>
                                <a href="<%=basePath%>ssc/zst/pk10.html" target="_blank">北京PK10</a>
                                <a href="<%=basePath%>ssc/zst/jspk10.htm" target="_blank">极速PK10</a>
                                <a href="<%=basePath%>ssc/zst/xyft.html" target="_blank">幸运飞艇</a>
                                <a href="<%=basePath%>ssc/zst/wfssc.html" target="_blank">江苏快3</a>
                                <a href="<%=basePath%>ssc/zst/hbk3.html" target="_blank">湖北快3</a>
                                <a href="<%=basePath%>ssc/zst/ahk3.html" target="_blank">安徽快3</a>
                                <a href="<%=basePath%>ssc/zst/jlk3.html" target="_blank">吉林快3</a>
                                <a href="<%=basePath%>ssc/zst/xync.html" target="_blank">幸运农场</a>
                                <a href="<%=basePath%>ssc/zst/klsf.html" target="_blank">快乐十分</a>
                                <a href="<%=basePath%>ssc/zst/kl8.html" target="_blank">北京快乐8</a>
                                <a href="<%=basePath%>ssc/zst/xy28.html" target="_blank">幸运28</a>

                            </div>
                        </div>
                    </div>
                    <div class="all_fenlei_b_gp clearfix">
                        <div class="left all_fenlei_b_name" style="background: #c3cbf6;border: 1px solid #a7bdfd;color: #4041d0;">
                            低频彩
                        </div>
                        <div class="all_fenlei_b_gp_rt clearfix">
                            <ul class="all_fenlei_b_gp_rt_ul_lf clearfix">
                                <li>
                                    <a href="<%=basePath%>ssc/zst/lhc.html" target="_blank">香港六合彩</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>ssc/zst/fc3d.html" target="_blank">福彩3d</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>ssc/zst/pl3.html" target="_blank">排列三</a>
                                </li>

                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">低频彩</p>
                            <div class="clearfix all_fenlei_b_yin_a">

                                <a href="<%=basePath%>ssc/zst/lhc.html" target="_blank">香港六合彩</a>
                                <a href="<%=basePath%>ssc/zst/fc3d.html" target="_blank">福彩3D</a>
                                <a href="<%=basePath%>ssc/zst/pl3.html" target="_blank">体彩排列3</a>

                            </div>
                        </div>
                    </div>

                    <div class="all_fenlei_b_gp clearfix">
                        <div class="left all_fenlei_b_name" style="background: #d9f9df;border: 1px solid #c5f4cf;color: #005d19;padding-top: 11px;height: 47px;">
                            全部
                        </div>
                        <div class="all_fenlei_b_gp_rt clearfix">
                            <ul class="all_fenlei_b_gp_rt_ul_lf clearfix">
                                <li>
                                    <a href="<%=basePath%>ssc/zst/ffssc.html" target="_blank">分分时时彩</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>ssc/zst/jspk10.htm" target="_blank">极速PK拾</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>ssc/zst/sfssc.html" target="_blank">三分彩</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>ssc/zst/pk10.html" target="_blank">北京PK拾</a>
                                </li>
                            </ul>
                        </div>
                        <div class="all_fenlei_b_yin">
                            <p class="all_fenlei_b_yin_tl">全部</p>
                            <div class="clearfix all_fenlei_b_yin_a">

                                <a href="<%=basePath%>ssc/zst/cqssc.html" target="_blank">重庆时时彩</a>
                                <a href="<%=basePath%>ssc/zst/tjssc.html" target="_blank">天津时时彩</a>
                                <a href="<%=basePath%>ssc/zst/xjssc.html" target="_blank">新疆时时彩</a>
                                <a href="<%=basePath%>ssc/zst/ffssc.html" target="_blank">分分时时彩</a>
                                <a href="<%=basePath%>ssc/zst/efssc.html" target="_blank">两分时时彩</a>
                                <a href="<%=basePath%>ssc/zst/sfssc.html" target="_blank">三分时时彩</a>
                                <a href="<%=basePath%>ssc/zst/wfssc.html" target="_blank">五分时时彩</a>
                                <a href="<%=basePath%>ssc/zst/pk10.html" target="_blank">北京PK10</a>
                                <a href="<%=basePath%>ssc/zst/jspk10.htm" target="_blank">极速PK10</a>
                                <a href="<%=basePath%>ssc/zst/xyft.html" target="_blank">幸运飞艇</a>
                                <a href="<%=basePath%>ssc/zst/wfssc.html" target="_blank">江苏快3</a>
                                <a href="<%=basePath%>ssc/zst/hbk3.html" target="_blank">湖北快3</a>
                                <a href="<%=basePath%>ssc/zst/ahk3.html" target="_blank">安徽快3</a>
                                <a href="<%=basePath%>ssc/zst/jlk3.html" target="_blank">吉林快3</a>
                                <a href="<%=basePath%>ssc/zst/xync.html" target="_blank">幸运农场</a>
                                <a href="<%=basePath%>ssc/zst/klsf.html" target="_blank">快乐十分</a>
                                <a href="<%=basePath%>ssc/zst/kl8.html" target="_blank">北京快乐8</a>
                                <a href="<%=basePath%>ssc/zst/xy28.html" target="_blank">幸运28</a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu_main clearfix left">
            <a href="#" class="ahover">
                首页
            </a>
            <a href="#">
                购彩大厅
            </a>
            <a href="#">
                优惠活动
            </a>
            <a href="#">
                开奖公告
            </a>
            <a href="#">
                走势图表
            </a>
            <a href="#">
                <em class="hot"></em>
                <img src="${resPath}images/index30.png" class="menu_a_img" />
                手机购买
            </a>
        </div>
    </div>
</div>

<div class="bannernew">
    <div class="block_home_slider">
        <div id="home_slider" class="flexslider">
            <ul class="slides">
                <li>
                    <a href="#" class="banner_main" style="background: url(${resPath}images/common/banner_02.jpg) no-repeat center;background-size: cover;"></a>
                </li>
                <li>
                    <a href="#" class="banner_main" style="background: url(${resPath}images/common/banner_02.jpg) no-repeat center;background-size: cover;"></a>
                </li>
                <li>
                    <a href="#" class="banner_main" style="background: url(${resPath}images/common/banner_02.jpg) no-repeat center;background-size: cover;"></a>
                </li>
                <li>
                    <a href="#" class="banner_main" style="background: url(${resPath}images/common/banner_02.jpg) no-repeat center;background-size: cover;"></a>
                </li>
            </ul>
            <%--<p>--%>
               <%--<i class="acti"></i>--%>
               <%--<i></i>--%>
               <%--<i></i>--%>
            <%--</p>--%>
        </div>

        <script type="text/javascript">
            $(function () {
                $('#home_slider').flexslider({
                    animation : 'slide',
                    controlNav : true,
                    directionNav : false,
                    animationLoop : true,
                    slideshow : true,
                    pauseOnHover:true,
                    useCSS : false
                });

            });
        </script>
    </div>
    <div class="banner_shuru">
        <div class="container clear">
            <div class="banner_shuru_main right">
                <div class="banner_shuru_main_tl">
                    <span>欢迎登陆</span>
                </div>
                <form>
                    <div class=" banner_shuru_gp">
                        <input type="text" class="banner_shuru_input" placeholder="会员名" />
                    </div>
                    <div class=" banner_shuru_gp">
                        <input type="password" class="banner_shuru_input" placeholder="密码" />
                        <a href="#" class="banner_wp">忘记?</a>
                    </div>
                    <div class=" banner_shuru_gp">
                        <input type="text" class="banner_shuru_input" placeholder="验证码" />
                        <a href="#" class="banner_yz">
                            <img src="${resPath}images/common/index_51.png" />
                        </a>
                    </div>
                    <div class="clearfix banner_shuru_btn">
                        <input type="button" class="left btn_red" value="登录" />
                        <a href="#" class="left">立即注册</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="main container index_main clearfix">
    <div class="left kaijiang">
        <div class="kaijiang_tl">
            开奖公告
        </div>
        <div class="kaijiang_main">
            <ul>
                <li>
                    <div class="clearfix kaijiang_li_t">
                        <span class="left kaijiang_li_t_name">重庆时时彩</span>
                        <span class="left">20170626082期	</span>
                    </div>
                    <p class="kaijiang_num">
                        0  1  5  0  1
                    </p>
                    <div class="clearfix kaijiang_b">
                        <span class="left">2017-06-26</span>
                        <div class="right clearfix">
                            <a href="#" class="left">详情 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">投注 </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix kaijiang_li_t">
                        <span class="left kaijiang_li_t_name">新疆时时彩</span>
                        <span class="left">20170626082期	</span>
                    </div>
                    <p class="kaijiang_num">
                        0  1  5  0  1
                    </p>
                    <div class="clearfix kaijiang_b">
                        <span class="left">2017-06-26</span>
                        <div class="right clearfix">
                            <a href="#" class="left">详情 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">投注 </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix kaijiang_li_t">
                        <span class="left kaijiang_li_t_name">北京时时彩</span>
                        <span class="left">20170626082期	</span>
                    </div>
                    <p class="kaijiang_num">
                        0  1  5  0  1
                    </p>
                    <div class="clearfix kaijiang_b">
                        <span class="left">2017-06-26</span>
                        <div class="right clearfix">
                            <a href="#" class="left">详情 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">投注 </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix kaijiang_li_t">
                        <span class="left kaijiang_li_t_name">天津时时彩</span>
                        <span class="left">20170626082期	</span>
                    </div>
                    <p class="kaijiang_num">
                        0  1  5  0  1
                    </p>
                    <div class="clearfix kaijiang_b">
                        <span class="left">2017-06-26</span>
                        <div class="right clearfix">
                            <a href="#" class="left">详情 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">投注 </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="clearfix kaijiang_li_t">
                        <span class="left kaijiang_li_t_name">重庆时时彩</span>
                        <span class="left">20170626082期	</span>
                    </div>
                    <p class="kaijiang_num">
                        0  1  5  0  1
                    </p>
                    <div class="clearfix kaijiang_b">
                        <span class="left">2017-06-26</span>
                        <div class="right clearfix">
                            <a href="#" class="left">详情 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="#" class="left">投注 </a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="left index_main_midlle">
        <div class="touzhu">
            <div class="touzhu_t clearfix">
		    			<span class="left touzhu_t_name">
		    				快速投注
		    			</span>
                <div class="left touzhu_t_qht clearfix">
                    <a href="javascript:;" class="ahover">
                        重庆时时彩
                    </a>
                    <a href="javascript:;">
                        安徽快3
                    </a>
                    <a href="javascript:;">
                        香港六合彩
                    </a>
                    <a href="javascript:;">
                        排列三
                    </a>
                </div>
            </div>
            <div class="touzhu_b">
                <div class="touzhu_b_main hideContent">
                    <div class="clearfix touzhu1">
                        <div class="left">
                            第20170626083期截止：<span class="time time1"><span class="day">00</span>天<span class="hour">00</span>时<span class="mini">00</span>分<span class="sec">28</span>秒</span>
                        </div>
                        <div class="right touzhu1_rt">
                            <a href="#">手动选号</a>
                            <a href="#">走势图</a>
                        </div>
                    </div>
                    <div class="touzhu2 retouzhu2 clearfix">
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					0
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					3
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					4
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					6
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					7
		    	    				</span>
                        </div>
                    </div>
                    <div class="clearfix touzhu3">
                        <div class="clearfix sum left">
                            <button class="add left">+</button>
                            <input class="text_box left" name="" value="1" type="text">
                            <button class="min left">-</button>
                        </div>
                        <div class="left sum_text">
                            倍，共 <span class="color_red">2 </span>元
                        </div>
                        <div class="right clearfix">
                            <a href="javascript:;" class="shuaxin">
                                换一注
                            </a>
                            <a href="#" class="btn_red touzhubtn">
                                立即投注
                            </a>
                        </div>
                    </div>
                </div>
                <div class="touzhu_b_main hideContent">
                    <div class="clearfix touzhu1">
                        <div class="left">
                            第20170626083期截止：<span class="time time2"><span class="day">00</span>天<span class="hour">00</span>时<span class="mini">00</span>分<span class="sec">28</span>秒</span>
                        </div>
                        <div class="right touzhu1_rt">
                            <a href="#">手动选号</a>
                            <a href="#">走势图</a>
                        </div>
                    </div>
                    <div class="touzhu2 retouzhu2 clearfix">
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					2
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					3
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					4
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					6
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					7
		    	    				</span>
                        </div>
                    </div>
                    <div class="clearfix touzhu3">
                        <div class="clearfix sum left">
                            <button class="add left">+</button>
                            <input class="text_box left" name="" value="1" type="text">
                            <button class="min left">-</button>
                        </div>
                        <div class="left sum_text">
                            倍，共 <span class="color_red">2 </span>元
                        </div>
                        <div class="right clearfix">
                            <a href="javascript:;" class="shuaxin">
                                换一注
                            </a>
                            <a href="#" class="btn_red touzhubtn">
                                立即投注
                            </a>
                        </div>
                    </div>
                </div>
                <div class="touzhu_b_main active">
                    <div class="clearfix touzhu1">
                        <div class="left">
                            第20170626083期截止：<span class="time time3"><span class="day">00</span>天<span class="hour">00</span>时<span class="mini">00</span>分<span class="sec">28</span>秒</span>
                        </div>
                        <div class="right touzhu1_rt">
                            <a href="#">手动选号</a>
                            <a href="#">走势图</a>
                        </div>
                    </div>
                    <div class="touzhu2 clearfix" style="padding-top: 5px;height: 65px;">
                        <div class="left">
		    	    				<span class="qiu" style="background: #3e97ff;color: #fff;">
		    	    					12
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						鸡
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu" style="background: #e93030;color: #fff;">
		    	    					10
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						鼠
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu" style="background: #e93030;color: #fff;">
		    	    					34
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						鼠
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu" style="background: #2ed918;color: #fff;">
		    	    					11
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						猪
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu" style="background: #3e97ff;color: #fff;">
		    	    					19
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						兔
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu" style="background: #e93030;color: #fff;">
		    	    					25
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						鸡
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu" style="background: #3e97ff;color: #fff;">
		    	    					41
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						蛇
		    	    					</span>
                            </p>
                        </div>
                    </div>
                    <div class="clearfix touzhu3">
                        <div class="clearfix sum left">
                            <button class="add left">+</button>
                            <input class="text_box left" name="" value="1" type="text">
                            <button class="min left">-</button>
                        </div>
                        <div class="left sum_text">
                            倍，共 <span class="color_red">2 </span>元
                        </div>
                        <div class="right clearfix">
                            <a href="javascript:;" class="shuaxin">
                                换一注
                            </a>
                            <a href="#" class="btn_red touzhubtn">
                                立即投注
                            </a>
                        </div>
                    </div>
                </div>
                <div class="touzhu_b_main hideContent">
                    <div class="clearfix touzhu1">
                        <div class="left">
                            第20170626083期截止：<span class="time time4"><span class="day">00</span>天<span class="hour">00</span>时<span class="mini">00</span>分<span class="sec">28</span>秒</span>
                        </div>
                        <div class="right touzhu1_rt">
                            <a href="#">手动选号</a>
                            <a href="#">走势图</a>
                        </div>
                    </div>
                    <div class="touzhu2 retouzhu2 clearfix">
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					6
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					3
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					4
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					6
		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="qiu">
		    	    					7
		    	    				</span>
                        </div>
                    </div>
                    <div class="clearfix touzhu3">
                        <div class="clearfix sum left">
                            <button class="add left">+</button>
                            <input class="text_box left" name="" value="1" type="text">
                            <button class="min left">-</button>
                        </div>
                        <div class="left sum_text">
                            倍，共 <span class="color_red">2 </span>元
                        </div>
                        <div class="right clearfix">
                            <a href="javascript:;" class="shuaxin">
                                换一注
                            </a>
                            <a href="#" class="btn_red touzhubtn">
                                立即投注
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="index_zixun">
            <div class="index_zixun_t">
                <img src="${resPath}images/common/index_97.png" />
                资讯信息
            </div>
            <ul class="index_zixun_ul">
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>【 技巧 】</span>快3投注技巧：五大攻略玩转二同号 中奖容易
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="right index_main_rt">
        <div class="index_main_rt1">
            <div class="index_zixun_t">
                <img src="${resPath}images/common/index_65.png" />
                手机客户端下载
            </div>
            <div class="index_main_rt1_1 clearfix">
                <img src="${resPath}images/common/index5.png" class="left index_main_erw" />
                <div class="right index_main_rt1_1_rt">
                    <p class="down_a">
                        <a href="#">
                            <img src="${resPath}images/common/index_72.png" />
                            Iphone 版
                        </a>
                    </p>
                    <p class="down_a">
                        <a href="#">
                            <img src="${resPath}images/common/index_77.png" />
                            Android 版
                        </a>
                    </p>
                    <p class="index_main_erw_more">
                        <a href="#">更多方式</a>
                    </p>
                </div>
            </div>
            <div class="index_main_rt1_2">
                <div class="index_main_rt1_2t clearfix">
                    <a href="javascript:;" class="ahover">
                        网站公告
                    </a>
                    <a href="javascript:;">新手指导</a>
                </div>
                <div class="ndex_main_rt1_2b_main">
                    <div class="index_main_rt1_2b active">
                        <div id="wrap">
                            <ul class="index_notice_ul" id="box1">
                                <li>
                                    <a href="#">工行入款账号停用</a>
                                </li>
                                <li>
                                    <a href="#">工行入款账号停用</a>
                                </li>
                                <li>
                                    <a href="#">工行入款账号停用</a>
                                </li>
                            </ul>
                            <ul id="box2"></ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="zhongjiang">
            <div class="zhongjiang_t">
                <p class="zhongjiang_t1">
                    本站累计中奖
                </p>
                <div class="zhongjiang_t2">
                    <span>3</span>亿<span>5230</span>万<span>8020</span>元
                </div>
            </div>
            <div class="zhongjiang_ul">
                <ul id="view_apply">
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>
                    <li class="clearfix">
                        <a href="#" class="left zhongjiang_li1">
                            【福彩3D】
                        </a>
                        <span class="left zhongjiang_name">xu19***</span>
                        <span class="left zhongjiang_jine">
		        				17640.00元
		        			</span>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>

<c:import url="../common/bottomInfo.jsp"/>

<c:import url="../common/commonJs.jsp"/>

<div id="gonggao_container"></div>
<script>
    $(function () {
        getWebPopUpNotice();

        xyxh(null, 6);
        xyxh(null, 1);
        xyxh(null, 9);
        xyxh(null, 2);
        xyxh(null, 3);
    });

    function showGonggao(id) {
        $("#gonggao_" + id).show();
    }

    function touzhutishi() {
        alert("游戏暂未上线，敬请期待！");
    }

    <%--var popupNotice = <%=JSONUtils.toJSONStr(((WebNoticeResult)request.getAttribute("webPopUpNoticeResult")).getWebNoticeList())%>;--%>
    <%--function openPopUpNotice() {--%>
    <%--showPopUp(popupNotice);--%>
    <%--}--%>

    function goZst(url) {
        showLoading();
        window.location.href = url;
    }

    $(function () {

//        numadd(".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a",".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a.fl",".main_layout .right_layotu .left_wrap .Bettingbag .num_bett .val_add .reduce a.fr")
        tabs_cg(".Newest .tabs_cg ul li:lt(11)", ".Newest .layout .Analysis", "hover", "acti", "", "");//下面
        tabs_cg(".main_layout .right_layotu .left_wrap .tabs_cg ul li", ".main_layout .right_layotu .left_wrap .Bettingbag .num_bett", "hover", "acti", "", "");
        //two_scroll(".bannernew .block_home_slider .flexslider ul li", "", "", ".bannernew .block_home_slider .flexslider p i", "", 320);
        $(".Newest .Analysis .box3 .timer_wrap").each(function (index, element) {
            $(this).attr("index", "ti" + index);
            $(this).addClass("ti" + index);
        });

//        setInterval(function(){
//            $(".Newest .Analysis .box3 .timer_wrap").each(function(index, element) {
//                //console.log();
//                abc('".Newest .Analysis .box3 ".'+$(this).attr("index")+'"');
//            });
//
//        },1000);

        function abc(mainDiv) {
            //console.log(mainDiv);

            var i = $(mainDiv + " ol.m span.sp2").text();
            i--;
            if (i == -1) {
                i = 9;
                $(mainDiv + " ol.m span.sp2").text(i);

                var te = $(mainDiv + " ol.m span.sp1").text() - 1
                if (te < 0) {
                    if ($(mainDiv + " ol.f span.sp2").text() == 0) {
                        $(mainDiv + " ol.f span.sp2").text(9);

                        if ($(mainDiv + " ol.f span.sp1").text() == 0) { //分

                            $(mainDiv + " ol.f span.sp1").text(6);

                            if ($(mainDiv + " ol.s span.sp2").text() == 0) {
                                $(mainDiv + " ol.s span.sp2").text(9);
                                $(mainDiv + " ol.s span.sp1").text($(mainDiv + " ol.s span.sp1").text() - 1);

                            } else {
                                $(mainDiv + " ol.s span.sp2").text($(mainDiv + " ol.s span.sp2").text() - 1);
                            }
                        }
                        $(mainDiv + " ol.f span.sp1").text($(mainDiv + " ol.f span.sp1").text() - 1);

                    } else {

                        $(mainDiv + " ol.f span.sp2").text($(mainDiv + " ol.f span.sp2").text() - 1)//分钟
                    }
                    te = 5;
                }
                $(mainDiv + " ol.m span.sp1").text(te)
            }

            $(mainDiv + " ol.m span.sp2").text(i)
        }


    });


    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
    function login1() {
        var loginAccount = $.trim($("#loginAccount1").val());
        var loginPassword = $.trim($("#loginPassword1").val());
        var yzm = $.trim($("#loginYzm1").val());

        if (!loginAccount) {
            alert("请输入账号");
            return;
        }
        if (!loginPassword) {
            alert("请输入密码");
            return;
        }
        if (!yzm) {
            alert("请输入验证码");
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>member/ajaxLogin.json",
            data: {
                yzm: yzm,
                account: loginAccount,
                password: $.md5(loginPassword)
            },
            beforeSend: function () {
                layer.load(2, {
                    shade: [0.1, '#000'] //0.1透明度的白色背景
                });
                $.cookie("uid", '', {path: "/", expires: -1});
                $.cookie("token", '', {path: "/", expires: -1});
            },
            success: function (json) {
                setTimeout(function () {
                    layer.closeAll();
                    if (json.result == 1) {
                        $.cookie("uid", json.userId, {path: "/"});
                        $.cookie("token", json.token, {path: "/"});

                        if (json.webNoticeList.length > 0) {
                            var hh = "\n";
                            if (document.all) {
                                hh = "\r\n";
                            }
                            var str = "尊敬的会员您好！" + hh + hh;
                            $.each(json.webNoticeList, function (index, value) {
                                str += value.title.replace(/<[^>]+>/g, "") + hh;
                                str += value.content.replace(/<[^>]+>/g, "") + hh + hh;
                            });
                            //console.log(str);
                            alert(str);
                        }
                        location.reload();
                    } else {
                        refreshYzm(document.getElementById('yzmImg1'));
                        alert("登录失败：" + json.description);
                    }
                }, 1000)
            }
        });
    }
</script>
<script>
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }

    $(function () {
        $('.type_top .left .left_div .log,.type_top .left .left_div .alert_log').hover(function () {
            $('.type_top .left .left_div .alert_log').show();
            $('.type_top .left .left_div .alert_par').hide();
        })
        $('.type_top').hover(function () {
        }, function () {
            $('.type_top .left .left_div .alert_log').hide();
            $('.type_top .left .left_div .alert_par').hide();
        })
        $('.type_top .right ul li.l').hover(function () {
            $(this).addClass('sli');
            $(this).find('div').show();
        })
        $('.type_top .right ul li').hover(function () {

        }, function () {
            $(this).removeClass('sli');
            $(this).find('div').hide();
        })
        $('.type_top .left .left_div a.par').hover(function () {
            $('.type_top .left .left_div .alert_par').show();
            $('.type_top .left .left_div .alert_log').hide();
        })
    });

    function xytz(type) {
        if (type == 6) {
            var arr = [];
            for (var i = 0; i < 7; ++i) {
                arr.push(Tools.parseInt($("#xyxhContent_6 span").eq(i).data("num")));
            }

        }
    }

    function checkColor(num) {
        var colorFlag;
        var status = false;
        var blueflag = [3, 4, 9, 10, 14, 15, 20, 25, 26, 31, 36, 37, 41, 42, 47, 48];
        var redflag = [1, 2, 7, 8, 12, 13, 18, 19, 23, 24, 29, 30, 34, 35, 40, 45, 46];

        for (var j = 0; j < blueflag.length; j++) {
            if (num == blueflag[j]) {
                colorFlag = 'blue';
                status = true;//标识已找到颜色
            }
        }

        if (status == false) {
            for (var k = 0; j < redflag.length; k++) {
                if (num == redflag[k]) {
                    colorFlag = 'red';
                    status = true;//标识已找到颜色
                }
            }

            if (status == false) {
                colorFlag = 'green';
            }
        }
        return colorFlag;
    }
    $(function () {
//        getSscOpenTime();
    });

    function layerOpen(title, url, width, height) {
        layer.open({
            type: 2,
            title: title,
            shadeClose: true,
            shade: false,
            maxmin: true, //开启最大化最小化按钮
//            area: ['893px', '600px'],
            area: [width + 'px', height + 'px'],
            content: url
        });
    }


    function openXyxh(type) {
        var caizhong = '';
        var nums = '';
        var money = '';
        var navIndex = '';

        if (type == 6) {
            caizhong = 'lhc';
            navIndex = 0;
            numsArr = [];
            for (var i = 0; i < 7; ++i) {
                var v = $("#xyxhContent_6 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);  //join() 方法用于把数组中的所有元素转换一个字符串。
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_6").val();
        } else if (type == 1) {
            caizhong = 'cqssc';
            navIndex = 1;
            var numsArr = [];
            for (var i = 0; i < 5; ++i) {
                var v = $("#xyxhContent_1 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_1").val();
        } else if (type == 2) {
            caizhong = 'tjssc';
            navIndex = 1;
            var numsArr = [];
            for (var i = 0; i < 5; ++i) {
                var v = $("#xyxhContent_2 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_2").val();
        } else if (type == 3) {
            caizhong = 'xjssc';
            navIndex = 1;
            var numsArr = [];
            for (var i = 0; i < 5; ++i) {
                var v = $("#xyxhContent_3 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_3").val();
        } else if (type == 9) {
            caizhong = 'pk10';
            navIndex = 1;
            var numsArr = [];
            for (var i = 0; i < 10; ++i) {
                var v = $("#xyxhContent_9 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhInput_9").val();
        }

        if (numsArr.length == 0) {
            return;
        }
        openXyxhGcdt(caizhong, nums, money, navIndex);
    }

    function openXyxhGcdt(caizhong, nums, money, navIndex) {
        windowOpenBlank('<%=basePath%>ssc/index.html?caizhong=' + caizhong + '&nums=' + nums + '&money=' + money + '&navIndex=' + navIndex);
        //goSubUrl(CONFIG.BASEURL + "ssc/gcdt/" + caizhong + ".html?caizhong=" + caizhong + "&nums=" + nums + "&money=" + money + "&navIndex=" + navIndex);
    }

    function openGcdt(module) {
//        if (typeof module == 'undefined') {
//            module = '';
//        }
        <%--windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);--%>
        var subUrl = "";
        if (module) {
            subUrl = "#" + CONFIG.BASEURL + "ssc/" +module + ".html";
        }
        windowOpenBlank(CONFIG.BASEURL + 'ssc/index.html' + subUrl);
    }

    function openZstIndex(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        <%--windowOpen('<%=basePath%>ssc/index.html?module=' + module, '走势图首页', 1285, 800);--%>
        windowOpenBlank('<%=basePath%>ssc/index.html?module=' + module);
    }

    function openZst(zst, type) {
        <%--windowOpen('<%=basePath%>ssc/index.html?zst=' + zst + '&type=' + type, '购彩大厅走势图', 1285, 800);--%>
        windowOpenBlank('<%=basePath%>ssc/index.html?zst=' + zst + '&type=' + type);
    }

    function openHyzx(module) {
        if (typeof module == 'undefined') {
            module = '';
        }
        if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
            alert("请先登录");
            if ($("#loginAccount1").length > 0) {
                $("#loginAccount1").focus();
                return;
            }
            window.location.href = "<%=basePath%>main.html";
            return;
        }
        var subUrl = "";
        if (module) {
            subUrl = "#" + CONFIG.BASEURL + module;
        }
        windowOpen(CONFIG.BASEURL + 'member/index.html' + subUrl, '会员中心', 1250, 834);
    }

    var content_G = '';
    function getWebPopUpNotice() {
        ajaxRequest({
            url: "<%=basePath%>member/ajaxGetWebPopUpNotice.json",
            beforeSend: function () {
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }

                <c:forEach items="${webPopUpNoticeResult.webNoticeList}" var="item" varStatus="status">

                </c:forEach>

                var str = '';
                var str2 = ''
                if (json.webNoticeList.length != 0) {
                    $.each(json.webNoticeList, function (index, value) {
                        var len = value.content.replace(/<p>/g, "").replace(/<\/p>/g, "").length;
                        if (len > 13) {
                            content_G = value.content.replace(/<p>/g, "").replace(/<\/p>/g, "").substr(0, 13) + "...";
                        } else {
                            content_G = value.content.replace(/<p>/g, "").replace(/<\/p>/g, "");
                        }

                        str += '<p onclick="showGonggao(' + index + ')" style="white-space:nowrap; overflow:hidden; text-overflow:ellipsis;height:25px;margin:0;">' + value.title + "&nbsp;:&nbsp;" + content_G + '</p></br>';

                        str2 += '<div class="alert hide" id="gonggao_' + index + '">';
                        str2 += '<div class="alert_col">';
                        str2 += '<h5><span>公告</span><i>×</i></h5>';
                        str2 += '<h2>' + value.title + '</h2>';
                        str2 += '<div>' + value.content + '</div>';
                        str2 += '<h4>${webName}</h4>';
                        str2 += '<h4 style="margin-top:15px">' + Tools.formatDate(value.createTime) + '</h4>';
                        str2 += '</div>';
                        str2 += '</div>';
                    });
                } else {
                    str = '暂无公告';
                }
                $("#gonggao_marquee").html(str);
                $("#gonggao_marquee p").css({margin: "-10px auto"});
                $("#gonggao_container").html(str2);

                $('#gonggao_marquee').liMarquee({
                    direction: 'up',
                    scrollamount: 10
                });
                $('.alert_col h5 i').click(function () {
                    $('.alert').hide();
                });
            }
        });
    }

    function xyxhAdd(id, size) {
        var num = $("#xyxhInput_" + id).val();
        if (isNaN(num) || num <= 0) {
            num = 1;
        } else {
            num++;
        }
        $("#xyxhInput_" + id).val(num);
        $("#xyxhMoney_" + id).html('共：<i>' + mul(num, size) + '</i> 元');
    }
    function checkValue(id, size) {
        var num = $("#xyxhInput_" + id).val();
        if (isNaN(num) || num <= 1) {
            num = 1;
            $("#xyxhInput_" + id).val(num);
        }
        $("#xyxhMoney_" + id).html('共：<i>' + mul(num, size) + '</i> 元');
    }
    function xyxhMinute(id, size) {
        var num = $("#xyxhInput_" + id).val();
        if (isNaN(num) || num <= 1) {
            num = 1;
        } else {
            num--;
        }
        $("#xyxhInput_" + id).val(num);
        $("#xyxhMoney_" + id).html('共：<i>' + mul(num, size) + '</i> 元');
    }


    function xyxh(obj, type) {
        if (typeof type == 'undefined') {
            return;
        }

        var index_6 = null;
        var index_1 = null;
        var index_2 = null;
        var index_3 = null;
        var index_9 = null;
        if (type == 6) {
            $("#xyxhContent_6 span").each(function () {
                $(this).data("num", '');
            });

            index_6 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 49 + 1);
                var num2 = Math.floor(Math.random() * 49 + 1);
                var num3 = Math.floor(Math.random() * 49 + 1);
                var num4 = Math.floor(Math.random() * 49 + 1);
                var num5 = Math.floor(Math.random() * 49 + 1);
                var num6 = Math.floor(Math.random() * 49 + 1);
                var num7 = Math.floor(Math.random() * 49 + 1);

                var bose1 = getBose(num1);
                var bose2 = getBose(num2);
                var bose3 = getBose(num3);
                var bose4 = getBose(num4);
                var bose5 = getBose(num5);
                var bose6 = getBose(num6);
                var bose7 = getBose(num7);

                bose1 = bose1 == 0 ? 's0' : (bose1 == 1 ? 's1' : 's2');
                bose2 = bose2 == 0 ? 's0' : (bose2 == 1 ? 's1' : 's2');
                bose3 = bose3 == 0 ? 's0' : (bose3 == 1 ? 's1' : 's2');
                bose4 = bose4 == 0 ? 's0' : (bose4 == 1 ? 's1' : 's2');
                bose5 = bose5 == 0 ? 's0' : (bose5 == 1 ? 's1' : 's2');
                bose6 = bose6 == 0 ? 's0' : (bose6 == 1 ? 's1' : 's2');
                bose7 = bose7 == 0 ? 's0' : (bose7 == 1 ? 's1' : 's2');

                $("#xyxhContent_6 span").eq(0).attr("class", bose1).html(num1);
                $("#xyxhContent_6 span").eq(1).attr("class", bose2).html(num2);
                $("#xyxhContent_6 span").eq(2).attr("class", bose3).html(num3);
                $("#xyxhContent_6 span").eq(3).attr("class", bose4).html(num4);
                $("#xyxhContent_6 span").eq(4).attr("class", bose5).html(num5);
                $("#xyxhContent_6 span").eq(5).attr("class", bose6).html(num6);
                $("#xyxhContent_6 span").eq(6).attr("class", bose7).html(num7);

                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(1).html(getSxName(num2));
                $("#xyxhContent_6 var em").eq(2).html(getSxName(num3));
                $("#xyxhContent_6 var em").eq(3).html(getSxName(num4));
                $("#xyxhContent_6 var em").eq(4).html(getSxName(num5));
                $("#xyxhContent_6 var em").eq(5).html(getSxName(num6));
                $("#xyxhContent_6 var em").eq(6).html(getSxName(num7));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
            }, 50);

            setTimeout(function () {
                var arr = [];
                while (arr.length != 7) {
                    var randNum = Math.floor(Math.random() * 49 + 1);

                    var hasExist = false;
                    for (var j = 0; j < arr.length; ++j) {
                        if (arr[j] == randNum) {
                            hasExist = true;
                            break;
                        }
                    }
                    if (!hasExist) {
                        arr.push(randNum);
                    }
                }

                var num1 = arr[0];
                var num2 = arr[1];
                var num3 = arr[2];
                var num4 = arr[3];
                var num5 = arr[4];
                var num6 = arr[5];
                var num7 = arr[6];

                var bose1 = getBose(num1);
                var bose2 = getBose(num2);
                var bose3 = getBose(num3);
                var bose4 = getBose(num4);
                var bose5 = getBose(num5);
                var bose6 = getBose(num6);
                var bose7 = getBose(num7);

                bose1 = bose1 == 0 ? 's0' : (bose1 == 1 ? 's1' : 's2');
                bose2 = bose2 == 0 ? 's0' : (bose2 == 1 ? 's1' : 's2');
                bose3 = bose3 == 0 ? 's0' : (bose3 == 1 ? 's1' : 's2');
                bose4 = bose4 == 0 ? 's0' : (bose4 == 1 ? 's1' : 's2');
                bose5 = bose5 == 0 ? 's0' : (bose5 == 1 ? 's1' : 's2');
                bose6 = bose6 == 0 ? 's0' : (bose6 == 1 ? 's1' : 's2');
                bose7 = bose7 == 0 ? 's0' : (bose7 == 1 ? 's1' : 's2');

                clearInterval(index_6);
                $("#xyxhContent_6 span").eq(0).attr("class", bose1).data("num", "tm_b-" + num1).html(num1);
                $("#xyxhContent_6 span").eq(1).attr("class", bose2).data("num", "tm_b-" + num2).html(num2);
                $("#xyxhContent_6 span").eq(2).attr("class", bose3).data("num", "tm_b-" + num3).html(num3);
                $("#xyxhContent_6 span").eq(3).attr("class", bose4).data("num", "tm_b-" + num4).html(num4);
                $("#xyxhContent_6 span").eq(4).attr("class", bose5).data("num", "tm_b-" + num5).html(num5);
                $("#xyxhContent_6 span").eq(5).attr("class", bose6).data("num", "tm_b-" + num6).html(num6);
                $("#xyxhContent_6 span").eq(6).attr("class", bose7).data("num", "tm_b-" + num7).html(num7);

                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(1).html(getSxName(num2));
                $("#xyxhContent_6 var em").eq(2).html(getSxName(num3));
                $("#xyxhContent_6 var em").eq(3).html(getSxName(num4));
                $("#xyxhContent_6 var em").eq(4).html(getSxName(num5));
                $("#xyxhContent_6 var em").eq(5).html(getSxName(num6));
                $("#xyxhContent_6 var em").eq(6).html(getSxName(num7));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
                $("#xyxhContent_6 var em").eq(0).html(getSxName(num1));
            }, 2000);
        } else if (type == 1) {
            $("#xyxhContent_1 span").each(function () {
                $(this).data("num", '');
            });

            index_1 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                $("#xyxhContent_1 span").eq(0).html(num1);
                $("#xyxhContent_1 span").eq(1).html(num2);
                $("#xyxhContent_1 span").eq(2).html(num3);
                $("#xyxhContent_1 span").eq(3).html(num4);
                $("#xyxhContent_1 span").eq(4).html(num5);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                clearInterval(index_1);
                $("#xyxhContent_1 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContent_1 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContent_1 span").eq(2).data("num", "bai-" + num3).html(num3);
                $("#xyxhContent_1 span").eq(3).data("num", "shi-" + num4).html(num4);
                $("#xyxhContent_1 span").eq(4).data("num", "ge-" + num5).html(num5);
            }, 2000);
        } else if (type == 2) {
            $("#xyxhContent_2 span").each(function () {
                $(this).data("num", '');
            });

            index_2 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                $("#xyxhContent_2 span").eq(0).html(num1);
                $("#xyxhContent_2 span").eq(1).html(num2);
                $("#xyxhContent_2 span").eq(2).html(num3);
                $("#xyxhContent_2 span").eq(3).html(num4);
                $("#xyxhContent_2 span").eq(4).html(num5);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                clearInterval(index_2);
                $("#xyxhContent_2 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContent_2 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContent_2 span").eq(2).data("num", "bai-" + num3).html(num3);
                $("#xyxhContent_2 span").eq(3).data("num", "shi-" + num4).html(num4);
                $("#xyxhContent_2 span").eq(4).data("num", "ge-" + num5).html(num5);
            }, 2000);
        } else if (type == 3) {
            $("#xyxhContent_3 span").each(function () {
                $(this).data("num", '');
            });

            index_3 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                $("#xyxhContent_3 span").eq(0).html(num1);
                $("#xyxhContent_3 span").eq(1).html(num2);
                $("#xyxhContent_3 span").eq(2).html(num3);
                $("#xyxhContent_3 span").eq(3).html(num4);
                $("#xyxhContent_3 span").eq(4).html(num5);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                clearInterval(index_3);
                $("#xyxhContent_3 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContent_3 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContent_3 span").eq(2).data("num", "bai-" + num3).html(num3);
                $("#xyxhContent_3 span").eq(3).data("num", "shi-" + num4).html(num4);
                $("#xyxhContent_3 span").eq(4).data("num", "ge-" + num5).html(num5);
            }, 2000);
        } else if (type == 9) {
            $("#xyxhContent_9 span").each(function () {
                $(this).data("num", '');
            });

            index_9 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10 + 1);
                var num2 = Math.floor(Math.random() * 10 + 1);
                var num3 = Math.floor(Math.random() * 10 + 1);
                var num4 = Math.floor(Math.random() * 10 + 1);
                var num5 = Math.floor(Math.random() * 10 + 1);
                var num6 = Math.floor(Math.random() * 10 + 1);
                var num7 = Math.floor(Math.random() * 10 + 1);
                var num8 = Math.floor(Math.random() * 10 + 1);
                var num9 = Math.floor(Math.random() * 10 + 1);
                var num10 = Math.floor(Math.random() * 10 + 1);

                $("#xyxhContent_9 span").eq(0).attr("class", 'fang bg-' + num1).html(num1);
                $("#xyxhContent_9 span").eq(1).attr("class", 'fang bg-' + num2).html(num2);
                $("#xyxhContent_9 span").eq(2).attr("class", 'fang bg-' + num3).html(num3);
                $("#xyxhContent_9 span").eq(3).attr("class", 'fang bg-' + num4).html(num4);
                $("#xyxhContent_9 span").eq(4).attr("class", 'fang bg-' + num5).html(num5);
                $("#xyxhContent_9 span").eq(5).attr("class", 'fang bg-' + num6).html(num6);
                $("#xyxhContent_9 span").eq(6).attr("class", 'fang bg-' + num7).html(num7);
                $("#xyxhContent_9 span").eq(7).attr("class", 'fang bg-' + num8).html(num8);
                $("#xyxhContent_9 span").eq(8).attr("class", 'fang bg-' + num9).html(num9);
                $("#xyxhContent_9 span").eq(9).attr("class", 'fang bg-' + num10).html(num10);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10 + 1);
                var num2 = Math.floor(Math.random() * 10 + 1);
                var num3 = Math.floor(Math.random() * 10 + 1);
                var num4 = Math.floor(Math.random() * 10 + 1);
                var num5 = Math.floor(Math.random() * 10 + 1);
                var num6 = Math.floor(Math.random() * 10 + 1);
                var num7 = Math.floor(Math.random() * 10 + 1);
                var num8 = Math.floor(Math.random() * 10 + 1);
                var num9 = Math.floor(Math.random() * 10 + 1);
                var num10 = Math.floor(Math.random() * 10 + 1);

                clearInterval(index_9);
                $("#xyxhContent_9 span").eq(0).attr("class", 'fang bg-' + num1).data('num', 'gj-' + num1).html(num1);
                $("#xyxhContent_9 span").eq(1).attr("class", 'fang bg-' + num2).data('num', 'yj-' + num2).html(num2);
                $("#xyxhContent_9 span").eq(2).attr("class", 'fang bg-' + num3).data('num', 'jj-' + num3).html(num3);
                $("#xyxhContent_9 span").eq(3).attr("class", 'fang bg-' + num4).data('num', 'q4-' + num4).html(num4);
                $("#xyxhContent_9 span").eq(4).attr("class", 'fang bg-' + num5).data('num', 'q5-' + num5).html(num5);
                $("#xyxhContent_9 span").eq(5).attr("class", 'fang bg-' + num6).data('num', 'q6-' + num6).html(num6);
                $("#xyxhContent_9 span").eq(6).attr("class", 'fang bg-' + num7).data('num', 'q7-' + num7).html(num7);
                $("#xyxhContent_9 span").eq(7).attr("class", 'fang bg-' + num8).data('num', 'q8-' + num8).html(num8);
                $("#xyxhContent_9 span").eq(8).attr("class", 'fang bg-' + num9).data('num', 'q9-' + num9).html(num9);
                $("#xyxhContent_9 span").eq(9).attr("class", 'fang bg-' + num10).data('num', 'q10-' + num10).html(num10);
            }, 2000);
        }
    }
</script>
<c:import url="../common/popupDiv.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>