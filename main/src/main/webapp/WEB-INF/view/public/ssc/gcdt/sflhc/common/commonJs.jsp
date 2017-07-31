<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script type="text/html" id="rightContentTemplate">
    <div class="table-common table-border-color">
        <table width="100%" border="1">
            <tbody>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr1}}"></td>
                <td>大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr2}}"></td>
                <td>小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr3}}"></td>
                <td>单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr4}}"></td>
                <td>双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr5}}"></td>
                <td>合单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr6}}"></td>
                <td>合双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr7}}"></td>
                <td>大单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr8}}"></td>
                <td>小单</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr9}}"></td>
                <td>大双</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr10}}"></td>
                <td>小双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr11}}"></td>
                <td>尾大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr12}}"></td>
                <td>尾小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr13}}"></td>
                <td>鼠</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr14}}"></td>
                <td>牛</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr15}}"></td>
                <td>虎</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr16}}"></td>
                <td>兔</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr17}}"></td>
                <td>龙</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr18}}"></td>
                <td>蛇</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr19}}"></td>
                <td>马</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr20}}"></td>
                <td>羊</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr21}}"></td>
                <td>猴</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr22}}"></td>
                <td>鸡</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr23}}"></td>
                <td>狗</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr24}}"></td>
                <td>猪</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr25}}"></td>
                <td>家禽</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr26}}"></td>
                <td>野兽</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr27}}"></td>
                <td><span class="color-red">红</span>大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr28}}"></td>
                <td><span class="color-red">红</span>小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr29}}"></td>
                <td><span class="color-red">红</span>单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr30}}"></td>
                <td><span class="color-red">红</span>双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr31}}"></td>
                <td><span class="color-blue">蓝</span>大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr32}}"></td>
                <td><span class="color-blue">蓝</span>小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr33}}"></td>
                <td><span class="color-blue">蓝</span>单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr34}}"></td>
                <td><span class="color-blue">蓝</span>双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr35}}"></td>
                <td><span class="color-green">绿</span>大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr36}}"></td>
                <td><span class="color-green">绿</span>小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr37}}"></td>
                <td><span class="color-green">绿</span>单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr38}}"></td>
                <td><span class="color-green">绿</span>双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr39}}"></td>
                <td>红波</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr40}}"></td>
                <td>蓝波</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr41}}"></td>
                <td>绿波</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="{{arr42}}"></td>
                <td>全选</td>
            </tr>
            </tbody>
        </table>
    </div>
</script>
<script>
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }

    function registerLogin() {
        var loginAccount = $.trim($("#registerLoginAccount").val());
        var loginPassword = $.trim($("#registerLoginPassword").val());
        var yzm = $.trim($("#registerLoginYzm").val());

        if (!loginAccount) {
            alert("请输入账号");
            return;
        }
        if (!loginPassword) {
            alert("请输入密码");
            return;
        }
        if (!yzm) {
            alert("请输入验证码");
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>member/ajaxLogin.json",
            data: {
                yzm: yzm,
                account: loginAccount,
                password: $.md5(loginPassword)
            },
            beforeSend: function () {
                showLoading();
            },
            success: function (json) {
                if (json.result == 1) {
                    $.cookie("uid", json.userId, {path: "/"});
                    $.cookie("token", json.token, {path: "/"});
                    parent.getUserSession();
                    $(".alert_log .alert_log_col h5 i").trigger("click");
                    $("#bottomInfo .tabs ul li:first").trigger("click");
                } else {
                    refreshYzm(document.getElementById('registerYzmImg2'));
                    Tools.toast("登录失败：" + json.description);
                }
                hideLoading();
            }
        });
    }

    function showLoading() {
        layer.load(2, {
            shade: [0.1, '#000'] //0.1透明度的白色背景
        })
    }
    function hideLoading() {
        layer.closeAll();
    }
    function refreshYzm(obj) {
        var src = $(obj).attr("src");
        var params = getRequest(src);

        src = "<%=basePath%>code/yzm?timestamp=" + (new Date()).getTime();
        $.each(params, function (index, value) {
            src += '&' + value.key + '=' + value.value;
        });
        $(obj).attr("src", src);
    }
    $(window).resize(function () {
        ate();
    });

    function ate() {
        var hei = $(window).height();
        $(".back").css("height", hei - 27 + "px");
    }

    $(function () {
        parent.getUserSession();
    });
