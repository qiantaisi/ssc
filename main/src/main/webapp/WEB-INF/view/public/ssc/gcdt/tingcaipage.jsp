<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="../../common/bodyStart.jsp"/>
<c:import url="../../common/checkIsChildFrame.jsp"/>
<div class="list_ject tingcai_page">
    <div class="sorry-txt">
        sorry,该彩票暂停！
    </div>
</div>
<c:import url="../../common/commonJs.jsp"/>
<script>
    $(function() {
        // 关闭父页Loding
        try {
            parent.hideLoading();
        } catch (e) {}
    });
</script>
<c:import url="../../common/bodyEnd.jsp"/>