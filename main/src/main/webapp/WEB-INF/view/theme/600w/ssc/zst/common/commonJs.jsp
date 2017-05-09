<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<script src="${resPath}zst/js/point.js"></script>
<script src="${resPath}zst/js/echarts.min.js"></script>
<script>
    var CONFIG = {
        BASEURL: "<%=basePath%>",    // 根路径
        RESURL: "${resPath}"         // 资源路径
    };
</script>
<script>
    var pageSize=30;
    $(function() {
        var date = new Date();
        var year=date.getFullYear();   //返回一个表示年份的 4 位数字
        var month=date.getMonth()+1;   //返回表示月份的数字。返回值是 0（一月） 到 11（十二月） 之间的一个整数
        var startT=null;
        var endT=null;

        $(".search-right .qi a").click(function () {
            $(".search-right .qi.xuan").removeClass("xuan");    //方法从被选元素移除一个或多个类.
            $(this).parent().addClass("xuan");   //addClass向被选元素添加一个或多个类 //parent)_返回被选元素的直接父元素。
            var flag = $(this).html();   //html()返回或设置被选元素的内容
            if (flag == "近30期") {
                pageSize = 30;
                ajaxGetData(playGroupId, pageSize, null, null);
            } else if (flag == "近50期") {
                pageSize = 50;
                ajaxGetData(playGroupId, pageSize, null, null);
            } else if (flag == "近100期") {
                pageSize = 100;
                ajaxGetData(playGroupId, pageSize, null, null);
            } else if (flag == "近150期") {
                pageSize = 150;
                ajaxGetData(playGroupId, pageSize, null, null);
            } else if (flag == "近200期") {
                pageSize = 200;
                ajaxGetData(playGroupId, pageSize, null, null);
            }
//            else if (flag == "今天") {
//                pageSize = null;
//                startT = 't1';
//                ajaxGetData(playGroupId, pageSize, startT, endT);
//            } else if (flag = "近三天") {
//                pageSize = null;
//                startT = 't3';
//                ajaxGetData(playGroupId, pageSize, startT, endT);
//            }
        });
    });
    function showLoading() {
        layer.load(2, {
            shade: [0.1,'#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }

    $(function() {
        parent.hideLoading();
    });

    $(function(){
        //悬停
        $(".czqh").hover(function(){
            $(".min").show()
        },function(){
            $(".min").hide()
        });

        //点击绘图工具
        $(".kuang1 .div").click(function(){
            $(".kuang1 .btn-box").show();
            $("#canvas,#canvas2").css("z-index","10000");
        });

        $(".btn-cos").click(function(){
            $(".kuang1 .btn-box").hide();
            $("#canvas,#canvas2").css("z-index","-10");
            clear_canvas()
        });

    });

    function getDataNumber(playGroupId) {
        ajaxRequest({
            url: "<%=basePath%>ssc/getSscOpenTime2.json",
            data: {
                playGroupId: playGroupId,
                isData: false
            },
            success: function(json) {
                if (json.result != 1) {
                    var objNum = $("#number").parent();
                    var objLeft = $(".jiezhi h3");
                    objNum.html("&nbsp;");
                    objLeft.html("未开盘");
                    objLeft.css("color","gray");
                    return;
                }
                var obj = [];
                $("#number").html(json.number);
                var strNumber = json.number;
                var tempNum = '';
                $("#openDate").html(dateFormat(json.openDataTime, "mm月dd日"));
                if (json.opening) {
                    if(playGroupId == 4 || playGroupId == 5 || playGroupId == 6){
                       tempNum = strNumber.substr(4);
                    }else if(playGroupId == 7 || playGroupId == 8 || playGroupId == 9){
                       tempNum = strNumber;
                    }else{
                       tempNum = strNumber.substr(8);
                    }
                    $("#tip").html( tempNum + '期已开盘，距离下一期还有:');
                    $("#leftTime").data("time", json.leftTime);
                    $("#tip").data("opening", true);
                } else {
                    $("#tip").html('已封盘，距离开奖还有:');
                    $("#leftTime").data("time", json.leftOpenTime);
                    $("#tip").data("opening", false);
                }
            }
        });
    }
    $(function () {

        getDataNumber(playGroupId);
        setInterval(function () {
            getDataNumber(playGroupId);
        }, 10000);

        setInterval(function() {
            var time = $("#leftTime").data("time");
            if (isNaN(time) || time < 0) {
                return;
            }
            --time;

            var str = '';
            var tmp = time;
            var hour = Math.floor(tmp / 60 / 60);
            if (hour > 0) {
                str += hour + '时';
            }
            tmp = tmp - hour * 60 * 60;
            var minute = Math.floor(tmp / 60);
            str += minute + '分';
            tmp = tmp - minute * 60;
            var second = tmp;
            str += second + '秒';
            $("#leftTime").html(str);

            $("#leftTime").data("time", time);
        }, 1000);
    });
    function clearHuatu() {
        $("#canvas,#canvas2").attr("height","0");
        $("#canvas,#canvas2").attr("width","0");
    }

    function initHuatu(id) {
        //canvas高
        $("#canvas,#canvas2").attr("height",$("#"+id+"").height()+"px");
        $("#canvas,#canvas2").attr("width",$("#"+id+"").width()+"px");
        $("#canvas,#canvas2").css("top",$("#"+id+"").offset().top+"px");
        $("#canvas,#canvas2").css("left",$("#"+id+"").offset().left+"px");
    }

    //走势图页面
    function getZstPage(url) {
        if (typeof url == 'undefined') {
            url = 'index';
        }
        window.location.href = "<%=basePath%>ssc/zst/" + url + ".html?type=1";
    }

    //购彩页面
    function getSscPage(module) {
        if (typeof module == 'undefined') {
            module = '';
        }

       // module -- 字符串例子：gcdt/cqssc
      // var caizhong = module.toString().split("/");
        <%--window.location.href ='<%=basePath%>ssc/index.html?module=' + module;--%>
        openGcdt(module);
    }

    $(function () {
        var right_w = $(".shuoming .shuomingright").outerWidth();
        var right_h = $(".shuoming .shuomingright").outerHeight();
        var left_h = $(".shuoming .shuomingleft").outerHeight();
        if(right_h > left_h){
            $(".shuoming .shuomingleft").css("height",right_h);
        }
        var zong_w = $(".shuoming").outerWidth();
        var left_w = zong_w - right_w - 5;
        $(".shuoming .shuomingleft").css("width",left_w);
    });
</script>
