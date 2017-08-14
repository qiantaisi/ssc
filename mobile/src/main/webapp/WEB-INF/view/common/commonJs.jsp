<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script type="text/javascript" src="${commonResPath}js/zepto.min.js?v=20170812"></script>
<script type="text/javascript" src="${commonResPath}js/zepto.fx.js?v=2017"></script>
<script>
    //打开自动初始化页面的功能
    //建议不要打开自动初始化，而是自己调用 $.init 方法完成初始化
    $.config = {
        autoInit: false,
        router: false,
        swipePanel: 'right',    // 是否可以通过左右滑动打开侧栏，一次只能指定一个方向。
        swipePanelOnlyClose: true  // 是否只允许滑动关闭侧栏，不允许滑动打开
        // 路由功能开关过滤器，返回 false 表示当前点击链接不使用路由
//        routerFilter: function($link) {
//            // 某个区域的 a 链接不想使用路由功能
////            if ($link.is('.disable-router a')) {
////                return false;
////            }
////            return true;
//            return false;
//        }
    }
</script>
<script type="text/javascript" src="${commonResPath}sui/js/sm.js?v=20170812"></script>
<script type="text/javascript" src="${commonResPath}sui/js/sm-city-picker.js?v=20170227" charset="utf-8"></script>
<script type="text/javascript" src="${commonResPath}swiper/js/swiper.min.js?v=2017"></script>
<script type="text/javascript" src="${commonResPath}js/zepto.md5.js?v=2017"></script>
<script type="text/javascript" src="${commonResPath}js/zepto.cookie.min.js?v=20170812"></script>
<script type="text/javascript" src="${commonResPath}js/template.js?v=2017"></script>
<script type="text/javascript" src="${commonResPath}layer/mobile/layer.js?v=2017"></script>
<script type="text/javascript" src="${commonResPath}js/dateFormat.js?v=2017"></script>
<script type="text/javascript" src="${commonResPath}js/global.js?v=20170728"></script>
<script type="text/javascript" src="${commonResPath}js/public.js?v=2"></script>
<script>
    config.basePath = '<%=basePath%>';
</script>
<jsp:include page="appDeviceNo.jsp" />