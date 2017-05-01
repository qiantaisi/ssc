// 初始化
$(function() {
    getSubPage();

    function rightResize(rightWidth, isAnimate) {
        if (rightWidth < 1000) {
            rightWidth = 1000;
            isAnimate = false;
        }

        if (isAnimate) {
            $(".con_right, #rightContent, .con_right .top, .con_right .Account").animate({"width": rightWidth + "px"}, 400, function () {
            });
        } else {
            $(".con_right, #rightContent, .con_right .top, .con_right .Account").css("width", rightWidth + "px");
        }
    }
    function minLeftMenu(leftWidth, isAnimate) {
        $(".menu_left .logo img").hide();
        $(".menu_left .list_menu ul li a.Refresh").hide();
        //热门菜单中的子菜单
        $(".menu_left .list_menu ul li .inner-menu h3 i").hide();
        $(".menu_left .list_menu ul li .inner-menu h3 var").hide();
        $(".menu_left .list_menu ul li .inner-menu h3 img").addClass('menusuox');
        $(".menu_left .list_menu ul li .inner-menu h3").addClass('menusuox-h3');


        $(".menu_left").addClass("add_menu");
        if (isAnimate) {
            $(".menu_left").animate({"width": leftWidth + "px"}, 400, function () {
            });
        } else {
            $(".menu_left").css("width", leftWidth + "px");
        }
        $(".menu_left .logo a").attr("opent", "1");
    }

    function autow(tee, isAnimal) {
        var leftWidth = tee ? tee : Tools.parseInt($(".menu_left").width());
        var rightWidth = $(window).width() - leftWidth;
        if (rightWidth < 1000) {
            rightWidth = 1000;
        }
        $(".con_right").css("height", $(window).height() + "px");
        if (isAnimal) {
            $(".con_right, #rightContent, .con_right .top, .con_right .Account").animate({"width": rightWidth + "px"}, 400, function () {
            });
            console.log(isAnimal);
        } else {
            $(".con_right, #rightContent, .con_right .top, .con_right .Account").css("width", rightWidth + "px");
            console.log('w');
        }

    }//结束

    function maxLeftMenu(leftWidth, isAnimate) {
        if (isAnimate) {
            $(".menu_left").animate({"width": leftWidth + "px"}, 400, function () {
                $(".menu_left .logo img").show();
                $(".menu_left").removeClass("add_menu");
                $(".menu_left .list_menu ul li a.Refresh").show();

                $(".menu_left .list_menu ul li .inner-menu h3 i").show();
                $(".menu_left .list_menu ul li .inner-menu h3 var").show();
                $(".menu_left .list_menu ul li .inner-menu h3 img").removeClass('menusuox');
                $(".menu_left .list_menu ul li .inner-menu h3").removeClass('menusuox-h3');
            });
        } else {
            $(".menu_left").css("width", leftWidth + "px");
            $(".menu_left .logo img").show();
            $(".menu_left").removeClass("add_menu");
            $(".menu_left .list_menu ul li a.Refresh").show();

            $(".menu_left .list_menu ul li .inner-menu h3 i").show();
            $(".menu_left .list_menu ul li .inner-menu h3 var").show();
            $(".menu_left .list_menu ul li .inner-menu h3 img").removeClass('menusuox');
            $(".menu_left .list_menu ul li .inner-menu h3").removeClass('menusuox-h3');
        }
        $(".menu_left .logo a").attr("opent", "0");
    }

    function bodyResize(leftWidth, rightWidth) {
        $("body").css("width", leftWidth + rightWidth + "px");
    }

    function autoHeight() {
        var rightContentHeight = $(window).height() - 100;
        $("#rightContent").css("height", rightContentHeight + "px");
        var leftContentHeight = $(window).height();
        $(".menu_left").css("height", leftContentHeight + "px");
    }
    // function resize() {
    //     // dropmove(".Single .layout .add_spot .left .sopt_wrap .slide_sp p var", ".Single .layout .add_spot .left .sopt_wrap .slide_sp p")
    // }

    function resize(isAnimate) {
        autoHeight();
        var winWidth = $(window).width();
        var leftWidth, rightWidth;
        if ($(window).width() < 1250) {
            leftWidth = 40;
            rightWidth = winWidth - leftWidth;
        } else {
            leftWidth = 250;
            rightWidth = winWidth - leftWidth;
        }
        if (rightWidth < 1000) {
            rightWidth = 1000;
        }
        bodyResize(leftWidth, rightWidth);
        if (leftWidth <= 40) {
            minLeftMenu(leftWidth, isAnimate);
        } else {
            maxLeftMenu(leftWidth, isAnimate);
        }
        rightResize(rightWidth, isAnimate);
    }

    $(window).resize(function () {
        resize(false);
    });

    resize();

    $(".menu_left").niceScroll({
        cursorcolor: "#3f3f3f",
        cursoropacitymax: 1,
        touchbehavior: false,
        cursorwidth: "0px",
        cursorborder: "0",
        cursorborderradius: "0px",
        autohidemode: false
    });

    $(".menu_left .list_menu ul li.show h2").click(function () {
        if ($(this).hasClass("open")) {
            $(this).removeClass("open");
            $(this).parent().find('.down').slideUp();
            $(this).find("i").removeClass("show");
            return;
        }

        $(".menu_left .list_menu ul li.show h2.open i.show").removeClass("show");
        $(".menu_left .list_menu ul li.show h2.open").parent().find(".down").slideUp();
        $(".menu_left .list_menu ul li.show h2.open").removeClass("open");

        $(this).addClass("open");
        $(this).find("i").addClass("show");
        $(this).parent().find('.down').slideDown();
    });


    $(".menu_left .list_menu ul li .inner-menu h3").click(function () {
        if ($(this).hasClass("open")) {
            $(this).removeClass("open");
            $(this).next().slideUp();
            $(this).find("i").removeClass("reshow");
            return;
        }

        $(".menu_left .list_menu ul li .inner-menu h3.open i").removeClass("reshow");
        $(".menu_left .list_menu ul li .inner-menu h3.open").next().slideUp();
        $(".menu_left .list_menu ul li .inner-menu h3.open").removeClass("open");

        $(this).addClass("open");
        $(this).find("i").addClass("reshow");
        $(this).next().slideDown();
    });

    $(".menu_left .logo a").click(function () {
        if ($(this).attr("opent") == "1") {
            var winWidth = $(window).width();
            var leftWidth, rightWidth;
            leftWidth = 250;
            rightWidth = winWidth - leftWidth;
            if (rightWidth < 1000) {
                rightWidth = 1000;
            }
            maxLeftMenu(leftWidth, true);
            rightResize(rightWidth, true);
            $(this).attr("opent", "0");
            bodyResize(leftWidth, rightWidth);
        } else {
            var winWidth = $(window).width();
            var leftWidth, rightWidth;
            leftWidth = 40;
            rightWidth = winWidth - leftWidth;
            if (rightWidth < 1000) {
                rightWidth = 1000;
            }
            minLeftMenu(leftWidth, true);
            rightResize(rightWidth, true);
            $(this).attr("opent", "1");
        }
    })

    getUserSession();
});

