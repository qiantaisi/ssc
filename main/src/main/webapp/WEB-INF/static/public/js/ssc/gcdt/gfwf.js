$(function () {
    //官方玩法
    $(".Playmethod ul li span").click(function () {

        var name_flag = $(this).parent().data('name');
        if (name_flag == 'gfwf') {
            var flag_acti = $(this).parent().parent().next().find('b').hasClass('acti');
            if (flag_acti == true) {
                $(this).parent().parent().next().find('b').removeClass('acti');
            }
            $(this).parent().parent().find('b').addClass('acti');
            $(".left_it0").show();
            $(".right_it1").show();
            $(".Detailedlist").show();
        } else {
            var flag_acti =  $(this).parent().parent().prev().find("b").hasClass('acti');
            if (flag_acti == true) {
                $(this).parent().parent().prev().find("b").removeClass('acti');
            }
            $(this).parent().parent().find('b').addClass('acti');
            $(".left_it0").hide();
            $(".right_it1").hide();
            $(".Detailedlist").hide();
        }

    });


    $(".btn-cgwf").click(function(){
        var flagFT_cg = $(".gf-cgwf").hasClass("hide_flag");
        var flagFT_rx = $(".gf-rxwf").hasClass("hide_flag");
        if(flagFT_cg){
            $(".gf-cgwf").removeClass("hide_flag");
        }
        if(!flagFT_rx){
            $(".gf-rxwf").addClass("hide_flag");
        }
        $(".Single .layout  .Playmethod ul li.gf-li p span:first-child").addClass("acti");
    });
    $(".btn-rxwf").click(function(){
        var flagFT_cg = $(".gf-cgwf").hasClass("hide_flag");
        var flagFT_rx = $(".gf-rxwf").hasClass("hide_flag");
        if(!flagFT_cg){
            $(".gf-cgwf").addClass("hide_flag");
        }
        if(flagFT_rx){
            $(".gf-rxwf").removeClass("hide_flag");
        }
        $(".Single .layout  .Playmethod ul li.gf-li p span.rx2-span").addClass("acti");
    });
});
//加倍数 或 重新选钱时改变当前显示注数金额状态
function changeStateCommon(){
    var zhushu = $('.p1 .i0').html();
    if(zhushu == null || typeof zhushu == "undefined"){
        zhushu = 0;
    }else{
        zhushu = parseInt(zhushu);
    }
    $('.p1 .i_beishu').html($("#inputBeishu").val());
    var strFd = $(".fandian-bfb").html();
    var num = parseFloat(strFd.toString().substr(0,strFd.length-1)) / 100;
    var totalMoney = parseFloat($("#inputBeishu").data("beishu")) * zhushu * parseFloat($("#inputMoney").data("money"));
    var p1_i2 = totalMoney * num;
    p1_i2 = isNaN(p1_i2) == true ? "0.0000" : p1_i2;
    $('.p1 .i_fanD').html(p1_i2.toFixed(2));
    $('.p1 .i_money').html(totalMoney);
}

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
    var flag_name = $(obj).parent().parent().parent().parent().attr("data-flag");
    if(typeof stateTouZhu == "function"){
        stateTouZhu(flag_name);
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
    var flag_name = $(obj).parent().parent().parent().parent().attr("data-flag");
    if(typeof stateTouZhu == "function"){
        stateTouZhu(flag_name);
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
    var flag_name = $(obj).parent().parent().parent().parent().attr("data-flag");
    if(typeof stateTouZhu == "function"){
        stateTouZhu(flag_name);
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
    var flag_name = $(obj).parent().parent().parent().parent().attr("data-flag");
    if(typeof stateTouZhu == "function"){
        stateTouZhu(flag_name);
    }
}

function selectFun_5(obj) {
    $(obj).parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");

    var objArr = $(obj).parent().parent().find("span");
    objArr.each(function() {
        $(this).removeClass("acti");
        var num = parseInt($(this).find("i").html());
        if ($.inArray(num, [0,2,4,6,8,10]) >= 0) {
            $(this).addClass("acti");
        }
    });
    var flag_name = $(obj).parent().parent().parent().parent().attr("data-flag");
    if(typeof stateTouZhu == "function"){
        stateTouZhu(flag_name);
    }
}

function selectFun_6(obj) {
    $(obj).parent().parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");
    clearStateTouZhu();//清除投注状态栏
}

//前二直选-直选复式
function getZxfsZshu() {
    var tempArr = [];
    var wanArr = [], qianArr = [];
    $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;

    if (wanLength <= 0 || qianLength <= 0) {
        return;
    }

    for(var i = 0; i < wanArr.length; i++){
        for(var i1 = 0; i1 < qianArr.length; i1++){
            tempArr.push(wanArr[i] + "" + qianArr[i1]);
        }
    }
    return tempArr.length;
}

//前二直选-组选复式
function getZuxfsZshu() {
    var tempArr = [], zuxArr = [];
    $.each($(".recl-1006-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
        zuxArr.push($.trim($(this).find("i").html()));
    });

    var xLength = zuxArr.length;
    if (xLength < 2) {
        return;
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


//获取状态
function
stateTouZhu(flag_str) {
    var flagStrInner = '';
    var zhushu = 0;
    if (typeof flag_str == 'undefined' || flag_str == null || flag_str == '') {
        flagStrInner = 'zxfs_zx';
    } else {
        flagStrInner = flag_str;
    }
    if (flagStrInner == 'dan') {
        zhushu = getDsZhushu();
    } else if (flagStrInner == "zxfs_zx" || flagStrInner == "fu") {
        zhushu = getZhushu();
    } else if (flagStrInner == "hszh_zx") { //后三直选-后三组合
        zhushu = getHsZhushu();
    } else if (flagStrInner == "zxhz_zx") { //后三直选-后三和值
        zhushu = getHezhiZhushu();
    } else if (flagStrInner == "zxkd_zx") { //后三直选-后三跨度
        zhushu = getKaDuZhushu();
    } else if (flagStrInner == "zsfs_zux") { //后三直选-直选复式
        zhushu = getZuSanZhushu();
    } else if (flagStrInner == "zsds_zux") { //后三组选-组选单式
        zhushu = getZsdsZhushu();
    } else if (flagStrInner == "zlfs_zux") { //后三组选-组六复式
        zhushu = getZuLiuZhushu();
    } else if (flagStrInner == "zlds_zux") { //后三组选-组六单式
        zhushu = getZldsZhushu();
    } else if (flagStrInner == "hhzx_zux"){ //后三组选-混合组选
        zhushu = getHhzxZhushu();
    } else if (flagStrInner == "zxhz_zux"){ //后三组选-组选和值
        zhushu = getZxhzZhushu();
    } else if (flagStrInner == "zxbd_zux"){ //后三组选-组选包胆
        zhushu = getZxbdZhushu();
    } else if (flagStrInner == "hzws_qt"){ //后三其它-和值尾数
        zhushu = getZxwsZhushu();
    } else if (flagStrInner == "tsh_qt"){ //后三其它-特殊号
        zhushu = getTshZhushu();
    } else if (flagStrInner == "zxfs-q2"){ //直选复式-前二
        zhushu = getZxfsZshu();
    } else if (flagStrInner == "zxds-q2"){ //直选单式-前二
        zhushu = getZxdsZhushu();
    } else if (flagStrInner == "zxhz-q2"){ //直选和值-前二
        zhushu = getZxhzZshu();
    } else if (flagStrInner == "zxkd-q2"){ // 直选跨度-前二
        zhushu = getZxkdZshu();
    } else if (flagStrInner == "zuxfs-q2"){ // 组选复式-前二
        zhushu = getZuxfsZshu();
    } else if (flagStrInner == "zuxds-q2"){ // 组选单式-前二
        zhushu = getZuxdsZhushu();
    } else if (flagStrInner == "zuxhz-q2"){ // 组选和值-前二
        zhushu = getZuxhzZhushu();
    } else if (flagStrInner == "zuxbd-q2"){ // 组选包胆-前二
        zhushu = getZuxbdZhushu();
    } else if (flagStrInner == "dwd"){ // 定位胆
        zhushu = getDwdZhushu();
    } else if (flagStrInner == "qsym-budw" || flagStrInner == "qsem-budw" || flagStrInner == "hsym-budw" || flagStrInner == "hsem-budw"
        || flagStrInner == "q4ym-budw" || flagStrInner == "q4em-budw" || flagStrInner == "h4ym-budw" || flagStrInner == "h4em-budw"
        || flagStrInner == "wxym-budw" || flagStrInner == "wxem-budw"){ // 不定位
        zhushu = getBuwdZhushu(flagStrInner);
    } else if (flagStrInner == "wx3m-budw"){ // 不定位
        zhushu = getWx3mZhushu();
    } else if (flagStrInner == "rx2-zxfs"){ // 任选二-直选复式
        zhushu = stateZxfsZhuShu();
    } else if (flagStrInner == "rx2-zxds"){ // 任选二-直选单式
        zhushu = getZxdsRx2Zhushu();
    } else if (flagStrInner == "rx2-zxhz"){ // 任选二-直选和值
        zhushu = getZxhzRx2Zhushu();
    } else if (flagStrInner == "rx2-zuxfs"){ // 任选二-组选复式
        zhushu = stateZuxfsZhuShu();
    } else if (flagStrInner == "rx2-zuxds"){ // 任选二-组选单式
        zhushu = getZuxdsRx2Zhushu();
    } else if (flagStrInner == "rx2-zuxhz"){ // 任选二-组选和值
        zhushu = getZuxhzRx2Zhushu();
    } else if (flagStrInner == "rx3-zxfs"){ // 任选三-直选复式
        zhushu = getZxfsRx3Zhushu();
    } else if (flagStrInner == "rx3-zxds"){ // 任选三-直选单式
        zhushu = getZxdsRx3Zhushu();
    } else if (flagStrInner == "rx3-zxhz"){ // 任选三-直选和值
        zhushu = getZxhzRx3Zhushu();
    } else if (flagStrInner == "rx3-zu3fs"){ // 任选三-组三复式
        zhushu = stateZu3fsZhuShu();
    } else if (flagStrInner == "rx3-zu3ds"){ // 任选三-组三单式
        zhushu = getZu3dsRx3Zhushu();
    } else if (flagStrInner == "rx3-zu6fs") { // 任选三-组六复式
        zhushu = getZu6fsRx3Zhushu();
    } else if (flagStrInner == "rx3-zu6ds") { // 任选三-组六复式
        zhushu = getZu6dsRx3Zhushu();
    } else if (flagStrInner == "rx3-hhzux") { // 任选三-混合组选
        zhushu = getHhzuxRx3Zhushu();
    } else if (flagStrInner == "rx3-zuxhz") { // 任选三-组选和值
        zhushu = getZuxhzRx3Zhushu();
    } else if (flagStrInner == "rx4-zxfs") { // 任选四-直选复式
        zhushu = getZxfsRx4Zhushu();
    } else if (flagStrInner == "rx4-zxds"){ // 任选四-直选单式
        zhushu = getZxdsrx4Zhushu();
    } else if (flagStrInner == "rx4-zux24"){ // 任选四-组选24
        zhushu = getZux24Zhushu();
    }

    if(zhushu <= 0 || typeof zhushu == "undefined"){
        clearStateTouZhu();
        return 0;
    }

    $('.p1 .i0').html(zhushu);
    $('.p1 .i_beishu').html($("#inputBeishu").val());
    var strFd = $(".fandian-bfb").html();
    var num = parseFloat(strFd.toString().substr(0,strFd.length-1)) / 100;
    var totalMoney = parseFloat($("#inputBeishu").data("beishu")) * zhushu * parseFloat($("#inputMoney").data("money"));
    var p1_i2 = totalMoney * num;
    p1_i2 = isNaN(p1_i2) == true ? "0.0000" :p1_i2;
    $('.p1 .i_fanD').html(p1_i2.toFixed(2));
    $('.p1 .i_money').html(totalMoney);
}

//清除状态
function clearStateTouZhu(){
    $('.p1 .i0').html('0');
    $('.p1 .i_beishu').html('0');
    $('.p1 .i_fanD').html('0.00');
    $('.p1 .i_money').html('0.00');
}


//后三组选-组三复式
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


//后三组选-组选包胆
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

//后三组选-组六复式
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

//后三组选-组选和值
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

// 后三直选-跨度所选跨度值所有组合
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

//后三直选--获取所选号码分散为三位所有组合的和值
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

