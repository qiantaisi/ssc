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
        <c:param name="playGroupId" value="23"/>
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>

        <div class="help_list">
            <div class="lis">
                <h5>极速PK10</h5>
                <ul>
                    <li class="sli">常规玩法</li>
                    <li>官方玩法</li>
                    <li>游戏说明</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>【两面】</strong></h5>
                <p><strong>◎1～10 两面</strong>：指 单、双；大、小。</br>
                    <strong>◎单、双</strong>：号码为双数叫双，如4、8 ；号码为单数叫单， 如 5、9。</br>
                    <strong>◎大、小</strong>：开出之号码大于或等于6为大，小于或等于5 为小。。</br>
                    <strong>◎1～5龙虎</strong>:</br>
                    冠　军 龙/虎：“第一名”船号大于“第十名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
                    亚　军 龙/虎：“第二名”船号大于“第九名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
                    第三名 龙/虎：“第三名”船号大于“第八名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
                    第四名 龙/虎：“第四名”船号大于“第七名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
                    第五名 龙/虎：“第五名”船号大于“第六名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</p>


                <h5><strong>【排名1～10】</strong></h5>
                <p><strong>◎第一名～第十名 船号指定:</strong>：每一个船号为一投注组合，开奖结果“投注船号”对应所投名次视为中奖，其余情形视为不中奖。</p>


                <h5><strong>【冠、亚军 组合】</strong></h5>
                <p><strong>◎亚军 龙/虎：</strong>冠亚和单双 ：“冠亚和值”为单视为投注“单”的注单视为中奖，为双视为投注“双”的注单视为中奖，其余视为不中奖。</br>
                    <strong>冠亚和大小</strong>：“冠亚和值”大于11时投注“大”的注单视为中奖，小于或等于11时投注“小”的注单视为中奖，其余视为不中奖。</br>
                    <strong>冠亚和指定</strong>：“冠亚和值”可能出现的结果为3～19， 投中对应“冠亚和值”数字的视为中奖，其余视为不中奖。</p>
            </div>
            <div class="help_col">
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
                <p><strong>◎定位胆 </strong></br>
                    从冠军到第十名任意位置上至少选择1个或1个以上号码，每注由1个号码组成，所选号码与相同位置上的开奖号码一致，即为中奖。</br>
                    ※举例：投注方案：冠军01 开奖号码：01 02 03 04 05 06 07 08 09 10即中定位胆。</p>
            </div>
            <div class="help_col">
                <h5><strong>开奖说明</strong></h5>
                <p>极速PK10（开奖网） 北京时间（GMT+8）
                    每天00:00起每隔1分钟开奖一次, 每天开奖1440期</p>
            </div>
        </div>
    </div>
</div>


<c:import url="../../common/bottomInfo.jsp"/>
<c:import url="../../common/copyright.jsp"/>
<c:import url="../../common/commonJs.jsp"/>
<c:import url="../../common/jsCommonLogin.jsp"/>
<c:import url="../common/bottom.jsp"/>
<c:import url="../../common/bodyEnd.jsp"/>