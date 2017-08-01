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
        <c:param name="navGroup" value="2" />
        <c:param name="zcplayGroupId" value="1" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>注册时用户需要注意什么?</h5>
            </div>
            <div class="help_col show">

                <p><strong>1、</strong>用户名一旦提交，不可更改，请选择容易记忆且安全级别高的用户名，并妥善保管。</p>
                <p><strong>2、</strong>为确保用户中奖权益，请务必注册后，在“会员中心”的“账户设置”或“银行卡管理”页面<br/>
                    &nbsp&nbsp&nbsp&nbsp&nbsp绑定银行卡。银行卡户名必须与注册时的真实姓名相同，否则提款将不成功。</p>
                <p> <strong>3、</strong>请填写真实有效的手机号码与电子邮件，以便在您中大奖时能及时与您取得联系。</p>
                <p><strong>4、</strong>注册时需要验证手机或者邮箱，一个手机最多可以验证绑定1个账户，一个邮箱只可以验证注册一个账户。 </p>

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