</script>
<script>
    $(function () {
        var obj = {};
        var arr = [];
        for (var i = 25; i <= 49; ++i) {
            arr.push(i);
        }
        obj.arr1 = arr.join(',');

        arr = [];
        for (var i = 1; i <= 24; ++i) {
            arr.push(i);
        }
        obj.arr2 = arr.join(',');

        arr = [];
        for (var i = 1; i <= 49; ++i) {
            if (i % 2 == 1) {
                arr.push(i);
            }
        }
        obj.arr3 = arr.join(',');

        arr = [];
        for (var i = 1; i <= 49; ++i) {
            if (i % 2 == 0) {
                arr.push(i);
            }
        }
        obj.arr4 = arr.join(',');

        arr = [1, 7, 12, 18, 23, 29, 30, 34, 45, 5, 16, 21, 27, 32, 38, 43, 49, 3, 9, 10, 14, 25, 36, 41, 47];
        obj.arr5 = arr.join(',');
        arr = [2, 8, 13, 19, 24, 35, 40, 46, 6, 11, 17, 22, 28, 33, 44, 4, 15, 20, 26, 37, 42, 48];
        obj.arr6 = arr.join(',');

        arr = [];
        for (var i = 1; i <= 49; ++i) {
            if (i % 2 == 1 && i >= 25) {
                arr.push(i);
            }
        }
        obj.arr7 = arr.join(',');

        arr = [];
        for (var i = 1; i <= 49; ++i) {
            if (i % 2 == 1 && i <= 24) {
                arr.push(i);
            }
        }
        obj.arr8 = arr.join(',');

        arr = [];
        for (var i = 1; i <= 49; ++i) {
            if (i % 2 == 0 && i >= 25) {
                arr.push(i);
            }
        }
        obj.arr9 = arr.join(',');
        arr = [];
        for (var i = 1; i <= 49; ++i) {
            if (i % 2 == 0 && i <= 24) {
                arr.push(i);
            }
        }
        obj.arr10 = arr.join(',');
        arr = [];
        for (var i = 1; i <= 49; ++i) {
            if (i % 10 >= 5) {
                arr.push(i);
            }
        }
        obj.arr11 = arr.join(',');
        arr = [];
        for (var i = 1; i <= 49; ++i) {
            if (i % 10 <= 4) {
                arr.push(i);
            }
        }
        obj.arr12 = arr.join(',');
        arr = getSxValue('鼠');
        obj.arr13 = arr.join(',');
        arr = getSxValue('牛');
        obj.arr14 = arr.join(',');
        arr = getSxValue('虎');
        obj.arr15 = arr.join(',');
        arr = getSxValue('兔');
        obj.arr16 = arr.join(',');
        arr = getSxValue('龙');
        obj.arr17 = arr.join(',');
        arr = getSxValue('蛇');
        obj.arr18 = arr.join(',');
        arr = getSxValue('马');
        obj.arr19 = arr.join(',');
        arr = getSxValue('羊');
        obj.arr20 = arr.join(',');
        arr = getSxValue('猴');
        obj.arr21 = arr.join(',');
        arr = getSxValue('鸡');
        obj.arr22 = arr.join(',');
        arr = getSxValue('狗');
        obj.arr23 = arr.join(',');
        arr = getSxValue('猪');
        obj.arr24 = arr.join(',');
        arr = getSxValue('牛').concat(getSxValue('马')).concat(getSxValue('羊')).concat(getSxValue('鸡')).concat(getSxValue('狗')).concat(getSxValue('猪'));
        obj.arr25 = arr.join(',');
        arr = getSxValue('鼠').concat(getSxValue('虎')).concat(getSxValue('兔')).concat(getSxValue('龙')).concat(getSxValue('蛇')).concat(getSxValue('猴'));
        obj.arr26 = arr.join(',');
        arr = [29, 30, 34, 35, 40, 45, 46];
        obj.arr27 = arr.join(',');
        arr = [1, 2, 7, 8, 12, 13, 18, 19, 23, 24];
        obj.arr28 = arr.join(',');
        arr = [1, 7, 13, 19, 23, 29, 35, 45];
        obj.arr29 = arr.join(',');
        arr = [2, 8, 12, 18, 24, 30, 34, 35, 40, 46];
        obj.arr30 = arr.join(',');
        arr = [25, 26, 31, 36, 37, 41, 42, 47, 48];
        obj.arr31 = arr.join(',');
        arr = [3, 4, 9, 10, 14, 15, 20];
        obj.arr32 = arr.join(',');
        arr = [3, 9, 15, 25, 31, 37, 41, 47];
        obj.arr33 = arr.join(',');
        arr = [4, 10, 14, 20, 26, 36, 42, 48];
        obj.arr34 = arr.join(',');
        arr = [27, 28, 32, 33, 39, 43, 44, 49];
        obj.arr35 = arr.join(',');
        arr = [5, 6, 11, 16, 17, 21, 22];
        obj.arr36 = arr.join(',');
        arr = [5, 11, 17, 21, 27, 33, 39, 43, 49];
        obj.arr37 = arr.join(',');
        arr = [6, 16, 22, 28, 32, 38, 44];
        obj.arr38 = arr.join(',');
        arr = [1, 2, 7, 8, 12, 13, 18, 19, 23, 24, 29, 30, 34, 35, 40, 45, 46];
        obj.arr39 = arr.join(',');
        arr = [3, 4, 9, 10, 14, 15, 20, 25, 26, 31, 36, 37, 41, 42, 47, 48];
        obj.arr40 = arr.join(',');
        arr = [5, 6, 11, 16, 17, 21, 22, 27, 28, 32, 33, 38, 39, 43, 44, 49];
        obj.arr41 = arr.join(',');
        arr = [];
        for (var i = 1; i <= 49; ++i) {
            arr.push(i);
        }
        obj.arr42 = arr.join(',');

        var html = template('rightContentTemplate', obj);
        $(".main-right").html(html);

        $(".main-right .table-common table tbody tr td input[type='checkbox']").change(function () {
            var isChecked = $(this).is(":checked");

            var arr = $(this).data("nums");
            if (typeof arr == 'undefined') {
                return;
            }

            console.log(arr);
            arr = arr.split(",");
            if (isChecked) {
                $.each(arr, function (index, value) {
                    var obj = $(".main-left .table-common tbody tr td[data-num='" + value + "']");
                    $(obj).addClass("bg-yellow");
                    $(obj).prev().addClass("bg-yellow");
                    $("[data-num=" + Tools.parseInt(arr[index]) + "]").next().children().val($(".fl input").val());
                });
            } else {
                $.each(arr, function (index, value) {
                    var obj = $(".main-left .table-common tbody tr td[data-num='" + value + "']");
                    $(obj).removeClass("bg-yellow");
                    $(obj).prev().removeClass("bg-yellow");
                    $("[data-num=" + Tools.parseInt(arr[index]) + "]").next().children().val("");
                });
            }

        });
    });
</script>