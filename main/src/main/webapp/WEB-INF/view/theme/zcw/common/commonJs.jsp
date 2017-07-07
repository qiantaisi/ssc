<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script type="text/javascript" src="${resPath}js/jquery.min.js?v=2017"></script><!--jQuery库-->
<script type="text/javascript" src="${resPath}js/scrollanim.min.js?v=2017"></script> <!--"动画库"-->
<script src="${resPath}js/type.js?v=2017"></script><!--自定义封装函数-->
<script src="${resPath}js/global.js?v=20170505"></script><!--自定义封装函数-->
<script src="${resPath}js/jquery.cookie.js?v=2017"></script><!--自定义封装函数-->
<script src="${resPath}js/jquery.md5.js?v=2017"></script><!--自定义封装函数-->
<script src="${resPath}layer/layer.js?v=2017"></script>
<script src="${resPath}js/jquery.nicescroll.js?v=2017"></script>
<script src="${resPath}js/dateFormat.js?v=2017"></script>
<script src="${resPath}js/template.js?v=2017"></script>
<script src="${resPath}js/swfobject/swfobject.js?v=2017"></script>
<script src="${resPath}js/jquery.liMarquee.js?v=2017"></script>
<script src="${resPath}js/placeholders.jquery.min.js?v=2017"></script>
<script src="${resPath}jRange/jquery.range-min.js?v=2017"></script>
<script src="${resPath}js/flexslider/jquery.flexslider-min.js?v=20170707"></script><!--轮播插件封装函数-->
<script>
    // 闪烁
    var blinkColorArr = "#fa6200|#0f3f94".split("|");
    $(".blink").each(function() {
        var obj = $(this);
        setInterval(function() {
            var tmpColor = blinkColorArr[parseInt(Math.random() * blinkColorArr.length)];
            $(obj).css("color", tmpColor);
        },200);
    });



    $(function() {
        // 底部信息调用
        function ajaxGetDbxx() {
            ajaxRequest({
                url: CONFIG.BASEURL + "ajaxGetWebInfo.json",
                success: function (json) {
                    if (json.result != 1) {
                        return;
                    }
                    $(".webDbxx").html(json.webDbxx);
                }
            });
        }

        if ($(".webDbxx").length > 0) {
            ajaxGetDbxx();
        }
    });


</script>