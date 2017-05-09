<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script>
    $(function() {
        $(".table-common table td").each(function() {
            if ($(this).find("input").length > 0) {

            } else {
                $(this).css({"cursor": "pointer"});
            }
        });
              // 点击变黄
        $(".main-left .table-common tbody tr td").click(function() {
            if ($(".main-left .fl input").length == 0) {
                return;
            }
            var val = $(".main-left .fl input").val();
            if (typeof val == 'undefined' || !val) {
                val = '';
            }

            if ($.inArray(playId, [227,239,251,286,303,336,390,390,402,414]) >= 0) { //$.inArray() 函数用于在数组中查找指定值，并返回它的索引值（如果没有找到，则返回-1）
                var index = $(this).index();
                if ($(this).find("input").length > 0) {
                } else if ($(this).find(".pl").length > 0) {
                    if ($(this).hasClass("bg-yellow")) {
                        $(this).removeClass("bg-yellow");
                        $(this).parent().prev().find("td").eq(index).removeClass("bg-yellow");
                        $(this).parent().next().find("td").eq(index).find("input").val("");
                    } else {
                        $(this).addClass("bg-yellow");
                        $(this).parent().prev().find("td").eq(index).addClass("bg-yellow");
                        $(this).parent().next().find("td").eq(index).find("input").val(val);
                    }
                } else {
                    if ($(this).hasClass("bg-yellow")) {
                        $(this).removeClass("bg-yellow");
                        $(this).parent().next().find("td").eq(index).removeClass("bg-yellow");
                        $(this).parent().next().next().find("td").eq(index).find("input").val("");
                    } else {
                        $(this).addClass("bg-yellow");
                        $(this).parent().next().find("td").eq(index).addClass("bg-yellow");
                        $(this).parent().next().next().find("td").eq(index).find("input").val(val);
                    }
                }
            } else if ($.inArray(playId, [223,235,247,207,258,318,382,406,394,480,494]) >= 0) {
                if ($(this).find("input").length > 0) {
                } else if ($(this).find(".pl").length > 0) {
                    if ($(this).hasClass("bg-yellow")) {
                        $(this).removeClass("bg-yellow");
                        $(this).next().find("input").val("");
                    } else {
                        $(this).addClass("bg-yellow");
                        $(this).next().find("input").val(val);
                    }
                }
            } else if ($.inArray(playId, [216, 217, 218, 221, 226, 228, 229, 230, 233, 238, 240, 241, 242, 245, 250,204,205,206,209,210,211,259,260,261,262,263,264,265,266,267,268,269,270,252,287,288,289,290,254,293,257,292,294,295,296,297,298,299,300,301,302,303,277,278,279,280,281,282,283,284,285,286,253,332,338,342,337,333,339,389,413,401,385,387,389,409,413,392,380,404,395,383,407,399,387,339,397,399,411,437,438,439,441,444,445,454,463,472,450,459,468,446,455,464,447,456,465,452,448,461,457,466,470,493,479,473,492,478,491,276]) >= 0) {
                if ($(this).find("input").length > 0) {
                } else if ($(this).find(".pl").length > 0) {

                    if ($(this).hasClass("bg-yellow")) {
                        $(this).removeClass("bg-yellow");
                        $(this).prev().find("input").length == 0 && $(this).prev().html() != '&nbsp;' && (typeof $(this).prev().html() != 'undefined' && $(this).prev().html().indexOf('和数') < 0) && $(this).prev().removeClass("bg-yellow");
                        $(this).next().find("input").val("");
                    } else {
                        $(this).addClass("bg-yellow");
                        $(this).prev().find("input").length == 0 && $(this).prev().html() != '&nbsp;' && (typeof $(this).prev().html() != 'undefined' && $(this).prev().html().indexOf('和数') < 0) && $(this).prev().addClass("bg-yellow");
                        $(this).next().find("input").val(val);
                    }
                } else if ($(this).html() != '&nbsp;' && ($(this).prev().find("strong").length == 0 || $(this).prev().find("strong").html() == 'undefined' || $(this).prev().find("strong").html().indexOf('和数') < 0)) {
                    if ($(this).find("strong").length > 0 && $(this).find("strong").html().indexOf('和数') >= 0 || $(this).find(".ball-icon").length > 0) {
                        return;
                    }
                    if ($(this).hasClass("bg-yellow")) {
                        $(this).removeClass("bg-yellow");
                        $(this).next().removeClass("bg-yellow");
                        $(this).next().next().find("input").val("");
                    } else {
                        $(this).addClass("bg-yellow");
                        $(this).next().addClass("bg-yellow");
                        $(this).next().next().find("input").val(val);
                    }
                }
            }
        });

        $(".main-left .table-common .touzhuArea tbody tr td").click(function() {
            if ($(this).find('input').length == 1) {
                return;
            }

            var val = $(".main-left .fl input").val();
            if (typeof val == 'undefined' || !val) {
                val = '';
            }
            if($.inArray(playId, [318,330,319,321,325,496,495]) >= 0){
                var obj = $(this).parent().children(':last-child').prevAll();
                var wu_flag = $(this).parent();
                if(obj.hasClass('bg-yellow')){
                    $(this).parent().children(':last-child').prevAll().removeClass("bg-yellow");
                    $(this).parent().children(':last-child').find("input").val("");
                }else {
                    if (!wu_flag.hasClass('wu')) {
                        $(this).parent().children(':last-child').prevAll().addClass("bg-yellow");
                        $(this).parent().children(':last-child').find("input").val(val);
                    }
                }
            }
        });

//        // 幸运选号
        var tmpXyxhNums = getQueryString("nums");
        var tmpXyxhMoney = getQueryString("money");
        if (typeof tmpXyxhNums != 'undefined' && typeof tmpXyxhMoney != 'undefined' && tmpXyxhNums != '' && tmpXyxhMoney != '' && tmpXyxhNums != null && tmpXyxhMoney != null) {
            var oArr = [
                ['wan', '万位'],['qian', '千位'],['bai', '百位'],['shi', '十位'],['ge', '个位'],
                ['tm_b', '特码B'],
                ['gj', '冠军'],['jj', '季军'],['yj', '亚军'],['q4', '第四名'],['q5', '第五名'],['q6', '第六名'],['q7', '第七名'],['q8', '第八名'],['q9', '第九名'],['q10', '第十名']
            ];

            for (var i = 0; i < oArr.length; ++i) {
                tmpXyxhNums = tmpXyxhNums.replace(new RegExp(oArr[i][0],'gm'), oArr[i][1]);
            }

            $(".main-left .fl input").val(tmpXyxhMoney);
            var arr = tmpXyxhNums.split(",");


            for (var i = 0; i < arr.length; ++i) {
                var obj = $("[data-name='" + arr[i] + "']");
                $(obj).val(tmpXyxhMoney);
                $(obj).parent().prev().addClass("bg-yellow");
                $(obj).parent().prev().prev().addClass("bg-yellow");
            }
        }
    });
</script>