function getUserSession() {
    ajaxRequest({
        url: CONFIG.BASEURL + 'member/getUserSession.json',
        beforeSend: function () {
            $(".Account").html('<img src="${resPath}img/base_loading.gif" alt="" style="display: block;text-align: center;margin: auto;padding-top: 25px;">');
        },
        success: function (json) {
            if (json.result == 1) {
                showLogin(json);
            } else {
                showNotLogin();
            }
        }
    });
}

function getSscPage(url) {
    goSubUrl(CONFIG.BASEURL + "ssc/gcdt/" + url + ".html");
}

// 读取子页面
function getPage(url) {
    showLoading();
    $("#rightContent").attr("src", url);
}

// 读取子页面
function goSubUrl(url, params) {
    var turl = url + "?timestamp=" + (new Date()).getTime();
    var surl = CONFIG.BASEURL + "ssc/gcdt/index.html#url=" + url;

    if (typeof params != 'undefined') {
        var tmp = params.split("&");
        $.each(tmp, function(index, value) {
            turl += "&" + value.key + "=" + value.value;
            surl += "&" + value.key + "=" + value.value;
        });
    }

    window.location.href = surl;
    getSubPage();
}

function getSubPage() {
    var surl = window.location.toString();
    var paramArr = surl.split("#");
    var turl = "";
    var tparam = "?timestamp=" + (new Date()).getTime();
    if (paramArr) {
        paramArr = paramArr[1];
        if (paramArr) {
            paramArr = paramArr.split("&");

            $.each(paramArr, function(index, value) {
                var tmp = value.split("=");
                var key = tmp[0];
                var v = tmp[1];

                if (key == "url") {
                    turl = v;
                } else {
                    tparam += "&" + key + "=" + v;
                }
            });
        }
    }

    if (!turl) {
        turl = CONFIG.BASEURL + "ssc/gcdt/gcdt.html";
    }

    getPage(turl + tparam);
}
// function showGonggao(id) {
//     $("#gonggao_" + id).show();
// }
//
$(function () {
    // $('.alert_col h5 i').click(function () {
    //     $('.alert').hide();
    // });

    // newRoll(".top .news ul li");

    // var module = '${param.module}';
    // var navIndex = '${param.navIndex}';
    // var nums = '${param.nums}';
    // var caizhong = '${param.caizhong}';
    // var type = '${param.type}';
    // var money = '${param.money}';

    // if (typeof module == 'undefined' || module == 'null' || !module || module == '') {
    //     module = 'gcdt/gcdt';
    //     getPage('<%=basePath%>ssc/' + module + '.html');
    // } else if (module == 'zstIndex') {
    //     getPage('<%=basePath%>ssc/zst/index.html');
    // } else if (module == 'xyxh') {
    //     getPage('<%=basePath%>ssc/gcdt/' + caizhong + '.html?navIndex=' + navIndex + '&nums=' + nums + '&money=' + money);
    // } else if (module == 'xyxh_shou') {
    //     getPage('<%=basePath%>ssc/gcdt/' + caizhong + '.html?navIndex=' + navIndex);
    // } else {
    //     getPage('<%=basePath%>ssc/' + module + '.html');
    // }
});
// function dropmove(down, move) {
//     $(down).mousedown(function () {
//         $(move).mousemove(function (e) {
//             var t = $(this).offset().left;
//
//             if (e.pageX - t <= $(move).width() - 8) {
//                 var tee = e.pageX - t - 10;
//                 $(this).find("span").css("width", tee + "px");
//                 $(this).find("var").css("left", tee + "px");
//                 $(".Single .layout .add_spot .left .sopt_wrap .slide_sp i var").text((190989.6235 * tee).toFixed(2));
//                 $(move).unbind("hover");
//             }
//         })
//     });
//     $(move).mouseup(function () {
//         $(move).unbind("mousemove");
//     });
//     $(down).mouseup(function () {
//         $(move).unbind("mousemove");
//     });
//     $(move).hover(function () {
//
//     }, function () {
//         $(move).unbind("mousemove");
//     });
//
//     numadd(".Single .layout .add_spot .left .sopt_wrap .reduce a", ".Single .layout .add_spot .left .sopt_wrap .reduce a.fl", ".Single .layout .add_spot .left .sopt_wrap .reduce a.fr")
//     down_drop(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i", ".Single .layout .add_spot .left .sopt_wrap .down span", ".down_menu");
//     tabs_cg(".Betting .tabs ul li", ".Betting .list_wrap", "click", "acti", "", "");
//
//     var hei = document.height;
//
//
//     autow();
// }

