<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp" />
<c:import url="../../common/checkIsChildFrame.jsp" />
<c:import url="../../index/top.jsp" />

<div class="men_list">
    <div class="wid1">
        <div class="logo">
            <a href="<%=basePath%>"><img src="<%=basePath%>images/${logo.imageId}" alt=""></a>
        </div>
        <c:import url="../../common/navList.jsp" />
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="2" />
        <c:param name="tkplayGroupId" value="3" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>为什么我的提款不成功?</h5>
            </div>
            <div class="help_col show">

                <p>
                    提款未按时到账或失败可能有以下几点原因：<br/>
                    &nbsp&nbsp&nbsp&nbsp&nbsp（1）户名错误、姓名填写有误、请核对卡号与姓名是否相符：银行卡开卡的真实姓名与${webName}账户中的真实姓名不一致导致无法提款成功；${webName}账户中的真实姓名填写有误（如注册的名字有繁体字或者有分隔符）、用户的姓名中含有生僻字，银行开户时以同音字或其他符号代替）<br/>
                    &nbsp&nbsp&nbsp&nbsp&nbsp（2）卡片状态不正常：银行卡为无效卡或银行卡状态异常，请联系银行卡背面的客服热线，寻求帮助。<br/>
                    &nbsp&nbsp&nbsp&nbsp&nbsp（3）账户控制状态不允许存入：该卡号不允许存入资金。 <br/>
                    &nbsp&nbsp&nbsp&nbsp&nbsp（4）非法卡：银行卡已经注销。 <br/>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp友情提示：以上情况，请联系银行卡背面的客服热线，确认银行卡相应信息准确无误后，直接联系${webName}客服。<br/>
                    （5）银行卡相关信息不符，如：银行名称、开户支行、开户人、银行帐号等。 <br/>
                    （6）系统繁忙，请重试：您的开户行银行系统繁忙或者正在升级，您可以重新申请。<br/>
                    （7）参加活动所赠送的返点不可提现。<br/>
                    （8）其他情况（您的账户异常情况）。
                </p>

            </div>

        </div>
    </div>
</div>

<c:import url="../../common/bottomInfo.jsp" />
<c:import url="../../common/copyright.jsp" />
<c:import url="../../common/commonJs.jsp" />
<c:import url="../../common/jsCommonLogin.jsp" />
<c:import url="../common/bottom.jsp" />
<script>
    var zoomImagesURI   = '${resPath}images-global/zoom/'; // Location of the zoom and shadow images
    $(function() {
        insertZoomHTML();
    });
</script>
<c:import url="../../common/bodyEnd.jsp" />