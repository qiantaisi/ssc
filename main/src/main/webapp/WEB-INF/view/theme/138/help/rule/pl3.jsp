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
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp"/>
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="1" />
        <c:param name="playGroupId" value="4" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>

        <div class="help_list">
            <div class="lis">
                <h5>体彩排列3</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>官方玩法</li>
                    <li>开奖规则</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>选号玩法</strong></h5>
                <p><strong>◎一字定位</strong></br>
                    于百十个任选一位，自0~9任选1个号进行投注，当开奖结果与所选的定位与号码相同时，即为中奖。</br>
                    ※举例：投注者购买一字百定位，选择号码为1，当期开奖结果如果只要百位数为1，十位及个位数无论为1xx皆视为中奖。（x=0~9任一数）</p>
                <p><strong>◎二字定位</strong></br>于百十个任选二位，自0~9任选2个号进行投注，当开奖结果与所选号码相同且顺序一致时，即为中奖。</br>※举例：投注者购买二字百十定位，选择号码为百位1、十位2，当期开奖结果如果只要百位与十位皆与其所选的号码相同且顺序一致时，个位数无论为12x皆视为中奖。（x=0~9任一数）</p>
                <p><strong>◎三字定位</strong></br>
                    于百十个位自0~9任选3个号进行投注，当开奖结果与所选号码相同且顺序一致时，即为中奖。</br>
                    ※举例：投注者购买三字百十个定位，选择号码为123，当期开奖结果如为123，即视为中奖。</p>
                <p><strong>◎一字组合</strong></br>
                    0~9任选1个号进行投注，当开奖结果百十个任一数与所选的号码相同时，即为中奖。</br>
                    ※举例：投注者购买一字组合，选择号码为1，当期开奖结果如为1xx、x1x、xx1皆视为中奖。（x=0~9任一数）</p>
                <p><strong>◎二字组合</strong></br>
                    0~9任选2个号进行投注，当开奖结果百十个任二数与所选的号码相同时，即为中奖。</br>
                    ※举例：投注者购买二字组合，选择2个相同号码如为11，当期开奖结果如为11x、1x1、x11、皆视为中奖。（x=0~9任一数）</br>
                    ※举例：投注者购买二字组合，选择2个不同号码如为12，当期开奖结果如为12x、1x2、21x、2x1、x12、x21皆视为中奖。（x=0~9任一数）</br>
                    【附注】：以上二例赔率不同</p>
                <p><strong>◎三字组合</strong></br>
                    三字：自0~9号任选3个皆相同的号码时（如111），当开奖结果与所选号码相同时，即为中奖。</br>
                    ※举例：投注者购买三字组合，选择号码为111，当期开奖结果如为111则视为中奖。</br>
                    组三：自0~9号任选3个号其中2个号相同时（如112），当开奖结果与所选号码相同但顺序不同时，即为中奖。</br>
                    ※举例：投注者购买三字组合，选择号码为112，当期开奖结果如为112、121、211皆视为中奖。</br>
                    组六：自0~9号任选3个号且3个号都不同时（如123），当开奖结果与所选号码相同但顺序不同时，即为中奖。</br>
                    ※举例：投注者购买三字组合，选择号码为123，当期开奖结果如为123、132、213、231、312、321皆视为中奖。</br>
                    【附注】：以上三种投注组合其赔率皆不同</p>
                <p><strong>◎組选三</strong></br>
                    会员可以挑选5~10个号码，当开奖结果中有且只有两个号码重复，则视为中奖。挑选不同个数号码有其相对应的赔率。如果是选择
                    1、2、3、4、5中的任何两个号码，且其中有一个号码重复则中奖。<br>
                    例如：112、344，若是开出豹子则不算中奖。<br>
                    备注："豹子"为三字同号，例如：111、222</p>
                <p><strong>◎組选六</strong></br>
                    会员可以挑选择4~8个号码，当开奖结果都出现在所下注的号码中且没有任何号码重复，则视为中奖。挑选不同的号码有其相对应的赔率，中奖赔率以所选号码中的最小赔率计算彩派。<br>
                    例如：如果是选择(1、2、3、4)，则开奖结果为123、124、134、234都中奖，其他都是不中奖。例如：112、133、145、444等都是不中奖。</p>
                <p><strong>◎复式组合</strong></br>
                    在百、十、个中分别选择号码组合。例如选择3x2x4，即百位数选3个号码，十位数选2个号码，个位数选4个号码或选择3x3x3，如每个位数所选择的号码都对应出现在开奖结果中，则为中奖。<br>
                    此游戏选号有以下限制：</br>
                    每一位数最少要选择1个号码，最多选10个号码。</br>
                    三个位数共选取号码数量，最少需选择9个号，最多选择21个号码</p>
                <p><strong>◎一字过关</strong></br>
                    以开奖三个号之大小、单双、质合作为中奖的依据。<br>
                    举例：开奖结果为3、4、8。会员若在百定位下小、十定位下双、个定位下合。则视为中奖。</p>
                <p><strong>◎跨度</strong></br>
                    以开奖三个号码的最大差距(跨度)，作为中奖的依据。会员可以选择0~9的任一跨度</br>
                    例如开奖结果为3，4，8。中奖的跨度为5。(最大号码 8减最小号码 3 = 5)</br>
                    若开奖结果三个号码都相同，则中奖的跨度为0。</p>
                <h5><strong>和数玩法</strong></h5>
                <p><strong>◎和数说明</strong></br>
                    开奖结果百十个三位数的总和值与若投注百十个位数字的总和值与相同时，即为中奖。<br>
                    ※举例：投注者购买和数1，当期开奖结果如为001、010、100此三种和皆为1，则视为中奖。</p>
                <p><strong>◎百十个和数尾数说明</strong></br>
                    开奖结果百十个三位数的总和值的个位数字与若投注百十个位数字的总和值的个位数与相同时，即为中奖。<br>
                    ※举例：投注者购买百十个和尾数3，当期开奖结果如为373、490、968此三种和的尾数皆为3，则视为中奖。</p>
                <p><strong>◎二字定位和尾数说明</strong></br>
                    开奖结果百十、百个、十个二位数的总和值尾数若与投注百十、百个、十个二位数的总和值尾数与相同时，即为中奖。<br>
                    ※举例：投注者购买十个和尾数4，当期开奖结果如为168、295、577此三种和的尾数皆为4，则视为中奖。</p>
                <h5><strong>两面玩法</strong></h5>
                <p><strong>◎单双玩法说明</strong></br>
                    开奖结果百位、十位或个位数字为1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”，当投注位数单双与开奖结果的位数单双相符时，即为中奖。 </br>
                    举例：投注者购买百位单，当期开奖结果如为130（1为单），则视为中奖。</br>
                    开奖结果百十位、十个位或百个位数字总和的个位数为1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”，当投注和数单双与开奖结果的和数单双相符时，即为中奖。</br>
                    ※举例：投注者购买和数百十位单，当期开奖结果如为290（百2+十9=11为单），则视为中奖。</p>
                <p><table width="100%">
                <tbody><tr>
                    <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        单
                    </th>
                    <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        双
                    </th>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                        1、 3、 5、 7、 9
                    </td>
                    <td bgcolor="#FFF7F0" class="point" align="center">
                        0、 2、 4、 6、 8
                    </td>
                </tr>
                </tbody></table></p>
                <p>开奖结果百十个位数字总和的为1、3、5、7、9、11、13、15、17、19、21、21、23、25、27时为“单”，
                    若为0、2、4、6、8、10、12、14、16、18、20、22、24、26时为“双”，当投注和数单双与开奖结果的和数单双相符时，即为中奖。<br>
                    ※举例：投注者购买和数单，当期开奖结果如为290（百2+十9+个0=11为单），则视为中奖。</p>
                <p><table width="100%">
                <tbody><tr>
                    <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        单
                    </th>
                    <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        双
                    </th>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                        1、 3、 5、 7、 9、11、13、
                        <br>
                        15、17、19、21、23、25、27
                    </td>
                    <td bgcolor="#FFF7F0" class="point" align="center">
                        0、 2、 4、 6、 8、10、12、
                        <br>
                        14、16、18、20、22、24、26
                    </td>
                </tr>
                </tbody></table></p>
                <p><strong>◎大小玩法说明</strong></br>
                    开奖结果百位、十位或个位数字为5、6、7、8、9时为“大”，若为0、1、2、3、4时为“小”，当投注位数大小与开奖结果的位数大小相符时，即为中奖。</br>
                    ※举例：投注者购买百位小，当期开奖结果如为352（3为小），则视为中奖。</br>
                    开奖结果百十位、十个位或百个位数字总和的个位数为5、6、7、8、9时为“大”，若为0、1、2、3、4时为“小”，当投注和数大小与开奖结果的和数大小相符时，即为中奖。</br>
                    ※举例：投注者购买和数百十位小，当期开奖结果如为491（百4+十9=13，尾数3为小），则视为中奖。</p>
                <p><table width="100%">
                <tbody><tr>
                    <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        大
                    </th>
                    <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        小
                    </th>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                        5、 6、 7、 8、 9
                    </td>
                    <td bgcolor="#FFF7F0" class="point" align="center">
                        0、 1、 2、 3、 4
                    </td>
                </tr>
                </tbody></table></p>
                <p>开奖结果百十个位数字总和的为14、15、16、17、18、19、20、21、22、23、24、25、26、27时为“大”， 若为0、1、2、3、4、5、6、7、8、9、10、11、12、13时为“小”，当投注和数大小与开奖结果的和数大小相符时，即为中奖。</br>
                    ※举例：投注者购买和数大，当期开奖结果如为976（百9+十7+个6=22为大），则视为中奖。</p>
                <p><table width="100%">
                <tbody><tr>
                    <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        大
                    </th>
                    <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        小
                    </th>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                        14、15、16、17、18、19、20、21、
                        <br>
                        22、23、24、25、26、27
                    </td>
                    <td bgcolor="#FFF7F0" class="point" align="center">
                        0、1、2、3、4、5、6、
                        <br>
                        7、8、9、10、11、12、13
                    </td>
                </tr>
                </tbody></table></p>
                <p><strong>◎质合玩法说明</strong></br>
                    开奖结果百位、十位或个位数字为1、2、3、5、7时为“质数”，若为0、4、6、8、9时为“合数”，当投注位数质合与开奖结果的位数质合相符时，即为中奖。</br>
                    ※举例：投注者购买个位质，当期开奖结果如为957（7为质），则视为中奖。</br>
                    开奖结果百十位、十个位或百个位数字总和的个位数为1、2、3、5、7时为“质数”，若为0、4、6、8、9时为“合数”，当投注号码与开奖结果的质合相符时，即为中奖。</br>
                    ※举例：投注者购买百十位合，当期开奖结果如为957（百9+十5=14，尾数4为合数），则视为中奖。</br>
                    开奖结果百十个位数字总和的个位数为1、2、3、5、7时为“质数”，若为0、4、6、8、9时为“合数”，当投注号码与开奖结果的质合相符时，即为中奖。</br>
                    ※举例：投注者购买百十个位質，当期开奖结果如为957（百9+十5+个7=21，尾数1为質数），则视为中奖。</p>
                <p><table width="100%">
                <tbody><tr>
                    <th width="50%" valign="top" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        质
                    </th>
                    <th width="50%" bgcolor="#AFAFE4" align="center" class="subtitle2">
                        合
                    </th>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFF7F0" class="point" align="center">
                        1、 2、 3、 5、 7
                    </td>
                    <td bgcolor="#FFF7F0" class="point" align="center">
                        0、 4、 6、 8、 9
                    </td>
                </tr>
                </tbody></table></p>
            </div>
            <div class="help_col">
                <h5>筹备中</h5>
            </div>
            <div class="help_col">
                <h5><strong>总则</strong></h5>
                <p>排列三是依照中国体彩管理中心发行的排列三的开奖结果为派彩依据，开奖时间是每天晚上八点，每天开奖一次。假设排列三开奖结果为 123，那么百位是 1，十位是 2，个位是 3。(每个位数在开奖时从 0 ~ 9 中摇出一个结果)；本公司排列三具体游戏规则请参考彩种介绍。</p>
            </div>
        </div>
    </div>
</div>

<c:import url="../../index/bottom.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp" />
<c:import url="../../common/bodyEnd.jsp"/>