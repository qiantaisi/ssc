<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp" />
<c:import url="../../common/checkIsChildFrame.jsp" />
<c:import url="../../index/top.jsp" />

<div class="men_lists">
    <div class="wid2">
        <c:import url="../../index/menu.jsp" >
        </c:import>
    </div>
</div>

<div class="main wi">
    <c:import url="../common/left.jsp">
        <c:param name="navGroup" value="6" />
        <c:param name="aqplayGroupId" value="1" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>个人隐私安全</h5>
            </div>
            <div class="help_col show">


                <p>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本站承诺对用户的隐私信息绝对保密。未经用户授权或同意，不得擅自将用户信息用于处理用户委托自购行为以外的其他活动。同时，用户务必对其用户密码、个人账号等信息自行保密，免被盗用或篡改。用户若发现任何非法使用用户账号或安全漏洞的情况，请立即与本站联系。
                    <br/><br/>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp投注后，本站对所有中奖用户的真实信息进行完全的保密处理，除本站负责提款程序的相关工作人员外，其他任何本站注册用户、非本站注册用户、本站不负责提款的工作人员均无法看到中奖用户的真实信息。对于中奖金额特别巨大的大奖用户，本站可以根据客户的实际要求，提供更加严格的保密措施。
                </p>


            </div>

        </div>
    </div>
</div>

<c:import url="../../index/bottom.jsp" />
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