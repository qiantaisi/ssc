// 数字批量选择算法
function selectFun_1(obj) {
    $(obj).parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");

    var objArr = $(obj).parent().parent().find("span");
    objArr.each(function() {
        $(this).removeClass("acti");
        var num = parseInt($(this).find("i").html());
        if ($.inArray(num, [0,1,2,3,4,5,6,7,8,9]) >= 0) {
            $(this).addClass("acti");
        }
    });
    if(typeof stateTouZhu == "function"){
        stateTouZhu();
    }
}

function selectFun_2(obj) {
    $(obj).parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");

    var objArr = $(obj).parent().parent().find("span");
    objArr.each(function() {
        $(this).removeClass("acti");
        var num = parseInt($(this).find("i").html());
        if ($.inArray(num, [5,6,7,8,9]) >= 0) {
            $(this).addClass("acti");
        }
    });
    if(typeof stateTouZhu == "function"){
        stateTouZhu();
    }
}

function selectFun_3(obj) {
    $(obj).parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");

    var objArr = $(obj).parent().parent().find("span");
    objArr.each(function() {
        $(this).removeClass("acti");
        var num = parseInt($(this).find("i").html());
        if ($.inArray(num, [0,1,2,3,4]) >= 0) {
            $(this).addClass("acti");
        }
    });
    if(typeof stateTouZhu == "function"){
        stateTouZhu();
    }
}

function selectFun_4(obj) {
    $(obj).parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");

    var objArr = $(obj).parent().parent().find("span");
    objArr.each(function() {
        $(this).removeClass("acti");
        var num = parseInt($(this).find("i").html());
        if ($.inArray(num, [1,3,5,7,9]) >= 0) {
            $(this).addClass("acti");
        }
    });
    if(typeof stateTouZhu == "function"){
        stateTouZhu();
    }
}

function selectFun_5(obj) {
    $(obj).parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");

    var objArr = $(obj).parent().parent().find("span");
    objArr.each(function() {
        $(this).removeClass("acti");
        var num = parseInt($(this).find("i").html());
        if ($.inArray(num, [2,4,6,8,10]) >= 0) {
            $(this).addClass("acti");
        }
    });
    if(typeof stateTouZhu == "function"){
        stateTouZhu();
    }
}

function selectFun_6(obj) {
    $(obj).parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");

    $(obj).parent().parent().find("span").removeClass("acti");
}

function stateTouZhu(flag_str){
    var flag_str_inner = '';
    var zhushu = '';
    if(typeof flag_str == 'undefined' || flag_str == null){
        flag_str_inner = 'fu';
    }else{
        flag_str_inner = flag_str;
    }
    if(flag_str_inner == 'dan'){
        zhushu = getDsZhushu();
    }else if(flag_str_inner == 'fu'){
        zhushu = getZhushu();
    }
    if(zhushu <= 0){
        return;
    }

    $('.p1 .i0').html(zhushu);
    $('.p1 .i_beishu').html($("#inputBeishu").val());
    var strFd = $(".fandian-bfb").html();
    var num = parseInt(strFd.toString().substr(0,strFd.length-1)) / 100;
    var totalMoney = parseFloat($("#inputBeishu").data("beishu")) * zhushu * parseFloat($("#inputMoney").data("money"));
    var p1_i2 = totalMoney * num;
    $('.p1 .i_fanD').html(p1_i2.toFixed(2));
    $('.p1 .i_money').html(totalMoney);
}

function clearStateTouZhu(){
    $('.p1 .i0').html('0');
    $('.p1 .i_beishu').html('0');
    $('.p1 .i_fanD').html('0.00');
    $('.p1 .i_money').html('0.00');
    $('.slider-input').jRange('setValue', '0,0');

}