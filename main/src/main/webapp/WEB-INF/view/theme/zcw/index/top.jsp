<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String mHostName = request.getScheme() + "://" + "m." + request.getServerName().replace("www.", "");
%>
<div class="head_top">
    <div class="container clearfix">
        <div class="left head_top_lf">
            <marquee scrollamount="3" scrolldelay="100" direction="left" onmouseover="this.stop();" onmouseout="this.start();" onclick="HotNewsHistory();">
                敬请各位会员注意：公司入款账号【工商银行】【冶廷虎1001********5788】账户已经停用...
            </marquee>
        </div>
        <div class="right head_top_rt clearfix">
            <a href="#" class="left">首页</a>
            <a href="javascript:void(0);" class="loginbtn left blink" data-color="#ff4800|#333">登陆</a>
            <a href="#" class="left head_top_reg">免费注册</a>
            <span class="left">|</span>
            <a href="#" class="left head_top_lottery">我的彩票</a>
            <span class="left">|</span>
        </div>
    </div>
</div>

<script>

</script>