//****
// 官方玩法事件绑定
function gfwfEvent(){
    $("#btn-submit-gfwf").click(function () {
        showBetTemplate();
    });

    $("#btn-reset-gfwf").click(function () {
        clearSelected();
    });
}

//获取具体子页面
function getSubGfwfSscPage(url, callback) {
    ajaxRequest({
        url: url,
        dataType: "html",
        type: "GET",
        beforeSend: function () {
            Tools.showLoading("加载中...");
        },
        success: function (html) {
            $("#betContainer_gfwf").html(html);
            if (typeof callback == 'function') {
                callback();
            }
        },
        error: function (a, b, c) {
            if (b == 'timeout') {
                Tools.toast("操作超时，请稍后重试");
                return;
            }

            Tools.toast("请求错误，请稍后重试");
        },
        complete: function () {
            Tools.hideLoading();
        }
    });
}

//数字单选算法
function danSelect(obj) {
    var flag = $(obj).parent().parent().data("name");
    if(typeof flag != "undefined" && flag == "bd"){
        var tOrF = $(obj).hasClass("active_gfwf");
        if(tOrF){
            $(this).removeClass("active_gfwf");
        } else {
            $(obj).parent().parent().find("span.active_gfwf").removeClass("active_gfwf");
        }
    }

    if ($(obj).parent().find(".wan_bottom .cus-flex-item .xz").hasClass("active_gfwf")) {
        $(obj).parent().find(".cus-flex-item .xz").removeClass("active_gfwf");
    } else {
        $(obj).parent().find(".cus-flex-item .xz").addClass("active_gfwf");
    }
    $(obj).parent().parent().parent().find(".xz i").removeClass("active_gfwf");

    getGfwfZhushu();
}


//获取注数方法
function getGfwfZhushu(){
    var zhushuFun = getPlayPlFun_zhushu();  // 注数算法
    //执行注数方法
    if (typeof zhushuFun != 'undefined') {
        var zhushu = eval(zhushuFun + "()");   // 注数
        if (typeof zhushu == "undefined" || zhushu < 0) {
            return;
        }
        $("#zhushu").html(zhushu);
    }

    // 默认2元 * 1倍 * 注数
    $("#nowMoney").html(parseFloat((zhushu * 2 * 1).toFixed(3)));
}




//======================================================内容算法====================================
/**
 * 定位胆
 */
function content_dwd(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".wanweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var wanStr = wanArr.length > 0 ? ("万位: (" + wanArr.join(",") + ")") : "";
    var qianStr = qianArr.length > 0 ? (" 千位: (" + qianArr.join(",") + ")") : "";
    var baiStr = baiArr.length > 0 ? (" 百位: (" + baiArr.join(",") + ")") : "";
    var shiStr = shiArr.length > 0 ?  (" 十位: (" + shiArr.join(",") + ")") : "";
    var geStr = geArr.length > 0 ? (" 个位: (" + geArr.join(",") + ")") : "";

    var nowArr = [];
    return $.trim(
        (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
        (qianStr == ' ' ? ' ': qianArr.join(",") + "|") +
        (baiStr == ' ' ? ' ': baiArr.join(",") + "|") +
        (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
        (geStr == ' ' ? ' ': geArr.join(","))
    );
}

/**
 * 五星直选复式
 */
function content_5xzxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".wanweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (wanLength <= 0 || qianLength <= 0 || baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return 0;
    }

    return "{0}|{1}|{2}|{3}|{4}".format(
        wanArr.join(","),
        qianArr.join(","),
        baiArr.join(","),
        shiArr.join(","),
        geArr.join(",")
    );
}

/**
 * 四星直选复式
 */
