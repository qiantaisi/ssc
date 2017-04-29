<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp"/>
<div class="list_ject" id="ssc_list">
    <ul>
        <li id="ssc_15" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ffssc.png" alt="">
                </div>
                <div class="text">
                    <b>分分时时彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=15">历史开奖</a>
                    <a onclick="getZstPage('ffssc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('ffssc')">立即投注</a>
                </p>
            </div>
        </li>


        <li id="ssc_1">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico16.png" alt="">
                </div>
                <div class="text">
                    <b>重庆时时彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=1">历史开奖</a>
                    <a onclick="getZstPage('cqssc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('cqssc')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_9">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico18.png" alt="">
                </div>
                <div class="text">
                    <b>北京PK10</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1 bj28" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=9">历史开奖</a>
                    <a onclick="getZstPage('pk10')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('pk10')">立即投注</a>
                </p>
            </div>
        </li>
        <li id="ssc_23" class="ss_xclass">
            <div class="pro_name">
                <var class="xin_new ss_x_var"><img src="${resPath}img/xin_new.gif" alt="新上线" style="float:right;"></var>
                <div class="pict">
                    <img src="${resPath}img/jspk10.png" alt="">
                </div>
                <div class="text">
                    <b>极速PK10</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1 bj28" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=23">历史开奖</a>
                    <a onclick="getZstPage('jspk10')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('jspk10')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_18" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/jsk3.png" alt="">
                </div>
                <div class="text">
                    <b>江苏快3</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=18">历史开奖</a>
                    <a onclick="getZstPage('jsk3')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('jsk3')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_22">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/sflhc.png" alt="">
                </div>
                <div class="text">
                    <b>10分六合彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=22">历史开奖</a>
                    <a onclick="getZstPage('sflhc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('sflhc')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_6">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico17.png" alt="">
                </div>
                <div class="text">
                    <b>香港六合彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=6">历史开奖</a>
                    <a onclick="getZstPage('lhc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('lhc')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_14" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/xyft.png" alt="">
                </div>
                <div class="text">
                    <b>幸运飞艇</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1 bj28" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=14">历史开奖</a>
                    <a onclick="getZstPage('xyft')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('xyft')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_20" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ahk3.png" alt="">
                </div>
                <div class="text">
                    <b>安徽快3</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1 bj28" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=20">历史开奖</a>
                    <a onclick="getZstPage('ahk3')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('ahk3')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_19" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/hbk3.png" alt="">
                </div>
                <div class="text">
                    <b>湖北快3</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1 bj28" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=19">历史开奖</a>
                    <a onclick="getZstPage('hbk3')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('hbk3')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_3">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico28.png" alt="">
                </div>
                <div class="text">
                    <b>新疆时时彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=3">历史开奖</a>
                    <a onclick="getZstPage('xjssc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('xjssc')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_2">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico27.png" alt="">
                </div>
                <div class="text">
                    <b>天津时时彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=2">历史开奖</a>
                    <a onclick="getZstPage('tjssc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('tjssc')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_11">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico26.png" alt="">
                </div>
                <div class="text">
                    <b>广东快乐十分</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=11">历史开奖</a>
                    <a onclick="getZstPage('klsf')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('klsf')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_7">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico30.png" alt="">
                </div>
                <div class="text">
                    <b>幸运28</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=7">历史开奖</a>
                    <a onclick="getZstPage('xy28')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('xy28')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_10">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico29.png" alt="">
                </div>
                <div class="text">
                    <b>重庆幸运农场</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=10">历史开奖</a>
                    <a onclick="getZstPage('xync')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('xync')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_8">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico25.png" alt="">
                </div>
                <div class="text">
                    <b>北京快乐8</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1 bj28" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=8">历史开奖</a>
                    <a onclick="getZstPage('kl8')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('kl8')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_5">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico24.png" alt="">
                </div>
                <div class="text">
                    <b>福彩3D</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=5">历史开奖</a>
                    <a onclick="getZstPage('fc3d')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('fc3d')">立即投注</a>
                </p>
            </div>
        </li>


        <li id="ssc_4">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/ico20.png" alt="">
                </div>
                <div class="text">
                    <b>体彩排列3</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=4">历史开奖</a>
                    <a onclick="getZstPage('pl3')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('pl3')">立即投注</a>
                </p>
            </div>
        </li>


        <li id="ssc_21" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/jlk3.png" alt="">
                </div>
                <div class="text">
                    <b>吉林快3</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1 bj28" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=21">历史开奖</a>
                    <a onclick="getZstPage('jlk3')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('jlk3')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_16" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/efssc.png" alt="">
                </div>
                <div class="text">
                    <b>两分时时彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=16">历史开奖</a>
                    <a onclick="getZstPage('efssc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('efssc')">立即投注</a>
                </p>
            </div>
        </li>
        <li id="ssc_13" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/sfssc.png" alt="">
                </div>
                <div class="text">
                    <b>三分时时彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=13">历史开奖</a>
                    <a onclick="getZstPage('sfssc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('sfssc')">立即投注</a>
                </p>
            </div>
        </li>

        <li id="ssc_17" class="ss_xclass">
            <div class="pro_name">
                <div class="pict">
                    <img src="${resPath}img/wfssc.png" alt="">
                </div>
                <div class="text">
                    <b>五分时时彩</b>
                    <p>第<i data-name="number"></i>期销售中</p>
                </div>
            </div>
            <div class="Time at">
                <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                <div class="timer_wrap" data-name="time">
                    <ol class="s">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="f">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                    <ol class="m">
                        <span class="sp1">0</span>
                        <span class="sp2">0</span>
                    </ol>
                </div>
                <p class="p1" data-name="lastOpenData">上期开奖</p>
            </div>
            <div class="Result">
                <p>
                    <a target="_blank" href="<%=basePath%>?u=<%=basePath%>kjjg.html?playGroupId=17">历史开奖</a>
                    <a onclick="getZstPage('wfssc')" href="javascript:void(0)">开奖走势</a>
                    <a href="javascript:void(0)" class="acti" onclick="getSscPage('wfssc')">立即投注</a>
                </p>
            </div>
        </li>
    </ul>
