<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="help_col show">
    <span id="test1"></span>
    <h4><strong>【前一玩法】</strong></h4>
    <p>
        <strong>◎直选复式</strong></br>
        从01-10中至少选择1个号码组成一注，所选号码与开奖号码中第一位相同即中奖。</br>
        ※举例 投注方案：01 开奖号码：01 02 03 04 05 06 07 08 09 10即可中前一直选。</td>。
    </p>

    <hr>
    <span id="test2"></span>
    <h4><strong>【前二玩法】</strong></h4>
    <p><strong>◎直选复式 </strong></br>
        从冠军、亚军位中至少各选择一个号码组成一注，开奖号码中第一、第二位与选号按位相同，即为中奖。</br>
        ※举例：投注方案：冠军01，亚军02 开奖号码：01 02 03 04 05 06 07 08 09 10即可中前二直选。</p>

    <hr>
    <span id="test3"></span>
    <h4><strong>【前三玩法】</strong></h4>
    <p><strong>◎直选复式 </strong></br>
        从冠军、亚军、季军位中至少各选择一个号码组成一注，开奖号码中第一、第二、第三位与选号按位相同，即为中奖。</br>
        ※举例：投注方案：冠军01，亚军02，季军03 开奖号码：01 02 03 04 05 06 07 08 09 10即可中前三直选。</p>

    <hr>
    <span id="test4"></span>
    <h4><strong>【定位胆玩法】</strong></h4>
    <p><strong>◎定位胆 </strong></br>
        从冠军到第十名任意位置上至少选择1个或1个以上号码，每注由1个号码组成，所选号码与相同位置上的开奖号码一致，即为中奖。</br>
        ※举例：投注方案：冠军01 开奖号码：01 02 03 04 05 06 07 08 09 10即中定位胆。</p>
</div>