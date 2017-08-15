<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp" />
<c:import url="../../index/top.jsp"/>

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <a href="<%=basePath%>"><img style="max-height: 50px;" src="<%=basePath%>static/theme/400w/images/pclogo.png?v=0.001" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp"/>
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="1" />
        <c:param name="playGroupId" value="22" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>

        <div class="help_list">
            <div class="lis">
                <h5>10分六合彩</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>下注声明</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>六合彩规则说明</strong></h5>
                <p><strong>1、</strong>以下所有投注皆含本金。</p>
                <p><strong>2、特别号码盘势规则说明</strong></br>
                    10分六合彩公司当期开出的最后一码为特别号或特码。</br>特码　单　码：假设投注号码为开奖号码之特别号，视为中奖，其余情形视为不中奖。</br>
                    特码　大　小：开出之特码大于或等于25为特码大， 小于或等于24为特码小，开出49为和。</br>
                    特码　单　双：特码为双数叫特双，如8、16；特码为单数叫特单，如21、35，开出49为和。</br>
                    特码和数大小：以特码个位和十位数字之和来判断胜负，和数大于或等于7为大，小于或等于6为小，开出49号为和。</br>
                    特码和数单双：以特码个位和十位数字之和来判断单双，如01，12，32为和单，02，11，33为和双，开出49号为和。</br>
                    特码尾数大小：以特别号尾数若0尾~4尾为小、5尾~9尾为大；如01、32、44为特尾小；如05、18、19为特尾大，开出49号为和</br>
                    特码　半　特：以特别号大小与特别号单双游戏为一个投注组合；当期特别号开出符合投注组合，即视为中奖；若当期特码开出49号，则视为和局；其余情形视为不中奖</p>
                <p><strong>3、两面：</strong>指大、小；单、双。</p>
                <p><strong>4、</strong>每期六合彩开奖球数共七粒(包括特码)。</p>
                <p><strong>5、正码：</strong>10分六合彩公司当期开出之前6个号码叫正码。每一个号码为一投注组合，假如投注号码为开奖号码之 正码，视为中奖，其馀情形视为不中奖。</p>
                <p><strong>6、正码1-6盘势规则说明</strong></br>
                    10分六合彩公司当期开出之前6个号码叫正码。第一时间出来的叫正码1，依次为正码2、正码3…… 正码6(并不以号码大小排序)。</br>
                    大　　小： 以指定出现正码的位置与号码大于或等于25为大，小于或等于24为小，开出49为和。</br>
                    单　　双： 以指定出现正码的位置与号码为单数或双数下注，开出49为和。</br>
                    和数大小： 以指定出现正码的位置与号码个位和十位数字总和来判断胜负，和数大于或等于7为大，小于或等于6为小，开出49号为和。</br>
                    和数单双： 以指定出现正码的位置与号码个位和十位数字总和来判断单双，开出49号为和。</br>
                    色　　波： 以指定出现正码的位置的球色下注，开奖之球色与下注之颜色相同时，视为中奖，其余情形视为不中奖。</br>
                    尾数大小：以指定出现正码的位置与号码尾数大小下注，若0尾~4尾为小、5尾~9尾为大。如01、32、44为正尾小；如05、18、19为正尾大，开出49号为和</p>
                <p><strong>7、正码特 ： </strong>正码特是指 正1特、正2特、正3特、正4特、正5特、正6特：其下注的正码特号与现场摇珠开出之正码其开奖顺序及开奖号码相同，视为中奖， 如现场摇珠第一个正码开奖为49号，下注第一个正码特为49则视为中奖，其它号码视为不中奖。</p>
                <p><strong>8、总和单双 ： </strong>所有七个开奖号码的分数总和是单数叫(总分单)，如分数总和是115、183；分数总和是双数叫(总 分双)，如分数总和是108、162。假如投注组合符合中奖结果，视为中奖，其馀情形视为不中奖 。</p>
                <p><strong>9、总和大小 ： </strong>所有七个开奖号码的分数总和大于或等于175为总分大；分数总和小于或等于174为总分小。 如开奖号码为02、08、17、28、39、46、25，分数总和是165，则总分小。假如投注组合符合 中奖结果，视为中奖，其馀情形视为不中奖。</p>
                <p><strong>10、连码 ：</strong></p>
                <p><table>
                <tr>
                    <td width="4%" valign="top" bgcolor="#FFE3CA" align="center">
                        1·
                    </td>
                    <td width="96%" bgcolor="#FFF7F0">
                        <span class="style2">四中一： </span>所投注的每四个号码为一组合，若四个号码中有一个号码是开奖号码之正码，视为中奖，其余情形视为不中奖。如06、07、08、09四个有一个号码是开奖号码之正码，视为中奖。
                    </td>
                </tr>
                <tr>
                    <td width="4%" valign="top" bgcolor="#FFE3CA" align="center">
                        2·
                    </td>
                    <td width="96%" bgcolor="#FFF7F0">
                        <span class="style2">三中二： </span>所投注的每三个号码为一组合，若其中2个是开奖号码中的正码，即为三中二，视为中奖；   若3个都是开奖号码中的正码，即为三中二之中三，其馀情形视为不中奖，如06、07、08   为一组合，开奖号码中有06、07两个正码，没有08，即为三中二，按三中二赔付；如开奖   号码中有06、07、08三个正码，即为三中二之中三，按中三赔付；如出现1个或没有，视 为不中奖 。
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FCF7CB" align="center">
                        3·
                    </td>
                    <td bgcolor="#FDFBE3">
                        <span class="style2">三全中：</span>
                        所投注的每三个号码为一组合，若三个号码都是开奖号码之正码，视为中奖，其馀情形视为   不中奖。如06、07、08三个都是开奖号码之正码，视为中奖，如两个正码加上一个特别号 码视为不中奖 。
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFE3CA" align="center">
                        4·
                    </td>
                    <td bgcolor="#FFF7F0">
                        <span class="style2">二全中：</span>
                        所投注的每二个号码为一组合，二个号码都是开奖号码之正码，视为中奖，其馀情形视为不 中奖（含一个正码加一个特别号码之情形）。
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FCF7CB" align="center">
                        5·
                    </td>
                    <td bgcolor="#FDFBE3">
                        <span class="style2">二中特：</span>
                        所投注的每二个号码为一组合，二个号码都是开奖号码之正码，叫二中特之中二；若其中一 个是正码，一个是特别号码，叫二中特之中特；其馀情形视为不中奖 。
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFE3CA" align="center">
                        6·
                    </td>
                    <td bgcolor="#FFF7F0">
                        <span class="style2">特串：</span>
                        所投注的每二个号码为一组合，其中一个是正码，一个是特别号码，视为中奖，其馀情形视为 不中奖（含二个号码都是正码之情形） 。
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FCF7CB" align="center">
                        7.
                    </td>
                    <td bgcolor="#FFF7F0">
                        依照二全中·二中特·特串 此3种玩法规则,来进行‘生肖对碰’或‘尾数对碰’<br/>
                        例一：<br/>
                        选择‘二全中’,之后进行‘生肖对碰’选择马(03，15，27，39)以及羊 (02，14，26，38)<br/>
                        则会产生20组号码组合：<br/>
                        [03,02] [03,14] [03,26] [03,38]<br/>
                        [15,02] [15,14] [15,26] [15,38]<br/>
                        [27,02] [27,14] [27,26] [27,38]<br/>
                        [39,02] [39,14] [39,26] [39,38]<br/>
                        例二：<br/>
                        选择‘二中特’,之后进行‘尾数对碰’选择0(10，20，30，40)以及5(5，15，25，35，45)<br/>
                        则会产生20组号码组合：<br/>
                        [10,5] [10,15] [10,25] [10,35] [10,45]<br/>
                        [20,5] [20,15] [20,25] [20,35] [20,45]<br/>
                        [30,5] [30,15] [30,25] [30,35] [30,45]<br/>
                        [40,5] [40,15] [40,25] [40,35] [40,45]
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FCF7CB" align="center">
                        8.
                    </td>
                    <td>
                        肖串尾数:选择一主肖，可扥0-9尾的球．
                        以三全中的肖串尾数为例：
                        选择【兔】当主肖(号码06,18,30,42)并且扥8尾数．因为8尾数中的18已在主肖中出现，将不重复组合．
                        故兔主肖扥8尾数共可组合出24种组合(二个尾数号码+一个主肖号码的组合)．
                    </td>
                </tr>
            </table></p>
                <p><strong>11、正码过关 ： </strong>游戏规则同正码1-6盘势，但须同时投注多项结果，串联成投注组合，只要单期所开出之开奖结果符合您所选定之串联结果，即视为中奖，若其中一项结果不中，则视为不中奖；若其中一项结果为和，其余结果都中奖的情形，也视为中奖；和的项目赔率以一计算</p>
                <p><strong>12、生肖色波 ：</strong>分为生肖与色波两种玩法</p>
                <p><table>
                <tr>
                    <td width="4%" valign="top" bgcolor="#FFE3CA" align="center">
                        1
                    </td>
                    <td width="96%" bgcolor="#FFF7F0">
                        <span class="style2">生肖： </span><br/>
                        生肖顺序为 鼠 &gt;牛 &gt;虎 &gt;兔 &gt;龙 &gt;蛇 &gt;马   &gt;羊 &gt;猴 &gt;鸡 &gt;狗 &gt;猪<br/>
                        如今年是<span class="sxn">猴</span>年，就以<span class="sxn">猴</span>为开始，依顺序将49个号码分为12个生肖(如下)，再以生肖下注。<br/>
                        <span class="sxpaixu"></span>
                        若当期特别号，落在下注生肖范围内，视为中奖 。
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FCF7CB" align="center">
                        2·
                    </td>
                    <td bgcolor="#FDFBE3">
                        <span class="style2">色波：</span>
                        以特别号的球色下注，开奖的球色与下注的颜色相同，视为中奖，球色号码分布如下:<br/>
                        <span class="style1">01 </span>
                        <span class="style8">11 21 </span>
                        <span class="style9">31 41</span><br/>
                        <span class="style1">02</span>
                        <span class="style1">12</span>
                        <span class="style8">22 32</span>
                        <span class="style9">42</span><br/>
                        <span class="style9">03</span>
                        <span class="style1">13 23</span>
                        <span class="style8">33 43</span><br/>
                        <span class="style9">04 14</span>
                        <span class="style1">24 34</span>
                        <span class="style7">44</span><br/>
                        <span class="style8">05</span>
                        <span class="style9">15 25</span>
                        <span class="style1">35 45</span><br/>
                        <span class="style8">06 16 </span>
                        <span class="style9">26 36</span>
                        <span class="style1">46</span><br/>
                        <span class="style1">07</span>
                        <span class="style8">17 27</span>
                        <span class="style9">37 47</span><br/>
                        <span class="style1">08 18</span>
                        <span class="style8">28 38</span>
                        <span class="style9">48</span><br/>
                        <span class="style9">09</span>
                        <span class="style1">19 29</span>
                        <span class="style8">39 49 </span><br/>
                        <span class="style9">10 20</span>
                        <span class="style1">30 40</span>
                    </td>
                </tr>
            </table><p>
                <p><strong>13、一肖 ：</strong></p>
                <p><table>
                <tr>
                    <td width="4%" valign="top" bgcolor="#FFE3CA" align="center">
                        1·
                    </td>
                    <td width="96%" bgcolor="#FFF7F0">
                        <span class="style2">一肖：</span>
                        将生肖依序排列，例如今年是<span class="sxn">猴</span>年，就以<span class="sxn">猴</span>为开始，依顺序将49个号码分为12个生肖(如下)，再以生肖下注。<br/>
                        <span class="sxpaixu"></span>
                        只要当期号码(所有正码与最后开出的特码)，落在下注生肖范围内，则视为中奖。<span style="color:red;font-weight:bold">(请注意：49亦算输赢，不为和)</span>。
                    </td>
                </tr>
            </table></p>
                <p><strong>14、合肖 ：</strong>
                    选1~11生肖(排列如同生肖)为一组合，并选择开奖号码的特码是否在此组合内，若选择是"中"(可选择2~11个生肖)且开奖号码的特码亦在此组合内，即视为中奖；若选择否"不中"(可选择1~10个生肖),<span style='color:red;font-weight:bold'>系统会将选择不中的组合改为中的组合；</span>若当期特码开出49号，则所有组合皆视为和局</p>
                <p><strong>15、半波 ：</strong>以特码色波和特单，特双，特大，特小为一个投注组合，当期特码开出符合投注组合，即视为中奖； 若当期特码开出49号，则视为和局；其馀情形视为不中奖。</p>
                <p><strong>16、正肖 ：</strong>依据开出的所有正码为主。若当期6个正码，只要有1个落在下注生肖范围内，视为中奖。如超过1个正码落在下注生肖范围内 ，派彩将倍增！
                    如：下注＄100.-正肖蛇赔率1.88<br/>
                    6个正码开出01，派彩为＄88.-<br/>
                    6个正码开出01，13，派彩为＄176.-<br/>
                    6个正码开出01，13，25，派彩为＄264.-<br/>
                    6个正码开出01，13，25，37，派彩为＄352.-<br/>
                    6个正码开出01，13，25，37，49，派彩为＄440.-<span style="color:red;font-weight:bold">(请注意：49亦算输赢，不为和)</span></p>
                <p><strong>17、特码尾数 ：</strong>指特别号所属尾数的号码<br/>
                    "1"尾 ：01，11，21，31，41<br/>
                    "2"尾 ：02，12，22，32，42<br/>
                    "3"尾 ：03，13，23，33，43<br/>
                    "4"尾 ：04，14，24，34，44<br/>
                    "5"尾 ：05，15，25，35，45<br/>
                    "6"尾 ：06，16，26，36，46<br/>
                    "7"尾 ：07，17，27，37，47<br/>
                    "8"尾 ：08，18，28，38，48<br/>
                    "9"尾 ：09，19，29，39，49<br/>
                    "0"尾 ：10，20，30，40<br/>
                    例如 ：开奖结果特别号码是21则 "1"尾为中奖，其他尾数都不中奖</p>
                <p><strong>18、**正特尾数  ：</strong> **只要当期号码(所有正码及开出来的特码)，含所属尾数的一个或多个号码，但派彩只派一次，即不论同尾数号码出现一个或多个号码都只派彩一次。<br/>
                    "1"尾：01.11.21.31.41 "2"尾：02.12.22.32.42 "3"尾：03.13.23.33.43<br/>
                    "4"尾：04.14.24.34.44 "5"尾：05.15.25.35.45 "6"尾：06.16.26.36.46<br/>
                    "7"尾：07.17.27.37.47 "8"尾：08.18.28.38.48 "9"尾：09.19.29.39.49<br/>
                    "0"尾：10.20.30.40<br/>
                    例如 ：开奖结果正码是11、31、42、44、35、32特别号码是 21 则"1"尾"2"尾"4"尾"5"尾都为中奖，其他尾数都不中奖。</p>
                <p><strong>19、连肖 ：</strong>挑选2~6生肖(排列如同生肖)为一个组合，当期号码(所有正码与最后开出的特码)坐落于投注时所勾选之生肖组合所属号码内，所勾选之生肖皆至少有中一个号码，则视为中奖，其余情视为不中奖<span style='color:red'>(请注意49亦算输赢，不为和)</span>例如：如果当期号码为19、24、12、34、40、39.特码：49，所勾选三个生肖(称为三肖碰)，若所有生肖的所属号码内至少一个出现于当期号码，则视为中奖。</p>
                <p><strong>20、连尾 ：</strong>挑选2〜6个尾数为一组合，当期号码（所有正码与最后出的特码）坐落于投注时所勾选之尾数组合所属号码内，则视为中奖，其余情形视为不中奖<span style='color:red'>(请注意49亦算输赢，不为和)</span><br />
                    举例1：下注2尾碰，勾选0,1，当期七个号码若0尾及1尾皆有开出，视为中奖<br />
                    举例2：下注2尾碰，勾选0,1,2三种尾数，会出现三种组合（组合一：0,1）（组合二：0,2）（组合三：1,2），当期七个号码若开出其中一种组合所选的两个尾数，视为中奖。</p>
                <p><strong>21、自选不中奖 ：</strong> 挑选5~12个号码为一个组合，当期号码(所有正码与最后开出的特码)皆没有坐落于投注时所挑选之号码组合内，则视为中奖，若是有任何一个当期号码开在所挑选的号码组合情形视为不中奖。<br />
                    例如当期号码为19,24,17,34,40,39,特别号49，所挑选5个号码(称为五不中)，若所挑选的号码内皆沒有坐落于当期号码，则为中奖</p>
            </div>
            <div class="help_col">
                <h5><strong>六合彩下注声明</strong></h5>
                <p><strong>1、</strong>客户一经在本公司开户或投注，即被视为已接受这些规则。</p>
                <p><strong>2、</strong>如果客户怀疑自己的资料被盗用，应立即通知本公司，并更改个人详细资料，且之前所使用的使用者名称及密码将全部无效。</p>
                <p><strong>3、</strong>客户有责任确保自己的帐户及登入资料的保密性。在本网站上以个人的使用者名称及密码进行的任何网上投注将被视为有效。</p>
                <p><strong>4、</strong>为了避免出现争议，请务必在下注之后检查“ 下注状况 ”。</p>
                <p><strong>5、</strong>开奖后接受的投注，将被视为无效。</p>
                <p><strong>6、</strong>任何的投诉必须在开奖之前提出，本公司将不会受理任何开奖之后的投诉。</p>
                <p><strong>7、</strong>公布赔率时出现的任何打字错误或非故意人为失误，本公司将保留改正错误和按正确赔率结算注单的权力。</p>
                <p><strong>8、</strong>公布之所有赔率为浮动赔率，派彩时的赔率将以本公司确认投注时之赔率为准。</p>
                <p><strong>9、</strong>如本公司察觉客户投注状况异常时，有权即时中止客户投注；在本公司中止下注前，客户之所有投注仍属有效，不得要求取消或延迟交收，以及不得有任何异议。</p>
                <p><strong>10、</strong>如因在本网站投注触犯当地法律，本公司概不负责。</p>
                <p><strong>11、</strong>『六合彩』当次确认下注时间与上次确认下注时间10秒钟内：出现同群组且内容相同2笔以上之注单，本公司只承认一笔有效注单，其余一律注销。</br>(举例1：十秒内出现快速下注特别号01,02,03同群组同内容的注单两组以上,本公司只保留一组有效,其余将注销)</br>(举例2：十秒内出现快速下注特别号01,02,03 和快速下注特别号01,02,因群组号码不同,则认定两组皆为有效注单)</p>
            </div>
        </div>
    </div>
