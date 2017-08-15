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
        <c:param name="playGroupId" value="18" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>
        <div class="help_list">
            <div class="lis">
                <h5>江苏快3</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>官方玩法</li>·
                    <li>游戏说明</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>【和值玩法】</strong></h5>
                <p><strong>◎和值>>数字玩法说明</strong></br>
                    至少选择1个号码投注，若投注号码与开奖的3个号码相加的和相同，视为中奖。</br>
                    ※举例：投注者购买和值为4，当期开奖结果如为112、121，则视为中奖。</p>
                <p><strong>◎和值>>大小玩法说明</strong></br>
                    开奖号码在3-10这个数字区间，包含数字3和10。若投注小，则视为中奖。</br>
                    开奖号码在11-18这个数字区间，包含数字11和18。若投注大，则视为中奖。</br>
                    ※举例：投注者购买小，当期开奖号码为116，那么这三个数字的和为8，属于区间3-10，则中奖。</br>
                    ※举例：投注者购买大，当期开奖号码为345，那么这三个数字的和为12，属于区间11-18，则中奖。</p>
                <p><strong>◎和值>>双面玩法说明</strong></br>
                    开奖号码的三个数之和的个位数为1、3、5、7、9，若投注单，则视为中奖。</br>
                    开奖号码的三个数之和的个位数为0、2、4、6、8，若投注双，则视为中奖。</br>
                    ※举例：投注者购买单，当期开奖号码为144，那么这三个数字的和为9，为单数，则中奖。</br>
                    ※举例：投注者购买双，当期开奖号码为345，那么这三个数字的和为12，为双数，则中奖。</p>
                <h5><strong>【通选玩法】</strong></h5>
                <p> 当开奖号码为通选号(豹子，对子，顺子，三不同)中的任一组类型，即视为中奖。</br>
                    ※举例：投注者购买豹子通选号，当期开奖结果如为：666（三号相同），则视为中奖；</br>
                    ※举例：投注者购买对子通选号，当期开奖结果如为：112（有一对），则视为中奖；</br>
                    ※举例：投注者购买顺子通选号，当期开奖结果如为：123 、312，则视为中奖；</br>
                    ※举例：投注者购买三不同通选号，当期开奖结果如为：135(除顺子外的三不同号)，则视为中奖。</p>
                <h5><strong>【三同号单选玩法】</strong></h5>
                <p>至少选1组号码投注，所选投注号码与开奖号码相同，视为中奖。</br>
                    ※举例：投注者购买111三同号，当期开奖结果如为：111，则视为中奖。</p>
                <h5><strong>【三不同玩法】</strong></h5>
                <p>从1-6种任选3个或多个号码投注，投注号码与开奖中的3个号码相同（顺序不限），则视为中奖。</br>
                    ※举例：投注者购买124三不同号，当期开奖结果如为：124，则视为中奖。</p>
                <h5><strong>【二同号复选玩法】</strong></h5>
                <p>至少选1个对子投注，开奖号码包含此对子即视为中奖。</br>
                    ※举例：投注者购买11*二同号，当期开奖结果如为：611，则视为中奖。</p>
                <h5><strong>【二同号单选玩法】</strong></h5>
                <p>至少选1个对子和1个不同号投注，投注号码与开奖号码全相同即视为中奖。</br>
                    ※举例：投注者购买112 、121，当期开奖结果如为：112 、121，则中奖。</p>
                <h5><strong>【二不同号玩法】</strong></h5>
                <p>从1-6种任选2个或多个号码投注，投注号码与开奖中的任意2个号码相同（顺序不限），则视为中奖。</br>
                    ※举例：投注者购买12二不同号，当期开奖结果如为：124，则视为中奖。</p>
                <h5><strong>【猜必出玩法】</strong></h5>
                <p>至少选择一个号码投注，投注号码与开奖号码的任意一个号码相同，即视为中奖。</br>
                    ※举例：投注者购买号码2，，当期开奖号码如为：121，则视为中奖。</p>
                <h5><strong>【猜必不出玩法】</strong></h5>
                <p>至少选择一个号码投注，投注号码与开奖号码的任意一个号码不相同，即视为中奖。</br>
                    ※举例：投注者购买号码5，当期开奖号码如为：234，则视为中奖。</p>

            </div>
            <div class="help_col">
                <h5>筹备中</h5>
            </div>
            <div class="help_col">
                <h5><strong>总则</strong></h5>
                <p>1.	根据《彩票管理条例》等有关规定，制定本规则。
                2.	中国福利彩票江苏省快三游戏（以下简称“快三”）由中国福利彩票发行管理中心和组织销售，江苏省福利彩票销售机构（以下称“江苏福彩机构”）在所辖区域内承销。
                3.	快三采用计算机网络系统发行，在江苏福彩机构设置的销售网点销售，定期开奖。
                4.	快三实行自愿购买，凡购买该彩票均被视为同意并遵守本规则。
                5.	不得向未成年人出售彩票或兑付奖金。
                本站江苏快三游戏每天进行82期，开奖时间为08:39至22:10，每隔10分钟开奖一次。快三采用专用电子开奖设备开奖，每期随机生成3个号码，作为当期中奖号码。<span style="color:#E53333;">开奖结果为三码 (百、十、个)。假设结果为1 、2 、3。</span></p>
            </div>
        </div>
    </div>
</div>

<c:import url="../../index/bottom.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp" />
<c:import url="../../common/bodyEnd.jsp"/>