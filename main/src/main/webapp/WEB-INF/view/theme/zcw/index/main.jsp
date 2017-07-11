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
<c:import url="menu.jsp" />

<div class="bannernew">
    <div class="block_home_slider">
        <div id="home_slider" class="flexslider">
            <ul class="slides">
                <c:forEach items="${carouseList.carouselList}" var="item">
                    <c:choose>
                        <c:when test="${empty item.url}">
                            <li>
                                <a href="#" class="banner_main" style="background: url(<%=basePath%>images/${item.imageId}.jpg) no-repeat center;background-size: cover;"></a>
                            </li>
                        </c:when>
                    </c:choose>
                </c:forEach>
            </ul>
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
                <form onsubmit="registerLogin();return false;">
                    <div class=" banner_shuru_gp">
                        <input type="text"  id="registerLoginAccount" class="banner_shuru_input" placeholder="会员名" />
                    </div>
                    <div class=" banner_shuru_gp">
                        <input type="password"  id="registerLoginPassword" class="banner_shuru_input" placeholder="密码" />
                        <a href="#" class="banner_wp">忘记?</a>
                    </div>
                    <div class=" banner_shuru_gp">
                        <input type="text"  id="registerLoginYzm" class="banner_shuru_input" placeholder="验证码" />

                        <a href="#" class="banner_yz">
                            <img id="registerYzmImg2" onclick="refreshYzm(this)" src="<%=basePath%>code/yzm?imgWidth=113&imgHeight=43&imgFontHeight=40&imgCodeY=35&imgCodeX=2"/>
                        </a>
                    </div>
                    <div class="clearfix banner_shuru_btn">
                        <input type="submit" class="left btn_red"  value="登录"/>
                        <a href="<%=basePath%>register.html" class="left">立即注册</a>
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
                            <a href="<%=basePath%>ssc/zst/cqssc.html" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="<%=basePath%>ssc/gcdt/cqssc.html" class="left">投注 </a>
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
                            <a href="<%=basePath%>ssc/zst/xjssc.html" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="<%=basePath%>ssc/gcdt/xjssc.html" class="left">投注 </a>
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
                            <a href="<%=basePath%>ssc/zst/xjssc.html" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="<%=basePath%>ssc/zst/xjssc.html" class="left">投注 </a>
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
                            <a href="<%=basePath%>ssc/zst/tjssc.html" class="left">走势 </a>
                            <span class="left">&nbsp;|&nbsp;</span>
                            <a href="<%=basePath%>ssc/zst/tjssc.html" class="left">投注 </a>
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
                    <a href="javascript:javascript:void(0);" class="ahover">
                        重庆时时彩
                    </a>
                    <a href="javascript:javascript:void(0);">
                        安徽快3
                    </a>
                    <a href="javascript:javascript:void(0);">
                        香港六合彩
                    </a>
                    <a href="javascript:javascript:void(0);">
                        排列三
                    </a>
                </div>
            </div>
            <div class="touzhu_b">
                <div class="touzhu_b_main active" id="ssc_id_1">
                    <div class="clearfix touzhu1">
                        <div class="left">
                            第20170626083期截止：<span class="time time1"><span class="day">00</span>天<span class="hour">00</span>时<span class="mini">00</span>分<span class="sec">28</span>秒</span>
                        </div>
                        <div class="right touzhu1_rt">
                            <a href="javascript:void(0)" onclick="openGcdt('gcdt/cqssc')">手动选号</a>
                            <a href="<%=basePath%>ssc/zst/cqssc.html" target="_blank"  class="sp0">走势图</a>
                        </div>
                    </div>
                    <div class="touzhu2 retouzhu2 clearfix" id="xyxhContents_1">
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">
		    	    				</span>
                        </div>
                    </div>
                    <div class="clearfix touzhu3">
                        <div class="clearfix sum left">
                            <button class="add left" onclick="xyxhAdd(1, 5)">+</button>
                            <input class="text_box left" id="xyxhInput_1" value="1" type="text" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(1, 5);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>

                            <button class="min left" onclick="xyxhMinute(1, 5)">-</button>
                        </div>
                        <div class="left sum_text">
                            倍，共 <span id="xyxhMoney_1" class="xyxhMoney_1 color_red"><i>5</i></span>元
                        </div>
                        <div class="right clearfix">
                            <a href="javascript:void(0)" class="shuaxin" onclick="xyxh(this,1)">
                                换一注
                            </a>
                            <a href="javascript:void(0)" class="a1 btn_red touzhubtn" onclick="openXyxh(1)">
                                立即投注
                            </a>
                        </div>
                    </div>
                </div>
                <div class="touzhu_b_main hideContent" id="ssc_id_20">
                    <div class="clearfix touzhu1">
                        <div class="left">
                            第20170626083期截止：<span class="time time2"><span class="day">00</span>天<span class="hour">00</span>时<span class="mini">00</span>分<span class="sec">28</span>秒</span>
                        </div>
                        <div class="right touzhu1_rt">
                            <a href="javascript:void(0);" onclick="openGcdt('gcdt/ahk3')">手动选号</a>
                            <a href="<%=basePath%>ssc/zst/ahk3.html" target="_blank">走势图</a>
                        </div>
                    </div>
                    <div class="touzhu2 retouzhu3 clearfix" id="xyxhContents_20">
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                    </div>
                    <div class="clearfix touzhu3">
                        <div class="clearfix sum left">
                            <button class="add left"onclick="xyxhAdd(1, 20)">+</button>
                            <input class="text_box left" id="xyxhInput_20" value="1" type="text" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(1, 5);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>
                            <button class="min left"  onclick="xyxhMinute(1, 5)">-</button>
                        </div>
                        <div class="left sum_text">
                            倍，共 <span id="xyxhMoney_20" class="color_red">2 </span>元
                        </div>
                        <div class="right clearfix">
                            <a href="javascript:void(0);" class="shuaxin" onclick="xyxh(this,20)">
                                换一注
                            </a>
                            <a href="javascript:void(0)" onclick="openXyxh(20)" class="btn_red touzhubtn">
                                立即投注
                            </a>
                        </div>
                    </div>
                </div>
                <div class="touzhu_b_main hideContent" id="ssc_id_6">
                    <div class="clearfix touzhu1">
                        <div class="left">
                            第20170626083期截止：<span class="time time3"><span class="day">00</span>天<span class="hour">00</span>时<span class="mini">00</span>分<span class="sec">28</span>秒</span>
                        </div>
                        <div class="right touzhu1_rt">
                            <a href="javascript:void(0)" onclick="openGcdt('gcdt/lhc')">手动选号</a>
                            <a href="<%=basePath%>ssc/zst/lhc.html" target="_blank">走势图</a>
                        </div>
                    </div>
                    <div class="touzhu2 clearfix" style="padding-top: 5px;height: 65px;" id="xyxhContents_6">
                        <div class="left">
		    	    		<span class="qiu">
		    	    			12
		    	    		</span>
                            <p class="biaoqian">
		    	    			<span>
		    	    				鸡
		    	    			</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu">
		    	    					10
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						鼠
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu">
		    	    					34
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						鼠
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu">
		    	    					11
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						猪
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu">
		    	    					19
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						兔
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu">
		    	    					25
		    	    				</span>
                            <p class="biaoqian">
		    	    					<span>
		    	    						鸡
		    	    					</span>
                            </p>
                        </div>
                        <div class="left">
		    	    				<span class="qiu">
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
                            <button class="add left" onclick="xyxhAdd(1, 5)">+</button>
                            <input class="text_box left" id="xyxhInput_6" value="1" type="text" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(1, 5);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>

                            <button class="min left" onclick="xyxhMinute(1, 5)">-</button>
                        </div>
                        <div class="left sum_text">
                            倍，共 <span class="color_red" >2</span>元
                        </div>
                        <div class="right clearfix">
                            <a href="javascript:void(0);" class="shuaxin" onclick="xyxh(this,6)">
                                换一注
                            </a>
                            <a href="javascript:void(0);" onclick="openXyxh(6)" class="btn_red touzhubtn">
                                立即投注
                            </a>
                        </div>
                    </div>
                </div>
                <div class="touzhu_b_main hideContent" id="ssc_id_4">
                    <div class="clearfix touzhu1">
                        <div class="left">
                            第20170626083期截止：<span class="time time4"><span class="day">00</span>天<span class="hour">00</span>时<span class="mini">00</span>分<span class="sec">28</span>秒</span>
                        </div>
                        <div class="right touzhu1_rt">
                            <a href="javascript:void(0);" onclick="openGcdt('gcdt/lhc')">手动选号</a>
                            <a href="<%=basePath%>ssc/zst/pl3.html" target="_blank">走势图</a>
                        </div>
                    </div>
                    <div class="touzhu2 retouzhu3 clearfix" id="xyxhContents_4">
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                        <div class="kai_qiu_main left">
		    	    				<span class="s0">

		    	    				</span>
                        </div>
                    </div>
                    <div class="clearfix touzhu4">
                        <div class="clearfix sum left">
                            <button class="add left" onclick="xyxhAdd(1, 5)">+</button>
                            <input class="text_box left" id="xyxhInput_4" value="1" type="text" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')} checkValue(1, 5);"
                                   onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"/>

                            <button class="min left" onclick="xyxhMinute(1, 5)">-</button>
                        </div>
                        <div class="left sum_text">
                            倍，共 <span id="xyxhMoney_4" class="color_red">2 </span>元
                        </div>
                        <div class="right clearfix">
                            <a href="javascript:void(0);" class="shuaxin" onclick="xyxh(this,4)">
                                换一注
                            </a>
                            <a href="javascript:void(0);" onclick="openXyxh(4)" class="btn_red touzhubtn">
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
                            <marquee direction="up" behavior="scroll" stoptime="2000" scrollamount="2" scrolldelay="1" loop="-1" width="500" height="50" bgcolor="#fff">
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
                            </ul></marquee>
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
                <ul>
                    <marquee direction="up" behavior="scroll" contenteditable="true" scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();" width="100%" height="400">
                        <c:forEach items="${Notices.noticeList}" var="noticelists">
                        <li class="clearfix">
                            <a href="#" class="left zhongjiang_li1">
                                ${noticelists.type}
                            </a>
                            <span class="left zhongjiang_name">${noticelists.userName}</span>
                            <span class="left zhongjiang_jine">
		        				${noticelists.amount}元
		        			</span>
                        </li>
                        </c:forEach>
                    </marquee>
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

        xyxh(null, 1);
        xyxh(null, 4);
        xyxh(null, 6);
        xyxh(null, 20);
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

        $(".all_fenlei_yin").css("display","block");

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
   $(function(){

       $('.index_main_rt1_2t a').click(function(){
           var index = $(this).index();
           $(this).addClass('ahover').siblings().removeClass('ahover');
           $(".index_main_rt1_2b").eq(index).show().addClass('active').siblings().removeClass('active').hide();
       });

       $('.touzhu_t_qht a').click(function(){
           var index = $(this).index();
           $(this).addClass('ahover').siblings().removeClass('ahover');
           $(".touzhu_b_main").eq(index).show().addClass('active').siblings().removeClass('active').hide();
       });

   $(".shuaxin").click(function(){

       var	eedd=$(this).parents(".touzhu_b_main").index();

       $(this).parents(".touzhu_b_main").find(".qiu").each(function(index) {

           index=setInterval(function(){
               $(".touzhu_b_main:eq("+eedd+") .qiu").text(parseInt(99*Math.random()))
               setTimeout(function(){
                   clearInterval(index);
                   $(".touzhu_b_main:eq("+eedd+") .qiu").parents(".touzhu_b_main").find(".qiu").each(function(index) {
                       $(this).text(parseInt(99*Math.random()));
                   });
               },300)
           },10)

       });
       $(this).parents(".touzhu_b_main").find(".biaoqian").each(function(index1) {
           var arr=['鼠','虎','兔','小','双','狗','蛇','猪']
           index1=setInterval(function(){
               $(".touzhu_b_main:eq("+eedd+") .biaoqian span").text(arr[Math.floor(Math.random() * arr.length)])
               setTimeout(function(){
                   clearInterval(index1);
                   $(".touzhu_b_main:eq("+eedd+") .biaoqian").parents(".touzhu_b_main").find(".biaoqian span").each(function(index) {
                       $(this).text(arr[Math.floor(Math.random() * arr.length)]);
                   });
               },300)
           },10)

       });


    })
   });

