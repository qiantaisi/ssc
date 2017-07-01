//****
// 官方玩法事件绑定
function gfwfEvent(){
    $("#btn-submit-gfwf").unbind('click').click(function () {
        showBetTemplate();
    });

    $("#btn-reset-gfwf").click(function () {
        clearSelected();
    });


    // checkbox触发事件f
    if ($("#checkSelected").length > 0) {
        // // 兼容IE的checkbox选中
        // if ($.browser.msie) {
        //     $('input:checkbox').click(function () {
        //         this.blur();
        //         this.focus();
        //     });
        // }

        $("#checkSelected input[type='checkbox']").change(function() {
            var checkSelectedFun = $("#checkSelected").attr("data-fun_checkbox");
            if (typeof checkSelectedFun != 'undefined') {
                eval(checkSelectedFun + "()");
                getGfwfZhushu();
            }
        });
    }
}

/**
 * 获得checkbox选中值列表
 */
function getCheckboxValue() {
    var result = [];
    $("#checkSelected input[type='checkbox']").each(function() {
        if ($(this).is(":checked")) {
            result.push($(this).val());
        }
    });
    return result;
}

function checkCkRx2(){
    getGfwfZhushu();
}

/**
 *获取具体子页面
 */
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

/**
 *数字单选算法
 */
