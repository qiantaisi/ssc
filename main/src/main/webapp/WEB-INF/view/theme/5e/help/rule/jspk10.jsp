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
                <p><strong>◎直选单式 </strong></br>
                    手动输入两个号码组成一注，所选号码与开奖号码中第一、第二位相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：0102，开奖号码：01 02 03 04 05 06 07 08 09 10即可中前二直选。</p>

                <hr>
                <span id="test3"></span>
                <h4><strong>【前三玩法】</strong></h4>
                <p><strong>◎直选复式 </strong></br>
                    从冠军、亚军、季军位中至少各选择一个号码组成一注，开奖号码中第一、第二、第三位与选号按位相同，即为中奖。</br>
                    ※举例：投注方案：冠军01，亚军02，季军03 开奖号码：01 02 03 04 05 06 07 08 09 10即可中前三直选。</p>
                <p><strong>◎直选单式 </strong></br>
                    手动输入两个号码组成一注，所选号码与开奖号码中第一、第二、第三位相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：010203开奖号码：01 02 03 04 05 06 07 08 09 10即可中前三直选。</p>

                <hr>
                <span id="test4"></span>
                <h4><strong>【定位胆玩法】</strong></h4>
                <p><strong>◎直选复式 </strong></br>
                    从冠军到第十名任意位置上至少选择1个或1个以上号码，每注由1个号码组成，所选号码与相同位置上的开奖号码一致，即为中奖。</br>
                    ※举例：投注方案：冠军01 开奖号码：01 02 03 04 05 06 07 08 09 10即中定位胆。</p>
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





<c:import url="../../common/bottomInfo.jsp"/>
<c:import url="../../common/copyright.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp" />
<c:import url="../../common/bodyEnd.jsp"/>