</script>

<script>

    function registerLogin() {
        var loginAccount = $.trim($("#registerLoginAccount").val());
        var loginPassword = $.trim($("#registerLoginPassword").val());
        var yzm = $.trim($("#registerLoginYzm").val());

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
            beforeSend: function() {
                showLoading();
            },
            success: function(json) {
                if (json.result == 1) {
                    $.cookie("uid", json.userId, {path: "/"});
                    $.cookie("token", json.token, {path: "/"});
                    window.location.href = "<%=basePath%>main.html";
                } else {
                    refreshYzm(document.getElementById('registerYzmImg2'));
                    Tools.toast("登录失败：" + json.description);
                }
                hideLoading();
            }
        });
    }
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
       /* $('.type_top .left .left_div .log,.type_top .left .left_div .alert_log').hover(function () {
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
        })*/
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
                var v = $("#xyxhContents_6 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);  //join() 方法用于把数组中的所有元素转换一个字符串。
            }
            nums = numsArr.join(",");
            money = $("#xyxhMoney_6").val();
        } else if (type == 1) {
            caizhong = 'cqssc';
            navIndex = 0;
            var numsArr = [];
            for (var i = 0; i < 5; ++i) {
                var v = $("#xyxhContents_1 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhMoney_1").val();
        } else if (type == 20) {
            caizhong = 'ahk3';
            navIndex = 0;
            var numsArr = [];
            for (var i = 0; i < 3; ++i) {
                var v = $("#xyxhContent_20 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhMoney_20").val();
        } else if (type == 4) {
            caizhong = 'pl3';
            navIndex = 0;
            var numsArr = [];
            for (var i = 0; i < 3; ++i) {
                var v = $("#xyxhContent_4 span").eq(i).data("num");
                if (v == '') {
                    continue;
                }
                numsArr.push(v);
            }
            nums = numsArr.join(",");
            money = $("#xyxhMoney_4").val();
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
        $("#xyxhMoney_" + id).html('<i>' + mul(num, size) + '</i>');
    }
    function checkValue(id, size) {
        var num = $("#xyxhInput_" + id).val();
        if (isNaN(num) || num <= 1) {
            num = 1;
            $("#xyxhInput_" + id).val(num);
        }
        $("#xyxhMoney_" + id).html('<i>' + mul(num, size) + '</i>');
    }
    function xyxhMinute(id, size) {
        var num = $("#xyxhInput_" + id).val();
        if (isNaN(num) || num <= 1) {
            num = 1;
        } else {
            num--;
        }
        $("#xyxhInput_" + id).val(num);
        $("#xyxhMoney_" + id).html('<i>' + mul(num, size) + '</i>');
    }


    function xyxh(obj, type) {
        if (typeof type == 'undefined') {
            return;
        }

        var index_1 = null;
        var index_6 = null;
        var index_20 = null;
        var index_4 = null;
        if (type == 6) {
            $("#xyxhContents_6 .qiu").each(function () {
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

                bose1 = bose1 == 0 ? 'qiu redBg' : (bose1 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose2 = bose2 == 0 ? 'qiu redBg' : (bose2 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose3 = bose3 == 0 ? 'qiu redBg' : (bose3 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose4 = bose4 == 0 ? 'qiu redBg' : (bose4 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose5 = bose5 == 0 ? 'qiu redBg' : (bose5 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose6 = bose6 == 0 ? 'qiu redBg' : (bose6 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose7 = bose7 == 0 ? 'qiu redBg' : (bose7 == 1 ? 'qiu blueBg' : 'qiu greenBg');

                $("#xyxhContents_6 .qiu").eq(0).attr("class", bose1).html(num1);
                $("#xyxhContents_6 .qiu").eq(1).attr("class", bose2).html(num2);
                $("#xyxhContents_6 .qiu").eq(2).attr("class", bose3).html(num3);
                $("#xyxhContents_6 .qiu").eq(3).attr("class", bose4).html(num4);
                $("#xyxhContents_6 .qiu").eq(4).attr("class", bose5).html(num5);
                $("#xyxhContents_6 .qiu").eq(5).attr("class", bose6).html(num6);
                $("#xyxhContents_6 .qiu").eq(6).attr("class", bose7).html(num7);

                $("#xyxhContents_6 .qiu").eq(0).html(num1);
                $("#xyxhContents_6 .qiu").eq(1).html(num2);
                $("#xyxhContents_6 .qiu").eq(2).html(num3);
                $("#xyxhContents_6 .qiu").eq(3).html(num4);
                $("#xyxhContents_6 .qiu").eq(4).html(num5);
                $("#xyxhContents_6 .qiu").eq(5).html(num6);
                $("#xyxhContents_6 .qiu").eq(6).html(num7);

                $("#xyxhContents_6 .biaoqian span").eq(0).html(getSxName(num1));
                $("#xyxhContents_6 .biaoqian span").eq(1).html(getSxName(num2));
                $("#xyxhContents_6 .biaoqian span").eq(2).html(getSxName(num3));
                $("#xyxhContents_6 .biaoqian span").eq(3).html(getSxName(num4));
                $("#xyxhContents_6 .biaoqian span").eq(4).html(getSxName(num5));
                $("#xyxhContents_6 .biaoqian span").eq(5).html(getSxName(num6));
                $("#xyxhContents_6 .biaoqian span").eq(6).html(getSxName(num7));
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

                bose1 = bose1 == 0 ? 'qiu redBg' : (bose1 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose2 = bose2 == 0 ? 'qiu redBg' : (bose2 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose3 = bose3 == 0 ? 'qiu redBg' : (bose3 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose4 = bose4 == 0 ? 'qiu redBg' : (bose4 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose5 = bose5 == 0 ? 'qiu redBg' : (bose5 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose6 = bose6 == 0 ? 'qiu redBg' : (bose6 == 1 ? 'qiu blueBg' : 'qiu greenBg');
                bose7 = bose7 == 0 ? 'qiu redBg' : (bose7 == 1 ? 'qiu blueBg' : 'qiu greenBg');

                clearInterval(index_6);
                $("#xyxhContents_6 .qiu").eq(0).attr("class", bose1).data("num", "tm_b-" + num1).html(num1);
                $("#xyxhContents_6 .qiu").eq(1).attr("class", bose2).data("num", "tm_b-" + num2).html(num2);
                $("#xyxhContents_6 .qiu").eq(2).attr("class", bose3).data("num", "tm_b-" + num3).html(num3);
                $("#xyxhContents_6 .qiu").eq(3).attr("class", bose4).data("num", "tm_b-" + num4).html(num4);
                $("#xyxhContents_6 .qiu").eq(4).attr("class", bose5).data("num", "tm_b-" + num5).html(num5);
                $("#xyxhContents_6 .qiu").eq(5).attr("class", bose6).data("num", "tm_b-" + num6).html(num6);
                $("#xyxhContents_6 .qiu").eq(6).attr("class", bose7).data("num", "tm_b-" + num7).html(num7);

                $("#xyxhContents_6 .biaoqian span").eq(0).html(getSxName(num1));
                $("#xyxhContents_6 .biaoqian span").eq(1).html(getSxName(num2));
                $("#xyxhContents_6 .biaoqian span").eq(2).html(getSxName(num3));
                $("#xyxhContents_6 .biaoqian span").eq(3).html(getSxName(num4));
                $("#xyxhContents_6 .biaoqian span").eq(4).html(getSxName(num5));
                $("#xyxhContents_6 .biaoqian span").eq(5).html(getSxName(num6));
                $("#xyxhContents_6 .biaoqian span").eq(6).html(getSxName(num7));
                $("#xyxhContents_6 .biaoqian span").eq(0).html(getSxName(num1));
                $("#xyxhContents_6 .biaoqian span").eq(0).html(getSxName(num1));
                $("#xyxhContents_6 .biaoqian span").eq(0).html(getSxName(num1));
            }, 2000);
        } else if (type == 1) {

            $("#xyxhContents_1 span").each(function () {
                $(this).data("num", '');
            });

            index_1 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                $("#xyxhContents_1 span").eq(0).html(num1);
                $("#xyxhContents_1 span").eq(1).html(num2);
                $("#xyxhContents_1 span").eq(2).html(num3);
                $("#xyxhContents_1 span").eq(3).html(num4);
                $("#xyxhContents_1 span").eq(4).html(num5);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);
                var num4 = Math.floor(Math.random() * 10);
                var num5 = Math.floor(Math.random() * 10);

                clearInterval(index_1);
                $("#xyxhContents_1 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContents_1 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContents_1 span").eq(2).data("num", "bai-" + num3).html(num3);
                $("#xyxhContents_1 span").eq(3).data("num", "shi-" + num4).html(num4);
                $("#xyxhContents_1 span").eq(4).data("num", "ge-" + num5).html(num5);
            }, 2000);
        } else if (type == 20) {
            $("#xyxhContents_20 span").each(function () {
                $(this).data("num", '');
            });

            index_20 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);

                $("#xyxhContents_20 span").eq(0).html(num1);
                $("#xyxhContents_20 span").eq(1).html(num2);
                $("#xyxhContents_20 span").eq(2).html(num3);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);

                clearInterval(index_20);
                $("#xyxhContents_20 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContents_20 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContents_20 span").eq(2).data("num", "bai-" + num3).html(num3);

            }, 2000);
        } else if (type == 4) {
            $("#xyxhContents_4 span").each(function () {
                $(this).data("num", '');
            });

            index_4 = setInterval(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);

                $("#xyxhContents_4 span").eq(0).html(num1);
                $("#xyxhContents_4 span").eq(1).html(num2);
                $("#xyxhContents_4 span").eq(2).html(num3);
            }, 50);

            setTimeout(function () {
                var num1 = Math.floor(Math.random() * 10);
                var num2 = Math.floor(Math.random() * 10);
                var num3 = Math.floor(Math.random() * 10);

                clearInterval(index_4);
                $("#xyxhContents_4 span").eq(0).data("num", "wan-" + num1).html(num1);
                $("#xyxhContents_4 span").eq(1).data("num", "qian-" + num2).html(num2);
                $("#xyxhContents_4 span").eq(2).data("num", "bai-" + num3).html(num3);
            }, 2000);
        }
    }

</script>
<c:import url="../common/popupDiv.jsp"/>
<c:import url="../common/bodyEnd.jsp"/>