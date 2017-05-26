<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script type="text/javascript" src="${resPath}js/zepto.min.js?v=2017"></script>
<script type="text/javascript" src="${resPath}js/zepto.fx.js?v=2017"></script>
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

    var CONFIG = {
        BASEURL: "<%=basePath%>",
        RESURL: "${resPath}"
    }
</script>
<script type="text/javascript" src="${resPath}sui/js/sm.js?v=20170220"></script>
<script type="text/javascript" src="${resPath}sui/js/sm-city-picker.js?v=20170227" charset="utf-8"></script>
<script src="${resPath}swiper/js/swiper.min.js?v=2017"></script>
<script src="${resPath}js/zepto.md5.js?v=2017"></script>
<script src="${resPath}js/zepto.cookie.min.js?v=2017"></script>
<script src="${resPath}js/template.js?v=2017"></script>
<script src="${resPath}layer/mobile/layer.js?v=2017"></script>
<script src="${resPath}js/dateFormat.js?v=2017"></script>
<script src="${resPath}js/global.js?v=201702280310"></script>
<script>
    config.basePath = '<%=basePath%>';
</script>
<script src="${resPath}js/script.js?v=20170526"></script>
