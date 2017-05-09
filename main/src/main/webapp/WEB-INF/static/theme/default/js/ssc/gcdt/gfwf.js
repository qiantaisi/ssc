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

function stateTouZhu(flag_str){
    var flag_str_inner = '';
    var zhushu = 0;
    if(typeof flag_str == 'undefined' || flag_str == null){
        flag_str_inner = 'zxfs_zx';
    }else{
        flag_str_inner = flag_str;
    }
    if(flag_str_inner == 'dan'){
        zhushu = getDsZhushu();
    }else if(flag_str_inner == "zxfs_zx" || flag_str_inner == "fu"){
        zhushu = getZhushu();
    }else if(flag_str_inner == "hszh_zx"){
        zhushu = getHsZhushu();
    }else if(flag_str_inner == "zxhz_zx"){
        zhushu = getHezhiZhushu(flag_str_inner);
    }else if(flag_str_inner == "zxkd_zx"){
        zhushu = getKaDuZhushu(flag_str_inner);
    }else if(flag_str_inner == "zsfs_zux"){
        zhushu = getZuSanZhushu(flag_str_inner);
    }else if(flag_str_inner == "zsds_zux"){ //后三组选-组选单式
        zhushu = getZsdsZhushu("zsds_zux");
    }else if(flag_str_inner == "zlfs_zux"){ //后三组选-组六复式
        zhushu = getZuLiuZhushu(flag_str_inner);
    }

    if(zhushu <= 0){
        clearStateTouZhu();
        return 0;
    }

    $('.p1 .i0').html(zhushu);
    $('.p1 .i_beishu').html($("#inputBeishu").val());
    var strFd = $(".fandian-bfb").html();
    var num = parseFloat(strFd.toString().substr(0,strFd.length-1)) / 100;
    var totalMoney = parseFloat($("#inputBeishu").data("beishu")) * zhushu * parseFloat($("#inputMoney").data("money"));
    var p1_i2 = (totalMoney * num).toString();
    $('.p1 .i_fanD').html(p1_i2.substr(0,p1_i2.indexOf(".") + 3));
    $('.p1 .i_money').html(totalMoney);
}

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

//后三组选-组六复式
function getZuLiuNewArrs(zuXuanArr) {
    var tempArr = [],zxArr = [];
    zxArr = zuXuanArr;
    for(var i = 0; i < zxArr.length; i++){
        for(var i1 = 0; i1 < zxArr.length; i1++){
            for(var i2 = 0; i2 < zxArr.length; i2++) {
                if(zxArr[i] != zxArr[i1] != zxArr[i2]){
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
    for(var  n =0 ; n<tempArr.length; n++){
        console.log(tempArr[n])
    }
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