</div>

<c:import url="../../common/commonJs.jsp"/>
<script>
    //走势图页面
    function getZstPage(url) {
        if (typeof url == 'undefined') {
            url = 'index';
        }
       window.open("<%=basePath%>ssc/zst/" + url + ".html?type=1");
    }

    function getSscPage(url) {
        parent.getSscPage(url);
    }

    var getOpenCodeHistoryFlagArr = [];
    var getOpenCodeHistoryTimeArr = [];
    $(function() {
        // 获取所有彩种开奖时间
        function getAllOpenTime() {
            ajaxRequest({
                url: CONFIG.BASEURL + "ssc/getAllSscOpenTime2.json",
                success: function(json) {
                    if (json.result != 1) {
                        return;
                    }

                    // 渲染数据
                    $.each(json.sscTimeList, function (index, value) {
                        var obj = $("#ssc_" + value.playGroupId);

                        if ($(obj).length == 0) {
                            return;
                        }

                        $(obj).data("play_group_id", value.playGroupId);
                        $(obj).data("left_time", value.leftTime);
                        $(obj).data("number", value.number);
                        $(obj).data("last_number", value.lastOpenNumber);
                        $(obj).data("last_open_data", value.lastOpenData);
                        $(obj).data("enable",value.enable);

                    });
                },
                error: function(a, b, c) {
                    // 失败重试
                    setTimeout(function() {
                        getAllOpenTime();
                    }, 5000);
                }
            });
        }
        getAllOpenTime();

        // 时间倒计时
        function renderOpenTimeHtml() {
            $("#ssc_list ul li").each(function () {
                var number = $(this).data("number");
                var lastOpenData = $(this).data("last_open_data");
                var leftTime = Tools.parseInt($(this).data("left_time"));
                var playGroupId = $(this).data("play_group_id");
                var lastOpenNumber = $(this).data("last_number");
                var enable = $(this).data("enable");

                var time = 0;
                var str;

                time = leftTime;
                if (playGroupId == 3 || playGroupId == 14) {
                    number = number.substr(8);
                }
//                if(typeof number != 'undefined' && !number && number != null){
//                    str = number.replace(dateFormat(new Date(), "yyyymmdd"), "") + "期已开盘，欢迎投注。距下期还有:";
//                }
                if (!enable) {
                    $("#ssc_" + playGroupId + " .Time").html('<p class="cl-2001">已停售</p>');
                    $("#ssc_" + playGroupId + " .pro_name .text p").html('');
                    return;
                }

                $(this).data("left_time", time - 1);

                if (isNaN(time) || time < 0) {
                    return;
                }

                var hour = Math.floor(time / 60 / 60);
                time -= hour * 60 * 60;
                var minute = Math.floor(time / 60);
                time -= minute * 60;
                var second = time;

                var timeHtml = "";
                timeHtml += '<ol class="s">';
                timeHtml += '<span class="sp1">' + (Math.floor(hour / 10)) + '</span>';
                timeHtml += '<span class="sp2">' + (hour % 10) + '</span>';
                timeHtml += '</ol>';
                timeHtml += '<ol class="f">';
                timeHtml += '<span class="sp1">' + (Math.floor(minute / 10)) + '</span>';
                timeHtml += '<span class="sp2">' + (minute % 10) + '</span>';
                timeHtml += '</ol>';
                timeHtml += '<ol class="m">';
                timeHtml += '<span class="sp1">' + (Math.floor(second / 10)) + '</span>';
                timeHtml += '<span class="sp2">' + (second % 10) + '</span>';
                timeHtml += '</ol>';
                $(this).find('[data-name="time"]').html(timeHtml);
                $(this).find('[data-name="number"]').html(number);
                $(this).find('[data-name="tip"]').html(str);

                // 时间结束，获取新开奖时间
                if (leftTime == 0) {
                    getSscOpenTime2(playGroupId);
                    return;
                }

                var lastOpenDataHtml = "";
                if (!lastOpenData || lastOpenData == null) {    // 开奖中
                    $(this).find('[data-name="lastOpenData"]').html(lastOpenNumber + "期正在开奖中...");

                    if (!getOpenCodeHistoryFlagArr[playGroupId] && (!getOpenCodeHistoryTimeArr[playGroupId] || (new Date()).getTime() - getOpenCodeHistoryTimeArr[playGroupId] > 10 * 1000)) {
                        getOpenCodeHistoryTimeArr[playGroupId] = (new Date()).getTime();
                        getOpenCodeHistoryFlagArr[playGroupId] = true;
                        getOpenCodeHistory(playGroupId, function () {
                            getOpenCodeHistoryFlagArr[playGroupId] = false;
                        });
                    }
                    return;
                }

                if(typeof lastOpenData != 'undefined' && lastOpenData && lastOpenData != null){
                    var tmpArr = lastOpenData.split(",");

                    if (playGroupId == 6 || playGroupId == 22) {
                        for (var i = 0; i < tmpArr.length && i < 20; ++i) {
                            var c = getBose(tmpArr[i]);
                            if (c == 0) {
                                c = 'ball-red';
                            } else if (c == 1) {
                                c = 'ball-blue';
                            } else {
                                c = 'ball-green';
                            }
                            if (i == tmpArr.length - 1) {
                                lastOpenDataHtml += '<i style="color:black; background: white;">+</i>';
                                lastOpenDataHtml += '<i class="round ' + c + '">' + tmpArr[i] + '</i>';
                            } else {
                                lastOpenDataHtml += '<i class="round ' + c + '">' + tmpArr[i] + '</i>';
                            }
                        }
                        $(this).find('[data-name="lastOpenData"]').html(lastOpenDataHtml);
                    } else if (playGroupId == 9 || playGroupId == 14 || playGroupId == 23) {
                        lastOpenDataHtml = "";
                        for (var i = 0; i < tmpArr.length && i < 20; ++i) {
                            lastOpenDataHtml += '<i class="fang bg-' + Tools.parseInt(tmpArr[i]) + '">' + tmpArr[i] + '</i>';
                        }
                        $(this).find('[data-name="lastOpenData"]').html(lastOpenDataHtml);
                    } else {
                        if (tmpArr.length > 7) {
                            lastOpenDataHtml = "";
                        }
                        for (var i = 0; i < tmpArr.length && i < 20; ++i) {
                            lastOpenDataHtml += '<i>' + tmpArr[i] + '</i>';
                        }
                        if (tmpArr.length <= 5) {
                            $(this).find('[data-name="lastOpenData"]').html("上期开奖" + lastOpenDataHtml);
                        } else {
                            $(this).find('[data-name="lastOpenData"]').html(lastOpenDataHtml);
                        }
                    }
                }

            });
        }

        // 获取单彩种时间
        function getSscOpenTime2(playGroupId) {
            ajaxRequest({
                url: CONFIG.BASEURL + "ssc/getSscOpenTime2.json",
                data: {
                    playGroupId: playGroupId
                },
                success: function(json) {
                    if (json.result != 1) {
                        return;
                    }

                    var obj = $("#ssc_" + playGroupId);

                    if ($(obj).length == 0) {
                        return;
                    }

                    $(obj).data("play_group_id", playGroupId);
                    $(obj).data("left_time", json.leftTime);
                    $(obj).data("number", json.number);

                    // 获取开奖历史
                    getOpenCodeHistory(playGroupId);
                },
                error: function(a, b, c) {
                    // 失败重试
                    setTimeout(function() {
                        getSscOpenTime2();
                    }, 5000);
                }
            });
        }
        // 获取开奖历史
        function getOpenCodeHistory(playGroupId, callback) {
            // 获取开奖历史
            ajaxRequest({
                url: CONFIG.BASEURL + "ssc/getPlanOpenDataHistory.json",
                data: {
                    playGroupId: playGroupId,
                    size: 1
                },
                success: function (json) {
                    if (json.result != 1) {
                        return;
                    }

                    if (json.sscHistoryList.length > 0) {
                        var value = json.sscHistoryList[0];
                        var obj = $("#ssc_" + playGroupId);

                        if ($(obj).length == 0) {
                            return;
                        }

                        $(obj).data("last_number", value.number);
                        $(obj).data("last_open_data", value.openCode);
                    }


                    if (typeof callback == 'function') {
                        callback();
                    }
                },
                error: function() {
                    // 失败重试
                    setTimeout(function() {
                        getOpenCodeHistory(playGroupId, callback);
                    }, 5000);
                }
            });
        }
        setInterval(function () {
            renderOpenTimeHtml();
        }, 1000);

    });

    $(function() {
        parent.hideLoading();
    });


    <%--&lt;%&ndash;function getCurrentOpenTime(palyCroupIdprarm) {&ndash;%&gt;--%>
    <%--&lt;%&ndash;$.post("<%=basePath%>ssc/getCurrentTime2.json", {}, function (json) {&ndash;%&gt;--%>
    <%--&lt;%&ndash;if (json.result != 1) {&ndash;%&gt;--%>
    <%--&lt;%&ndash;return;&ndash;%&gt;--%>
    <%--&lt;%&ndash;}&ndash;%&gt;--%>

    <%--&lt;%&ndash;var data = json.sscTimeList;&ndash;%&gt;--%>
    <%--&lt;%&ndash;$.each(data, function (index, value) {&ndash;%&gt;--%>
    <%--&lt;%&ndash;var obj = $("#ssc_" + value.playGroupId);&ndash;%&gt;--%>
    <%--&lt;%&ndash;if ($(obj).length == 0) {&ndash;%&gt;--%>
    <%--&lt;%&ndash;return;&ndash;%&gt;--%>
    <%--&lt;%&ndash;}&ndash;%&gt;--%>
    <%--&lt;%&ndash;$(obj).data("number", value.number);&ndash;%&gt;--%>
    <%--&lt;%&ndash;$(obj).data("last_number", value.lastOpenNumber);&ndash;%&gt;--%>
    <%--&lt;%&ndash;$(obj).data("last_open_data", value.lastOpenData);&ndash;%&gt;--%>
    <%--&lt;%&ndash;$(obj).data("last_open_time", value.lastOpenTime);&ndash;%&gt;--%>
    <%--&lt;%&ndash;$(obj).data("left_time", value.leftTime);&ndash;%&gt;--%>
    <%--&lt;%&ndash;$(obj).data("play_group_id", value.playGroupId);&ndash;%&gt;--%>

    <%--&lt;%&ndash;});&ndash;%&gt;--%>
    <%--&lt;%&ndash;}, "json");&ndash;%&gt;--%>
    <%--&lt;%&ndash;}&ndash;%&gt;--%>

    <%--function renderOpenTimeHtml() {--%>
        <%--$("#ssc_list ul li").each(function () {--%>
            <%--var lastNumber = $(this).data("last_number");--%>
            <%--var number = $(this).data("number");--%>
            <%--var lastOpenData = $(this).data("last_open_data");--%>
            <%--var lastOpenTime = $(this).data("last_open_time");--%>
            <%--var leftTime = $(this).data("left_time");--%>
            <%--var playGroupId = $(this).data("play_group_id");--%>

            <%--var time = 0;--%>
            <%--var str;--%>

            <%--time = Tools.parseInt(leftTime);--%>
            <%--if (playGroupId == 3 || playGroupId == 14) {--%>
                <%--number = number.substr(8);--%>
            <%--}--%>
            <%--if(typeof number != 'undefined' && !number && number != null){--%>
                <%--str = number.replace(dateFormat(new Date(), "yyyymmdd"), "") + "期已开盘，欢迎投注。距下期还有:";--%>
            <%--}--%>

            <%--$(this).data("left_time", time - 1);--%>

            <%--if (isNaN(time) || time <= 0) {--%>
                <%--return;--%>
            <%--}--%>

            <%--var hour = Math.floor(time / 60 / 60);--%>
            <%--time -= hour * 60 * 60;--%>
            <%--var minute = Math.floor(time / 60);--%>
            <%--time -= minute * 60;--%>
            <%--var second = time;--%>

            <%--var timeHtml = "";--%>
            <%--timeHtml += '<ol class="s">';--%>
            <%--timeHtml += '<span class="sp1">' + (Math.floor(hour / 10)) + '</span>';--%>
            <%--timeHtml += '<span class="sp2">' + (hour % 10) + '</span>';--%>
            <%--timeHtml += '</ol>';--%>
            <%--timeHtml += '<ol class="f">';--%>
            <%--timeHtml += '<span class="sp1">' + (Math.floor(minute / 10)) + '</span>';--%>
            <%--timeHtml += '<span class="sp2">' + (minute % 10) + '</span>';--%>
            <%--timeHtml += '</ol>';--%>
            <%--timeHtml += '<ol class="m">';--%>
            <%--timeHtml += '<span class="sp1">' + (Math.floor(second / 10)) + '</span>';--%>
            <%--timeHtml += '<span class="sp2">' + (second % 10) + '</span>';--%>
            <%--timeHtml += '</ol>';--%>
            <%--$(this).find('[data-name="time"]').html(timeHtml);--%>
            <%--$(this).find('[data-name="number"]').html(number);--%>
            <%--$(this).find('[data-name="tip"]').html(str);--%>

            <%--var lastOpenDataHtml = "";--%>
            <%--if(typeof lastOpenData != 'undefined' && !lastOpenData && lastOpenData != null){--%>
                <%--var tmpArr = lastOpenData.split(",");--%>

                <%--if (playGroupId == 6) {--%>
                    <%--for (var i = 0; i < tmpArr.length && i < 20; ++i) {--%>
                        <%--var c = getBose(tmpArr[i]);--%>
                        <%--if (c == 0) {--%>
                            <%--c = 'ball-red';--%>
                        <%--} else if (c == 1) {--%>
                            <%--c = 'ball-blue';--%>
                        <%--} else {--%>
                            <%--c = 'ball-green';--%>
                        <%--}--%>
                        <%--if (i == tmpArr.length - 1) {--%>
                            <%--lastOpenDataHtml += '<i style="color:black; background: white;">+</i>';--%>
                            <%--lastOpenDataHtml += '<i class="round ' + c + '">' + tmpArr[i] + '</i>';--%>
                        <%--} else {--%>
                            <%--lastOpenDataHtml += '<i class="round ' + c + '">' + tmpArr[i] + '</i>';--%>
                        <%--}--%>

                    <%--}--%>
                    <%--$(this).find('[data-name="lastOpenData"]').html(lastOpenDataHtml);--%>
                <%--} else if (playGroupId == 9 || playGroupId == 14) {--%>
                    <%--lastOpenDataHtml = "";--%>
                    <%--for (var i = 0; i < tmpArr.length && i < 20; ++i) {--%>
                        <%--lastOpenDataHtml += '<i class="fang bg-' + Tools.parseInt(tmpArr[i]) + '">' + tmpArr[i] + '</i>';--%>
                    <%--}--%>
                    <%--$(this).find('[data-name="lastOpenData"]').html(lastOpenDataHtml);--%>
                <%--} else {--%>
                    <%--if (tmpArr.length > 7) {--%>
                        <%--lastOpenDataHtml = "";--%>
                    <%--}--%>
                    <%--for (var i = 0; i < tmpArr.length && i < 20; ++i) {--%>
                        <%--lastOpenDataHtml += '<i>' + tmpArr[i] + '</i>';--%>
                    <%--}--%>
                    <%--if (tmpArr.length <= 5) {--%>
                        <%--$(this).find('[data-name="lastOpenData"]').html("上期开奖" + lastOpenDataHtml);--%>
                    <%--} else {--%>
                        <%--$(this).find('[data-name="lastOpenData"]').html(lastOpenDataHtml);--%>
                    <%--}--%>
                <%--}--%>
            <%--}--%>

        <%--});--%>
    <%--}--%>
    <%--$(function () {--%>
        <%--getAllOpenTime();--%>
        <%--setInterval(function () {--%>
            <%--getAllOpenTime();--%>
        <%--}, 10000);--%>

        <%--setInterval(function () {--%>
            <%--renderOpenTimeHtml();--%>
        <%--}, 1000);--%>

        <%--parent.layer.closeAll();--%>
    <%--});--%>
</script>
<c:import url="../../common/bodyEnd.jsp"/>