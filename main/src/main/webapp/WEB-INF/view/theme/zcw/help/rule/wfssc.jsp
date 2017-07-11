<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp" />
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
        <c:param name="navGroup" value="1" />
        <c:param name="playGroupId" value="17" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>
        <div class="help_list">
            <div class="lis">
                <h5>五分时时彩</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>官方玩法</li>
                    <li>游戏说明</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>【双面玩法】</strong></h5>
                <p><strong>◎双面>>大小玩法说明</strong></br>
                    开奖结果万位、千位、百位、十位或个位数字为5、6、7、8、9时为“大”，若为0、1、2、3、4时为“小”，当投注位数大小与开奖结果的位数大小相符时，即为中奖。</br>
                    ※举例：投注者购买百位小，当期开奖结果如为20352（3为小），则视为中奖。</p>
                <p><strong>◎双面>>单双玩法说明</strong></br>
                    开奖结果万位、千位、百位、十位或个位数字为1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”，当投注位数单双与开奖结果的位数单双相符时，即为中奖。 </br>
                    ※举例：投注者购买百位单，当期开奖结果如为20130（1为单），则视为中奖。</p>
                <p><strong>◎双面>>质合玩法说明</strong></br>
                    开奖结果万位、千位、百位、十位或个位数字为1、2、3、5、7时为“质数”，若为0、4、6、8、9时为“合数”，当投注位数质合与开奖结果的位数质合相符时，即为中奖。 </br>
                    ※举例：投注者购买个位质，当期开奖结果如为20957（7为质），则视为中奖。</p>
                <p><strong>◎双面>>总和大小 玩法说明</strong></br>
                    开奖结果所有号码总和的为23、24、25、26、27、28、29、30、31、32、33、34、35、36、37、38、39、40、41、42、43、44、45时为“大”， 若为0、1、2、3、4、5、6、7、8、9、10、11、12、13、14、15、16、17、18、19、20、21、22时为“小”，当投注和数大小与开奖结果的和数大小相符时，即为中奖。 </br>
                    ※举例：投注者购买"总大"，当期开奖结果如为20976（万2+千0+百9+十7+个6=24为大），则视为中奖。</p>
                <p><strong>◎双面>>龙虎和 玩法说明</strong></br>
                    龙虎和是以开奖结果的万位和个位作为基准，取万为龙，个为虎的数字进行大小比对的一种玩法；</br>
                    当投注龙/虎时，开奖结果为和局，那么押注龙/虎视为不中奖；</br>
                    当投注"和"时，开奖结果为龙/虎，投注“和”视为不中奖；</br>
                    举例：开奖结果为：2,1,3,5,1 万为龙、个为虎：结果 龙(2）大于虎（1），即为开龙；如结果一样大，即为开和局！</p>
                <p><strong>◎双面>>总和单双 玩法说明</strong></br>
                    开奖结果总和的个位数为1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”，当投注总单双与开奖结果的总单双相符时，即为中奖。</br>
                    ※举例：投注者购买总单，当期开奖结果如为20290（百2+十9+个0=11为单），则视为中奖。</p>

                <hr>
                <h5><strong>【数字盘玩法】</strong></h5>
                <p>于万千百十个任选一位，自0~9任选1个号进行投注，当开奖结果与所选的定位与号码相同且顺序一致时，即为中奖。</p>

                <hr>
                <h5><strong>【一字定位玩法】</strong></h5>
                <p><strong>◎万定位</strong>：取万位为基准，自0~9、大小、单双、质合任选1个号进行投注，当开奖结果与所选号码相同时，即为中奖。</br>
                    <strong>◎千定位</strong>：取千位为基准，自0~9、大小、单双、质合任选1个号进行投注，当开奖结果与所选号码相同时，即为中奖。</br>
                    <strong>◎百定位</strong>：取百位为基准，自0~9、大小、单双、质合任选1个号进行投注，当开奖结果与所选号码相同时，即为中奖。</br>
                    <strong>◎十定位</strong>：取十位为基准，自0~9、大小、单双、质合任选1个号进行投注，当开奖结果与所选号码相同时，即为中奖。</br>
                    <strong>◎个定位</strong>：取个位为基准，自0~9、大小、单双、质合任选1个号进行投注，当开奖结果与所选号码相同时，即为中奖。</br>
                    关于大小：5、6、7、8、9为“大”，若为0、1、2、3、4时为“小”。</br>
                    关于单双：1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”。</br>
                    关于质合：1、2、3、5、7时为“质数”，若为0、4、6、8、9时为“合数”。</p>

                <hr>
                <h5><strong>【二字定位玩法】</strong></h5>
                <p>于万千百十个任选二位，自0~9任选2个号进行投注，当开奖结果与所选号码相同且顺序一致时，即为中奖。</p>

                <hr>
                <h5><strong>【三字定位玩法】</strong></h5>
                <p>于万千百十个任选三位，自0~9任选3个号进行投注，当开奖结果与所选号码相同且顺序一致时，即为中奖。</p>

                <hr>
                <h5><strong>【一字组合玩法】</strong></h5>
                <p><strong>◎全五一字组合</strong>：0~9任选1个号进行投注，当开奖结果[万位、千位、百位、十位、个位]任一数与所选的号码相同时，即为中奖。同个号码出现多次时只计一次中奖</br>
                    ※举例：下注一字【5号】＄100，一字賠率2.404</br>
                    五颗球开出9，5，8，3，5 派彩为＄240.4</br>
                    <strong>◎前三</strong>：0~9任选1个号进行投注，当开奖结果[万位、千位、百位]任一数与所选的号码相同时，即为中奖。</br>
                    <strong>◎中三</strong>：0~9任选1个号进行投注，当开奖结果[千位、百位、十位]任一数与所选的号码相同时，即为中奖。</br>
                    <strong>◎后三</strong>：0~9任选1个号进行投注，当开奖结果[百位、十位、个位]任一数与所选的号码相同时，即为中奖。</p>

                <hr>
                <h5><strong>【二字组合玩法】</strong></h5>
                <p>于前三、中三、后三0~9任选2个号进行投注，当开奖结果任二数与所选的号码相同时，即为中奖。</br>
                    ※举例：投注者购买后三二字组合，选择2个相同号码如为11，当期开奖结果如为xx11x、xx1x1、xxx11、皆视为中奖。（x=0~9任一数）</br>
                    ※举例：投注者购买后三二字组合，选择2个不同号码如为12，当期开奖结果如为xx12x、xx1x2、xx21x、xx2x1、xxx12、xxx21皆视为中奖。（x=0~9任一数）</p>

                <hr>
                <h5><strong>【二字和数玩法】</strong></h5>
                <p>开奖结果万千位、万百位、万十位、万个位、千百位、千十位、千个位、百十位、百个位、十个位数字总和的个位数为1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”，当投注和数单双与开奖结果的和数单双相符时，即为中奖。</br>
                    ※举例：投注者购买百十和数单，当期开奖结果如为20290（百2+十9+个0=11为单），则视为中奖。</p>

                <hr>
                <h5><strong>【组选三玩法】</strong></h5>
                <p><strong>◎前三</strong>：会员可以挑选5~10个号码，当开奖结果[万位、千位、百位]中有且只有两个号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率。如果是选择(1、2、3、4、5)，则只要开奖结果[万位、千位、百位]中，有出现1、2、3、4、5中的任何两个号码，且其中有一个号码重复则中奖。</br>
                    ※例如：112、344，若是开出豹子则不算中奖。</br>
                    ※备注："豹子"为三字同号，例如：111、222</br>
                    <strong>◎中三</strong>：会员可以挑选5~10个号码，当开奖结果[千位、百位、十位]中有且只有两个号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率。如果是选择(1、2、3、4、5)，则只要开奖结果[千位、百位、十位]中，有出现1、2、3、4、5中的任何两个号码，且其中有一个号码重复则中奖。</br>
                    ※例如：112、344，若是开出豹子则不算中奖。</br>
                    ※备注："豹子"为三字同号，例如：111、222</br>
                    <strong>◎后三</strong>：会员可以挑选5~10个号码，当开奖结果[百位、十位、个位]中有且只有两个号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率。如果是选择(1、2、3、4、5)，则只要开奖结果[百位、十位、个位]中，有出现1、2、3、4、5中的任何两个号码，且其中有一个号码重复则中奖。</br>
                    ※例如：112、344，若是开出豹子则不算中奖。</br>
                    ※备注："豹子"为三字同号，例如：111、222</p>

                <hr>
                <h5><strong>【组选六玩法】</strong></h5>
                <p><strong>◎前三</strong>：会员可以挑选4~8个号码，当开奖结果[万位、千位、百位]都出现在所下注的号码中且没有任何号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率，中奖赔率以所选号码中的最小赔率计算派彩。</br>
                    ※例如：如果是选择(1、2、3、4)，则开奖结果[万位、千位、百位]为123、124、134、234都中奖，其他都是不中奖。例如：112、133、145、444等都是不中奖。</br>
                    <strong>◎中三</strong>：会员可以挑选4~8个号码，当开奖结果[千位、百位、十位]都出现在所下注的号码中且没有任何号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率，中奖赔率以所选号码中的最小赔率计算派彩。</br>
                    ※例如：如果是选择(1、2、3、4)，则开奖结果[千位、百位、十位]为123、124、134、234都中奖，其他都是不中奖。例如：112、133、145、444等都是不中奖。</br>
                    <strong>◎后三</strong>：会员可以挑选4~8个号码，当开奖结果[百位、十位、个位]都出现在所下注的号码中且没有任何号码重复，则视为中奖。挑选不同个数的号码有其相对应的赔率，中奖赔率以所选号码中的最小赔率计算派彩。 </p>

                <hr>
                <h5><strong>【跨度玩法】</strong></h5>
                <p><strong>◎前三</strong>：以开奖结果[万位、千位、百位]的最大差距（跨度），作为中奖依据。会员可以选择0~9的任一跨度。</br>
                    ※举例：开奖结果为3、4、8、7、6。中奖的跨度为5。（最大号码8减最小号码3=5）。</br>
                    <strong>◎中三</strong>：以开奖结果[千位、百位、十位]的最大差距（跨度），作为中奖依据。会员可以选择0~9的任一跨度。</br>
                    ※举例：开奖结果为3、4、8、7、6。中奖的跨度为4。（最大号码8减最小号码4=4）。</br>
                    <strong>◎后三</strong>：以开奖结果[百位、十位、个位]的最大差距（跨度），作为中奖依据。会员可以选择0~9的任一跨度。</br>
                    ※举例：开奖结果为3、4、8、7、6。中奖的跨度为2。（最大号码8减最小号码6=2）。</p>

                <hr>
                <h5><strong>【龙虎玩法】</strong></h5>
                <p>龙虎游戏规则：龙虎是以开奖结果的五个数字作为基准，取任意位置（万、千、百、十、个）的数字进行组合大小比对的一种玩法；</br>
                    当投注龙/虎时，开奖结果为和局，那么押注龙/虎视为不中奖；</br>
                    当投注"和"时，开奖结果为龙/虎，投注“和”视为不中奖；</br>
                    举例：开奖结果为：2,1,3,5,2 万为龙、千为龙虎时：结果 龙(2）大于虎（1），即为开龙；如万为龙，个为虎时，结果一样大，即为开和局！</br>
                    说明：龙1 VS 虎2 即为万为龙，千为虎；龙2 VS 虎4 即为千为龙，十为虎；</p>
            </div>
            <div class="help_col gfwf-help-col">
                <div class="gfwf-1">
                    <div class="gfwf-2" id="top">
                        <h1><a style=""></a></h1>
                        <span class="gamek-8">五分时时彩玩法规则</span>
                    </div>
                    <br>
                    <div class="gfwf-3">
                        <h2><a onclick="javascript:document.getElementById('test1').scrollIntoView()"
                               href="javascript:;">一、玩法类型及承销</a></h2>
                        <h2><a onclick="javascript:document.getElementById('test2').scrollIntoView()"
                               href="javascript:;">二、开奖与购买方式</a></h2>
                        <h2><a onclick="javascript:document.getElementById('test3').scrollIntoView()"
                               href="javascript:;">三、兑奖</a></h2>
                        <h2><a onclick="javascript:document.getElementById('test4').scrollIntoView()"
                               href="javascript:;">四、玩法说明</a></h2>
                        <h2><a onclick="javascript:document.getElementById('test5').scrollIntoView()"
                               href="javascript:;">五、设奖及中奖</a></h2>
                        <h2><a onclick="javascript:document.getElementById('test6').scrollIntoView()"
                               href="javascript:;">六、投注方式</a></h2>
                        <h2><a onclick="javascript:document.getElementById('test7').scrollIntoView()"
                               href="javascript:;">七、玩法特点</a></h2>
                        <br>
                        <b><p id="test1">一、玩法类型及承销</p></b>
                        时时彩是一种在线即开型彩票玩法，属于基诺型彩票，由市福利彩票发行管理中心负责承销。
                        <p>&nbsp;</p>
                        <b><p id="test2">二、开奖与购买方式</p></b>
                        1.
                        本站重庆时时彩游戏每天进行仅120期，开奖时间为白天10:00至22:00，每隔10分钟开奖一次；夜场22:00至凌晨01:55，每5分钟开奖一次。购买者可在对其选定的投注号码进行投注，返点越高则投注赔率越低。
                        2. 购买者可选择机选号码投注、自选号码投注。机选号码投注是指由投注机随机产生投注号码进行投注，自选号码投注是指将购买者选定的号码输入投注机进行投注。</br>
                        3. 购买者还可进行追号投注。追号投注是指将一注或一组号码进行两期或两期以上的投注。追号可分为连续追号和间隔追号，连续追号指追号的期数是连续的，间隔追号指追号的期数不连续。</br>
                        4. 如果用户投注成功后，若因销售终端故障、通讯线路故障和投注站信用额度受限等原因造成当期无法开奖的，应退还购买者投注金额。</p></br>
                        <b><p id="test3">三、兑奖</p></b>
                        1. 返奖：无论大小奖均返还至用户在本站的账户中，一旦用户中奖，系统将自动返还中奖金额。可继续投注或提款，永无弃奖。</p>
                        <p>&nbsp;</p>
                        <b><p id="test4">四、玩法说明</p></b>
                        1.
                        时时彩投注区分为万位、千位、百位、十位和个位，各位号码范围为0～9。每期从各位上开出1个号码作为中奖号码，即开奖号码为5位数。时时彩玩法即是竞猜5位开奖号码的全部号码、部分号码或部分号码特征。
                        <div align="center">
                            <img src="${resPath}images/wfsm/wfsm01.png" class="wfsm-img">
                        </div>
                        </br>
                        2. 时时彩包括星彩玩、定位胆、不定位、大小单双、任选等玩法。星彩玩法分为二星、前后三星、四星、五星四种玩法如下：</p> </br>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC"
                               class="table-wfsm">
                            <tbody>
                            <tr align="center">
                                <td width="50" height="25" bgcolor="#efefef" class="th-wfsm" colspan="2">玩法</td>
                                <td width="514" height="25" bgcolor="#efefef" class="th-wfsm">规则</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">五星</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">直选</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竞猜全部5位号码，即万位、千位、百位、十位和个位，且顺序一致。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">四星</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">直选</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竞猜全部4位号码，即千位、百位、十位和个位，且顺序一致。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" rowspan="3" class="td-wfsm">前三/后三</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">直选</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竟猜前/后三码，即(万、千、百)位；或(百、十、个)位，且顺序一致。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">组选三</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竟猜前/后三码，即(万、千、百)位；或(百、十、个)位，顺序不限，且投注时三位号码有两位相同。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">组选六</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竟猜前/后三码，即(万、千、百)位；或(百、十、个)位，顺序不限，且投注时三位号码各不相同。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" rowspan="2" class="td-wfsm">前二</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">直选</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">竟猜前两码，即万位和千位，且顺序一致。</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">组选</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">竟猜前两码，即万位和千位，顺序不限。</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" colspan="2" class="td-wfsm">定位胆</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竞猜万位、千位、百位、十位、个位任意位置上任意1个或1个以上号码。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" colspan="2" class="td-wfsm">不定位</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竞猜对应三星、四星、五星玩法位置上任意1个或1个以上号码，且顺序不限。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" colspan="2" class="td-wfsm">大小单双</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竟猜万位、千位中的"大、小、单、双"中至少各选一个组成一注。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" rowspan="3" class="td-wfsm">任选</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">任选二</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竞猜万位、千位、百位、十位、个位任意位置上任意2个号码或者2个号码和值。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="t-wfsm">任选三</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竞猜万位、千位、百位、十位、个位任意位置上任意3个号码或者3个号码和值。
                                </td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">任选四</td>
                                <td width="514" height="25" bgcolor="#FFFFFF" class="td-wfsm">
                                    竞猜万位、千位、百位、十位、个位任意位置上任意4个号码或者4个号码和值。
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        </br>
                        注：</br>
                        <1>、直选：将投注号码以惟一的排列方式进行投注。</br>
                        <2>、组选：将投注号码的所有排列方式作为一注投注号码进行投注。示例：123，排列方式有123、132、213、231、312、321，共计6种。</br>
                        <3>、组选三：在三星组选中，如果一注组选号码的3个数字有两个数字相同，则有3种不同的排列方式，因而就有3个中奖机会，这种组选投注方式简称组选三。示例：112，排列方式有112、121、211。</br>
                        <4>、组选六：在三星组选中，如果一注组选号码的3个数字各不相同，则有6种不同的排列方式，因而就有6个中奖机会，这种组选投注方式简称组选六。示例：123，排列方式有123、132、213、231、312、321，共计6种。</br>
                        <5>、大小单双：即把10个自然数按“大”“小”，或者“单”，“双”性质分为两组，0-4为小号，5-9为大号。0，2，4，6，8 为双号。1，3，5，7，9 为单号。</br>
                        </p>
                        <b><p id="test5">五、设奖及中奖</p></b>
                        奖金计算说明列表请浏览本站主页“开奖公告”页面，点击重庆时时彩查阅。
                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC"
                               class="table-wfsm">
                            <tbody>
                            <tr align="center">
                                <td height="25" bgcolor="#eFeFeF" colspan="2" class="th-wfsm">玩法</td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">开奖号码</td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">投注号码示例</td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm"></td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">中奖概率</td>
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">单注最高赔率</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" rowspan="7" class="td-wfsm">三星</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">直选(复式)</td>
                                <td height="25" bgcolor="#FFFFFF" rowspan="2" class="td-wfsm">678</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">678</td>
                                <td height="25" bgcolor="#FFFFFF" rowspan="3" class="td-wfsm">定位中三码</td>
                                <td height="25" bgcolor="#FFFFFF" rowspan="3" class="td-wfsm">1/1000</td>
                                <td height="25" bgcolor="#FFFFFF" rowspan="3" class="td-wfsm">1:950</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">直选(单式)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">678</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">直选和值</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">13</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">13</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">组选(组三)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">113</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">113</td>
                                <td height="25" bgcolor="#FFFFFF" rowspan="4" class="td-wfsm">不定位中三码</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1/90</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1:316.666</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">组选(组六)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">123</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">123</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1/120</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1:158.333</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">组选和值(组三)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">5(113)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">5(113)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1/90</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1:316.666</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">组选和值(组六)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">6(123)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">6(123)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1/120</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1:158.333</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" rowspan="2" class="td-wfsm">二星</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">直选(前/后二)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">78</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">78</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">定位中三码</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1/100</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1:95</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">组选(前/后二)</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">78</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">78</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">不定位中三码</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1/45</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1:47.5</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#FFFFFF" colspan="2" class="td-wfsm">大小单双</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">678</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">大单</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">大小</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1/16</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">1:3.8</td>
                            </tr>
                            </tbody>
                        </table>
                        </br>
                        注：</br>
                        <1>、假设当期的开奖号码为45678则组选三不中奖（后三组选适用开奖号码为45668）。</br>
                        <2>、前三码和后三码：前三码指开奖号码的前三位号码，后三码指开奖号码的后三位号码。示例：开奖号码为45678，前三码为456，后三码为678。</br>
                        <3>、前两码和后两码：前两码指开奖号码的前两位号码，后两码指开奖号码的后两位号码。示例：开奖号码为45678，前两码为45，后两码为78。</br>
                        <4>、定位胆：所选号码与相同位置上和开奖号码一致。示例：开奖号码为45678，万位4即中定位胆万位。</br>
                        <5>、定位和不定位：定位指投注号码与开奖号码按位一致，不定位指投注号码与开奖号码一致，顺序不限。示例：开奖号码为45678，78则定位中后两码，78或87则为不定位中后两码。</br>
                        <6>、任选和值：所选号码与开奖号码的和值相同。示例：开奖号码为45678，位置选万位、百位，和值号码即10。</p></br>
                        </p>
                        <b><p id="test6">六、投资方式</p></b>
                        1、五星直选</br>
                        对万位、千位、百位、十位和个位各选1个号码为一注，每位号码可从0～9全选，投注号码与开奖号码按位一致，即为中奖。</br>
                        <div class="gfwf-wxsm">
                            <img src="${resPath}images/wfsm/wfsm02.png" class="wfsm-img">
                        </div>
                        </br>
                        2、四星直选</br>
                        对千位、百位、十位和个位各选1个号码为一注，每位号码可从0～9全选，投注号码与开奖号码按位一致，即为中奖。</br>
                        3、三星直选</br>
                        对百位、十位和个位各选1个号码为一注，每位号码最多可0～9全选，投注号码与开奖号码后三位按位一致即为中奖。</br>
                        4、三星和值</br>
                        和值指号码各位数相加之和，如号码001，和值为1。三星和值投注指用某一个三星和值对应的所有号码进行投注，所选和值与开奖号码后三位和值一致即为中奖，单注最高奖金980元。示例：选择三星和值1投注，即用和值1所对应的号码（001、010、100）投注，如开奖号码后三位和值为1即中奖。</br>
                        <div class="gfwf-wxsm">
                            <img src="${resPath}images/wfsm/wfsm03.png" class="wfsm-img">
                        </div>
                        </br>
                        5、组三组选</br>
                        组三包号指用所选号码的所有组三排列方式进行组选三投注，如开奖号码为组三号且包含在所选号码中即为中奖，单注最高奖金326.666元元。示例：组三包号12，共2注（112、122），如开奖号码后三位为112、121、211、122、212、221皆为中奖。
                        包号速算表如下：</br>
                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC"
                               class="table-wfsm">
                            <tbody>
                            <tr align="center">
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">包号个数（10选n）</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">2</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">3</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">4</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">5</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">6</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">7</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">8</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">9</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">10</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">投注金额（2元）</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">4</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">12</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">24</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">40</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">60</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">84</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">112</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">144</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">180</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">中奖奖金（元）</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">653.332</td>
                            </tr>
                            </tbody>
                        </table>
                        6、组六组选</br>
                        组六包号指用所选号码的所有组六排列方式进行组选六投注，如开奖号码为组六号且包含在所选号码中即为中奖，单注最高奖金163.333元。示例：组六包号123，共1注，如开奖号码后三位为123、132、213、231、312、321皆为中奖。
                        包号速算表如下：</br>
                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC"
                               class="table-wfsm">
                            <tbody>
                            <tr align="center">
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">包号个数（10选n）</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">4</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">5</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">6</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">7</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">8</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">9</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">10</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">投注金额（2元）</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">8</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">20</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">40</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">74</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">112</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">168</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">240</td>
                            </tr>
                            <tr align="center">
                                <td height="25" bgcolor="#eFeFeF" class="th-wfsm">中奖奖金（元）</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">326.666</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">326.666</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">326.666</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">326.666</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">326.666</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">326.666</td>
                                <td height="25" bgcolor="#FFFFFF" class="td-wfsm">326.666</td>
                            </tr>
                            </tbody>
                        </table>
                        7、二星直选</br>
                        对万位和千位各选1个号码为一注，每位号码最多可0～9全选，投注号码与开奖号码后两位按位一致即为中奖。</br>
                        8、二星和值</br>
                        和值指号码各位数相加之和，如号码01，和值为1。二星和值投注指用某一个二星和值对应的所有号码进行投注，所选和值与开奖号码前两位和值一致即为中奖，单注最高奖金98元。示例：选择二星和值1投注，即用和值1所对应的号码（01、10）投注，如开奖号码前两位和值为1即中奖。</br>
                        9、二星组选</br>
                        从号码0—9中任选两个数字对万位和千位进行投注，最多可0～9全选。所选号码与开奖号码前两位一致，顺序不限，即为中奖。示例：选择12，共1注，如开奖号码前两位为12或21即中奖。</br>
                        10、大小单双</br>
                        对万位和千位的大小单双4种特征中各选一种特征为一注，最多可4种特征全选，所选特征与开奖号码后两位号码特征一致即中奖。示例：开奖号码后两位为78，则大大、大双、单双、单大为中奖。</br>
                        <div class="gfwf-wxsm">
                            <img src="${resPath}images/wfsm/wfsm-04.png" class="wfsm-img">
                        </div>
                        <br>
                        <b><p id="test7">七、玩法特点</p></b>
                        <div class="gfwf-wxsm">
                            <img src="${resPath}images/wfsm/wfsm05.png" class="wfsm-img">
                        </div>
                        </br>
                    </div>
                </div>
                <div class="wfsm-top">
            <span class="wfsm-back">
         <a onclick="javascript:document.getElementById('top').scrollIntoView()" href="javascript:;">回到顶部</a></br>
            </span>
                    <div class="wfsm-kong"></div>
                </div>
            </div>
            <div class="help_col">
                <p><strong>一、玩法类型及承销</strong></br>
                    五分时时彩是一种在线即开型彩票玩法，属于基诺型彩票，由本站管理中心负责承销。</p>
                <p><strong>二、开奖</strong></br>
                    本站五分时时彩游戏每天进行288期，北京时间（GMT+8）每天00:00起每隔5分钟开奖一次。本公司五分时时彩具体游戏规则请参考彩种介绍。</br>
                    如果用户投注成功后，若因销售终端故障、通讯线路故障和投注站信用额度受限等原因造成当期无法开奖的，应退还购买者投注金额。</p>
                <p><strong>三、兑奖</strong></br>
                    一旦用户中奖，系统将自动返还中奖金额。可继续投注或提款，永无弃奖。 </p>
            </div>
        </div>
    </div>
</div>

<c:import url="../../common/bottomInfo.jsp"/>
<c:import url="../../common/copyright.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp" />
<c:import url="../../common/bodyEnd.jsp"/>