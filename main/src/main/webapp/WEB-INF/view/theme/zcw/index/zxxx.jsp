<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:import url="../common/bodyStart.jsp"/>
<c:import url="../common/checkIsChildFrame.jsp"/>
<c:import url="top.jsp"/>

<c:import url="menu.jsp" />


<div class="main login_main">
    <div class="container login_nr">
        <div class="login_nr_t clearfix">
            <div class="login_nr_t_lf">
                <h2 style="text-align: center">${Article.article.title}</h2>
            </div>

        </div>

            <div class="login_b">
                <span   style="text-align: left">
                    ${Article.article.content}
                </span>
            </div>

        </div>
    </div>
</div>



<c:import url="bottom.jsp"/>

<script type="text/html" id="template_khxy">
    ${khxy.khxy}
</script>

<c:import url="../common/commonJs.jsp" />
<c:import url="../common/jsCommonLogin.jsp" />

<c:import url="../common/bodyEnd.jsp"/>

<script>
    $(function () {

        $(".all_fenlei_yin").css("display","none");

    });



</script>



