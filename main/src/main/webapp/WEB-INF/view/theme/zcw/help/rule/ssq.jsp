<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
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
        <c:param name="playGroupId" value="12"/>
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>
        <div class="help_list">
            <div class="lis">
                <h5>双色球</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>官方玩法</li>
                    <li>游戏说明</li>
                </ul>
            </div>
            <div class="help_col show">
                <h4><strong>双色球玩法说明</strong></h4>
                <p><strong>蓝码玩法</strong></br>
                    特码　单　码：假设投注号码为开奖号码之特别号，视为中奖，其余情形视为不中奖。</br>
                    特码　大　小：开出之特码大于或等于25为特码大， 小于或等于24为特码小，开出49为和。</br>
                    特码　单　双：特码为双数叫特双，如8、16；特码为单数叫特单，如21、35，开出49为和。</br>
                    特码和数大小：以特码个位和十位数字之和来判断胜负，和数大于或等于7为大，小于或等于6为小，开出49号为和。</br>
                    特码和数单双：以特码个位和十位数字之和来判断单双，如01，12，32为和单，02，11，33为和双，开出49号为和。</br>
                    特码尾数大小：以特别号尾数若0尾~4尾为小、5尾~9尾为大；如01、32、44为特尾小；如05、18、19为特尾大，开出49号为和</br>
                    特码　半　特：以特别号大小与特别号单双游戏为一个投注组合；当期 特别号开出符合投注组合，即视为中奖；若当期特码开出49号，则视为和局；其余情形视为不中奖</p>
                <p><strong>红码玩法</strong></br>
                    大　　小： 以指定出现正码的位置与号码大于或等于25为大，小于或等于24为小，开出49为和。</br>
                    单　　双： 以指定出现正码的位置与号码为单数或双数下注，开出49为和。</br>
                    和数大小： 以指定出现正码的位置与号码个位和十位数字总和来判断胜负，和数大于或等于7为大，小于或等于6为小，开出49号为和。</br>
                    和数单双： 以指定出现正码的位置与号码个位和十位数字总和来判断单双，开出49号为和。</br>
                    色　　波： 以指定出现正码的位置的球色下注，开奖之球色与下注之颜色相同时，视为中奖，其余情形视为不中奖。</br>
                    尾数大小：以指定出现正码的位置与号码尾数大小下注，若0尾~4尾为小、5尾~9尾为大。如01、32、44为正尾小；如05、18、19为正尾大，开出49号为和</p>
                <p><strong>红码定位玩法</strong></br>
                    正码特是指 正1特、正2特、正3特、正4特、正5特、正6特：其下注的正码特号与现场摇珠开出之正码其开奖顺序及开奖号码相同，视为中奖，
                    如现场摇珠第一个正码开奖为49号，下注第一个正码特为49则视为中奖，其它号码视为不中奖。</p>
                <p><strong>双面玩法</strong></br>
                <p><strong>◎双面>>红码大小玩法说明</strong></br>
                    开奖结果第一位、第二位位、第三位、第四位、第五位、第六位数字为18、21、19、22、21、19、22 时为“大”，若为01、12、09、07、02、04、14 “小”，当投注位数大小与开奖结果的位数大小相符时，即为中奖。</br>
                    ※举例：投注者购买第一位小，当期开奖结果如为01、12、09、07、02、04、14 （01为小），则视为中奖。</p>
                <p><strong>◎双面>>红码单双玩法说明</strong></br>
                    开奖结果第一位、第二位位、第三位、第四位、第五位、第六位为13、15、07、05、09、09、03 时为“单”，若为18、24、12、22、22、16、22 时为“双”，当投注位数单双与开奖结果的位数单双相符时，即为中奖。 </br>
                    ※举例：投注者购买第三位单，当期开奖结果如为13、15、07、05、09、09、03 （07为单），则视为中奖。</p>
                <p><strong>◎双面>>蓝码大小玩法说明</strong></br>
                    开奖结果蓝码数字为15 时为“大”，若为05 “小”，当投注位数大小与开奖结果的位数大小相符时，即为中奖。</br>
                    ※举例：投注者购买蓝码小，当期开奖结果如为05 （05为小），则视为中奖。</p>
                <p><strong>◎双面>>蓝码单双玩法说明</strong></br>
                    开奖结果蓝码为13时为“单”，若为12 时为“双”，当投注位数单双与开奖结果的位数单双相符时，即为中奖。 </br>
                    ※举例：投注者购买蓝码单，当期开奖结果如为07 （07为单），则视为中奖。</p>
                <p><strong>◎双面>>总和单双 玩法说明</strong></br>
                    开奖结果总和的个位数为1、3、5、7、9时为“单”，若为0、2、4、6、8时为“双”，当投注总单双与开奖结果的总单双相符时，即为中奖。</br>
                    ※举例：投注者购买总单，当期开奖结果如为13、15、07、05、09、09、03 + 15（第一位13+第二位15+第三位07=35为单），则视为中奖。</p>
                <p><strong>◎双面>>总和大小 玩法说明</strong></br>
                    开奖结果所有号码总和的为108~214时为“大”，若为1~107时为“小”，当投注和数大小与开奖结果的和数大小相符时，即为中奖。 </br>
                    ※举例：投注者购买"总小"，当期开奖结果如为01、12、09、07、02、04、14 + 11（第一位01+第二位12+第三位09+第四位02+第五位04+第六位14+蓝码11=600为小），则视为中奖。</p>
                <p><strong>红蓝配玩法</strong></br>
                    红球开奖结果中，任意一个与篮球号码相同，即中奖。</p></br>
            </div>

            <div class="help_col">
                <h5><strong>双色球玩法说明</strong></h5>
                <p><strong>◎一等奖： </strong>
                    中5个红球和1个蓝球，顺序不限；如开奖号：红球123456蓝球1，投注号码红球12345蓝球1</p></br>
                <p><strong>◎二等奖： </strong>
                    中4个红球1个蓝球或者5个红球，顺序不限</p></br>
                <p><strong>◎三等奖： </strong>
                    中3个红球1个蓝球或4个红球，顺序不限</p></br>
                <p><strong>◎四等奖： </strong>
                    中2个红球1个蓝球或1个红球1个蓝球或者1个蓝球，即中奖，顺序不限</p></br>
            </div>
            <div class="help_col">
                <p><strong>总则</strong></br>
                    双色球是一种大盘玩法游戏，属乐透型彩票范畴，由中国福利彩票发行管理中心统一组织发行，在全国范围内销售。</br>
                    每周二、四、日21:30开奖，每周三期，开奖号码通过摇奖方式产生，中国教育电视台对开奖进行现场直播。</p>
            </div>
        </div>
    </div>
</div>

<c:import url="../../index/bottom.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>