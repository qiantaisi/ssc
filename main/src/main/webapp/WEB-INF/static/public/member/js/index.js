$(function() {
    // $(window).resize(function(){
    //     resize();
    // });
    //
    // $("#leftNav li a").click(function() {
		// $(".eveb_nav_hover").removeClass("eveb_nav_hover");
		// $(".sli").removeClass("sli");
		// $(this).addClass("sli").addClass("eveb_nav_hover");
		// getPage($(this).data("module"));
    // });
    // resize();
    //
    // var module = '${param.module}';
    // if (typeof module == 'undefined' || module == 'null' || !module || module == '') {
		// module = 'main';
    // }
    // getPage(module);
    //
    // function resize() {
    //     var width = $(window).width();
    //     if (width < 1000) {
    //         width = 1000;
    //     }
    //
    //     var rightHeight = $(".help_l_menu").height();
    //
    //     var rightHeight = $(window).height() - $(".head").height() - $(".bottom").height();
    //     if (rightHeight < 672) {
    //         rightHeight = 672;
    //     }
    //     $("body").height($(".top").height() + $(".bottom").height() + rightHeight + "px")
    //     $("body").width(width + "px");
    //     $(".helpCont").width(width + "px");
    //     var leftWidth = $(".help_l_menu").width();
    //     var rightWidth = width - leftWidth;
    //     $("#ifm").width(rightWidth);
    //
    //     $(".help_l_menu").height(rightHeight + "px");
    //     $("#ifm").height(rightHeight + "px");
    //
    //     setInterval(function(){
    //         var time = $("#bjTime").data("time");
    //         if (isNaN(time) || time < 0) {
    //             return;
    //         }
    //         $("#bjTime").html(Tools.formatDate(time));
    //         $("#bjTime").data("time", time + 1000);
    //     }, 1000);
    // }
    //
    // function goSubPage(obj) {
    //     $(obj).parent().parent().find(".on").removeClass("on");
    //     $(obj).parent().addClass("on");
    //     var href = $(obj).data("url");
    //     $.get(href, {}, function(html) {
    //         $(".eveb_content").html(html);
    //     });
    // }
    //
    // function showLoading() {
    //     layer.load(2, {
    //         shade: [0.1,'#000'] //0.1透明度的白色背景
    //     })
    //     $("#layui-layer1").css({"left": "50%"});
    // }
    //
    // function hideLoading() {
    //     layer.closeAll();
    // }
    //
    // function getPage(module) {
    //     showLoading();
    //     $("#leftNav li a").each(function() {
    //         if ($(this).data("module").split("/")[0] == module.split("/")[0]) {
    //             $(".eveb_nav_hover").removeClass("eveb_nav_hover");
    //             $(".sli").removeClass("sli");
    //             $(this).addClass("sli").addClass("eveb_nav_hover");
    //             return;
    //         }
    //     });
    //     $("#ifm").attr("src", '<%=basePath%>member/' + module + '.html');
    // }
});