function content_4xzxfs() {
    var qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    if(qianArr.length <= 0|| baiArr.length <= 0|| shiArr.length <= 0|| geArr.length <= 0){
        return;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "四星直选-复式";
    showContent = "千位：({0})，百位：({1})，十位：({2})，个位：({3})".format(
        qianArr.join(","),
        baiArr.join(","),
        shiArr.join(","),
        geArr.join(",")
    );
    return betContent = gfwf_4xfs(
        qianArr,
        baiArr,
        shiArr,
        geArr
    );
}

/**
 * 后三直选复式
 */
function content_h3zxfs() {
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    if(baiArr.length <= 0|| shiArr.length <= 0|| geArr.length <= 0){
        return;
    }

    return gfwf_3xfs(
        baiArr,
        shiArr,
        geArr
    );
}

/**
 * 后三直选-和值
 */
function content_h3zxhz() {
    var heZhiArr = [];
    var zhushu = 0;
    $.each($(".h3zxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        heZhiArr.push($.trim($(this).html()));
    });

    return heZhiArr.join(",");
}

/**
 * 后三直选-跨度
 */
function content_h3zxkd() {
    var kaDuArr = [];
    $.each($(".h3kdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        kaDuArr.push($.trim($(this).html()));
    });

    return kaDuArr.join(",");
}

/**
 * 后三直选-后三组合
 */
function content_h3zh() {
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    return gfwf_3xfs(
        baiArr,
        shiArr,
        geArr
    );
}

/**
 * 后三组选-组三复式
 */
function content_h3z3fs() {
    var zuSanArr = [];
    $.each($(".z3fsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuSanArr.push($.trim($(this).html()));
    });

    return zuSanArr.join(",");
}

/**
 * 后三组选-组六复式
 */
function content_h3z6fs(){
    var zuLiuArr = [];

    $.each($(".z6fsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuLiuArr.push($.trim($(this).html()));
    });
        console.log(zuLiuArr.join(","));
    return zuLiuArr.join(",");
}

/**
 * 后三组选-和值
 */
function content_h3zuxhz() {
    var heZhiArr = [];
    var zhushu = 0;
    $.each($(".zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        heZhiArr.push($.trim($(this).html()));
    });

    return heZhiArr.join(",");
}

/**
 * 后三组选-后三和值尾数
 */
function content_h3hzws(){
    var hzArr = [];
    $.each($(".hzwsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });

    return hzArr.join(",");
}

/**
 * 后三组选-组选包胆
 */
function content_h3zuxbd(){
    var bdArr = [];
    $.each($(".bdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        bdArr.push($.trim($(this).html()));
    });

    return bdArr.join(",");
}

/**
 * 后三组选-特殊号
 */
function content_h3tsh(){
    var thArr = [];
    $.each($(".tshStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        thArr.push($.trim($(this).html()));
    });

    if (thArr.length <= 0) {
        alert("至少选择1注号码才能投注");
        return false;
    }

    return thArr.join(",");

}



//======================================================注数算法====================================

/**************定位胆***************/
/**
 * 注数-定位胆
 */
function zhushu_dwd(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
    $.each($(".wanweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });
    var wanLength = wanArr.length;
    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (wanLength <= 0 && qianLength <= 0 && baiLength <= 0 && shiLength <= 0 && geLength <= 0) {
        return 0;
    }

    if (wanLength > 0) {
        newArr = newArr.concat(wanArr);
    }
    if (qianLength > 0) {
        newArr = newArr.concat(qianArr);
    }
    if (baiLength > 0) {
        newArr = newArr.concat(baiArr);
    }
    if (shiLength > 0) {
        newArr = newArr.concat(shiArr);
    }
    if (geLength > 0) {
        newArr = newArr.concat(geArr);
    }
    return newArr.length;
}

/***********五星直选复式*************/
/**
 * 注数-5星直选复式
 */
function zhushu_5xzxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".wanweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (wanLength <= 0 || qianLength <= 0 || baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return 0;
    }

    var newArr = getNewArrs(wanArr, qianArr, baiArr, shiArr, geArr);
    return newArr.length;
}

/***********四星直选复式*************/
/**
 * 注数-4星直选复式
 */
function zhushu_4xzxfs() {
    var qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (qianLength <= 0 || baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return 0;
    }

    var newArr = getFourNewArrs(qianArr, baiArr, shiArr, geArr);
    if (typeof newArr == "undefined" || newArr.length <= 0) {
        if (typeof clearStateTouZhu == 'function') {
            clearStateTouZhu();
        }
        return;
    }
    return newArr.length;
}

/***************后三****************/
/**
 * 注数-特殊号
 */
function zhushu_h3tsh() {
    var tsArr = [];
    $.each($(".tshStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        tsArr.push($.trim($(this).html()));
    });
    var zlLength = tsArr.length;
    if (zlLength <= 0) {
        return 0;
    }
    return tsArr.length;
}

/**
 * 注数-和值尾数
 */
function zhushu_h3hzws() {
    var wsArr = [], newArr = [];
    $.each($(".hzwsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wsArr.push($.trim($(this).html()));
    });
    var zlLength = wsArr.length;
    if (zlLength < 0) {
        return 0;
    }
    return zlLength;
}

/**
 * 注数-组选包胆
 */
function zhushu_h3zuxbd(){
    var baoDanArr = [], newArr = [];
    $.each($(".bdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baoDanArr.push($.trim($(this).html()));
    });
    var zlLength = baoDanArr.length;
    if (zlLength < 0) {
        return 0;
    }
    newArr = getZxbdNewArrs(baoDanArr);
    return newArr.length;
}

/**
 * 注数-组选和值
 */
function zhushu_h3zuxhz(){
    var fuShiArr = [], newArr = [];
    $.each($(".zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        fuShiArr.push($.trim($(this).html()));
    });

    var zlLength = fuShiArr.length;
    if (zlLength <= 0) {
        return 0;
    }
    newArr = getZxhzNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-组六复式
 */
function zhushu_h3z6fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".z6fsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        fuShiArr.push($.trim($(this).html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength < 3) {
        return 0;
    }
    newArr = getZuLiuNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-组三复式
 */
function zhushu_h3z3fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".z3fsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        fuShiArr.push($.trim($(this).html()));
    });

    var heZhiLength = fuShiArr.length;
    if (heZhiLength <= 1) {
        return 0;
    }
    newArr = getZuXuanNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-后3组合
 */
function zhushu_h3zh() {
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;

    if (baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return;
    }

    var newArr = getHszhNewArrs(baiArr, shiArr, geArr);
    return newArr.length;
}

/**
 * 注数-直选跨度
 */
function zhushu_h3zxkd() {
    var newArr = [];
    var kaDuArr = [];
    $.each($(".h3kdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        kaDuArr.push($.trim($(this).html()));
    });
    if (kaDuArr.length <= 0) {
        return 0;
    }
    newArr = getKaduNewArrs(kaDuArr);
    return newArr.length;
}

/**
 * 注数-直选和值
 */
function zhushu_h3zxhz() {
    var heZhiArr = [], newArr = [];
    $.each($(".h3zxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        heZhiArr.push($.trim($(this).html()));
    });

    var heZhiLength = heZhiArr.length;
    if (heZhiLength <= 0) {
        return 0;
    }

    newArr = getHezNewArrs(heZhiArr);
    return newArr.length;
}

/**
 * 注数-后3直选复式
 */
function zhushu_h3zxfs() {
    var newArr = [];
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var baiLength = baiArr.length;
    var shiLength = shiArr.length;
    var geLength = geArr.length;
    if (baiLength <= 0 || shiLength <= 0 || geLength <= 0) {
        return 0;
    }
    newArr = getThreeNewArrs(baiArr, shiArr, geArr);
    return newArr.length;
}

//******************前三****************
/**
 * 注数-特殊号
 */
function zhushu_q3tsh() {
    var tsArr = [];
    $.each($(".tshStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        tsArr.push($.trim($(this).html()));
    });
    var zlLength = tsArr.length;
    if (zlLength <= 0) {
        return 0;
    }
    return tsArr.length;
}

/**
 * 注数-和值尾数
 */
function zhushu_q3hzws() {
    var wsArr = [], newArr = [];
    $.each($(".hzwsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wsArr.push($.trim($(this).html()));
    });
    var zlLength = wsArr.length;
    if (zlLength < 0) {
        return 0;
    }
    return zlLength;
}

/**
 * 注数-组选包胆
 */
function zhushu_q3zuxbd(){
    var baoDanArr = [], newArr = [];
    $.each($(".bdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baoDanArr.push($.trim($(this).html()));
    });
    var zlLength = baoDanArr.length;
    if (zlLength < 0) {
        return 0;
    }
    newArr = getZxbdNewArrs(baoDanArr);
    return newArr.length;
}

/**
 * 注数-组选和值
 */
function zhushu_q3zuxhz(){
    var fuShiArr = [], newArr = [];
    $.each($(".zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        fuShiArr.push($.trim($(this).html()));
    });

    var zlLength = fuShiArr.length;
    if (zlLength <= 0) {
        return 0;
    }
    newArr = getZxhzNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-组六复式
 */
function zhushu_q3z6fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".z6fsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        fuShiArr.push($.trim($(this).html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength < 3) {
        return 0;
    }
    newArr = getZuLiuNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-组三复式
 */
function zhushu_q3z3fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".z3fsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        fuShiArr.push($.trim($(this).html()));
    });

    var heZhiLength = fuShiArr.length;
    if (heZhiLength <= 1) {
        return 0;
    }
    newArr = getZuXuanNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-前3组合
 */