//
//
//




function showLoading() {
    layer.load(2, {
        shade: [0.1, '#000'] //0.1透明度的白色背景
    })
}
function hideLoading() {
    layer.closeAll();
}
// function getPage(url) {
//     showLoading();
//     $("#rightContent").attr("src", url);
// }
// function getSscPage(url) {
//     var idPl = getPlayGroupId(url);
//     var flag = getCaiZhongEnable(idPl, function() {
//         getPage("<%=basePath%>ssc/gcdt/" + url + ".html");
//     });
// }
//
// function getCaiZhongEnable(playGroupId, callback) {
//     ajaxRequest({
//         url: CONFIG.BASEURL + "ssc/getSscOpenTime2.json",
//         data: {
//             playGroupId: playGroupId
//         },
//         success: function(json) {
//             if (json.result == -888) {  // 彩种已关闭
//                 $("#rightContent").attr("src", '<%=basePath%>ssc/tingcaipage.html');
//                 return;
//             }
//
//             if (typeof callback == 'function') {
//                 callback();
//             }
//         }
//     });
// }
//
function getZstPage(url) {
    if (typeof url == 'undefined') {
        url = 'index';
    }

    goSubUrl(CONFIG.BASEURL + "ssc/zst/" + url + ".html");
}
//
// function getPlayGroupId(param_url){
//     var idPl = 0;
//     if(param_url == 'cqssc'){
//         idPl = 1;
//     }else if(param_url == 'tjssc'){
//         idPl = 2;
//     }else if(param_url == 'xjssc'){
//         idPl = 3;
//     }else if(param_url == 'pl3'){
//         idPl = 4;
//     }else if(param_url == 'fc3d'){
//         idPl = 5;
//     }else if(param_url == 'lhc'){
//         idPl = 6;
//     }else if(param_url == 'xy28'){
//         idPl = 7;
//     }else if(param_url == 'kl8'){
//         idPl = 8;
//     }else if(param_url == 'pk10'){
//         idPl = 9;
//     }else if(param_url == 'xync'){
//         idPl = 10;
//     }else if(param_url == 'klsf'){
//         idPl = 11;
//     }else if(param_url == 'sfssc'){
//         idPl = 13;
//     }else if(param_url == 'xyft'){
//         idPl = 14;
//     }else if(param_url == 'ffssc'){
//         idPl = 15;
//     }else if(param_url == 'efssc'){
//         idPl = 16;
//     }else if(param_url == 'wfssc'){
//         idPl = 17;
//     }else if(param_url == 'jsk3'){
//         idPl = 18;
//     }else if(param_url == 'hbk3'){
//         idPl = 19;
//     }else if(param_url == 'ahk3'){
//         idPl = 20;
//     }else if(param_url == 'jlk3'){
//         idPl = 21;
//     }else if(param_url == 'sflhc'){
//         idPl = 22;
//     }else if(param_url == 'jspk10'){
//         idPl = 23;
//     }
//     return idPl;
// }
//
// function ajaxLogin() {
//     var account = $.trim($("#loginForm input[name='account']").val());
//     var password = $.trim($("#loginForm input[name='password']").val());
//     var yzm = $.trim($("#loginForm input[name='yzm']").val());
//
//     if (!account) {
//         layer.msg("请填写账号", {icon: 2});
//         $("#loginForm input[name='account']").focus();
//         return;
//     }
//
//     if (!password) {
//         layer.msg("请填写密码", {icon: 2});
//         $("#loginForm input[name='password']").focus();
//         return;
//     }
//
//     if (!yzm) {
//         layer.msg("请填写验证码", {icon: 2});
//         $("#loginForm input[name='yzm']").focus();
//         return;
//     }
//
//     ajaxRequest({
//         url: CONFIG.BASEURL + 'member/ajaxLogin.json',
//         data: {
//             account: account,
//             password: $.md5(password),
//             yzm: yzm
//         },
//         beforeSend: function () {
//             $(".Account").html('<img src="${resPath}img/base_loading.gif" alt="" style="display: block;text-align: center;margin: auto;margin-top: 20px;">');
//         },
//         success: function (json) {
//             if (json.result == 1) {
//                 $.cookie("uid", json.userId, {path: "/"});
//                 $.cookie("token", json.token, {path: "/"});
//                 getUserSession();
//                 ifm.window.location.reload();
//             } else {
//                 layer.msg(json.description, {icon: 2});
//                 showNotLogin();
//
//                 // 刷新我的投注
//                 if (typeof document.getElementById('rightContent').contentWindow.getBetDetails == 'function') {
//                     document.getElementById('rightContent').contentWindow.getBetDetails(document.getElementById('rightContent').contentWindow.playGroupId);
//                 }
//             }
//         }
//     });
// }
//
// function showLogin(user) {
//     var str = '';
//     str += '<p>账号：<i class="i0">' + user.account + '</i>';
//     str += '<span>余额：<i class="i1">￥' + user.balance + '</i></span>';
//     str += '<span><a href="javascript:void(0)" onclick="openHyzx(\'zhcz/yhzz\')">充值提现</a>  |  <a href="<%=basePath%>member/index.html" target="_blank">会员中心</a>  |  <a href="javascript:void(0)" onclick="openHyzx(\'lsjl/tzjl\')">投注记录</a>  |  <a href="${kefuUrl}" target="_blank">在线客服</a>  |  <a href="javascript:void(0)"  onclick="openHyzx(\'letter\')">最新消息</a>  |  <a href="javascript:void(0)" onclick="sigout()" class="red">退出登录</a>  |</span></p>';
//     $(".Account").html(str);
// }
//
function showNotLogin() {
    var str = '';
    str += '<div class="state">';
    str += '<form id="loginForm" onsubmit="ajaxLogin();return false;">';
    str += '<ul>';
    str += '<li><input type="text" placeholder="会员名" name="account"></li>';
    str += '<li><input type="password" placeholder="密码" name="password"></li>';
    str += '<li><input type="text" placeholder="验证码" onfocus="refreshYzm(document.getElementById(\'yzmImg\'))" name="yzm" class="short"><img id="yzmImg" onclick="refreshYzm(this)" src="' + CONFIG.BASEURL + 'code/yzm?imgWidth=45&imgHeight=20&imgFontHeight=20&imgCodeY=16" alt=""></li>';
    str += '</ul>';
    str += '<div class="buton">';
    str += '<button type="submit">登录</button>';
    str += '</form>';
    str += '<p>';
    str += '<a href="<%=basePath%>?u=<%=basePath%>register.html" target="_blank">会员注册</a>|';
    str += '<a href="${kefuUrl}" target="_blank">忘记密码？</a>';
    str += '</p>';
    str += '</div>';
    str += '</div>';
    $(".Account").html(str);
}
// function refreshYzm(obj) {
//     var src = $(obj).attr("src");
//     var params = getRequest(src);
//
//     src = '<%=basePath%>code/yzm?timestamp=' + (new Date()).getTime();
//     $.each(params, function (index, value) {
//         src += '&' + value.key + '=' + value.value;
//     });
//     $(obj).attr("src", src);
// }
// function sigout() {
//     ajaxRequest({
//         url: CONFIG.BASEURL + 'member/ajaxSigout.json',
//         data: {},
//         beforeSend: function () {
//             $(".Account").html('<img src="${resPath}img/base_loading.gif" alt="" style="display: block;text-align: center;margin: auto;margin-top: 20px;">');
//         },
//         success: function (json) {
//             if (json.result == 1) {
//                 $.cookie("uid", '', {path: "/", expires: -1});
//                 $.cookie("token", '', {path: "/", expires: -1});
//             }
//             getUserSession();
//         }
//     });
// }
// function openHyzx(module) {
//     if (typeof module == 'undefined') {
//         module = '';
//     }
//
//     if (typeof $.cookie("uid") == 'undefined' || typeof $.cookie("token") == 'undefined') {
//         Tools.toast("请先登录");
//         if ($('input[name="account"]').length > 0) {
//             $('input[name="account"]').focus();
//             return;
//         }
//         return;
//     }
//
//     windowOpen('<%=basePath%>member/index.html?module=' + module, '会员中心', 1250, 834);
// }