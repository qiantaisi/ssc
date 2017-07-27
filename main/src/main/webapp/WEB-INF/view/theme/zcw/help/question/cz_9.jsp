<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
        <c:param name="czplayGroupId" value="2" />
    </c:import>
    <div class="rt">
        <c:import url="../common/top.jsp" />
        <c:import url="../common/right.jsp" />

        <div class="help_list">
            <div class="lis">
                <h5>如何开通网上银行?</h5>
            </div>
            <div class="help_col show">
<p>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp网上银行充值需要您已经开通对应银行卡的网上银行业务。（具体可到各相应银行营业点咨询） <br/>
    （1）在银行柜台办理开通网上支付业务，需提供如下资料：申请人本人有效身份证件、所需注册的本地银行卡。 <br/>
    （2）银行经办员审核上述资料无误后，将与客户签署《网上银行个人客户服务协议》，办理注册资料录入、设置网上银行密码等注册手续。 各银行官方网站。
</p>
                <p>
                <table  width="700;">
                    <tr>
                        <td style="text-align: center;">
                            <a href="http://www.icbc.com.cn " target="_blank">工商银行网上银行官方网站</a><br/>
                            <a href="http://www.cmbchina.com" target="_blank">招商银行网上银行官方网站</a><br/>
                            <a href="http://www.95599.cn" target="_blank">农业银行网上银行官方网站</a><br/>
                            <a href="http://www.ccb.com" target="_blank">建设银行网上银行官方网站</a><br/>
                            <a href="http://www.spdb.com.cn/chpage/c1" target="_blank">浦发银行网上银行官方网站</a><br/>
                            <a href="http://www.bankcomm.com" target="_blank">交通银行网上银行官方网站</a><br/>
                        </td>
                        <td style="text-align: center;">
                            <a href="http://www.cib.com.cn/netbank/cn/index.html" target="_blank">兴业银行网上银行官方网站</a><br/>
                            <a href="http://www.cmbc.com.cn" target="_blank">民生银行网上银行官方网站</a><br/>
                            <a href="http://www.cebbank.com/Site/ceb/cn" target="_blank">光大银行网上银行官方网站</a><br/>
                            <a href="http://www.ecitic.com" target="_blank">中信银行网上银行官方网站</a><br/>
                            <a href="http://www.gdb.com.cn/" target="_blank">广发银行网上银行官方网站</a><br/>
                        </td>
                    </tr>
                </table>
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