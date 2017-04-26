<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div>
    <h3><strong>【和值玩法】</strong></h3>
    <p>
        <small><strong>◎和值>>数字玩法说明</strong></small></br>
        至少选择1个号码投注，若投注号码与开奖的3个号码相加的和相同，视为中奖。<br/>
        ※举例：投注者购买和值为4，当期开奖结果如为112、121，则视为中奖。
    </p>
    <p>
        <small><strong>◎和值>>大小玩法说明</strong></small></br>
        开奖号码在3-10这个数字区间，包含数字3和10。若投注小，则视为中奖。<br/>
        开奖号码在11-18这个数字区间，包含数字11和18。若投注大，则视为中奖。<br/>
        ※举例：投注者购买小，当期开奖号码为116，那么这三个数字的和为8，属于区间3-10，则中奖。<br/>
        ※举例：投注者购买大，当期开奖号码为345，那么这三个数字的和为12，属于区间11-18，则中奖。
    </p>
    <p>
        <small><strong>◎和值>>双面玩法说明</strong></small></br>
        开奖号码的三个数之和的个位数为1、3、5、7、9，若投注单，则视为中奖。<br/>
        开奖号码的三个数之和的个位数为0、2、4、6、8，若投注双，则视为中奖。<br/>
        ※举例：投注者购买单，当期开奖号码为144，那么这三个数字的和为9，为单数，则中奖。<br/>
        ※举例：投注者购买双，当期开奖号码为345，那么这三个数字的和为12，为双数，则中奖。
    </p>
    <h3><strong>【通选玩法】</strong></h3>
    <p>
        当开奖号码为通选号(豹子，对子，顺子，三不同)中的任一组类型，即视为中奖。<br/>
        ※举例：投注者购买豹子通选号，当期开奖结果如为：666（三号相同），则视为中奖；<br/>
        ※举例：投注者购买对子通选号，当期开奖结果如为：112（有一对），则视为中奖；<br/>
        ※举例：投注者购买顺子通选号，当期开奖结果如为：123 、312，则视为中奖；<br/>
        ※举例：投注者购买三不同通选号，当期开奖结果如为：135(除顺子外的三不同号)，则视为中奖。
    </p>
    <h3><strong>【三同号单选玩法】</strong></h3>
    <p>
        至少选1组号码投注，所选投注号码与开奖号码相同，视为中奖。<br/>
        ※举例：投注者购买111三同号，当期开奖结果如为：111，则视为中奖。
    </p>
    <h3><strong>【三不同玩法】</strong></h3>
    从1-6种任选3个或多个号码投注，投注号码与开奖中的3个号码相同（顺序不限），则视为中奖。<br/>
    ※举例：投注者购买124三不同号，当期开奖结果如为：124，则视为中奖。
    <h3><strong>【二同号复选玩法】</strong></h3>
    至少选1个对子投注，开奖号码包含此对子即视为中奖。<br/>
    ※举例：投注者购买11*二同号，当期开奖结果如为：611，则视为中奖。
    <h3><strong>【二同号单选玩法】</strong></h3>
    至少选1个对子和1个不同号投注，投注号码与开奖号码全相同即视为中奖。<br/>
    ※举例：投注者购买112 、121，当期开奖结果如为：112 、121，则中奖。
    <h3><strong>【二不同号玩法】</strong></h3>
    从1-6种任选2个或多个号码投注，投注号码与开奖中的任意2个号码相同（顺序不限），则视为中奖。<br/>
    ※举例：投注者购买12二不同号，当期开奖结果如为：124，则视为中奖。
    <h3><strong>【猜必出玩法】</strong></h3>
    至少选择一个号码投注，投注号码与开奖号码的任意一个号码相同，即视为中奖。<br/>
    ※举例：投注者购买号码2，，当期开奖号码如为：121，则视为中奖。
    <h3><strong>【猜必不出玩法】</strong></h3>
    至少选择一个号码投注，投注号码与开奖号码的任意一个号码不相同，即视为中奖。<br/>
    ※举例：投注者购买号码5，当期开奖号码如为：234，则视为中奖。
</div>