function danSelect(obj) {
    var flag = $(obj).parent().parent().attr("data-name");
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


/**
 * 获取注数方法
 */
function getGfwfZhushu(){

    var zhushuFun = getPlayPlFun_zhushu();  // 注数算法
    //执行注数方法
    if (typeof zhushuFun != 'undefined') {
        var zhushu = eval(zhushuFun + "()");   // 注数
        if(zhushu == 0){
            $("#zhushu").html(zhushu);
            $("#nowMoney").html(0);
            return;
        }else if (typeof zhushu == "undefined" || zhushu < 0) {
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

/***************前三****************/

/**
 * 前三直选复式
 */
function content_q3zxfs() {
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

    if(wanArr.length <= 0|| qianArr.length <= 0|| baiArr.length <= 0){
        return;
    }

    return gfwf_3xfs(
        wanArr,
        qianArr,
        baiArr
    );
}

/**
 * 前三直选-和值
 */
function content_q3zxhz() {
    var heZhiArr = [];
    var zhushu = 0;
    $.each($(".q3zxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        heZhiArr.push($.trim($(this).html()));
    });

    return heZhiArr.join(",");
}

/**
 * 前三直选-跨度
 */
function content_q3zxkd() {
    var kaDuArr = [];
    $.each($(".h3kdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        kaDuArr.push($.trim($(this).html()));
    });

    return kaDuArr.join(",");
}

/**
 * 前三直选-前三组合
 */
function content_q3zh() {
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

    return gfwf_3xfs(
        wanArr,
        qianArr,
        baiArr
    );
}

/**
 * 前三组选-组三复式
 */
function content_q3z3fs() {
    var zuSanArr = [];
    $.each($(".z3fsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuSanArr.push($.trim($(this).html()));
    });

    return zuSanArr.join(",");
}

/**
 * 前三组选-组六复式
 */
function content_q3z6fs(){
    var zuLiuArr = [];

    $.each($(".z6fsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuLiuArr.push($.trim($(this).html()));
    });
    return zuLiuArr.join(",");
}

/**
 * 前三组选-和值
 */
function content_q3zuxhz() {
    var heZhiArr = [];
    var zhushu = 0;
    $.each($(".zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        heZhiArr.push($.trim($(this).html()));
    });

    return heZhiArr.join(",");
}

/**
 * 前三组选-前三和值尾数
 */
function content_q3hzws(){
    var hzArr = [];
    $.each($(".hzwsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });

    return hzArr.join(",");
}

/**
 * 前三组选-组选包胆
 */
function content_q3zuxbd(){
    var bdArr = [];
    $.each($(".bdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        bdArr.push($.trim($(this).html()));
    });

    return bdArr.join(",");
}

/**
 * 前三组选-特殊号
 */
function content_q3tsh(){
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

/***************前二****************/
/**
 * 前二直选-直选复式
 */
function content_q2zxfs(){
    var wanArr = [], qianArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });

    return gfwf_2xfs(
        wanArr,
        qianArr
    );
}

/**
 * 前二直选-直选和值
 */
function content_q2zxhz(){
    var hzArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });

    return hzArr.join(",");
}

/**
 * 前二直选-直选跨度
 */
function content_q2zxkd(){
    var kdArr = [];
    $.each($(".kdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        kdArr.push($.trim($(this).html()));
    });

    return kdArr.join(",");
}

/**
 * 前二组选-组选复式
 */
function content_q2zuxfs(){
    var zuxArr = [];
    $.each($(".zuxStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuxArr.push($.trim($(this).html()));
    });

    return zuxArr.join(",");
}

/**
 * 前二组选-组选和值
 */
function content_q2zuxhz(){
    var hzArr = [];
    $.each($(".q2zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        hzArr.push($.trim($(this).html()));
    });

    return hzArr.join(",");
}

/**
 * 前二组选-组选包胆
 */
function content_q2zuxbd(){
    var dmArr = [];
    $.each($(".zuxbdStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        dmArr.push($.trim($(this).html()));
    });

    return dmArr.join(",");
}

/***************不定位**************/
/**
 * 不定位-前三一码
 */
function content_q3ym(){
    var budwArr = [];
    $.each($(".q3ymStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-前三二码
 */
function content_q3em(){
    var budwArr = [];
    $.each($(".q3emStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-后三一码
 */
function content_h3ym(){
    var budwArr = [];
    $.each($(".h3ymStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-后三二码
 */
function content_h3em(){
    var budwArr = [];
    $.each($(".h3emStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-前四一码
 */
function content_q4ym(){
    var budwArr = [];
    $.each($(".q4ymStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-前四二码
 */
function content_q4em(){
    var budwArr = [];
    $.each($(".q4emStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-后四一码
 */
function content_h4ym(){
    var budwArr = [];
    $.each($(".h4ymStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-后四二码
 */
function content_h4em(){
    var budwArr = [];
    $.each($(".h4emStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-五星一码
 */
function content_wxym(){
    var budwArr = [];
    $.each($(".wxymStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-五星二码
 */
function content_wxem(){
    var budwArr = [];
    $.each($(".wxemStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**
 * 不定位-五星三码
 */
function content_wx3m(){
    var budwArr = [];
    $.each($(".wxsmStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        budwArr.push($.trim($(this).html()));
    });

    return budwArr.join(",");
}

/**************大小单双*************/
/**
 * 前2大小单双
 */
function content_q2dxds() {
    var zhushu = 0;
    var dxdsWArr = [], dxdsQArr = [], tempArr = [];

    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsWArr.push($.trim($(this).html()));
    });

    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsQArr.push($.trim($(this).html()));
    });

    for (var n = 0; n < dxdsWArr.length; n++) {
        for (var m = 0; m < dxdsQArr.length; m++) {
            tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m]);
        }
    }

    if(dxdsWArr.length <= 0 || dxdsQArr.length <= 0){
        return;
    }

    var arr = [
        dxdsWArr.join(","),
        dxdsQArr.join(",")
    ];

    return "{0}|{1}".format(arr[0], arr[1]);
}

/**
 * 后2大小单双
 */
function content_h2dxds() {
    var zhushu = 0;
    var dxdsSArr = [], dxdsGArr = [], tempArr = [];
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsSArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsGArr.push($.trim($(this).html()));
    });

    for (var n = 0; n < dxdsSArr.length; n++) {
        for (var m = 0; m < dxdsGArr.length; m++) {
            tempArr.push(dxdsSArr[n] + "" + dxdsGArr[m]);
        }
    }
    if(dxdsSArr.length <= 0 || dxdsGArr.length <= 0){
        return;
    }
    var arr = [
        dxdsSArr.join(","),
        dxdsGArr.join(",")
    ];
    return "{0}|{1}".format(arr[0], arr[1]);
}

/**
 * 前三大小单双
 */
function content_q3dxds() {
    var zhushu = 0;
    var dxdsWArr = [], dxdsQArr = [], dxdsBArr = [], tempArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        dxdsWArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        dxdsQArr.push($.trim($(this).html()));
    });
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        dxdsBArr.push($.trim($(this).html()));
    });


    for (var n = 0; n < dxdsWArr.length; n++) {
        for (var m = 0; m < dxdsQArr.length; m++) {
            for (var h = 0; h < dxdsQArr.length; h++) {
                tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m] + "" + dxdsBArr[h]);
            }
        }
    }
    if(dxdsWArr.length <= 0 || dxdsQArr.length <= 0|| dxdsBArr.length <= 0){
        return;
    }
    var arr = [
        dxdsWArr.join(","),
        dxdsQArr.join(","),
        dxdsBArr.join(",")
    ];
    return "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);
}

/**
 * 后三大小单双
 */
function content_h3dxds() {
    var zhushu = 0;
    var dxdsBArr = [],dxdsSArr = [], dxdsGArr = [], tempArr = [];
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        dxdsBArr.push($.trim($(this).html()));
    });
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        dxdsSArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        dxdsGArr.push($.trim($(this).html()));
    });

    for (var i = 0; i < dxdsBArr.length; i++) {
        for (var n = 0; n < dxdsSArr.length; n++) {
            for (var m = 0; m < dxdsGArr.length; m++) {
                tempArr.push(dxdsBArr[i] + "" + dxdsSArr[n] + "" + dxdsGArr[m]);
            }
        }
    }
    if(dxdsBArr.length <= 0 || dxdsSArr.length <= 0 || dxdsGArr.length <= 0){
        return;
    }
    var arr = [
        dxdsBArr.join(","),
        dxdsSArr.join(","),
        dxdsGArr.join(",")
    ];
    return "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);
}

/***************任选2*************/
/**
 * 任选二-直选复式
 */
function content_rx2zxfs(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });


    var wanStr = wanArr.length > 0 ? ("万位: " + wanArr.join("")) : '';
    var qianStr = qianArr.length > 0 ? (" 千位: " + qianArr.join("")) : '';
    var baiStr = baiArr.length > 0 ? (" 百位: " + baiArr.join("")) : '';
    var shiStr = shiArr.length > 0 ? (" 十位: " + shiArr.join("")) : '';
    var geStr = geArr.length > 0 ? (" 个位: " + geArr.join("")) : '';
    var strTemp = $.trim(
        (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
        (qianStr == ' ' ? ' ' : qianArr.join(",") + "|") +
        (baiStr == ' ' ? ' ' : baiArr.join(",") + "|") +
        (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
        (geStr == ' ' ? ' ' : geArr.join(","))
    );

    return strTemp;
}

/**
 * 任选二-直选和值
 */
function content_rx2zxhz() {
    var hzArr = [], checkStrArr = [];
    $.each($(".zxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        hzArr.push($.trim($(this).html()));
    });

    checkStrArr = getCheckboxValue();

    if (checkStrArr.length < 2) {
        Tools.alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    return checkStrArr.join(',') + "|" + hzArr.join(",");
}


/**
 * 任选二-组选复式
 */
function content_rx2zuxfs() {
    var checkStrArr = [];
    //获取位数字符串
    checkStrArr = getCheckboxValue();

    var zuArr = [], arrTemp = [];
    $.each($(".zuxfsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuArr.push($.trim($(this).html()));
    });

    if (checkStrArr.length < 2) {
        Tools.alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    return checkStrArr.join(',') + "|" + zuArr.join(",");
}

/**
 * 任选二-组选和值
 */
function content_rx2zuxhz() {
    var hzArr = [];
    var checkStrArr = [];

    //获取位数字符串
    checkStrArr = getCheckboxValue();
    $.each($(".zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        hzArr.push($.trim($(this).html()));
    });

    if (checkStrArr.length < 2) {
        Tools.alert("[任选二]至少需要选择2个位置");
        return -1;
    }
    // 转换投注格式
    return checkStrArr.join(',') + "|" + hzArr.join(",");
}

/***************任选3*************/
/**
 * 任选3-直选复式
 */
function content_rx3zxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var wanStr = wanArr.length > 0 ? ("万位: " + wanArr.join("")) : '';
    var qianStr = qianArr.length > 0 ? (" 千位: " + qianArr.join("")) : '';
    var baiStr = baiArr.length > 0 ? (" 百位: " + baiArr.join("")) : '';
    var shiStr = shiArr.length > 0 ? (" 十位: " + shiArr.join("")) : '';
    var geStr = geArr.length > 0 ? (" 个位: " + geArr.join("")) : '';
    var strTemp = $.trim(
        (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
        (qianStr == ' ' ? ' ' : qianArr.join(",") + "|") +
        (baiStr == ' ' ? ' ' : baiArr.join(",") + "|") +
        (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
        (geStr == ' ' ? ' ' : geArr.join(","))
    );

    return strTemp;
}

/**
 * 任选3-直选和值
 */
function content_rx3zxhz() {
    var hzArr = [];
    var checkStrArr = [];
    //获取位数字符串
    checkStrArr = getCheckboxValue();

    $.each($(".zxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });

    if (checkStrArr.length < 3) {
        Tools.alert("[任选三]至少需要选择3个位置");
        return -1;
    }
    return checkStrArr.join(',') + "|" + hzArr.join(",");
}

/**
 * 任选3-组三复式
 */
function content_rx3z3fs() {
    var zuArr = [];
    var checkStrArr = [];
    //获取位数字符串
    checkStrArr = getCheckboxValue();

    $.each($(".zu3fStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuArr.push($.trim($(this).html()));
    });

    if (checkStrArr.length < 3) {
        Tools.alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    return checkStrArr.join(',') + "|" + zuArr.join(",");
}

/**
 * 任选3-组六复式
 */
function content_rx3z6fs() {
    var zuArr = [];
    var checkStrArr = [];
    //获取位数字符串
    checkStrArr = getCheckboxValue();

    $.each($(".zu6fStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuArr.push($.trim($(this).html()));
    });

    if (checkStrArr.length < 3) {
        Tools.alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    return checkStrArr.join(',') + "|" + zuArr.join(",");
}

/**
 * 任选3-组选和值
 */
function content_rx3zuxhz() {
    var hzArr = [];
    var checkStrArr = [];
    //获取位数字符串
    checkStrArr = getCheckboxValue();

    if (checkStrArr.length < 3) {
        Tools.alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    $.each($(".zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });

    return checkStrArr.join(',') + "|" + hzArr.join(",");
}

/***************任选4*************/
/**
 * 任选4-直选复式
 */
function content_rx4zxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var wanStr = wanArr.length > 0 ? ("万位: " + wanArr.join("")) : '';
    var qianStr = qianArr.length > 0 ? (" 千位: " + qianArr.join("")) : '';
    var baiStr = baiArr.length > 0 ? (" 百位: " + baiArr.join("")) : '';
    var shiStr = shiArr.length > 0 ?  (" 十位: " + shiArr.join("")) : '';
    var geStr = geArr.length > 0 ? (" 个位: " + geArr.join("")) : '';

    var strTemp = $.trim(
        (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
        (qianStr == ' ' ? ' ' : qianArr.join(",") + "|") +
        (baiStr == ' ' ? ' ' : baiArr.join(",") + "|") +
        (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
        (geStr == ' ' ? ' ' : geArr.join(","))
    );

    return strTemp;
}

/**
 * 任选4-组选24
 */
function content_rx4zu24() {
    var zu24Arr = [];
    var checkStrArr = [];
    $.each($(".zu24Str .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        zu24Arr.push($.trim($(this).html()));
    });

    //获取位数字符串
    checkStrArr = getCheckboxValue();

    if (checkStrArr.length < 4) {
        Tools.alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    return checkStrArr.join(',') + "|" + zu24Arr.join(",");
}

/**
 * 任选4-组选12
 */
function content_rx4zu12() {
    var erChongHaoArr = [], danHaoArr = [];
    var checkStrArr = [];
    //获取位数字符串
    checkStrArr = getCheckboxValue();

    $.each($(".zu12chStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        erChongHaoArr.push($.trim($(this).html()));
    });

    $.each($(".zu12dhStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        danHaoArr.push($.trim($(this).html()));
    });

    if (checkStrArr.length < 4) {
        Tools.alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    return checkStrArr.join(',') + "|" + erChongHaoArr.join(",") + "|" + danHaoArr.join(",");

}

/**
 * 任选4-组选6
 */
function content_rx4zu6() {
    var erChongHaoArr = [];
    var checkStrArr = [];
    //获取位数字符串
    checkStrArr = getCheckboxValue();

    $.each($(".zu6chStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        erChongHaoArr.push($.trim($(this).html()));
    });

    if (checkStrArr.length < 4) {
        Tools.alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    return checkStrArr.join(',') + "|" + erChongHaoArr.join(",");
}

/**
 * 任选4-组选4
 */
function content_rx4zu4() {
    var sanChongHaoArr = [], danHaoArr = [];
    var checkStrArr = [];
    //获取位数字符串
    checkStrArr = getCheckboxValue();

    $.each($(".zu4chStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        sanChongHaoArr.push($.trim($(this).html()));
    });

    $.each($(".zu4dhStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        danHaoArr.push($.trim($(this).html()));
    });


    if (checkStrArr.length < 4) {
        Tools.alert("[任选四]至少需要选择4个位置");
        return -1;
    }
    return checkStrArr.join(',') + "|" + sanChongHaoArr.join(",") + "|" + danHaoArr.join(",");
}


//======================================================注数算法====================================

/**************定位胆***************/
/**
 * 注数-定位胆
 */
function zhushu_dwd(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
    $.each($(".wanweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geweiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
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

/**
 * 注数-直选复式
 */
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

//注数-组选复式
function zhushu_q2zuxfs() {
    var tempArr = [], zuxArr = [];
    $.each($(".zuxStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuxArr.push($.trim($(this).html()));
    });

    var xLength = zuxArr.length;
    if (xLength < 2) {
        return 0;
    }

    for(var i = 0; i < zuxArr.length; i++){
        for(var i1 = 0; i1 < zuxArr.length; i1++){
            if(zuxArr[i] != zuxArr[i1]){
                var xArr =[];
                xArr.push(zuxArr[i]);
                xArr.push(zuxArr[i1]);
                xArr.sort();
                tempArr.push(xArr.join(""));
            }
        }
    }
    tempArr = tempArr.uniqueArr();
    return tempArr.length;
}

//注数-组选包胆
function zhushu_q2zuxbd() {
    var tempArr = [];
    var bdArr = [], nowTemp = [];
    $.each($(".zuxbdStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        nowTemp.push($.trim($(this).html()));
    });

    if (typeof valArr != "undefined") {
        bdArr = valArr;
    } else {
        bdArr = nowTemp;
    }
    var bdLength = bdArr.length;
    if (bdLength <= 0) {
        return 0;
    }
    for (var n = 0; n < bdArr.length; n++) {
        for (var i = 0; i < 10; i++) {
            if (i != bdArr[n]) {
                tempArr.push(i + "" + bdArr[n]);
            }
        }
    }
    return tempArr.length;
}

/**
 * 注数-组选和值
 */
function zhushu_q2zuxhz(){
    var tempArr = [];
    var hzArr = [], temp = [];
    var sumTemp = 0, num = 0;
    $.each($(".q2zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        hzArr.push($.trim($(this).html()));
    });

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
                    if (temp[i] != temp[i1]) {
                        var arr1 = [];
                        arr1.push(temp[i]);
                        arr1.push(temp[i1]);
                        arr1.sort();
                        tempArr.push(arr1.join(""));
                    }
                }
            }
        }
    }
    if (tempArr.length <= 0) {
        return 0;
    }
    tempArr = tempArr.uniqueArr();
    return tempArr.length;
}

//********************* 不定位 ************************

//注数-前三一码
function zhushu_q3ym() {
    var budwArr = [];
    $.each($(".q3ymStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });
    return budwArr.length;
}

//注数-前三二码
function zhushu_q3em() {
    var budwArr = [];
    $.each($(".q3emStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });

    var newArr = [];
    for (var i = 0; i < budwArr.length; i++) {
        for (var j = 0; j < budwArr.length; j++) {
            if (i != j) {
                var arr = [];
                arr.push(budwArr[i]);
                arr.push(budwArr[j]);
                arr.sort();
                newArr.push(arr.join(","));
            }
        }
    }
    newArr = newArr.uniqueArr();
    return newArr.length;
}

//注数-后三一码
function zhushu_h3ym() {
    var budwArr = [];
    $.each($(".h3ymStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });
    return budwArr.length;
}

//注数-后三二码
function zhushu_h3em() {
    var budwArr = [];
    $.each($(".h3emStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });
    var newArr = [];
    for (var i = 0; i < budwArr.length; i++) {
        for (var j = 0; j < budwArr.length; j++) {
            if (i != j) {
                var arr = [];
                arr.push(budwArr[i]);
                arr.push(budwArr[j]);
                arr.sort();
                newArr.push(arr.join(","));
            }
        }
    }
    newArr = newArr.uniqueArr();
    return newArr.length;
}

//注数-前四一码
function zhushu_q4ym() {
    var budwArr = [];
    $.each($(".q4ymStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });
    return budwArr.length;
}

//注数-前四二码
function zhushu_q4em() {
    var budwArr = [];
    $.each($(".q4emStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });

    var newArr = [];
    for (var i = 0; i < budwArr.length; i++) {
        for (var j = 0; j < budwArr.length; j++) {
            if (i != j) {
                var arr = [];
                arr.push(budwArr[i]);
                arr.push(budwArr[j]);
                arr.sort();
                newArr.push(arr.join(","));
            }
        }
    }

    newArr = newArr.uniqueArr();
    return newArr.length;
}

//注数-后四一码
function zhushu_h4ym() {
    var budwArr = [];
    $.each($(".h4ymStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });
    return budwArr.length;
}

//注数-后四二码
function zhushu_h4em() {
    var budwArr = [];
    $.each($(".h4emStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });
    var newArr = [];
    for (var i = 0; i < budwArr.length; i++) {
        for (var j = 0; j < budwArr.length; j++) {
            if (i != j) {
                var arr = [];
                arr.push(budwArr[i]);
                arr.push(budwArr[j]);
                arr.sort();
                newArr.push(arr.join(","));
            }
        }
    }

    newArr = newArr.uniqueArr();
    return newArr.length;
}

//注数-五星一码
function zhushu_wxym() {
    var budwArr = [];
    $.each($(".wxymStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });
    return budwArr.length;
}

//注数-五星二码
function zhushu_wxem() {
    var budwArr = [];
    $.each($(".wxemStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });

    var newArr = [];
    for (var i = 0; i < budwArr.length; i++) {
        for (var j = 0; j < budwArr.length; j++) {
            if (i != j) {
                var arr = [];
                arr.push(budwArr[i]);
                arr.push(budwArr[j]);
                arr.sort();
                newArr.push(arr.join(","));
            }
        }
    }

    newArr = newArr.uniqueArr();
    return newArr.length;
}

//注数-五星三码
function zhushu_wx3m() {
    var budwArr = [];
    $.each($(".wxsmStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        budwArr.push($.trim($(this).html()));
    });

    var newArr = [];
    for (var i = 0; i < budwArr.length; i++) {
        for (var j = 0; j < budwArr.length; j++) {
            for (var x = 0; x < budwArr.length; x++) {
                if (i != j && j != x && i != x) {
                    var arr = [];
                    arr.push(budwArr[i]);
                    arr.push(budwArr[j]);
                    arr.push(budwArr[x]);
                    arr.sort();
                    newArr.push(arr.join(","));
                }
            }
        }
    }

    newArr = newArr.uniqueArr();
    return newArr.length;
}

//**************** 注数-大小单双 *****************

//注数-前二大小单双
function zhushu_q2dxds() {
    var dxdsWArr = [], dxdsQArr = [], tempArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsWArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsQArr.push($.trim($(this).html()));
    });

    for (var n = 0; n < dxdsWArr.length; n++) {
        for (var m = 0; m < dxdsQArr.length; m++) {
            tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m]);
        }
    }
    return tempArr.length;
}

//注数-后二大小单爽
function zhushu_h2dxds(){
    var dxdsSArr = [], dxdsGArr = [];
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsSArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsGArr.push($.trim($(this).html()));
    });

    return dxdsSArr.length * dxdsGArr.length;
}

//注数-前三大小单双
function zhushu_q3dxds(){
    var dxdsWArr = [], dxdsQArr = [], dxdsBArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsWArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsQArr.push($.trim($(this).html()));
    });
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsBArr.push($.trim($(this).html()));
    });
    return dxdsWArr.length * dxdsQArr.length * dxdsBArr.length;
}

//注数-后三大小单双
function zhushu_h3dxds(){
    var dxdsBArr = [],dxdsSArr = [], dxdsGArr = [];
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsBArr.push($.trim($(this).html()));
    });
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsSArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        dxdsGArr.push($.trim($(this).html()));
    });
    return dxdsBArr.length * dxdsSArr.length * dxdsGArr.length;
}


//********* 注数-任选二 ****************

//注数-直选复式
function zhushu_rx2zxfs() {
    var arrNew = [], tempArr = [];
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    if (wanArr.length > 0) {
        arrNew.push(wanArr);
    }
    if (qianArr.length > 0) {
        arrNew.push(qianArr);
    }
    if (baiArr.length > 0) {
        arrNew.push(baiArr);
    }
    if (shiArr.length > 0) {
        arrNew.push(shiArr);
    }
    if (geArr.length > 0) {
        arrNew.push(geArr);
    }

    if (arrNew.length < 2) {
        return 0;
    }

    for (var i = 0; i < arrNew.length; i++) {
        for (var i1 = 0; i1 < arrNew[i].length; i1++) {
            for (var x = i + 1; x < arrNew.length; x++) {
                for (var n = 0; n < arrNew[x].length; n++) {
                    tempArr.push(arrNew[i][i1] + "" + arrNew[x][n]);
                }
            }
        }
    }
    return tempArr.length;
}

//注数-直选和值
function zhushu_rx2zxhz(){
    var hzArr = [];
    var newArr = [];

    $.each($(".zxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });

    if (hzArr.length <= 0) {
        return 0;
    }
    for (var i = 0; i < hzArr.length; i++) {
        for (var x = 0; x < 10; x++) {
            for (var y = 0; y < 10; y++) {
                if (x + y == hzArr[i]) {
                    newArr.push(x + "" + y);
                }
            }
        }
    }
    var zhushu = newArr.length;
    // 选取选中checkbox
    var checkArr = getCheckboxValue();

    var shu = getFlagArrs(checkArr, 2).length;
    return zhushu * shu;
}

//注数-组选复式`
function zhushu_rx2zuxfs(){
    var zuArr = [];
    var tempArr = [];
    $.each($(".zuxfsStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuArr.push($.trim($(this).html()));
    });
    var zuLength = zuArr.length;

    if (zuLength < 2) {
        return;
    }

    for (var i = 0; i < zuArr.length; i++) {
        for (var i1 = 0; i1 < zuArr.length; i1++) {
            if (zuArr[i] != zuArr[i1]) {
                var arr = [];
                arr.push(zuArr[i]);
                arr.push(zuArr[i1]);
                arr.sort();
                tempArr.push(arr.join(""));
            }
        }
    }

    tempArr = tempArr.uniqueArr();
    var zhushu = tempArr.length;

    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 2).length;
    return zhushu * shu;
}

//注数-组选和值
function zhushu_rx2zuxhz(){
    var hzArr = [];
    $.each($(".zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });
    if (hzArr.length <= 0) {
        return 0;
    }
    var newArr = [];
    for (var i = 0; i < hzArr.length; i++) {
        for (var x = 0; x < 10; x++) {
            for (var y = 0; y < 10; y++) {
                if ((x + y) == hzArr[i] && x != y) {
                    var arr = [];
                    arr.push(x);
                    arr.push(y);
                    arr.sort();
                    newArr.push(arr.join(""));
                }
            }
        }
    }
    newArr = newArr.uniqueArr();
    var zhushu = newArr.length;

    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 2).length;
    return zhushu * shu;
}


//*************** 注数-任选三****************

//注数-直选复式
function zhushu_rx3zxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        geArr.push($.trim($(this).html()));
    });

    var numArr = [];
    var indexArr = [wanArr, qianArr, baiArr, shiArr, geArr];

    if (wanArr.length > 0) {
        numArr.push(0);
    }
    if (qianArr.length > 0) {
        numArr.push(1);
    }
    if (baiArr.length > 0) {
        numArr.push(2);
    }
    if (shiArr.length > 0) {
        numArr.push(3);
    }
    if (geArr.length > 0) {
        numArr.push(4);
    }

    if (numArr.length < 3) {
        return 0;
    }

    var tmpArr = getFlagArrs(numArr, 3);
    var result = 0;
    $.each(tmpArr, function (index, value) {
        var tmpResult = 0;
        var tmpIndexArr = value.split(" ");
        $.each(tmpIndexArr, function (index2, value2) {
            tmpResult = tmpResult == 0 ? 1 : tmpResult;
            tmpResult *= indexArr[parseInt(value2)].length;

        });
        result += tmpResult;
    });
    return result;
}

//注数-直选和值
function zhushu_rx3zxhz(){
    var hzArr = [];
    $.each($(".zxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });
    if (hzArr.length <= 0) {
        return 0;
    }
    var newArr = [];
    for (var i = 0; i < hzArr.length; i++) {
        for (var x = 0; x < 10; x++) {
            for (var y = 0; y < 10; y++) {
                for (var y1 = 0; y1 < 10; y1++) {
                    if (x + y + y1 == hzArr[i]) {
                        newArr.push(x + "" + y + "" + y1);
                    }
                }
            }
        }
    }
    var zhushu = newArr.length;
    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 3).length;
    return zhushu * shu;
}

//注数-组三复式
function zhushu_rx3z3fs(){
    var zuArr = [];
    $.each($(".zu3fStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        zuArr.push($.trim($(this).html()));
    });
    var tempArr = [];
    for (var i = 0; i < zuArr.length; i++) {
        for (var i1 = 0; i1 < zuArr.length; i1++) {
            if (zuArr[i] != zuArr[i1]) {
                tempArr.push(zuArr[i] + "" + zuArr[i1]);
            }
        }

    }

    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 3).length;
    return tempArr.length * shu;
}

//注数-组六复式
function zhushu_rx3z6fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".zu6fStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        fuShiArr.push($.trim($(this).html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength < 3) {
        return 0;
    }

    newArr = getZuLiuNewArrs(fuShiArr);
    var zhushu = newArr.length;
    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 3).length;
    return zhushu * shu;
}

//注数-组选和值
function zhushu_rx3zuxhz(){
    var hzArr = [];
    $.each($(".zuxhzStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        hzArr.push($.trim($(this).html()));
    });

    if (hzArr.length <= 0) {
        return 0;
    }

    var newArr = [];
    for (var i = 0; i < hzArr.length; i++) {
        for (var x = 0; x < 10; x++) {
            for (var y = 0; y < 10; y++) {
                for (var y1 = 0; y1 < 10; y1++) {
                    if (x + y + y1 == hzArr[i] && !(x == y && x == y1 && y == y1)) {
                        var arr = [];
                        arr.push(x);
                        arr.push(y);
                        arr.push(y1);
                        arr.sort();
                        newArr.push(arr.join(""));
                    }
                }
            }
        }
    }

    newArr = newArr.uniqueArr();
    var zhushu = newArr.length;
    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 3).length;
    return zhushu * shu;
}



//*************** 任选四 **************

//注数-直选复式
function zhushu_rx4zxfs(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
    $.each($(".wanStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        wanArr.push($.trim($(this).html()));
    });
    $.each($(".qianStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        qianArr.push($.trim($(this).html()));
    });
    $.each($(".baiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        baiArr.push($.trim($(this).html()));
    });
    $.each($(".shiStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        shiArr.push($.trim($(this).html()));
    });
    $.each($(".geStr .wan_bottom .cus-flex-item span.active_gfwf"), function () {
        geArr.push($.trim($(this).html()));
    });
    var numArr = [];
    var indexArr = [wanArr, qianArr, baiArr, shiArr, geArr];

    if (wanArr.length > 0) {
        numArr.push(0);
    }
    if (qianArr.length > 0) {
        numArr.push(1);
    }
    if (baiArr.length > 0) {
        numArr.push(2);
    }
    if (shiArr.length > 0) {
        numArr.push(3);
    }
    if (geArr.length > 0) {
        numArr.push(4);
    }

    if (numArr.length < 4) {
        return 0;
    }

    var tmpArr = getFlagArrs(numArr, 4);
    var result = 0;
    $.each(tmpArr, function (index, value) {
        var tmpResult = 0;
        var tmpIndexArr = value.split(" ");
        $.each(tmpIndexArr, function (index2, value2) {
            tmpResult = tmpResult == 0 ? 1 : tmpResult;
            tmpResult *= indexArr[parseInt(value2)].length;

        });
        result += tmpResult;
    });
    return result;
}

//注数-组选24
function zhushu_rx4zu24(){
    var fuShiArr = [], newArr = [];
    $.each($(".zu24Str .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        fuShiArr.push($.trim($(this).html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength < 4) {
        return 0;
    }

    for (var n1 = 0; n1 < fuShiArr.length; n1++) {
        for (var n2 = 0; n2 < fuShiArr.length; n2++) {
            for (var n3 = 0; n3 < fuShiArr.length; n3++) {
                for (var n4 = 0; n4 < fuShiArr.length; n4++) {
                    if (fuShiArr[n1] != fuShiArr[n2] && fuShiArr[n1] != fuShiArr[n3] && fuShiArr[n1] != fuShiArr[n4] && fuShiArr[n2] != fuShiArr[n3] && fuShiArr[n2] != fuShiArr[n4] && fuShiArr[n3] != fuShiArr[n4]) {
                        var arr = [];
                        arr.push(fuShiArr[n1]);
                        arr.push(fuShiArr[n2]);
                        arr.push(fuShiArr[n3]);
                        arr.push(fuShiArr[n4]);
                        arr.sort();
                        newArr.push(arr.join(""));
                    }
                }
            }
        }
    }
    newArr = newArr.uniqueArr();
    var zhushu = newArr.length;
    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 4).length;
    return zhushu * shu;
}

//注数-组选12
function zhushu_rx4zu12(){
    var erChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [];
    $.each($(".zu12chStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        erChongHaoArr.push($.trim($(this).html()));
    });
    $.each($(".zu12dhStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        danHaoArr.push($.trim($(this).html()));
    });

    if (danHaoArr.length < 2 && erChongHaoArr.length < 1) {
        return;
    }
    //单号两两组合一共有若干对
    for (var d = 0; d < danHaoArr.length; d++) {
        for (var n = 0; n < danHaoArr.length; n++) {
            if (danHaoArr[d] != danHaoArr[n]) {
                var arr = [];
                arr.push(danHaoArr[d]);
                arr.push(danHaoArr[n]);
                arr.sort();
                tempArr.push(arr.join(""));
            }
        }
    }
    tempArr = tempArr.uniqueArr();

    for (var i = 0; i < erChongHaoArr.length; i++) {
        for (var m = 0; m < tempArr.length; m++) {
            var onestr = (tempArr[m].toString()).substr(0, 1);
            var twostr = (tempArr[m].toString()).substr(1, 1);
            if (parseInt(onestr) != erChongHaoArr[i] && parseInt(twostr) != erChongHaoArr[i]) {
                var arr = [];
                arr.push(onestr);
                arr.push(twostr);
                arr.sort();
                nowArr.push(erChongHaoArr[i] + "" + arr.join(""));
            }
        }
    }
    nowArr = nowArr.uniqueArr();
    var zhushu = nowArr.length;
    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 4).length;
    return zhushu * shu;
}

//注数-组选6
function zhushu_rx4zu6(){
    var erChongHaoArr = [], tempArr = [], nowArr = [];
    $.each($(".zu6chStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        erChongHaoArr.push($.trim($(this).html()));
    });
    if (erChongHaoArr.length < 2) {
        return;
    }
    for (var d = 0; d < erChongHaoArr.length; d++) {
        for (var n = 0; n < erChongHaoArr.length; n++) {
            if (erChongHaoArr[d] != erChongHaoArr[n]) {
                var arr = [];
                arr.push(erChongHaoArr[d]);
                arr.push(erChongHaoArr[n]);
                arr.sort();
                tempArr.push(arr.join(""));
            }
        }
    }
    tempArr = tempArr.uniqueArr();
    var zhushu = tempArr.length;
    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 4).length;
    return zhushu * shu;
}

//注数-组选4
function zhushu_rx4zu4(){
    var sanChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [];
    $.each($(".zu4chStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        sanChongHaoArr.push($.trim($(this).html()));
    });
    $.each($(".zu4dhStr .wan_bottom .cus-flex-item span.active_gfwf"), function (index, value) {
        danHaoArr.push($.trim($(this).html()));
    });
    for (var d = 0; d < sanChongHaoArr.length; d++) {
        for (var n = 0; n < danHaoArr.length; n++) {
            if (sanChongHaoArr[d] != danHaoArr[n]) {
                tempArr.push(sanChongHaoArr[d] + "" + danHaoArr[n]);
            }
        }
    }
    if (tempArr.length < 1) {
        return 0;
    }
    var zhushu = tempArr.length;
    // 选取选中checkbox
    var checkArr = getCheckboxValue();
    var shu = getFlagArrs(checkArr, 4).length;
    return zhushu * shu;
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

/**
 * 获取当前赔率随机算法
 */
function getPlayPlFun_suiji() {
    return $(".gfwf_xz .wx-select a.selected").attr("data-fun_suiji");
}

/**
 * 获取当前赔率注数算法
 */
function getPlayPlFun_zhushu() {
    return $(".gfwf_xz .wx-select a.selected").attr("data-fun_zhushu");
}

/**
 * 获取当前赔率内容算法
 */
function getPlayPlFun_content() {
    return $(".gfwf_xz .wx-select a.selected").attr("data-fun_content");
}

/**
 * 获取当前赔率ID
 */
function getPlayPlId() {
    var arrTemp = null;
    var indexStr = ($(".gfwf_xz .wx-select a.selected").attr("data-play_pl_id")).toString();
    if(indexStr.indexOf("|") > 0){
        arrTemp = (indexStr.split("|"))[0];
    }else {
        arrTemp = $(".gfwf_xz .wx-select a.selected").attr("data-play_pl_id");
    }

    return arrTemp;
}

/**
 * 获取当前玩法ID
 */
function getPlayId() {
    return $(".gfwf_xz .wx-select a.selected").attr("data-play_id");
}

/**
 * 获取当前期数
 */
function getNumber() {
    return $("#number").attr("data-number");
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
function showBetTemplate() {
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
        // betMode: 1,
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
            $("#betContent_fanli").attr("data-value", fandianBili);
            $("#betContent_fanli").html(fandianBili + "%");    // 渲染界面中百分比部分

            // 赔率 = 最大配率 - 返点比例 * 转换比例
            var pl = (maxPlayPl - fandianBili * convertBlMoney).toFixed(3);
            $("#betContent_playPl").attr("data-value", pl);

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
            playGroupId: $(this).attr("data-bet_play_group_id"),
            number: $(this).attr("data-bet_number"),
            playId: $(this).attr("data-bet_play_id"),
            playPlId: $(this).attr("data-bet_play_pl_id"),
            zhushu: $(this).attr("data-zhushu"),
            // content: $(this).attr("data-bet_content"),
            content: tmpBetContent,
            perMoney: $("#betContent_inputMoney").val(),
            playPl: $("#betContent_playPl").attr("data-value"),
            beishu: $("#betContent_inputBeishu").val(),
            totalMoney: parseFloat($("#betContent_totalMoney").html()),
            type: 2,
            // mode: $(this).attr("data-bet_mode"),
            mode: $(".mode_select.selected").attr("data-value"),
            fandian: $("#betContent_fanli").attr("data-value")
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
        var playPl = parseFloat($("#betContent_playPl").attr("data-value"));
        var mode = parseInt($(".mode_select.selected").attr("data-value"));
        var tmpMode = 1;
        if (mode == 1) {
            tmpMode = 1;
        } else if (mode == 2) {
            tmpMode = 0.1;
        } else if (mode == 3) {
            tmpMode = 0.01;
        } else {
            return;
        }

        var totalMoney = parseFloat((money * zhushu * beishu * tmpMode).toFixed(3));  // 总金额
        var canWin = parseFloat(money * beishu * playPl * tmpMode);  // 可获奖金

        $("#betContent_totalMoney").html(totalMoney.toFixed(3));
        $("#betContent_canWin").html(canWin.toFixed(3));
    }

    $("#ischange").change(function() {
        alert("checked");
    });

    // 模式选择
    $(".mode_select").click(function() {
        $(".mode_select.selected").removeClass("selected");
        $(this).addClass("selected");

        // 渲染下注总额，奖金等等
        renderZhushu();
    });

    // 加号
    $(".dzje_add").click(function() {
        $("#betContent_inputMoney").val(parseInt($("#betContent_inputMoney").val()) + 1);

        // 渲染下注总额，奖金等等
        renderZhushu();
    });
    $(".beishu_add").click(function() {
        $("#betContent_inputBeishu").val(parseInt($("#betContent_inputBeishu").val()) + 1);

        // 渲染下注总额，奖金等等
        renderZhushu();
    });
    $(".beishu_remove").click(function() {
        $("#betContent_inputBeishu").val(parseInt($("#betContent_inputBeishu").val()) - 1);

        // 渲染下注总额，奖金等等
        renderZhushu();
    });
}

// 清除所有选择
function clearSelected() {
    $(".active_gfwf").removeClass("active_gfwf");
    $("#zhushu").html(0);
    $("#nowMoney").html(0);
}

// //*****************mobile注数算法******************
// //获取任二位置方案
// function getRx2WeiFn(checkLen) {
//     var shu = 0;
//     if(checkLen == 2){
//         shu = 1
//     } else if(checkLen == 3){
//         shu = 3
//     } else if(checkLen == 4){
//         shu = 6
//     } else if(checkLen == 5){
//         shu = 10
//     }
//
//     return shu;
// }

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
    var sumTemp = 0;
    var num = 0; //当前号码
    var fjHaoZuhe = []; //分解号组合

    heZhiArr = hZArr;

    //号码分解---所选号分解成所有组合的值等于此号的所有组合
    for (var i = 0; i < heZhiArr.length; i++) {
        var temp = [];
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
    var heZhiArr = [], tempArr = [];
    var sumTemp = 0;
    var num = 0; //当前号码
    var fjHaoZuhe = []; //分解号组合

    heZhiArr = zuXuanArr;
    //号码分解---所选号分解成所有组合的值等于此号的所有组合
    for (var i = 0; i < heZhiArr.length; i++) {
        var temp = [];
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

function gfwf_2xfs(
    shiArr,
    geArr
) {
    var tmpStr_1 = shiArr.join(",");
    var tmpStr_2 = geArr.join(",");
    return "{0}|{1}".format(
        tmpStr_1,
        tmpStr_2
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