function zhushu_q3zh() {
    var wanArr = [], qianArr = [], baiArr = [];
    $.each($(".wanweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        baiArr.push($.trim($(this).html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;
    var baiLength = baiArr.length;

    if (wanLength <= 0 || qianLength <= 0 || baiLength <= 0) {
        return;
    }

    var newArr = getHszhNewArrs(wanArr, qianArr, baiArr);
    return newArr.length;
}

/**
 * 注数-直选跨度
 */
function zhushu_q3zxkd() {
    var newArr = [];
    var kaDuArr = [];
    $.each($(".h3kdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        kaDuArr.push($.trim($(this).html()));
    });
    if (kaDuArr.length <= 0) {
        return 0;
    }
    newArr = getKaduNewArrs(kaDuArr);
    return newArr.length;
}

/**
 * 注数-直选和值
 */
function zhushu_q3zxhz() {
    var heZhiArr = [], newArr = [];
    $.each($(".q3zxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        heZhiArr.push($.trim($(this).html()));
    });

    var heZhiLength = heZhiArr.length;
    if (heZhiLength <= 0) {
        return 0;
    }

    newArr = getHezNewArrs(heZhiArr);
    return newArr.length;
}

/**
 * 注数-前3直选复式
 */
function zhushu_q3zxfs() {
    var newArr = [];
    var wanArr = [], qianArr = [], baiArr = [];
    $.each($(".wanweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    if (wanLength <= 0 || qianLength <= 0 || baiLength <= 0) {
        return 0;
    }
    newArr = getThreeNewArrs(wanArr, qianArr, baiArr);
    return newArr.length;
}



//***************** 注数 - 前二 *********************

//注数-直选复式
function zhushu_q2zxfs() {
    var tempArr = [];
    var wanArr = [], qianArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;

    if (wanLength <= 0 || qianLength <= 0) {
        return 0;
    }

    for(var i = 0; i < wanArr.length; i++){
        for(var i1 = 0; i1 < qianArr.length; i1++){
            tempArr.push(wanArr[i] + "" + qianArr[i1]);
        }
    }
    return tempArr.length;
}

//注数-直选和值
function zhushu_q2zxhz() {
    var tempArr = [];
    var hzArr = [], temp = [], nowTemp = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        nowTemp.push($.trim($(this).html()));
    });

    if (typeof valArr != "undefined") {
        hzArr = valArr;
    } else {
        hzArr = nowTemp;
    }

    var hzLength = hzArr.length;
    if (hzLength <= 0) {
        return 0;
    }

    for (var n = 0; n < hzArr.length; n++) {
        sumTemp = parseInt(hzArr[n]);
        num = parseInt(hzArr[n]);
        while (sumTemp >= 0) {
            temp.push(sumTemp);
            sumTemp--;
        }

        for (var i = 0; i < temp.length; i++) {
            for (var i1 = 0; i1 < temp.length; i1++) {
                if (temp[i] + temp[i1] == num && temp[i] <= 9 && temp[i1] <= 9) {
                    tempArr.push(temp[i] + "" + temp[i1]);
                }
            }
        }
    }

    tempArr = tempArr.uniqueArr();
    return tempArr.length;
}

//注数-直选跨度
function zhushu_q2zxkd() {
    var tempArr = [];
    var kdArr = [], numTemp = [];
    var num = 0;

    $.each($(".kdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        numTemp.push($.trim($(this).html()));
    });

    if (typeof valArr != "undefined") {
        kdArr = valArr;
    } else {
        kdArr = numTemp;
    }

    var hzLength = kdArr.length;
    if (hzLength <= 0) {
        return 0;
    }

    for (var n = 0; n < kdArr.length; n++) {
        num = kdArr[n];
        for (var i = 0; i < 10; i++) {
            for (var i1 = 0; i1 < 10; i1++) {
                var numTemp = [];
                numTemp.push(i);
                numTemp.push(i1);
                numTemp.sort();
                if (numTemp[1] - numTemp[0] == num) {
                    tempArr.push(i + "" + i1);
                }
            }
        }
    }

    tempArr = tempArr.uniqueArr();
    return tempArr.length;
}


// 数字批量选择算法
function selectFun_1(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");  //初始化选择的特效，清零
    $(obj).parent().find(".xz i").removeClass("active_gfwf");                                     //始化选择的特效，清零
    $(obj).addClass("active_gfwf");
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").addClass("active_gfwf");
    getGfwfZhushu();
}

function selectFun_2(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    var Aarr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var Barr = [, , , , , 5, 6, 7, 8, 9];
    for (var i = 0; i <= Aarr.length; ++i) {
        if (Aarr[i] == Barr[i]) {
            $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item").find(".n" + i).addClass("active_gfwf");
        }
    }
    getGfwfZhushu();
}

function selectFun_3(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    var Aarr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var Barr = [0, 1, 2, 3, 4, , , , ,];
    for (var i = 0; i <= Aarr.length; ++i) {
        if (Aarr[i] == Barr[i]) {
            $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item").find(".n" + i).addClass("active_gfwf");
        }
    }
    getGfwfZhushu();
}

function selectFun_4(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    for (var i = 0; i < 10; i++) {
        if (i%2 != 0) {   //奇数
            $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item").find(".n" + i).addClass("active_gfwf");
        }
    }
    getGfwfZhushu();
}

function selectFun_5(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    for (var i = 0; i < 10; ++i) {
        if (i%2 == 0) {   //偶数
            $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item").find(".n" + i).addClass("active_gfwf");
        }
    }
    getGfwfZhushu();
}

function selectFun_6(obj) {
    $(obj).parent().parent().parent().find(".cus_common .wan_bottom .cus-flex-item .xz").removeClass("active_gfwf");
    $(obj).parent().find(".xz i").removeClass("active_gfwf");
    $(obj).addClass("active_gfwf");
    getGfwfZhushu();
}


$(function () {    //彩种玩法选中后，隐藏正在显示的 直线方式 的模块
        $(".gfwf_xz .staer a").click(
            function () {
                $(".page").find(".gfwf_xz").addClass("gfwf_wh");    //隐藏
                $(".page").find(".gfwf_mask2").addClass("Hide_Show2");
                $(".page").find(".x_wrap").removeClass("Fixed");
                $(".page").find(".gfwf_xz").removeClass("Fixed");
                $(".page").find(".gfwf_mask2").removeClass("Fixed");
            }
        );
    }
);

/**
 * 获取当前赔率随机算法
 */
function getPlayPlFun_suiji() {
    return $(".gfwf_xz .staer a.selected").data("fun_suiji");
}

/**
 * 获取当前赔率注数算法
 */
function getPlayPlFun_zhushu() {
    return $(".gfwf_xz .staer a.selected").data("fun_zhushu");
}

/**
 * 获取当前赔率内容算法
 */
function getPlayPlFun_content() {
    return $(".gfwf_xz .staer a.selected").data("fun_content");
}

/**
 * 获取当前赔率ID
 */
function getPlayPlId() {
    var arrTemp = null;
    var indexStr = ($(".gfwf_xz .staer a.selected").data("play_pl_id")).toString();
    if(indexStr.indexOf("|") > 0){
        arrTemp = (indexStr.split("|"))[0];
    }else {
        arrTemp = $(".gfwf_xz .staer a.selected").data("play_pl_id");
    }

    return arrTemp;
}

/**
 * 获取当前玩法ID
 */
function getPlayId() {
    return $(".gfwf_xz .staer a.selected").data("play_id");
}

/**
 * 获取当前期数
 */
function getNumber() {
    return $("#number").data("number");
}

/**
 * 获取赔率和最高返点
 */
function getPlAndMaxFd() {
    // 全局赔率变量
    var playPlId = getPlayPlId();   // 当前赔率ID
    if (playPlId.toString().indexOf('|') > 0) {    // 多赔率
        var result = [];
        var tmpArr = playPlId.split('|');
        $.each(tmpArr, function(index, value) {
            for (var i = 0; i < gfwfPlJson.sscPlayPlList.length; ++i) {
                var o = gfwfPlJson.sscPlayPlList[i];
                if (o.playPlId == value) {
                    result.push(o);
                }
            }
        });
        return result;
    } else {    // 单一赔率
        for (var i = 0; i < gfwfPlJson.sscPlayPlList.length; ++i) {
            var o = gfwfPlJson.sscPlayPlList[i];
            if (o.playPlId == playPlId) {

                return o;
            }
        }
    }
    return;
}

//清除注单内容提示框
// var layerBet = null;
var tmpBetContent = null;
function showBetTemplate(infoStr) {
    // if (layerBet != null) {
    //     return;
    // }

    var contentFun = getPlayPlFun_content();    // 内容算法
    var zhushuFun = getPlayPlFun_zhushu();  // 注数算法
    if (typeof contentFun == 'undefined' || typeof zhushuFun == 'undefined') {
        return;
    }

    var data = eval(contentFun + "()");

    var zhushu = eval(zhushuFun + "()");

    if(data == -1){
        return;
    }

    if (typeof data == 'undefined' || typeof zhushu == 'undefined' || zhushu <= 0) {
        Tools.toast("号码选择不完整，请重新选择");
        return;
    }

    var plAndMaxFd = getPlAndMaxFd();   // 获取当前选中的玩法赔率和返点
    var maxPlayPl;  // 最高赔率
    var maxFandian;  // 最大返点
    var minPl;  // 最低赔率
    var convertBlMoney;  // 每1%转换赔率
    if (plAndMaxFd instanceof Array) {  // 多赔率
        maxPlayPl = plAndMaxFd[0].playPl;  // 最高赔率
        maxFandian = plAndMaxFd[0].maxFdBl;    // 最大返点
        minPl = plAndMaxFd[0].minPl;   // 最低赔率
    } else {
        maxPlayPl = plAndMaxFd.playPl;  // 最高赔率
        maxFandian = plAndMaxFd.maxFdBl;    // 最大返点
        minPl = plAndMaxFd.minPl;   // 最低赔率
    }
    convertBlMoney = (maxPlayPl - minPl) / maxFandian;  // 每1%转换赔率

    // 投注内容
    tmpBetContent = data;

    var bet_template = template('template_betTemplate', {
        defaultPlayPl: maxPlayPl.toFixed(3),
        playGroupId: playGroupId,
        number: getNumber(),
        playId: getPlayId(),
        playPlId: getPlayPlId(),
        zhushu: zhushu,
        betContent: data,
        betMode: 1,
        totalMoney: parseFloat((2 * zhushu * 1).toFixed(3)), // 默认2元 * 1倍 * 注数
        canWin: parseFloat((2 * maxPlayPl * 1).toFixed(3))  // 默认2元 * 1倍 * 赔率
    });
    layer.closeAll();
    //页面层
    layerBet = layer.open({
        type: 1,
        skin: 'gfwf',
        title: false,
        closeBtn: 0,
        content: bet_template
    });

    // 滑块事件绑定
    $("#playPlRange").RangeSlider({
        min: 0,
        max: maxFandian,
        step: 0.1,
        onChange: function(obj) {
            // 返点比例
            var fandianBili = parseFloat($(obj).val()).toFixed(1); // 当前滚动条移动的比例
            $("#betContent_fanli").data("value", fandianBili);
            $("#betContent_fanli").html(fandianBili + "%");    // 渲染界面中百分比部分

            // 赔率 = 最大配率 - 返点比例 * 转换比例
            var pl = (maxPlayPl - fandianBili * convertBlMoney).toFixed(3);
            $("#betContent_playPl").data("value", pl);

            // 渲染界面中赔率部分
            if (plAndMaxFd instanceof Array) {  // 多赔率
                var strArr = [];
                $.each(plAndMaxFd, function(index, value) {
                    var tmpConvertBlMoney = (value.playPl - value.minPl) / value.maxFdBl;
                    strArr.push((value.playPl - fandianBili * tmpConvertBlMoney).toFixed(3));
                });
                $("#betContent_playPl").html(strArr.join('|'));
            } else {
                $("#betContent_playPl").html(pl);
            }

            // 渲染下注总额，奖金等等
            renderZhushu();
        }
    });

    // 取消事件绑定
    $("#no-btn").click(function() {
        layer.closeAll();
    });

    // 确认事件绑定
    $("#yes-btn").click(function() {
        // 注单
        var betForm = {
            totalMoney: 0,
            totalZhushu: 0,
            sscBetList: []
        };
        // 手机版只有选择一单
        betForm.sscBetList.push({
            playGroupId: $(this).data("bet_play_group_id"),
            number: $(this).data("bet_number"),
            playId: $(this).data("bet_play_id"),
            playPlId: $(this).data("bet_play_pl_id"),
            zhushu: $(this).data("zhushu"),
            // content: $(this).data("bet_content"),
            content: tmpBetContent,
            perMoney: $("#betContent_inputMoney").val(),
            playPl: $("#betContent_playPl").data("value"),
            beishu: $("#betContent_inputBeishu").val(),
            totalMoney: parseFloat($("#betContent_totalMoney").html()),
            type: 2,
            mode: $(this).data("bet_mode"),
            fandian: $("#betContent_fanli").data("value")
        });
        betForm.totalMoney += betForm.sscBetList[0].totalMoney;
        betForm.totalZhushu += betForm.sscBetList[0].zhushu;

        betForm = JSON.stringify(betForm);
        ajaxRequest({
            url: CONFIG.BASEURL + "ssc/ajaxBet.json",
            data: {
                betForm: betForm
            },
            beforeSend: function() {
                layer.closeAll();
                Tools.showLoading("加载中...");
            },
            success: function(json) {
                Tools.hideLoading();
                if (json.result == 1) {
                    // 清空临时变量
                    tmpBetContent = null;
                    Tools.toast("下注成功");
                    clearSelected();
                } else {
                    Tools.toast("下注失败：" + json.description);
                }
            },
            complete: function() {
            }
        });
    });

    // 单注金额变化
    $("#betContent_inputMoney").keyup(function() {
        // 渲染下注总额，奖金等等
        renderZhushu();
    });

    // 倍数变化
    $("#betContent_inputBeishu").keyup(function() {
        // 渲染下注总额，奖金等等
        renderZhushu();
    });

    // 渲染下注总额，奖金等等
    function renderZhushu() {
        var money = $("#betContent_inputMoney").val();
        var beishu = $("#betContent_inputBeishu").val();
        var zhushu = parseInt($("#betContent_zhushu").html());
        var playPl = parseFloat($("#betContent_playPl").data("value"));

        var totalMoney = parseFloat((money * zhushu * beishu).toFixed(3));  // 总金额
        var canWin = parseFloat(money * beishu * playPl);  // 可获奖金

        $("#betContent_totalMoney").html(totalMoney.toFixed(3));
        $("#betContent_canWin").html(canWin.toFixed(3));
    }

    // //定义弹框宽度大小
    // 转移到layer的skin
    // $("#layui-m-layer" + layerBet + " .layui-m-layerchild").css("width", "85%");
    // $(".betTemplate").parent().css("padding", "0 0!important");
}

// 清除所有选择
function clearSelected() {
    $(".active_gfwf").removeClass("active_gfwf");
    $("#zhushu").html(0);
    $("#nowMoney").html(0);
}

//*****************mobile注数算法******************

// 获取万、千、百、十、个，固定位数的个数所组成5位所有组合
function getNewArrs(wanA, qianA, baiA, shiA, geA) {
    var wArr = [], qArr = [], bArr = [], sArr = [], gArr = [];
    wArr = wanA;
    qArr = qianA;
    bArr = baiA;
    sArr = shiA;
    gArr = geA;
    var tempArr = [];
    for (var w = 0; w < wArr.length; w++) {
        for (var q = 0; q < qArr.length; q++) {
            for (var b = 0; b < bArr.length; b++) {
                for (var s = 0; s < sArr.length; s++) {
                    for (var g = 0; g < gArr.length; g++) {
                        tempArr.push(wArr[w] + "" + qArr[q] + "" + bArr[b] + "" + sArr[s] + "" + gArr[g]);
                    }
                }
            }
        }
    }
    return tempArr;
}

// 获取千、百、十、个固定位数的个数所组成4位所有组合
function getFourNewArrs(qianA, baiA, shiA, geA) {
    var qArr = [], bArr = [], sArr = [], gArr = [];
    qArr = qianA;
    bArr = baiA;
    sArr = shiA;
    gArr = geA;
    var tempArr = [];
    for (var q = 0; q < qArr.length; q++) {
        for (var b = 0; b < bArr.length; b++) {
            for (var s = 0; s < sArr.length; s++) {
                for (var g = 0; g < gArr.length; g++) {
                    tempArr.push(qArr[q] + "" + bArr[b] + "" + sArr[s] + "" + gArr[g]);
                }
            }
        }
    }
    return tempArr;
}

// 获取百、十、个固定位数的个数所组成(后三直选--后三组合)
function getHszhNewArrs(baiA, shiA, geA) {
    var bArr = [], sArr = [], gArr = [];
    bArr = baiA;
    sArr = shiA;
    gArr = geA;
    var tempArr = [];
    for (var b = 0; b < bArr.length; b++) {
        for (var s = 0; s < sArr.length; s++) {
            for (var g = 0; g < gArr.length; g++) {
                tempArr.push(bArr[b] + "" + sArr[s] + "" + gArr[g]);
                tempArr.push(sArr[s] + "" + gArr[g]);
                tempArr.push(gArr[g]);
            }
        }
    }
    return tempArr;
}

// 获取百、十、个固定位数的个数所组成3位所有组合
function getThreeNewArrs(baiA, shiA, geA) {
    var bArr = [], sArr = [], gArr = [];
    bArr = baiA;
    sArr = shiA;
    gArr = geA;
    var tempArr = [];
    for (var b = 0; b < bArr.length; b++) {
        for (var s = 0; s < sArr.length; s++) {
            for (var g = 0; g < gArr.length; g++) {
                tempArr.push(bArr[b] + "" + sArr[s] + "" + gArr[g]);
            }
        }
    }
    return tempArr;
}

// 后三直选--获取所选号码分散为三位所有组合的和值
function getHezNewArrs(hZArr) {
    var heZhiArr = [], shuArr = [], tempArr = [];
    var temp = [];
    var sumTemp = 0;
    var num = 0; //当前号码
    var fjHaoZuhe = []; //分解号组合

    heZhiArr = hZArr;
    for(var d = 0; d < 28; d++){
        shuArr[d] = 0;
    }
    //号码分解---所选号分解成所有组合的值等于此号的所有组合
    for (var i = 0; i < heZhiArr.length; i++) {
        sumTemp = parseInt(heZhiArr[i]);
        num = parseInt(heZhiArr[i]);
        while (sumTemp >= 0) {
            temp.push(sumTemp);
            sumTemp--;
        }

        //所选号码分解至零，被分解出所有的号码三个为一组，所组成的所有组合的每一组值等于所选号的值的组合数
        for (var n = 0; n < temp.length; n++) {
            for(var m = 0; m < temp.length; m++){
                for(var mn = 0; mn < temp.length; mn++){
                    if(temp[n] + temp[m] + temp[mn] == num && temp[mn] <= 9 && temp[m] <= 9 && temp[n] <= 9){
                        fjHaoZuhe.push(temp[n] + "" + temp[m] + "" + temp[mn]);
                    }
                }
            }
        }
        tempArr = fjHaoZuhe.uniqueArr();
    }
    return tempArr;
}


// 前三和后三直选-跨度所选跨度值所有组合
function getKaduNewArrs(kDArr) {
    var kaDuArr = [], tempArr1 = [], tempArr2 = [], tempArr3 = [];
    var allArr = [];
    for (var t = 0; t < 10; t++) {
        tempArr1[t] = t;
        tempArr2[t] = t;
        tempArr3[t] = t;
    }
    var maxZhi = 0, minZhi = 0, tempZhi = 0;
    kaDuArr = kDArr;
    for (var i = 0; i < kaDuArr.length; i++) {
        tempZhi = parseInt(kaDuArr[i]);
        for (var n = 0; n < tempArr1.length; n++) {
            for (var n1 = 0; n1 < tempArr2.length; n1++) {
                for (var n2 = 0; n2 < tempArr3.length; n2++) {
                    maxZhi = tempArr1[n] > tempArr2[n1] ? tempArr1[n] : tempArr2[n1];
                    maxZhi= maxZhi > tempArr3[n2] ? maxZhi :tempArr3[n2];
                    minZhi = tempArr1[n] < tempArr2[n1] ? tempArr1[n] : tempArr2[n1];
                    minZhi= minZhi < tempArr3[n2] ? minZhi :tempArr3[n2];
                    if ((maxZhi - minZhi) == tempZhi) {
                        allArr.push(n + "" + n1 + "" + n2);
                        maxZhi = 0;
                        minZhi = 0;
                    }
                }
            }
        }
    }
    return allArr;
}

// 后三组选-组三复式
function getZuXuanNewArrs(zuXuanArr) {
    var tempArr = [],zxArr = [];
    zxArr = zuXuanArr;

    for(var i = 0; i < zxArr.length - 1; i++){
        for(var i1 = 1; i1 < zxArr.length; i1++){
            if(zxArr[i1] != zxArr[i]){
                tempArr.push(zxArr[i] + "" + zxArr[i1] + "" + zxArr[i1]);
                tempArr.push(zxArr[i1] + "" + zxArr[i] + "" + zxArr[i]);
            }
        }
    }
    tempArr = tempArr.uniqueArr();
    return tempArr;
}

// 后三组选-组六复式
function getZuLiuNewArrs(zuXuanArr) {
    var tempArr = [], zxArr = [];
    zxArr = zuXuanArr;
    for (var i = 0; i < zxArr.length; i++) {
        for (var i1 = 0; i1 < zxArr.length; i1++) {
            for (var i2 = 0; i2 < zxArr.length; i2++) {
                if (zxArr[i] != zxArr[i1] && zxArr[i1] != zxArr[i2] && zxArr[i] != zxArr[i2]) {
                    var sortArr = [];
                    sortArr.push(zxArr[i]);
                    sortArr.push(zxArr[i1]);
                    sortArr.push(zxArr[i2]);
                    sortArr.sort();
                    tempArr.push(sortArr.join(""));
                }
            }
        }
    }
    tempArr = tempArr.uniqueArr();
    return tempArr;
}

// 后三组选-组选和值
function getZxhzNewArrs(zuXuanArr) {
    var heZhiArr = [], shuArr = [], tempArr = [];
    var temp = [];
    var sumTemp = 0;
    var num = 0; //当前号码
    var fjHaoZuhe = []; //分解号组合

    heZhiArr = zuXuanArr;
    for(var d = 0; d < 28; d++){
        shuArr[d] = 0;
    }
    //号码分解---所选号分解成所有组合的值等于此号的所有组合
    for (var i = 0; i < heZhiArr.length; i++) {
        sumTemp = parseInt(heZhiArr[i]);
        num = parseInt(heZhiArr[i]);
        while (sumTemp >= 0) {
            temp.push(sumTemp);
            sumTemp--;
        }

        //获取所选号的组选三和组选六形态的所有组数（不包含豹子号、顺序不限）
        for (var n = 0; n < temp.length; n++) {
            for(var m = 0; m < temp.length; m++){
                for(var mn = 0; mn < temp.length; mn++){
                    if(temp[n] + temp[m] + temp[mn] == num && temp[mn] <= 9 && temp[m] <= 9 && temp[n] <= 9){
                        if(temp[m] != temp[n] && temp[n] != temp[mn] && temp[mn] != temp[n]){
                            var sortArr = [];
                            sortArr.push(temp[n]);
                            sortArr.push(temp[m]);
                            sortArr.push(temp[mn]);
                            sortArr.sort();
                            fjHaoZuhe.push(sortArr.join(""));

                        }
                    }
                }
            }
        }

    }
    tempArr = fjHaoZuhe.uniqueArr();
    return tempArr;
}

// 后三组选-组选包胆
function getZxbdNewArrs(zuXuanArr) {
    var tempArr = [], bdArr = [];
    bdArr = zuXuanArr;
    for(var n = 0; n < bdArr.length; n++) {
        for(var n1 = 0; n1 < 10; n1++){
            for(var n2 = 0; n2 < 10; n2++){
                if(bdArr[n] != n1 && bdArr != n2 && n1 != n2 || n1 == n2 && bdArr[n] != n2 || n2 == bdArr[n] && bdArr[n] != n1 || n1 == bdArr[n] && bdArr[n] != n2){
                    var sortArr = [];
                    sortArr.push(bdArr[n]);
                    sortArr.push(n1);
                    sortArr.push(n2);
                    sortArr.sort();
                    tempArr.push(sortArr.join(""));
                }
            }
        }
    }

    tempArr =tempArr.uniqueArr();
    return tempArr;
}

//**************** 前三 ****************



function gfwf_4xfs(
    qianArr,
    baiArr,
    shiArr,
    geArr
) {
    var tmpStr_1 = qianArr.join(",");
    var tmpStr_2 = baiArr.join(",");
    var tmpStr_3 = shiArr.join(",");
    var tmpStr_4 = geArr.join(",");

    return "{0}|{1}|{2}|{3}".format(
        tmpStr_1,
        tmpStr_2,
        tmpStr_3,
        tmpStr_4
    );
}

function gfwf_3xfs(
    baiArr,
    shiArr,
    geArr
) {
    var tmpStr_1 = baiArr.join(",");
    var tmpStr_2 = shiArr.join(",");
    var tmpStr_3 = geArr.join(",");

    return "{0}|{1}|{2}".format(
        tmpStr_1,
        tmpStr_2,
        tmpStr_3
    );
}

/**
 * 初始化滚动条
 * @param cfg
 */
$.fn.RangeSlider = function(cfg) {
    var min = cfg.min;    // 最小值
    var max = cfg.max;    // 最大值
    var step = cfg.step;    // 每步
    var width = cfg.width ? cfg.width : '100%';  // 容器长度
    var orientation = cfg.orientation ? cfg.orientation : 'vertical';
    var leftColor = cfg.leftColor ? cfg.leftColor : "#fa6200";
    var rightColor = cfg.rightColor ? cfg.rightColor : "#fa6200";

    $(this).attr("min", min).attr("max", max).attr("step", step).attr("step", step).attr("value", 0);
    $(this).css({
        width: width
    });

    var callback = cfg.onChange;

    $(this).bind("input", function(e){
        $(this).attr('value', this.value);
        var bfb = (this.value - min) / max * 100;
        $(this).css( 'background', 'linear-gradient(to right, ' + leftColor + ' 0%, ' + leftColor + ' ' + bfb + '%,#fff ' + bfb + '%, #fff)' );

        if ($.isFunction(callback)) {
            callback(this);
        }
    });
};


// 字符串格式化函数
String.prototype.format = function(args) {
    var result = this;
    if (arguments.length > 0) {
        if (arguments.length == 1 && typeof (args) == "object") {
            for (var key in args) {
                if(args[key]!=undefined){
                    var reg = new RegExp("({" + key + "})", "g");
                    result = result.replace(reg, args[key]);
                }
            }
        }
        else {
            for (var i = 0; i < arguments.length; i++) {
                if (arguments[i] != undefined) {
                    var reg = new RegExp("({[" + i + "]})", "g");
                    result = result.replace(reg, arguments[i]);
                }
            }
        }
    }
    return result;
}

//去掉数组重复
Array.prototype.uniqueArr = function () {
    var temp = new Array();
    this.sort();
    for(i = 0; i < this.length; i++) {
        if( this[i] == this[i+1]) {
            continue;
        }
        temp[temp.length]=this[i];
    }
    return temp;
}