</div>

<c:import url="../../index/bottom.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp" />
<script>
    $(function () {
        autoGetServerTime();
    });
    function autoGetServerTime() {
        ajaxRequest({
            url:"<%=basePath%>member/ajaxGetServerTime.json",
            success: function(json) {
                if (json.result != 1) {
                    return;
                }
                var sxarr;
                var str = parseInt(json.serverTime);
                var now = new Date(str);
                var year = now.getFullYear();
                var ss=year-2008;//设定2008为初始年份
                var ssc=ss%12;
                var ssyear=new Array("鼠","牛","虎","兔","龙","蛇","马","羊","猴","鸡","狗","猪");
                var sx = ssyear[ssc];
                var resultstr = strsx(sx);
                $(".sxpaixu").html(resultstr);
                $(".sxn").html(sx);
            }
        });
    }

    function strsx(sx) {
        var sxarr = '';
        var n, m = 0;
        var ssyear = new Array("鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪");
        if (sx == '鸡') {
            n = 9;
        }else if(sx == '狗'){
            n = 10;
        }else if(sx == '猪'){
            n = 11;
        }else if(sx == '鼠'){
            n = 0;
        }else if(sx == '牛'){
            n = 1;
        }else if(sx == '虎'){
            n = 2;
        }else if(sx == '兔'){
            n = 3;
        }else if(sx == '龙'){
            n = 4;
        }else if(sx == '蛇'){
            n = 5;
        }else if(sx == '马'){
            n = 6;
        }else if(sx == '羊'){
            n = 7;
        }else if(sx == '猴'){
            n = 8;
        }
        for (var i = 0; i < 12; i++) {
            (i + n) >= 12 ? m = (i + n - 12) : m = (i + n);
            if (i == 0) {
                sxarr += ssyear[m] + '&nbsp;01 , 13 , 25 , 37 , 49<br/>';
            } else if (i == 1) {
                sxarr += ssyear[m] + '&nbsp;12 , 24 , 36 , 48<br/>';
            } else if (i == 2) {
                sxarr += ssyear[m] + '&nbsp;11 , 23 , 35 , 47<br/>';
            } else if (i == 3) {
                sxarr += ssyear[m] + '&nbsp;10 , 22 , 34 , 46<br/>';
            } else if (i == 4) {
                sxarr += ssyear[m] + '&nbsp;09 , 21 , 33 , 45<br/>';
            } else if (i == 5) {
                sxarr += ssyear[m] + '&nbsp;08 , 20 , 32 , 44<br/>';
            } else if (i == 6) {
                sxarr += ssyear[m] + '&nbsp;07 , 19 , 31 , 43<br/>';
            } else if (i == 7) {
                sxarr += ssyear[m] + '&nbsp;06 , 18 , 30 , 42<br/>';
            } else if (i == 8) {
                sxarr += ssyear[m] + '&nbsp;05 , 17 , 29 , 41<br/>';
            } else if (i == 9) {
                sxarr += ssyear[m] + '&nbsp;04 , 16 , 28 , 40<br/>';
            } else if (i == 10) {
                sxarr += ssyear[m] + '&nbsp;03 , 15 , 27 , 39<br/>';
            } else if (i == 11) {
                sxarr += ssyear[m] + '&nbsp;02 , 14 , 26 , 38<br/>';
            }
        }
        return sxarr;
    }
</script>
<c:import url="../../common/bodyEnd.jsp"/>