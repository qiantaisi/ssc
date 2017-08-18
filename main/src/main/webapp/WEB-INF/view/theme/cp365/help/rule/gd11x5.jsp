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
        <c:param name="playGroupId" value="11" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp"/>
        <c:import url="../common/right.jsp"/>

        <div class="help_list">
            <div class="lis">
                <h5>广东11选5</h5>
                <ul>
                    <li class="sli">官方玩法</li>
                    <%-- <li>官方玩法</li>--%>
                    <li>游戏说明</li>
                </ul>
            </div>
            <div class="help_col show">
                <h5><strong>【三码玩法】</strong></h5>
                <p><strong>◎前三直选复式</strong></br>
                    从01-11中各选择3个不重复号码组成一注，所选号码与当期5个开奖号码中的前3个号码相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：01 02 03。开奖号码：01 02 03 * *，即中前三直选。</p>
                <p><strong>◎前三直选单式</strong></br>
                    手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的前3个号码相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：01 02 03。开奖号码：01 02 03 * *，即中前三直选。</p>
                <p><strong>◎前三组选复式</strong></br>
                    从11个号码中选择3个或多个号码，所选号码与当期5个开奖号码中的前3个号码相同，顺序不限，即为中奖。 </br>
                    ※举例：投注方案：01 02 03。开奖号码：03 01 02 * *（前三顺序不限），即中前三组选。</p>
                <p><strong>◎前三组选单式</strong></br>
                    手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的前3个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：01 02 03。开奖号码：03 01 02 * *（前三顺序不限），即中前三组选。</p>
                <p><strong>◎前三组选胆拖</strong></br>
                    从01-11中选择3个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共3个号码。所选单注号码与当期5个开奖号码中的前3个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：胆码 02，拖码 01 06。开奖号码：02 01 06 * *（前三顺序不限），即中前三组选胆拖。</p>
                <p><strong>◎中三直选复式</strong></br>
                    从01-11中各选择3个不重复号码组成一注，所选号码与当期5个开奖号码中的中间3个号码相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：01 02 03。开奖号码： * 01 02 03 *，即中中三直选。</p>
                <p><strong>◎中三直选单式</strong></br>
                    手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的中间3个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：01 02 03。开奖号码：* 03 01 02 *（中三顺序不限），即中中三组选。</p>
                <p><strong>◎中三组选胆拖</strong></br>
                    选择3个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共3个号码。所选单注号码与当期5个开奖号码中的中间3个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：胆码 02，拖码 01 06。开奖号码： * 02 01 06 *（中三顺序不限），即中中三组选胆拖。</p>
                <p><strong>◎后三直选复式</strong></br>
                    从01-11中选择3个或多个不重复号码，所选号码与当期5个开奖号码中的后3个号码相同，且顺序一致，即为中奖。 </br>
                    ※举例：投注方案：01 02 03。开奖号码： * * 01 02 03 ，即中后三直选。</p>
                <p><strong>◎后三直选单式</strong></br>
                    手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的后3个号码相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：01 02 03。开奖号码： * * 01 02 03 ，即中后三直选。</p>
                <p><strong>◎后三组选复式</strong></br>
                    从01-11中选择3个或多个号码，所选号码与当期5个开奖号码中的后3个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：01 02 03。开奖号码： * * 03 01 02 （后三顺序不限），即中后三组选。</p>
                <p><strong>◎后三组选单式</strong></br>
                    手动输入3个号码组成一注，所输入的号码与当期5个开奖号码中的后3个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：01 02 03。开奖号码：* * 03 01 02（后三顺序不限），即中后三组选。</p>


                <hr>
                <h5><strong>【二码玩法】</strong></h5>
                <p><strong>◎前二直选复式</strong></br>
                    从01-11中选择2个不重复号码组成一注，所选号码与当期5个开奖号码中的前2个号码相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：01 02。开奖号码：01 02 * * *，即中前二直选。</p>
                <p><strong>◎前二直选单式</strong></br>
                    手动输入2个号码组成一注，所输入的号码与当期5个开奖号码中的前2个号码相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：01 02 。开奖号码：01 02 * *，即中前二直选。</p>
                <p><strong>◎前二组选复式</strong></br>
                    从01-11个号码中选择2个或多个号码，所选号码与当期5个开奖号码中的前2个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：01 02。开奖号码：02 01 * * *，（前二顺序不限），即中前二组选。</p>
                <p><strong>◎前二组选单式</strong></br>
                    手动输入2个号码组成一注，所输入的号码与当期5个开奖号码中的前2个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：01 02 。开奖号码：01 02 * *，（前二顺序不限），即中前二直选。</p>
                <p><strong>◎前二直选胆拖</strong></br>
                    从01-11中选择2个或多个号码进行投注，每注需至少包括1个胆码及1个拖码。所选单注号码与当期5个开奖号码中的前2个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：胆码 01，拖码 06。开奖号码：06 01 * * *，（前二顺序不限），即中前二组选胆拖。</p>
                <p><strong>◎后二直选复式</strong></br>
                    从每位各选1个或多个号码2个号码组成一注，所选号码与当期5个开奖号码中的后2个号码相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：01 02。开奖号码： * * * 01 02，即中后二直选。</p>
                <p><strong>◎后二直选单式</strong></br>
                    从每位各选1个或多个号码2个号码组成一注，所选号码与当期5个开奖号码中的后2个号码相同，且顺序一致，即为中奖。</br>
                    ※举例：投注方案：01 02。开奖号码： * * * 01 02，即中后二直选。</p>
                <p><strong>◎后二组选复式</strong></br>
                    从11个号码中选择2个或多个号码，所选号码与当期5个开奖号码中的后2个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：01 02。开奖号码： * * * 02 01，（后二顺序不限），即中后二组选。</p>
                <p><strong>◎后二组选单式</strong></br>
                    手动输入2个号码组成一注，所输入的号码与当期5个开奖号码中的后2个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：01 02。开奖号码： * * * 02 01，（后二顺序不限），即中后二组选。</p>
                <p><strong>◎后二组选胆拖</strong></br>
                    从01-11中选择2个或多个号码进行投注，每注需至少包括1个胆码及1个拖码。所选单注号码与当期5个开奖号码中的后2个号码相同，顺序不限，即为中奖。</br>
                    ※举例：投注方案：胆码 01，拖码 06。开奖号码：* * * 06 01 ，（后二顺序不限），即中后二组选胆拖。</p>

                <hr>
                <h5><strong>【不定位玩法】</strong></h5>
                <p><strong>◎前三位</strong></br>
                    从11个号码中选择1个或多个号码，每注由1个号码组成，只要当期开奖号码中的第一位、第二位、第三位开奖号码包含所选号码，即为中奖。</br>
                    ※举例：投注方案：01。开奖号码：01 * * * *，* 01 * * *，* * 01 * *，即中前三位。</p>
                <p><strong>◎中三位</strong></br>
                    从11个号码中选择1个或多个号码，每注由1个号码组成，只要当期开奖号码中的第二位、第三位、第四位开奖号码包含所选号码，即为中奖。</br>
                    ※举例：投注方案：01。开奖号码：* 01 * * *，* * 01 * *，* * * 01 *，即中中三位。</p>
                <p><strong>◎后三位</strong></br>
                    从11个号码中选择1个或多个号码，每注由1个号码组成，只要当期开奖号码中的第三位、第四位、第五位开奖号码包含所选号码，即为中奖。</br>
                    ※举例：投注方案：01。开奖号码：* * 01 * *，* * * 01 *，* * * * 01，即中中三位。</p>


                <hr>
                <h5><strong>【定位胆玩法】</strong></h5>
                <p><strong>◎前三位</strong></br>
                    从第一位至第五位中，任意1个或多个位置上选择1个或1个以上号码，投注号码与相同位置上的开奖号码对位一致，即为中奖。</br>
                    ※举例：投注方案：第一位 01。开奖号码：01 * * * *，即中定位胆。</p>

                <hr>
                <h5><strong>【任选复式玩法】</strong></h5>
                <p><strong>◎任选一中一</strong></br>
                    从11个号码中选择1个或多个号码，每注由1个号码组成，只要当期的5个开奖号码中包含所选号码，即为中奖。</br>
                    ※举例：投注方案：05。开奖号码：08 04 11 05 03，即中任选一中一。</p>
                <p><strong>◎任选二中二</strong></br>
                    从11个号码中选择2个或多个号码，每注由2个号码组成，只要当期的5个开奖号码中包含所选号码，即为中奖。</br>
                    ※举例：投注方案：05 04。开奖号码：08 04 11 05 03，即中任选二中二。</p>
                <p><strong>◎任选三中三</strong></br>
                    从11个号码中选择3个或多个号码，每注由3个号码组成，只要当期的5个开奖号码中包含所选号码，即为中奖。</br>
                    ※举例：投注方案：05 04 11。开奖号码：08 04 11 05 03，即中任选三中三。</p>
                <p><strong>◎任选四中四</strong></br>
                    从11个号码中选择4个或多个号码，每注由4个号码组成，只要当期的5个开奖号码中包含所选号码，即为中奖。</br>
                    ※举例：投注方案：05 04 11 08。开奖号码：08 04 11 05 03，即中任选四中四。</p>
                <p><strong>◎任选五中五</strong></br>
                    从11个号码中选择5个或多个号码，每注由5个号码组成，只要当期的5个开奖号码中包含所选号码，即为中奖。</br>
                    ※举例：投注方案：08 04 11 05 03，开奖号码：08 04 11 05 03，即中任选五中五</p>
                <p><strong>◎任选六中五</strong></br>
                    从11个号码中选择6个或多个号码，每注由6个号码组成，只要当期的5个开奖号码中包含所选号码，即为中奖。</br>
                    ※举例：投注方案：08 04 11 05 03 22，开奖号码：08 04 11 05 03，即中任选六中五</p>
                <p><strong>◎任选七中五</strong></br>
                    从11个号码中选择7个或多个号码，每注由7个号码组成，只要当期的5个开奖号码中包含所选号码，即为中奖。</br>
                    ※举例：投注方案：08 04 11 05 03 11 22，开奖号码：08 04 11 05 03，即中任选七中五</p>
                <p><strong>◎任选八中五</strong></br>
                    从11个号码中选择8个或多个号码，每注由8个号码组成，只要当期的5个开奖号码中包含所选号码，即为中奖。</br>
                    ※举例：投注方案：08 04 11 05 03 11 22 33，开奖号码：08 04 11 05 03，即中任选八中五</p>


                <hr>
                <h5><strong>【任选单式玩法】</strong></h5>
                <p><strong>◎任选一中一</strong></br>
                    手动输入1个号码组成一注，只要当期的5个开奖号码中包含所输入号码，即为中奖。</br>
                    ※举例：投注方案：05。开奖号码：08 04 11 05 03，即中任选一中一。</p>
                <p><strong>◎任选二中二</strong></br>
                    手动输入2个号码组成一注，只要当期的5个开奖号码中包含所输入号码，即为中奖。</br>
                    ※举例：投注方案：05 04。开奖号码：08 04 11 05 03，即中任选二中二。</p>
                <p><strong>◎任选三中三</strong></br>
                    手动输入3个号码组成一注，只要当期的5个开奖号码中包含所输入号码，即为中奖。</br>
                    ※举例：投注方案：05 04 11。开奖号码：08 04 11 05 03，即中任选三中三。</p>
                <p><strong>◎任选四中四</strong></br>
                    手动输入4个号码组成一注，只要当期的5个开奖号码中包含所输入号码，即为中奖。</br>
                    ※举例：投注方案：05 04 11 08。开奖号码：08 04 11 05 03，即中任选四中四。</p>
                <p><strong>◎任选五中五</strong></br>
                    手动输入5个号码组成一注，只要当期的5个开奖号码中包含所输入号码，即为中奖。</br>
                    ※举例：投注方案：08 04 11 05 03，开奖号码：08 04 11 05 03，即中任选五中五</p>
                <p><strong>◎任选六中五</strong></br>
                    手动输入6个号码组成一注，只要当期的5个开奖号码中包含所输入号码，即为中奖。</br>
                    ※举例：投注方案：08 04 11 05 03 22，开奖号码：08 04 11 05 03，即中任选六中五</p>
                <p><strong>◎任选七中五</strong></br>
                    手动输入7个号码组成一注，只要当期的5个开奖号码中包含所输入号码，即为中奖。</br>
                    ※举例：投注方案：08 04 11 05 03 11 22，开奖号码：08 04 11 05 03，即中任选七中五</p>
                <p><strong>◎任选八中五</strong></br>
                    手动输入8个号码组成一注，只要当期的5个开奖号码中包含所输入号码，即为中奖。</br>
                    ※举例：投注方案：08 04 11 05 03 11 22 33，开奖号码：08 04 11 05 03，即中任选八中五</p>

                <hr>
                <h5><strong>【任选胆拖玩法】</strong></h5>
                <p><strong>◎任选二中二</strong></br>
                    从01-11中选出2个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共2个号码。只要当期5个开奖号码中包含所选投注号码，即为中奖。</br>
                    ※举例：投注方案：胆码 08，托码 06。开奖号码：06 08 11 09 02，即中任选二中二。</p>
                <p><strong>◎任选三中三</strong></br>
                    从01-11中选出3个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共3个号码。只要当期5个开奖号码中包含所选投注号码，即为中奖。</br>
                    ※举例：投注方案：胆码 08，托码 06 11。开奖号码：06 08 11 09 02，即中任选三中三。</p>
                <p><strong>◎任选四中四</strong></br>
                    从01-11中选出4个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共4个号码。只要当期5个开奖号码中包含所选投注号码，即为中奖。</br>
                    ※举例：投注方案：胆码 08，托码 06 11 09。开奖号码：06 08 11 09 02，即中任选四中四。</p>
                <p><strong>◎任选五中五</strong></br>
                    从01-11中选出5个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共5个号码。只要当期5个开奖号码中包含所选投注号码，即为中奖。</br>
                    ※举例：投注方案：胆码 08，托码 06 11 02 08。开奖号码：06 08 11 09 02，即中任选五中五。</p>
                <p><strong>◎任选六中五</strong></br>
                    从01-11中选出6个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共6个号码。只要当期5个开奖号码中包含所选投注号码，即为中奖。</br>
                    ※举例：投注方案：胆码 08，托码 06 11 02 08。开奖号码：06 08 11 09 02，即中任选六中五。</p>
                <p><strong>◎任选七中五</strong></br>
                    从01-11中选出7个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共7个号码。只要当期5个开奖号码中包含所选投注号码，即为中奖。</br>
                    ※举例：投注方案：胆码 08，托码 06 11 02 08 22 33。开奖号码：06 08 11 09 02，即中任选七中五。</p>
                <p><strong>◎任选八中五</strong></br>
                    从01-11中选出8个或多个号码进行投注，每注需至少包括1个胆码及1个拖码，共8个号码。只要当期5个开奖号码中包含所选投注号码，即为中奖。</br>
                    ※举例：投注方案：胆码 08，托码 06 11 02 08 22 33 44。开奖号码：06 08 11 09 02，即中任选八中五。</p>

            </div>
            <%--
                        <div class="help_col">
                            <h4><strong>【五星玩法】</strong></h4>
                            <p><strong>◎五星直选>>直选复式 </strong></br>
                                从万位、千位、百位、十位和个位各选1个号码为一注，每位号码可从0～9全选，投注号码与开奖号码按位一致，即为中奖。</br>
                                ※举例：投注方案：23456 开奖号码：23456，即中五星直选。</p>
                            <p><strong>◎五星直选>>直选单式 </strong></br>
                                从万位、千位、百位、十位和个位各手动输入1个号码为一注，每位号码可从0～9全选，投注号码与开奖号码按位一致，即为中奖。</br>
                                ※举例：投注方案：23456 开奖号码：23456，即中五星直选。</p>

                            <hr>
                            <h4><strong>【四星玩法】</strong></h4>
                            <p><strong>◎四星直选>>直选复式 </strong></br>
                                从千位、百位、十位和个位各选1个号码为一注，每位号码可从0～9全选，投注号码与开奖号码按位一致，即为中奖。</br>
                                ※举例：投注方案：3456 开奖号码：3456，即中五星直选。</p>
                            <p><strong>◎四星直选>>直选单式 </strong></br>
                                从千位、百位、十位和个位各手动输入1个号码为一注，每位号码可从0～9全选，投注号码与开奖号码按位一致，即为中奖。</br>
                                ※举例：投注方案：3456 开奖号码：3456，即中五星直选。</p>

                            <hr>
                            <h4><strong>【后三玩法】</strong></h4>
                            <p><strong>◎后三直选>>直选复式 </strong></br>
                                从百、十、个位中至少各选择1个号码组成一注，所选号码与开奖号码全部相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：345 开奖号码后三位：1345，即中后三位直选。</p>
                            <p><strong>◎后三直选>>直选单式 </strong></br>
                                从百、十、个位中至少各手动输入1个号码组成一注，所选号码与开奖号码全部相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：345 开奖号码后三位：1345，即中后三位直选。</p>
                            <p><strong>◎后三直选>>后三组合 </strong></br>
                                从百、十、个位中至少各选择1个号码组成1-3星的组合共三注，当个位数以开奖号码相同，则中一个3等奖；如果个位和十位号码和开奖号码相同，则中一个3等奖以及一个2等奖，以次类推，最高可中3个奖。</br>
                                ※举例：投注方案：购买：6+7+8，该票共6元，由以下三注：678(三星)、78(二星)、8(一星)构成 开奖号码：678，即可中奖 一星、二星、三星各一注。</p>
                            <p><strong>◎后三直选>>直选和值 </strong></br>
                                所选号码数值等于开奖号码的百、十、个三个数值相加之和，即为中奖。</br>
                                ※举例：投注方案：和值：1，开奖号码：后三位001、010、100，即中后三值选。</p>
                            <p><strong>◎后三直选>>直选跨度 </strong></br>
                                所选数值与开奖号码后三位最大和最小数字相减之差，即为中奖。</br>
                                ※举例：投注方案：跨度：8，开奖号码：**129，最大号码9与最小号码1相减值等于8，所选号与跨度号码相同即中奖。</p>
                            <p><strong>◎后三组选>>组三复式 </strong></br>
                                从0-9号码中至少选择2个号码组成两注，所选号码与开奖号码的百、十、个位相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：588开奖号码：后三位588(顺序不限)，即可中后三组选三。</p>
                            <p><strong>◎后三组选>>组三单式 </strong></br>
                                手动输入一个3位数号码组成一注，三个数字中必须有两个数字相同，输入的数字与开奖的百、十、个位相同，顺序不限，即为中奖。</br>
                                ※举例：投注方案：001 开奖号码：后三位010(顺序不限)，即中后三组选三。</p>
                            <p><strong>◎后三组选>>组六单式 </strong></br>
                                从0-9号码中至少选择3个号码组成一注，所选号码与开奖号码的百、十、个位相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：258开奖号码：后三位852(顺序不限)，即可中后三组选六。</p>
                            <p><strong>◎后三组选>>组六单式 </strong></br>
                                手动输入一个3位数号码组成一注，所选的号码与开奖的号码的百、十、个位相同，顺序不限，即为中奖。</br>
                                ※举例：投注方案：123 开奖号码：后三位321(顺序不限)，即中后三组选六。</p>
                            <p><strong>◎后三组选>>混合组选 </strong></br>
                                手动输入一个3位数号码组成一注(不包含豹子号)，开奖号码后3位为组选三或组选六形态，投注号码以开奖号码后三位相同，顺序不限，即为中奖。</br>
                                ※举例：投注方案：001和123 开奖号码：后三位010(顺序不限)，即中后三组选三，或后三位312(顺序不限)，即中后三组选六。</p>
                            <p><strong>◎后三组选>>组选和值 </strong></br>
                                开奖号码后3位数号码组成一注(不包含豹子号)，开奖号码后3位为组选三或组选六形态，所选数值等于开奖号码的百、十、个位三个数字相加之和，即为中奖。</br>
                                ※举例：投注方案：和值：3，开奖号码：后三位003(顺序不限)，即中后三组选三，或者后三位012(顺序不限)即中后三组选六。</p>
                            <p><strong>◎后三组选>>组选包胆 </strong></br>
                                从0-9号码中任意选择一个胆码，开奖号码后三位为组选三或组选六形态(不含豹子号，投注号码与开奖后三位中任意一位相同，即为中奖。</br>
                                ※举例：投注方案：包胆3：开奖号码：后三位3XX或者33X，即中后三组选三，后三位3XY，即中后三组选六。</p>
                            <p><strong>◎后三其它>>和值尾数 </strong></br>
                                所选号码等于开奖号码的百、十、个位数字相加之和的尾数，即为中奖。</br>
                                ※举例：投注方案：和值尾数8 开奖号码：后三位936，和值尾数为8，即中和值尾数。</p>
                            <p><strong>◎后三其它>>特殊号 </strong></br>
                                所选号码特殊属性与开奖号码后三位号码属性一致，即为中奖。其中：1.顺子号的百、十、个位不分顺序(特别号码：019、089也是顺子号)；2.对子号指的是开奖号码的后三位当中，任意两位数字相同的三位数号码。</br>
                                ※举例：投注方案：豹子顺子对子 开奖号码：后三位888，即中豹子；后三位678，即中顺子；后三位558，即中对子。</p>

                            <hr>
                            <h4><strong>【前三玩法】</strong></h4>
                            <p><strong>◎前三直选>>直选复式 </strong></br>
                                从万、千、百位中至少各选择1个号码组成一注，所选号码与开奖号码全部相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：345 开奖号码前三位：345，即中前三位直选。</p>
                            <p><strong>◎前三直选>>直选单式 </strong></br>
                                从万、千、百位中至少各选择1个号码组成一注，所选号码与开奖号码全部相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：134 开奖号码后三位：1345，即中前三位直选。</p>
                            <p><strong>◎前三直选>>前三组合 </strong></br>
                                从万、千、百位中至少各选择1个号码组成1-3星的组合共三注，当百位数以开奖号码相同，则中一个3等奖；如果百位和千位号码和开奖号码相同，则中一个3等奖以及一个2等奖，以次类推，最高可中3个奖。</br>
                                ※举例：投注方案：购买：6+7+8，该票共6元，由以下三注：678(三星)、78(二星)、8(一星)构成 开奖号码：678，即可中奖 一星、二星、三星各一注。</p>
                            <p><strong>◎前三直选>>直选和值 </strong></br>
                                所选号码数值等于开奖号码的万、百、十三个数值相加之和，即为中奖。</br>
                                ※举例：投注方案：和值：1，开奖号码：前三位001、010、100，即中前三值选。</p>
                            <p><strong>◎前三直选>>直选跨度 </strong></br>
                                所选数值与开奖号码后三位最大和最小数字相减之差，即为中奖。</br>
                                ※举例：投注方案：跨度：8，开奖号码：**129，最大号码9与最小号码1相减值等于8，所选号与跨度号码相同即中奖。</p>
                            <p><strong>◎前三组选>>组三复式 </strong></br>
                                从0-9号码中至少选择2个号码组成两注，所选号码与开奖号码的万、千、百位相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：588开奖号码：前三位588(顺序不限)，即可中前三组选三。</p>
                            <p><strong>◎前三组选>>组三单式 </strong></br>
                                手动输入一个3位数号码组成一注，三个数字中必须有两个数字相同，输入的数字与开奖的万、千、百位相同，顺序不限，即为中奖。</br>
                                ※举例：投注方案：001 开奖号码：前三位010(顺序不限)，即中前三组选三。 </p>
                            <p><strong>◎前三组选>>组六单式 </strong></br>
                                从0-9号码中至少选择3个号码组成一注，所选号码与开奖号码的万、百、十位相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：258开奖号码：前三位852(顺序不限)，即可中前三组选六。</p>
                            <p><strong>◎前三组选>>组六单式 </strong></br>
                                手动输入一个3位数号码组成一注，所选的号码与开奖的号码的万、百、十位相同，顺序不限，即为中奖。</br>
                                ※举例：投注方案：123 开奖号码：前三位321(顺序不限)，即中后三组选六。</p>
                            <p><strong>◎前三组选>>混合组选 </strong></br>
                                手动输入一个3位数号码组成一注(不包含豹子号)，开奖号码后3位为组选三或组选六形态，投注号码以开奖号码前三位相同，顺序不限，即为中奖。</br>
                                ※举例：投注方案：001和123 开奖号码：前三位010(顺序不限)，即中前三组选三，或前三位312(顺序不限)，即中前三组选六。</p>
                            <p><strong>◎前三组选>>组选和值 </strong></br>
                                开奖号码后3位数号码组成一注(不包含豹子号)，开奖号码后3位为组选三或组选六形态，所选数值等于开奖号码的万、百、十位三个数字相加之和，即为中奖。</br>
                                ※举例：投注方案：和值：3，开奖号码：前三位003(顺序不限)，即中前三组选三，或者前三位012(顺序不限)即中前三组选六。</p>
                            <p><strong>◎前三组选>>组选包胆 </strong></br>
                                从0-9号码中任意选择一个胆码，开奖号码前三位为组选三或组选六形态(不含豹子号，投注号码与开奖后三位中任意一位相同，即为中奖。</br>
                                ※举例：投注方案：包胆3：开奖号码：前三位3XX或者33X，即中前三组选三，前三位3XY，即中前三组选六。</p>
                            <p><strong>◎前三其它>>和值尾数 </strong></br>
                                所选号码等于开奖号码的万、百、十位数字相加之和的尾数，即为中奖。</br>
                                ※举例：投注方案：和值尾数8 开奖号码：前三位936，和值尾数为8，即中和值尾数。</p>
                            <p><strong>◎前三其它>>特殊号 </strong></br>
                                所选号码特殊属性与开奖号码后三位号码属性一致，即为中奖。其中：1.顺子号的万、百、十位不分顺序(特别号码：019、089也是顺子号)；2.对子号指的是开奖号码的前三位当中，任意两位数字相同的三位数号码。</br>
                                ※举例：投注方案：豹子顺子对子 开奖号码：前三位888，即中豹子；前三位678，即中顺子；前三位558，即中对子。</p>

                            <hr>
                            <h4><strong>【前二玩法】</strong></h4>
                            <p><strong>◎前二直选>>直选复式 </strong></br>
                                从万、千位中至少各选择1个号码组成一注，所选号码与开奖号码的前2位相同，且顺序一致，即为中奖。 </br>
                                ※举例：投注方案：58 开奖号码前两位：58，即中前二直选。</p>
                            <p><strong>◎前二直选>>直选单式 </strong></br>
                                手动输入2个号码组成一注，输入号码的万、千位与开奖号码相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：58 开奖号码前两位：58，即中前二直选。</p>
                            <p><strong>◎前二直选>>直选和值 </strong></br>
                                开奖号码的万、千位中两个数字相加之和等于所选和值，即为中奖。 </br>
                                ※举例：投注方案：和值1 开奖号码前两位：01或10，即中前二和值。</p>
                            <p><strong>◎前二直选>>直选跨度 </strong></br>
                                所选数值等于前二位最大数与最小数相减之差，即为中奖。</br>
                                ※举例：投注方案：跨度9 开奖号码：90***，最大值9与最小值0相减之差即为跨度值，当所选号与跨度号码相同，即为中奖。</p>
                            <p><strong>◎前二组选>>组选复式 </strong></br>
                                从0-9号码中选取两个号码组成一注，所选号码与开奖号码的万、千位相同，顺序不限，即为中奖。</br>
                                ※举例：投注方案：58 开奖号码：前两位 58 或 85(顺序不限，不含对子号)，即为中奖。</p>
                            <p><strong>◎前二组选>>组选单式 </strong></br>
                                手动输入2个号码组成一注，输入号码的万、千位与开奖号码相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：58 开奖号码：前两位 58 或 85(顺序不限，不含对子号)，即为中奖。</p>
                            <p><strong>◎前二组选>>组选和值 </strong></br>
                                开奖号码的万、千位中两个数字相加之和等于所选号(不含对子号)，即为中奖。</br>
                                ※举例：投注方案：和值1 开奖号码前两位：01或10(顺序不限，不含对子号)，即中前二组选。 </p>
                            <p><strong>◎前三组选>>组选包胆 </strong></br>
                                从0-9号码中任意选取一个胆码，开奖号码前二位各不相同(不含对子号)，投注号码与开奖号码前二位中任意一位相同，即为中奖。</br>
                                ※举例：投注方案：包胆8 开奖号码：前二位 8×，且×不等于8，即中前二组选。</p>


                            <hr>
                            <h4><strong>【定位胆玩法】</strong></h4>
                            <p><strong>◎定位胆>>直选复式 </strong></br>
                                从万、千、百、十、个位中至少选择1个号码组成一注，每注由一个号码组成，所选号码与相同位置上的开奖号码一致，即为中奖。</br>
                                ※举例：投注方案：万位1 开奖号码：万位1，即中定位胆万位。</p>


                            <hr>
                            <h4><strong>【不定位玩法】</strong></h4>
                            <p><strong>◎三星>>前三一码 </strong></br>
                                从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码万、千、百位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：1 开奖号码：前三位，至少出现1个1，即中前三一码不定位。</p>
                            <p><strong>◎三星>>前三二码 </strong></br>
                                从0-9中至少 选择2个以上号码，每组由2个号码组成，只要开奖号码万、千、百位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：12 开奖号码：前三位，至少出现1和2各一个，即中前三二码不定位。</p>
                            <p><strong>◎三星>>后三一码 </strong></br>
                                从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码百、十、个位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖） </br>
                                ※举例：投注方案：1 开奖号码：后三位至少出现1个1，即中后三一码不定位。</p>
                            <p><strong>◎三星>>后三二码 </strong></br>
                                从0-9中至少 选择2个以上号码，每组由2个号码组成，只要开奖号码百、十、个位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：12 开奖号码：后三位至少出现1和2各一个，即中后三二码不定位。</p>
                            <p><strong>◎四星>>前四一码 </strong></br>
                                从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码万、千、百、十位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：1 开奖号码：前四位至少出现1个1，即中前四不定位。</p>
                            <p><strong>◎四星>>前四二码 </strong></br>
                                从0-9中至少选择2个以上号码，每组由2个号码组成，只要开奖号码万、千、百、十位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：12 开奖号码：前四位至少出现1和2各一个，即中前四二码不定位。</p>
                            <p><strong>◎四星>>后四一码 </strong></br>
                                从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码千、百、十、个位中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：1 开奖号码：后四位至少出现1个1，即中后四不定位。</p>
                            <p><strong>◎四星>>后四二码 </strong></br>
                                从0-9中至少选择2个以上号码，每组由2个号码组成，只要开奖号码千、百、十、个位中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：12 开奖号码：后四位至少出现1和2各一个，即中后四二码不定位。</p>
                            <p><strong>◎五星>>五星一码 </strong></br>
                                从0-9中任意选择1个以上号码，每组由一个号码组成，只要开奖号码中包含所选号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：1 开奖号码：至少出现1个1，即中五星不定位。</p>
                            <p><strong>◎五星>>五星二码 </strong></br>
                                从0-9中至少选择2个以上号码，每组由2个号码组成，只要开奖号码中同时包含所选的2个号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：12 开奖号码：至少出现1和2各一个，即中五星二码不定位。</p>
                            <p><strong>◎五星>>五星三码 </strong></br>
                                从0-9中至少选择3个以上号码，每组由3个号码组成，只要开奖号码中同时包含所选的3个号码，即为中奖。（同个号码出现多次只计一次中奖）</br>
                                ※举例：投注方案：123 开奖号码：至少出现1和2及3各一个，即中五星三码不定位。</p>


                            <hr>
                            <h4><strong>【大小单双玩法】</strong></h4>
                            <p><strong>◎大小单双>>前二大小单双 </strong></br>
                                对万、千位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</br>
                                ※举例：投注方案：小双 开奖号码：万、千位“小、双”，即中前二大小单双。</p>
                            <p><strong>◎大小单双>>后二大小单双 </strong></br>
                                对十位和个位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</br>
                                ※举例：投注方案：大单 开奖号码：十、个位“大单”，即中后二大小单双。</p>
                            <p><strong>◎大小单双>>前三大小单双 </strong></br>
                                对万、千和百位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</br>
                                ※举例：投注方案：小双小 开奖号码：万、千、百位“小双小”，即中前三大小单双。</p>
                            <p><strong>◎大小单双>>后三大小单双 </strong></br>
                                对百、十和个位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</br>
                                ※举例：投注方案：大单大 开奖号码：百、十、个位“大单大”，即中后三大小单双。</p>


                            <hr>
                            <h4><strong>【任选二玩法】</strong></h4>
                            <p><strong>◎任二直选>>直选复式 </strong></br>
                                从万、千、百、十、个位中至少选择两个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：万位5，百位8 开奖号码：51812，即中任二直选。</p>
                            <p><strong>◎任二直选>>直选单式 </strong></br>
                                从万、千、百、十、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：位置选择万、百位，输入号码58 开奖号码：51812，即中任二直选(单式)。</p>
                            <p><strong>◎任二直选>>直选和值 </strong></br>
                                从万、千、百、十、个位中至少选择两个位置,至少选择一个和值号码构成一注，所选两个位置的开奖号码相加之和与所选和值一致，即为中奖。</br>
                                ※举例：投注方案：位置选择万、百位，选择和值号码13 开奖号码：51812，即中任二直选和值。</p>
                            <p><strong>◎任二组选>>组选复式 </strong></br>
                                从万、千、百、十、个位中至少选择两个位置,至少选择两个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：位置选择万、百位，选择号码85 开奖号码：51812或者81512，即中任二组选。</p>
                            <p><strong>◎任二组选>>组选单式 </strong></br>
                                从万、千、百、十、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：位置选择万、百位，输入号码85 开奖号码：51812或者81512，即中任二组选(单式)。</p>
                            <p><strong>◎任二组选>>组选和值 </strong></br>
                                从万、千、百、十、个位中至少选择两个位置,至少选择一个和值号码构成一注，所选两个位置的开奖号码相加之和与所选和值一致(不含对子号)，即为中奖。</br>
                                ※举例：投注方案：位置选择万、百位，选择和值号码13 开奖号码：51812，即中任二组选和值。</p>

                            <hr>
                            <h4><strong>【任选三玩法】</strong></h4>
                            <p><strong>◎任三直选>>直选复式 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：万位5，百位8,个位2 开奖号码：51812，即中任三直选。</p>
                            <p><strong>◎任三直选>>直选单式 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置,至少手动输入一个三位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：位置选择万、百,个位，输入号码582 开奖号码：51812，即中任三直选(单式)。</p>
                            <p><strong>◎任三直选>>直选和值 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置,至少选择一个和值号码构成一注，所选三个位置的开奖号码相加之和与所选和值一致，即为中奖。</br>
                                ※举例：投注方案：位置选择万、百、个位，选择和值号码15 开奖号码：51812，即中任三直选和值。</p>
                            <p><strong>◎任三组选>>组三复式 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置,至少选择两个号码构成两注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：位置选择万、十、个位,选择号码12 开奖号码：11812，即中任三组三。</p>
                            <p><strong>◎任三组选>>组三单式 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注，三个数字中必须有二个数字相同，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</br>
                                ※举例： 投注方案：位置选择万、十、个位,输入号码112 开奖号码：11812，即中任三组三(单式)。</p>
                            <p><strong>◎任三组选>>组六复式 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置,至少选择三个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：投注方案：位置选择万、十、个位,选择号码512 开奖号码：51812，即中任三组六。</p>
                            <p><strong>◎任三组选>>组六单式 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：位置选择万、十、个位,输入号码512 开奖号码：51812，即中任三组六(单式)。</p>
                            <p><strong>◎任三组选>>混合组选 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注(不含豹子号)，开奖号码指定位置的号码为组三或组六形态，所选号码与开奖号码指定位置上的号码相同，且顺序不限，即为中奖。</br>
                                ※举例：投注方案：选择位置万、十、个位，输入号码001以及512 开奖号码：03410(指定位置号码顺序不限)即中任三组三；或者51812(指定位置号码顺序不限)即中任三组六。</p>
                            <p><strong>◎任三组选>>组选和值 </strong></br>
                                从万、千、百、十、个位中至少选择三个位置,至少选择一个和值号码构成一注，所选三个位置的开奖号码相加之和与所选和值一致(不包含豹子号)，即为中奖。</br>
                                ※举例：投注方案：位置选择万、十、个位,选择和值号码8 开奖号码：51812，即中任三组选和值。</p>

                            <hr>
                            <h4><strong>【任选四玩法】</strong></h4>
                            <p><strong>◎任四直选>>直选复式 </strong></br>
                                从万、千、百、十、个位中至少选择四个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：万位5，千位1,百位8,十位1 开奖号码：51812，即中任四直选。</p>
                            <p><strong>◎任四直选>>直选单式 </strong></br>
                                从万、千、百、十、个位中至少选择四个位置,至少手动输入一个四位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</br>
                                ※举例：投注方案：位置选择万位、千位、百位、十位，输入号码5181 开奖号码：51812，即中任四直选(单式)。</p>
                            <p><strong>◎任四组选>>组选24 </strong></br>
                                从万、千、百、十、个位中至少选择四个位置,号码区至少选择四个号码构成一注，所选号码与开奖号码指定位置上的号码相同，顺序不限，且开奖号码没有重复，即为中奖。</br>
                                ※举例：投注方案：位置选择千、百、十、个位,号码选择0568 开奖号码：10568(指定位置号码顺序不限且没有重复)，即可中任四组选24。</p>
                            <p><strong>◎任四组选>>组选12 </strong></br>
                                从万、千、百、十、个位中至少选择四个位置,从“二重号”中至少选择一个号码，“单号”中至少选择两个号码组成一注，所选号码与开奖号码指定位置上的号码相同，且所选的二重号码在开奖号码指定位置中出现2次，顺序不限，即为中奖。</br>
                                ※举例：投注方案：位置选择千、百、十、个位,二重号：8；单号：06 开奖号码：10688(指定位置号码顺序不限)，即可中任四组选12。</p>
                            <p><strong>◎任四组选>>组选6 </strong></br>
                                从万、千、百、十、个位中至少选择四个位置,从“二重号”中至少选择两个号码组成一注，所选号码与开奖号码指定位置上的号码相同，且所选的2个二重号码在开奖号码指定位置中分别出现了2次，顺序不限，即为中奖。</br>
                                ※举例：投注方案：位置选择千、百、十、个位,二重号：28 开奖号码：12288(指定位置号码顺序不限)，即可中任四组选6。</p>
                            <p><strong>◎任四组选>>组选4 </strong></br>
                                从万、千、百、十、个位中至少选择四个位置,从“三重号”中至少选择一个号码，“单号”中至少选择一个号码组成一注，所选号码与开奖号码指定位置上的号码相同，且所选三重号码在在开奖号码指定位置中出现3次，顺序不限，即为中奖。</br>
                                ※举例：投注方案：位置选择千、百、十、个位,三重号：8；单号：2 开奖号码：18828(指定位置号码顺序不限)，即可中任四组选4。</p>
                        </div>
            --%>
            <div class="help_col">
                <h5><strong>总则</strong></h5>
                <p>
                    广东11选5游戏每天进行84期，开奖时间为09:10至23:00，每隔 10分钟开奖一次。开奖号码通过电脑体育彩票每期开奖结果通过随机数码生成器，从01-11共11个号码中按顺序自动生成5个不同号码作为当期中奖号码。 </br>
                    <span style="color:#E53333;">开奖结果为五码 (万、千、百、十、个)。假设当期的开奖号码为01 02 03 04 05。</span></p>
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