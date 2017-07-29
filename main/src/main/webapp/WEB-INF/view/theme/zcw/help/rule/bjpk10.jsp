<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp"/>
<c:import url="../../index/top.jsp"/>

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp"/>
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="1"/>
        <c:param name="playGroupId" value="9"/>
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>

        <div class="help_list">
            <div class="lis">
                <h5>北京PK10</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>官方玩法</li>
                    <li>游戏说明</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>单码/双面规则说明</strong></h5>
                <p><strong>◎定位</strong></br>
                    指冠军、亚军、季军、第四、第五、第六、第七、第八、第九、第十名出现的顺序与号码为派彩依据。</br>
                    如现场第一个开奖号码为3号，投注冠军为3则视为中奖，其它号码视为不中奖。</p>
                <p><strong>◎大小</strong></br>
                    开出的号码大于或等于6为大，小于或等于5为小 。</p>
                <p><strong>◎单双</strong></br>
                    号码为双数叫双，如4、6；号码为单数叫单，如3、5。</p>
                <p><strong>◎龙虎</strong></br>
                    冠军龙虎 * 龙：冠军号码大于第十名号码视为“龙”中奖，如冠军开出07，第十名开出03。<br>
                    * 虎：冠军号码小于第十名号码视为“虎”中奖，如冠军开出03，第十名开出07。<br>
                    亚军龙虎 * 龙：亚军号码大于第九名号码视为“龙”中奖，如亚军开出07，第九名开出03。<br>
                    * 虎：亚军号码小于第九名号码视为“虎”中奖，如亚军开出03，第九名开出07。<br>
                    季军龙虎 * 龙：季军号码大于第八名号码视为“龙”中奖，如季军开出07，第八名开出03。<br>
                    * 虎：季军号码小于第八名号码视为“虎”中奖，如季军开出03，第八名开出07。<br>
                    第四名龙虎 * 龙：第四名号码大于第七名号码视为“龙”中奖，如第四名开出07，第七名开出03。<br>
                    * 虎：第四名号码小于第七名号码视为“虎”中奖，如第四名开出03，第七名开出07。<br>
                    第五名龙虎 * 龙：第五名号码大于第六名号码视为“龙”中奖，如第五名开出07，第六名开出03。<br>
                    * 虎：第五名号码小于第六名号码视为“虎”中奖，如第五名开出03，第六名开出07。</p>
                <h5><strong>冠亚军和规则说明</strong></h5>
                <p><strong>◎冠亚军和</strong></br>
                    冠军号码与亚军号码的和值区间为3~19，当投注组合符合冠亚军和值，即视为中奖。</p>
                <p><strong>◎冠亚军和大小</strong></br>
                    当开奖结果冠军号码与亚军号码的和值大于11为大，投注“和大”则视为中奖；小于11为小，投注“和小”则视为中奖；等于11视为和(不计算输赢)。</p>
                <p><strong>◎冠亚军和单双</strong></br>
                    当开奖结果冠军号码与亚军号码的和值为单数如9、13，投注“和单”则视为中奖；为双数如12、16，投注“和双”则视为中奖；若总和为11，则视为和(不计算输赢)。</p>
            </div>
            <div class="help_col gfwf-help-col">
                <div class="gfwf-1">
                    <!-- begin -->
                    <div class="gfwf-2" id="top">
                        <h1><a style=""></a></h1>
                        <span class="gamek-2">北京PK10玩法规则</span>
                    </div>
                    <br>
                    <div class="gfwf-3">
                        <h2><a href="#1">一、游戏规则</a></h2>
                        <h2><a href="#2">二、中奖规则</a></h2>
                        <h2><a href="#3">三、玩法介绍</a></h2><br>

                        <b><p id="1">一、游戏规则</p></b>
                        <p>（一）总则</p>
                        1. 根据财政部颁发的《彩票发行与销售暂行管理规定》（财综 [2002]13号）及中国福利彩票发行中心颁发的《中国福利彩票发行规则》等管理规定，结合计算机网络技术，制定本细则。
                        <br>2. 中国福利彩票"北京PK拾" 游戏，简称"PK拾"，由中国福利彩票发行管理中心（以下简称“中福彩中心”）统一发行，由北京市福利彩票发行中心承销。
                        <br>3. "北京PK拾"采用计算机网络系统发行销售，定期开奖。
                        <br>4. "北京PK拾"实行自愿购买，凡购买者均被视为同意遵守本细则。

                        <p>（二）开奖与购买方式</p>
                        1. "北京PK拾"的发行权属中国福利彩票发行管理中心，主要包括：中国福利彩票名称及标识的专有权，发行额度的分配权和调控权、各项资金比例的确定和调整权，投注单和彩票专用纸的监制权等。
                        <br>2. 北京市福利彩票发行中心通过电脑彩票销售系统发行"PK拾" 游戏，接受中彩中心的监控。
                        <br>3. 北京市福利彩票发行中心在承销区域内设置投注站，并核发销售许可证。投注站由北京市福利彩票发行中心管理，展示销售许可证。
                        <br>4. 本站北京PK拾游戏每天进行179期，开奖时间为09:07至23:57，每隔5分钟开奖一次，销售期号以开奖日界定，按日历年度编排。
                        <br>5.
                        购买者可在对其选定的投注号码选择返点投注，返点越高则投注赔率越低。购买者也可进行追号投注，追号是指将一注或一组号码进行两期或两期以上的投注。追号可分为连续追号和间隔追号，连续追号指追号的期数是连续的，间隔追号指追号的期数不连续。
                        <br>6. 购买者可选择机选号码投注、自选号码投注。机选号码投注是指由投注机随机产生投注号码进行投注，自选号码投注是指将购买者选定的号码输入投注机进行投注。
                        <br>7. 如果用户投注成功后，若因销售终端故障、通讯线路故障和投注站信用额度受限等原因造成当期无法开奖的，应退还购买者投注金额。

                        <p>（三）兑奖</p>
                        1. 根据投注者所选玩法及投注号码与中奖号码按位置顺序和对应的数字相符的个数多少确定相应的中奖奖级。
                        <br>2. 无论大小奖均返还至用户在本站的账户中，一旦用户中奖，系统将自动返还中奖金额。可继续投注或提款，永无弃奖。

                        <p>（四）玩法说明</p>
                        "北京PK拾"采用按位置顺序选择投注号码、固定设奖的玩法。投注者首先根据不同玩法确定选择最少1个、最多10个位置进行投注，然后按照从左到右、从1号到10号投注位置的顺序，从1号位置开始，在每个位置上从编号为1至10的号码中任意选择1个号码，且不能与其它位置上已经选择的号码相同，按照从1
                        到10号位置的顺序排序组成一组号码，每一组选定的按位置排序的号码称为一注投注号码。
                        <div align="center">
                            <img src="${resPath}images/wfsm/wfsm-002.png" class="wfsm-img">
                        </div>
                        </br>
                        <b><p id="2">二、中奖规则</p></b>
                        <p>（一）设奖</p>
                        1. "北京PK拾" 采用专用的摇奖计算机系统进行摇奖，中奖号码从数字1 到10 总共10 个数字中随机产生。每次摇奖时按照从左至右、从1 号位置到10
                        号位置的顺序进行，第一个摇出的数字对应1 号位置，第二个摇出的数字对应2 号位置，依次类推，直到摇出对应10 号位置的第十个数字为止，这10 个位置和对应的数字组成当期中奖号码。
                        <br>2. "北京PK拾"按不同投注方式设奖，均为固定奖。奖金规定如下：
                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="table">
                            <tbody>
                            <tr align="center">
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm" colspan="2">玩法</td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">开奖号码示例</td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">投注号码示例</td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">中奖规则</td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">单注最高赔率</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff">前一</td>
                                <td height="25" bgcolor="#ffffff">直选复式</td>
                                <td height="25" bgcolor="#ffffff">05 06...</td>
                                <td height="25" bgcolor="#ffffff">05</td>
                                <td height="25" bgcolor="#ffffff">选号与开奖号按位猜中1位即中奖</td>
                                <td height="25" bgcolor="#ffffff">9.8元</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff" rowspan="2">前二</td>
                                <td height="25" bgcolor="#ffffff">直选复式</td>
                                <td height="25" bgcolor="#ffffff" rowspan="2">05 06 07...</td>
                                <td height="25" bgcolor="#ffffff" rowspan="2">05 06</td>
                                <td height="25" bgcolor="#ffffff" rowspan="2">选号与开奖号按位猜中2位即中奖</td>
                                <td height="25" bgcolor="#ffffff" rowspan="2">88.2元</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff">直选单式</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff" rowspan="2">前三</td>
                                <td height="25" bgcolor="#ffffff">直选复式</td>
                                <td height="25" bgcolor="#ffffff" rowspan="2">05 06 07 08...</td>
                                <td height="25" bgcolor="#ffffff" rowspan="2">05 06 07</td>
                                <td height="25" bgcolor="#ffffff" rowspan="2">选号与开奖号按位猜中3位即中奖</td>
                                <td height="25" bgcolor="#ffffff" rowspan="2">705.6元</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff">直选单式</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff" colspan="2">定位胆</td>
                                <td height="25" bgcolor="#ffffff">05 06...</td>
                                <td height="25" bgcolor="#ffffff">冠军：05</td>
                                <td height="25" bgcolor="#ffffff">选号与开奖号按位猜中1位或1位以上即中奖</td>
                                <td height="25" bgcolor="#ffffff">9.8元</td>
                            </tr>
                            </tbody>
                        </table>
                        <br>
                        <b><p id="3">三、玩法介绍</p></b>
                        <p>（一）投注方式</p>
                        1、前一：从第一名中至少选择1个号码组成一注，选号和开奖号码猜对一位即中奖，单注奖金最高9.8元。
                        <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
                            <tbody>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff" rowspan="2">例：</td>
                                <td height="25" bgcolor="#ffffff">开奖：01 02 03 04 05 06 07 08 09 10</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff">选号：冠军01</td>
                            </tr>
                            </tbody>
                        </table>
                        <br>2、前二直选：从第一名、第二名中各至少选择1个号码组成一注，选号和开奖号码猜对2位即中奖，单注奖金最高88.2元。
                        <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
                            <tbody>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff" rowspan="2">例：</td>
                                <td height="25" bgcolor="#ffffff">开奖：01 02 03 04 05 06 07 08 09 10</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff">选号：冠军01，亚军02</td>
                            </tr>
                            </tbody>
                        </table>
                        <br>3、前三直选：从第一名、第二名、第三名中至少选择1个号码组成一注，选号和开奖号码猜对3位即中奖，单注奖金最高705.6元。
                        <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
                            <tbody>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff" rowspan="2">例：</td>
                                <td height="25" bgcolor="#ffffff">开奖：01 02 03 04 05 06 07 08 09 10</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff">选号：冠军01，亚军02，季军03</td>
                            </tr>
                            </tbody>
                        </table>
                        <br>4、定位胆：从第一名到第十名任意位置上选择1个或1个以上号码，所选号码与相同位置上的开奖号码一致，即位中奖，单注奖金最高9.8元。
                        <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
                            <tbody>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff" rowspan="2">例：</td>
                                <td height="25" bgcolor="#ffffff">开奖：01 02 03 04 05 06 07 08 09 10</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#ffffff">选号：冠军01</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- end -->
                </div>
                <div class="wfsm-top">
            <span class="wfsm-back">
         <a onclick="javascript:document.getElementById('top').scrollIntoView()" href="javascript:;">回到顶部</a></br>
            </span>
                    <div class="wfsm-kong"></div>
                </div>
            </div>
            <div class="help_col">
                <h5><strong>开奖说明</strong></h5>
                <p>“北京PK拾”是由中国福利彩票发行，北京福利彩票发行中心承销。</br>
                    每日共开奖180期、每5分钟开奖1次。</br>
                    开奖时间：早上9点至晚上12点。如开奖时间异动以中国福利彩票管理中心公告为准。</p>
            </div>
        </div>
    </div>
</div>
<c:import url="../../index/bottom.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>