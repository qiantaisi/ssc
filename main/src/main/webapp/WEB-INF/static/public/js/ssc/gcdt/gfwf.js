
//返回全部倍率金额和返点数
function getAllPlAndMaxFd() {
    return gfwfPlJson.sscPlayPlList;
}

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


    // $(".btn-cgwf").click(function(){
    //     var flagFT_cg = $(".gf-cgwf").hasClass("hide_flag");
    //     var flagFT_rx = $(".gf-rxwf").hasClass("hide_flag");
    //     if(flagFT_cg){
    //         $(".gf-cgwf").removeClass("hide_flag");
    //     }
    //     if(!flagFT_rx){
    //         $(".gf-rxwf").addClass("hide_flag");
    //     }
    //     $(".Single .layout  .Playmethod ul li.gf-li p span:first-child").addClass("acti");
    // });
    // $(".btn-rxwf").click(function(){
    //     var flagFT_cg = $(".gf-cgwf").hasClass("hide_flag");
    //     var flagFT_rx = $(".gf-rxwf").hasClass("hide_flag");
    //     if(!flagFT_cg){
    //         $(".gf-cgwf").addClass("hide_flag");
    //     }
    //     if(flagFT_rx){
    //         $(".gf-rxwf").removeClass("hide_flag");
    //     }
    //     $(".Single .layout  .Playmethod ul li.gf-li p span.rx2-span").addClass("acti");
    // });
});

// //加倍数 或 重新选钱时改变当前显示注数金额状态
// function changeStateCommon(){
//     var zhushu = $('.p1 .i0').html();
//     if(zhushu == null || typeof zhushu == "undefined"){
//         zhushu = 0;
//     }else{
//         zhushu = parseInt(zhushu);
//     }
//     $('.p1 .i_beishu').html($("#inputBeishu").val());
//     var strFd = $(".fandian-bfb").html();
//     var num = parseFloat(strFd.toString().substr(0,strFd.length-1)) / 100;
//     var totalMoney = parseFloat($("#inputBeishu").data("beishu")) * zhushu * parseFloat($("#inputMoney").data("money"));
//     var p1_i2 = totalMoney * num;
//     if(isNaN(p1_i2) || p1_i2 == 0){
//         $('.p1 .i_fanD').html(0);
//     } else {
//         $('.p1 .i_fanD').html(p1_i2.toFixed(2));
//     }
//     if(parseInt(totalMoney) == 0){
//         $('.p1 .i_money').html(0);
//     } else{
//         $('.p1 .i_money').html(parseFloat(totalMoney).toFixed(2));
//     }
//
// }

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
    renderZhushu();
    // var flag_name = $(obj).parent().parent().parent().parent().attr("data-flag");
    // if(typeof stateTouZhu == "function"){
    //     stateTouZhu(flag_name);
    // }
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
    renderZhushu();
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
    renderZhushu();
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
    renderZhushu();
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
    renderZhushu();
}

function selectFun_6(obj) {
    $(obj).parent().parent().find(".acti").removeClass("acti");
    $(obj).addClass("acti");
    clearStateTouZhu();//清除投注状态栏
}



//删除重复号码
function delRrepet(obj) {
    var xObj = $(obj).parent().parent().parent();
    var textStr = $(xObj).find(".content_tex").val();
    var newArr = [],repeatArr = [], tempArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g,','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if(arr_new[i].toString().length > 0){
            newArr.push(arr_new[i]);
        }
    }

    repeatArr = newArr.duplicateNew().uniqueArr();
    tempArr = newArr.uniqueArr();

    if(repeatArr.length <= 0){
        alert("无重复号码！");
    }else{
        alert("已删除掉重复号: " + repeatArr.join(" "));
        $(".content_jiang .content_tex").val(tempArr.join(" "));
    }
    //重新计算注数
    renderZhushu();
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

var tmpBetContent = null;
function buyBtn() {
    var len = $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").length;
    if(len > 0) {
        showloadTxtTemplate();

        $(".tzTishiTemplate").parent().parent().css({"border":"6px solid #ccc","border-radius":"8px","top":"80px"});
        $("#block_close").click(function(){
            if (layerInfo != null) {
                layer.close(layerInfo);
                layerInfo = null;
            }
        });

        //投注内容显示处理
        $(".tzTishiTemplate .content-table tr:not(.head-tr)").each(function () {
            var strNr = $(this).find("td:eq(1)").html();
            $(this).find("td:eq(1)").html(strNr);
        });

        //投注内容模板
        var htmlStr = addContent();
        $(".tzTishiTemplate .content-table .head-tr").after(htmlStr);
        var totalM = $("#zongtouInfo .totalM").html();
        $(".total-money").html(totalM);
        $(".qihao").html(getNumber());

        // 注单内容
        var betForm = {
            totalMoney: 0,
            totalZhushu: 0,
            sscBetList: []
        };
        $("#zhudanList .re_touzhu_tem").each(function() {
            betForm.sscBetList.push({
                playGroupId: $(this).data("bet_play_group_id"),
                number: getNumber(),
                playId: $(this).data("bet_play_id"),
                zhushu: $(this).data("bet_zhushu"),
                perMoney: $(this).data("bet_per_money"),
                content: $(this).data("bet_content"),
                playPlId: $(this).data("bet_play_pl_id"),
                playPl: $(this).data("bet_play_pl"),
                beishu: $(this).data("bet_beishu"),
                totalMoney: $(this).data("bet_total_money"),
                type: 2,
                mode: $(this).data("bet_mode"),
                fandian: $(this).data("bet_fandian")
            });
            betForm.totalMoney += parseFloat($(this).data("bet_total_money"));
            betForm.totalZhushu += $(this).data("bet_zhushu");
        });
        betForm = JSON.stringify(betForm);
        // 解决双引号冲突
        tmpBetContent = betForm;

        // 确定按钮
        $("#gfwfBetForm_submit").click(function() {
            sureGfwtXz(tmpBetContent);
            //清除弹框layerInfo
            cancel();
        });
    } else{
        showTishi2Template();
    }
}

function sureGfwtXz(betForm) {
    ajaxRequest({
        url: CONFIG.BASEURL + "ssc/ajaxBet.json",
        data: {
            betForm: betForm
        },
        beforeSend: function() {
            layer.closeAll();
            parent.showLoading();
        },
        success: function(json) {
            parent.hideLoading();
            if (json.result == 1) {
                // 清空临时变量
                tmpBetContent = null;
                layer.msg("下注成功", {icon: 1});
                // 刷新我的投注
                getBetDetails();
                // 刷新余额
                parent.getUserSession();
                // 重置预投注
                clearContent();
            } else {
                layer.msg("下注失败：" + json.description, {icon: 2});
            }
        },
        complete: function() {
        }
    });
}

function cancel() {
    if (layerInfo != null) {
        layer.close(layerInfo);
        layerInfo = null;
    }
}

var layerInfo = null;
var layerTishi1 = null;
var layerTishi2 = null;
var layerInfoInsert = null;

//投注信息框
function showloadTxtTemplate() {
    if (layerInfo != null) {
        return;
    }
    var loadTxt_template = '\
    <div class="tzTishiTemplate">\
        <h3>温馨提示</h3>\
        <span id="block_close"></span>\
        <table style="width: 100%">\
             <tobody>\
                 <tr>\
                     <td>\
                        <h4>\
                              <i class="imgTishi"></i>\
                              <sapn class="qiTishi">您确定加入 <var class="qihao"></var> 期？</span>\
                        </h4>\
                        <div class="tz-data">\
                             <table class="content-table" style="border: 0; width: 100%;">\
                                   <tobody>\
                                      <tr class="head-tr">\
                                         <td width="110">玩法</td>\
                                         <td width="180">内容</td>\
                                         <td width="80">注数</td>\
                                         <td width="40">每注</td>\
                                         <td width="30">模式</td>\
                                         <td width="40">倍数</td>\
                                         <td >金额</td>\
                                      </tr>\
                                      <span class="content-td">\
                                      </span>\
                                   </tobody>\
                             </table>\
                        </div>\
                        <div class="binfo">\
                            <span class="bbm">\
                               投注总金额: <span class="total-money">2</span> 元\
                            </span>\
                        </div>\
                      </td>\
                 </tr>\
                 <tr>\
                    <td class="btns">\
                        <input type="hidden" id="gfwfBetForm_input">\
                        <button type="button" id="gfwfBetForm_submit">确定</button>\
                        <button type="button" onclick="cancel()">取消</button>\
                    </td>\
                  </tr>\
             </tobody>\
        </table>\
    </div>\
    ';

    layer.closeAll();
    //页面层
    layerInfo = layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['615px', '428px'], //宽高
        content: loadTxt_template
    });
}


//导入文本信息框
function showloadTxtTemplate1() {
    if (layerInfoInsert != null) {
        return;
    }
    var tiShi_template = '\
    <div class="tzTishiTemplate del-Tishi tzInsertTemplate">\
        <h3>文件载入</h3>\
        <span id="block_close"></span>\
        <table style="width: 100%">\
             <tobody>\
                 <tr>\
                     <td>\
                        <h4>\
                              <span class="txtinfo">请选择你要载入的文件</span>\
                        </h4>\
                        <h4 class="txt-select">\
                              <input type="file" id="file" name="file" size="30" value="未选择任何文件">\
                              <span class="errorTxt"></span>\
                        </h4>\
                     </td>\
                 </tr>\
                 <tr>\
                    <td class="btns">\
                        <button type="button" onclick="ajaxSubmit()">导入文件</button>\
                    </td>\
                  </tr>\
             </tobody>\
        </table>\
    </div>\
    ';

    //页面层
    layerInfoInsert = layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['536px', '256px'], //宽高
        content: tiShi_template
    });

    $(".tzInsertTemplate").parent().parent().css({"border":"6px solid #ccc","border-radius":"8px"});
    $("#block_close").click(function(){
        closeLayerInsert();
    });
}

function ajaxSubmit() {
    if(typeof(FileReader)=="undefined")
    {
       alert("你的浏览器不支持文件读取");
       return;
    }
    var file = document.getElementById("file").files[0];
    if(typeof file == "undefined"){
        return;
    }
    var flag = false; //状态
    var name = file.name;
    var removeSpan = null;

    var arr = ["txt", "csv"];
    //取出上传文件的扩展名
    var index = name.lastIndexOf(".");
    var ext = name.substr(index + 1);
    //循环比较
    for(var i=0;i<arr.length;i++)
    {
        if(ext == arr[i])
        {
            flag = true; //一旦找到合适的，立即退出循环
            break;
        }
    }
    console.log(flag);
    //条件判断
    if (flag) {
        var reader = new FileReader();
        reader.readAsText(file);
        reader.onload = function (data) {
            var tt = document.getElementById("textarea1");
            tt.innerHTML = this.result;
        }
    } else {
        $(".tzInsertTemplate .errorTxt").html("文件名不合法,只能上传txt格式");
        removeSpan = setInterval(function () {
            $(".tzInsertTemplate .errorTxt").remove();
            clearInterval(removeSpan);
        }, 5000);
        return;
    }
    closeLayerInsert();

}

//清除注单内容提示框
function showTishi1Template(infoStr) {
    if (layerTishi1 != null) {
        return;
    }

    var tiShi_template = '\
    <div class="tzTishiTemplate del-Tishi">\
        <h3>温馨提示</h3>\
        <span id="block_close"></span>\
        <table style="width: 100%">\
             <tobody>\
                 <tr>\
                     <td>\
                        <h4>\
                              <i class="imgTishi"></i>\
                              <sapn class="des-txt">是否清空确认区中所有投注内容？</span>\
                        </h4>\
                     </td>\
                 </tr>\
                 <tr>\
                    <td class="btns">\
                        <button type="button" onclick="enterType1()">确定</button>\
                        <button type="button" onclick="cancelType1()">取消</button>\
                    </td>\
                  </tr>\
             </tobody>\
        </table>\
    </div>\
    ';

    layer.closeAll();
    //页面层
    layerTishi1 = layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['370px', '220px'], //宽高
        content: tiShi_template
    });
}

//无注单内容提示框
function showTishi2Template(infoStr) {
    if (layerTishi2 != null) {
        return;
    }

    var tiShi_template = '\
    <div class="tzTishiTemplate del-Tishi del-TishiType2">\
        <h3>温馨提示</h3>\
        <span id="block_close"></span>\
        <table style="width: 100%">\
             <tobody>\
                 <tr>\
                     <td>\
                        <h4>\
                              <i class="imgTishi"></i>\
                              <sapn class="des-txt">无添加投注内容</span>\
                        </h4>\
                     </td>\
                 </tr>\
                 <tr>\
                    <td class="btns">\
                        <button type="button" onclick="enterType2()">确定</button>\
                    </td>\
                  </tr>\
             </tobody>\
        </table>\
    </div>\
    ';

    layer.closeAll();
    //页面层
    layerTishi2 = layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['282px', '222px'], //宽高
        content: tiShi_template
    });

    $("#block_close").click(function(){
        closeLayer2();
    });
    $(".del-TishiType2").parent().parent().css({"border":"6px solid #ccc","border-radius":"8px","top":"150px"});
}

//=========================================GFWF================================
// 通用JS，开发完后转移到gfwf.js里面
/**
 * 初始化子页面，刷新滚动条，赔率，倍数等等
 */
function initSubPage() {
    // 初始化模板
    $("#subPage").html(template("template_" + getPlayPlTemplateName()));
    $("#subJRange").html(template("template_jRange"));

    // 内容点击，触发统计注数函数
    $(".Pick ul li span i").click(function () {
        var nameNow = $(this).parent().parent().attr('data-flag');
        if(typeof nameNow != 'undefined' || nameNow == "bdDanXuan"){
            var nowFlag = $(this).parent().hasClass('acti');
            if(nowFlag == true){
                $(this).parent().removeClass('acti');
            } else{
                $(this).parent().parent().find('span.acti').removeClass('acti');
                $(this).parent().toggleClass('acti');
            }
        } else{
            $(this).parent().toggleClass('acti');   // 变色
        }

        // 渲染中部注数，赔率，返点等等
        renderZhushu();
    });

    // 内容点击，触发统计注数函数（特殊号）
    $(".Pick ul li.tsh_li span").click(function () {
        $(this).toggleClass('acti_tsh');   // 变色
        // 渲染中部注数，赔率，返点等等
        renderZhushu();
    });

    // 手动输入，触发统计注数函数
    $('.content_jiang .content_tex').keyup(function () {
        renderZhushu();
    });

    //位置选择
    $(".selposition label input").click(function(){
        var flag = $(this).parent().parent().attr("data-flag");
        var obj = $(this).parent().parent();
        var fnId = $(obj).attr("data-name");   //方案id

        if(typeof flag != "undefined" && flag == "wei-r2"){
            getZuChengFangAnR2(obj,fnId);
        } else if(typeof flag != "undefined" && flag == "wei-r3"){
            getZuChengFangAnR3(obj,fnId);
        } else if(typeof flag != "undefined" && flag == "wei-r4"){
            getZuChengFangAnR4(obj,fnId);
        }
        renderZhushu();
    });

    //输入倍数十重新计算
    $("#inputBeishu").keyup(function (){
        var val = parseInt($(this).val());
        if (isNaN(val) || typeof val != 'number') {
            val = 1;
        }
        val = parseInt(val);
        val = val < 1 ? 1 : val;
        $(this).data("beishu", val).val(val);
        renderZhushu();
    });

    //输入倍数失去焦点计算
    $("#inputBeishu").blur(function(){
        var valStr = $("#inputBeishu").val();
        if(typeof valStr == "undefined" || valStr == "" || valStr == null){
            $("#inputBeishu").val("1");
        }
        renderZhushu();
    });

    // 加减号
    initJjh();

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

    // 初始化返点赔率滚动条
    $('.slider-input').jRange({
        from: 0,
        to: maxFandian, // 最大返点
        step: 0.1,  // 每步
        format: '%s',
        width: $(".cl-1004").width(),   // 滚动条总长度
        theme: 'theme-green my-slide-theme',
        showLabels: false,
        showScale: false,
        snap: true,
        onstatechange: function () {
            // 返点比例
            var fandianBili = parseFloat($(".slider-input").val()).toFixed(1); // 当前滚动条移动的比例
            $("#fandian-bfb").data("value", fandianBili);
            $("#fandian-bfb").html(fandianBili + "%");    // 渲染界面中百分比部分

            // 赔率 = 最大配率 - 返点比例 * 转换比例
            var pl = (maxPlayPl - fandianBili * convertBlMoney).toFixed(3);
            $("#jiangjin-change").data("value", pl);

            // 渲染界面中赔率部分
            if (plAndMaxFd instanceof Array) {  // 多赔率
                var strArr = [];
                $.each(plAndMaxFd, function(index, value) {
                    var tmpConvertBlMoney = (value.playPl - value.minPl) / value.maxFdBl;
                    strArr.push((value.playPl - fandianBili * tmpConvertBlMoney).toFixed(3));
                });
                $("#jiangjin-change").html(strArr.join('|'));
            } else {
                $("#jiangjin-change").html(pl);
            }

            // 渲染中部注数，赔率，返点等等
            renderZhushu();
        }
    });

    $(".my-slide-theme .back-bar .pointer").attr("tabIndex", -1);    // 滑块添加tabIndex来获得focus事件
//        $(".my-slide-theme .back-bar .pointer").focus(function() {
//            if ($(this).hasClass("my-slide-theme-focus")) {
//                return;
//            }
//            $(this).addClass("my-slide-theme-focus");
//        });
//
//        $(".my-slide-theme .back-bar .pointer").focus(function() {
//            $(this).addClass("my-slide-theme-focus");
//        });
}

//任选2 组成方案获取函数
function getZuChengFangAnR2(obj, fnId) {
    //选中位置自动获取组成方案-直选单式
    var arrTemp = [];
    $(obj).find("input[type='checkbox']:checked").each(function () {
        arrTemp.push($(this).val());
    });
    if (arrTemp.length == 3) {
        $("#positioninfo-"+ fnId +"").html(3);
        $("#positioncount-"+ fnId +"").html(3);
    } else if (arrTemp.length == 4) {
        $("#positioninfo-"+ fnId +"").html(6);
        $("#positioncount-"+ fnId +"").html(4);
    } else if (arrTemp.length == 5) {
        $("#positioninfo-"+ fnId +"").html(10);
        $("#positioncount-"+ fnId +"").html(5);
    } else if (arrTemp.length == 2) {
        $("#positioninfo-"+ fnId +"").html(1);
        $("#positioncount-"+ fnId +"").html(2);
    } else if (arrTemp.length == 1) {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(1);
    } else {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(0);
    }
}


//任选3 组成方案获取函数
function getZuChengFangAnR3(obj, fnId) {
    //选中位置自动获取组成方案-直选单式
    var arrTemp = [];
    $(obj).find("input[type='checkbox']:checked").each(function () {
        arrTemp.push($(this).val());
    });
    if (arrTemp.length == 3) {
        $("#positioninfo-"+ fnId +"").html(1);
        $("#positioncount-"+ fnId +"").html(3);
    } else if (arrTemp.length == 4) {
        $("#positioninfo-"+ fnId +"").html(4);
        $("#positioncount-"+ fnId +"").html(4);
    } else if (arrTemp.length == 5) {
        $("#positioninfo-"+ fnId +"").html(10);
        $("#positioncount-"+ fnId +"").html(5);
    } else if (arrTemp.length == 2) {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(2);
    } else if (arrTemp.length == 1) {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(1);
    } else {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(0);
    }
}


//任选4 组成方案获取函数
function getZuChengFangAnR4(obj, fnId) {
    //选中位置自动获取组成方案-直选单式
    var arrTemp = [];
    $(obj).find("input[type='checkbox']:checked").each(function () {
        arrTemp.push($(this).val());
    });
    if (arrTemp.length == 3) {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(3);
    } else if (arrTemp.length == 4) {
        $("#positioninfo-"+ fnId +"").html(1);
        $("#positioncount-"+ fnId +"").html(4);
    } else if (arrTemp.length == 5) {
        $("#positioninfo-"+ fnId +"").html(5);
        $("#positioncount-"+ fnId +"").html(5);
    } else if (arrTemp.length == 2) {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(2);
    } else if (arrTemp.length == 1) {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(1);
    } else {
        $("#positioninfo-"+ fnId +"").html(0);
        $("#positioncount-"+ fnId +"").html(0);
    }
}

function initJjh() {
    $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").click(function () {
        var text = $(this).text();
        $(this).parent().parent().find('input').val(text);
        $(this).parent().hide();

        $(this).parent().parent().find('input').data("money", parseInt(text));
        renderZhushu();
    });

    $(".Single .layout .add_spot .left .sopt_wrap .down span").click(function () {
        $(this).parent().find(".down_menu").show();
    });

    $(".Single .layout .add_spot .left .sopt_wrap .down .down_menu i").parent().parent().hover(function () {
    }, function () {
        $(this).find(".down_menu").hide();
    });

    $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fl").click(function () {
        var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
        if (isNaN(val) || typeof val != 'number') {
            val = 1;
        }
        val = parseInt(val);

        --val;
        val = val < 1 ? 1 : val;
        $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);
        renderZhushu();
    });

    $(".Single .layout .add_spot .left .sopt_wrap .reduce a.fr").click(function () {
        var val = parseInt($(".Single .layout .add_spot .left .sopt_wrap .reduce input").val());
        if (isNaN(val) || typeof val != 'number') {
            val = 1;
        }
        val = parseInt(val);

        ++val;
        val = val < 1 ? 1 : val;
        $(".Single .layout .add_spot .left .sopt_wrap .reduce input").data("beishu", val).val(val);
        renderZhushu();
    });
}

/**
 * 渲染中部注数，赔率，返点等等
 */
function renderZhushu() {

    // 注数算法
    var zhushuFun = getPlayPlFun_zhushu();
    if (typeof zhushuFun != 'undefined') {
        var zhushu = eval(zhushuFun + "()");   // 注数
        if (typeof zhushu == "undefined" || zhushu < 0){
//                clearStateTouZhu();
            return;
        }

        var inputBeishu = $("#inputBeishu").val();
        var inputFandianBili = $("#fandian-bfb").data("value") / 100;
        var mode = getSelectMode();//获取模式
        var moneyMode = getMode(mode);

        $('.p1 .i0').html(zhushu);  // 渲染注数
        $('.p1 .i_beishu').html($("#inputBeishu").val());   // 渲染倍数

        // 投注总金额 = 倍数 * 注数 * 单注金额
        var totalMoney = parseFloat((moneyMode * inputBeishu * zhushu * $("#inputMoney").data("money")).toFixed(3));
        $('.p1 .i_money').html(totalMoney);

        // 返点金额 = 投注总金额 * 返点比例
        var fandianMoney = parseFloat((totalMoney * inputFandianBili).toFixed(3));
        $('.p1 .i_fanD').html(fandianMoney);
    }
}

/**
 * 获取当前赔率模板名称
 */
function getPlayPlTemplateName() {
    return $(".playPlIdBtn.acti").data("name");
}

/**
 * 获取当前赔率随机算法
 */
function getPlayPlFun_suiji() {
    return $(".playPlIdBtn.acti").data("fun_suiji");
}

/**
 * 获取当前赔率注数算法
 */
function getPlayPlFun_zhushu() {
    return $(".playPlIdBtn.acti").data("fun_zhushu");
}

/**
 * 获取当前赔率内容算法
 */
function getPlayPlFun_content() {
    return $(".playPlIdBtn.acti").data("fun_content");
}

/**
 * 获取当前赔率ID
 */
function getPlayPlId() {
    return $(".playPlIdBtn.acti").data("play_pl_id");
}

/**
 * 获取当前玩法ID
 */
function getPlayId() {
    return $(".playPlIdBtn.acti").data("play_id");
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

/**
 * 清除状态
 */
function clearStateTouZhu(){
    $('.p1 .i0').html('0');
    $('.p1 .i_beishu').html('1');
    $('.p1 .i_fanD').html('0');
    $('.p1 .i_money').html('0');
    $('.slider-input').jRange("setValue", '0');
}

//=======================遍历进行统计注数=================================

//******************注数-任选4*******************

/**
 * 注数-组选4
 */
function zhushu_rx4zu4(){
    var sanChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [];
    $.each($(".recl-1007-zux4 ul li[data-name = '三重号'] span.acti"), function (index, value) {
        sanChongHaoArr.push($.trim($(this).find("i").html()));
    });

    $.each($(".recl-1007-zux4 ul li[data-name = '单号'] span.acti"), function (index, value) {
        danHaoArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-zux4").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-组选6
 */
function zhushu_rx4zu6(){
    var erChongHaoArr = [], tempArr = [], nowArr = [];
    $.each($(".recl-1006-zux6 ul li[data-name = '二重号'] span.acti"), function (index, value) {
        erChongHaoArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-zux6").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-组选12
 */
function zhushu_rx4zu12(){
    var erChongHaoArr = [], danHaoArr = [], tempArr = [], nowArr = [];
    $.each($(".recl-1005-zux12 ul li[data-name = '二重号'] span.acti"), function (index, value) {
        erChongHaoArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1005-zux12 ul li[data-name = '单号'] span.acti"), function (index, value) {
        danHaoArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-zux12").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}
/**
 * 注数-组选24
 */
function zhushu_rx4zu24(){
    var fuShiArr = [], newArr = [];
    $.each($(".recl-1004-zux24 ul li[data-name = '组选24'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-zux24").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-直选单式
 */
function zhushu_rx4zxds(){
    var tempArr = [];
    var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
    var newArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
            newArr.push(arr_new[i]);
        }
    }

    var temp = newArr.length;
    var shu = $("#positioninfo-ds").html();
    return temp * shu;
}

/**
 * 注数-直选复式
 */
function zhushu_rx4zxfs(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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
//******************任选3*******************
/**
 * 注数-组选和值
 */
function zhushu_rx3zuxhz(){
    var hzArr = [];
    $.each($(".recl-1010-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-zuxhz").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-混合组合
 */
function zhushu_rx3hhzux(){
    var zhushu = 0;
    var arrTemp = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-hhzux input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    var textStr = $(".recl-1009-hhzux .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var arr = [];
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        arr.push(oneStr);
        arr.push(twoStr);
        arr.push(threeStr);
        arr.sort();
        if (!(twoStr == threeStr && oneStr == threeStr && twoStr == oneStr)) {
            tempArr.push(arr.join(""));
        }
    }
    tempArr = tempArr.uniqueArr(); // 去掉重复号码

    zhushu = tempArr.length;
    var tempNum = $("#positioninfo-hhzux").html();
    zhushu = tempNum * zhushu;
    return zhushu;
}

/**
 * 注数-组六单式
 */
function zhushu_rx3z6ds(){
    var zhushu = 0;
    var arrTemp = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-zu6ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    var textStr = $(".recl-1008-zu6ds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var arr = [];
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        arr.push(oneStr);
        arr.push(twoStr);
        arr.push(threeStr);
        arr.sort();
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
            tempArr.push(arr.join(""));
        }
    }

    zhushu = tempArr.length;
    var tempNum = $("#positioninfo-zu6ds").html();
    zhushu = tempNum * zhushu;
    return zhushu;
}

/**
 * 注数-组六复式
 */
function zhushu_rx3z6fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".recl-1007-zu6fs ul li[data-name = '组六'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength < 3) {
        return 0;
    }

    newArr = getZuLiuNewArrs(fuShiArr);
    var zhushu = newArr.length;
    var shu = $("#positioninfo-zu6fs").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-组三单式
 */
function zhushu_rx3z3ds(){
    var zhushu = 0;
    var repeatArr = [], allErrorArr = [];
    var errorArr = [], arrTemp = [];
    var textStr = $(".recl-1006-zu3ds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));

    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-zu3ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    var arr_new = textStr.split(",");

    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            errorArr.push(arr_new[i]);
        }
    }

    for (var n = 0; n < newArr.length; n++) {
        var arr = [];
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        arr.push(oneStr);
        arr.push(twoStr);
        arr.push(threeStr);
        arr.sort();
        if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(arr.join(""));
        } else {
            errorArr.push(newArr[n]);
        }
    }

    zhushu = tempArr.length;
    var tempNum = $("#positioninfo-zu3ds").html();
    zhushu = tempNum * zhushu;
    return zhushu;
}

/**
 * 注数-组三复式
 */
function zhushu_rx3z3fs(){
    var zuArr = [];
    $.each($(".recl-1005-zu3fs ul li[data-name = '组三'] span.acti"), function (index, value) {
        zuArr.push($.trim($(this).find("i").html()));
    });
    var tempArr = [];
    for (var i = 0; i < zuArr.length; i++) {
        for (var i1 = 0; i1 < zuArr.length; i1++) {
            if (zuArr[i] != zuArr[i1]) {
                tempArr.push(zuArr[i] + "" + zuArr[i1]);
            }
        }

    }
    var shu = $("#positioninfo-zu3fs").html();
    var lengthArr = tempArr.length * shu;
    return lengthArr;
}

/**
 * 注数-直选和值
 */
function zhushu_rx3zxhz(){
    var hzArr = [];
    $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-hz").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-直选单式
 */
function zhushu_rx3zxds(){
    var errorStr = '';
    var allErrorArr = [];
    var errorArr = [];
    var newArr = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
    var shu = $("#positioninfo-ds").html();
    var zhushu = 0;

    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));

    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }

    var temp = newArr.length;
    zhushu = temp * shu;
    return zhushu;
}

/**
 * 注数-直选复式
 */
function zhushu_rx3zxfs(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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

//******************任选2*******************
/**
 * 注数-组选和值
 */
function zhushu_rx2zuxhz(){
    var hzArr = [];
    $.each($(".recl-1007-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-zuhz").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-直选单式
 */
function zhushu_rx2zuxds(){
    var checkStrArr = [], checkArr = [];
    var zhushu = 0;
    //选取选中checkbox
    $.each($(".re-select-zuxds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    var errorStr = '';
    var repeatArr = [], allErrorArr = [];
    var errorArr = [], arrTemp = [];
    var textStr = $(".recl-1006-zuxds .content_jiang .content_tex").val();
    var newArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
            var oneStr = (arr_new[i].toString()).substr(0, 1);
            var twoStr = (arr_new[i].toString()).substr(1, 1);
            var arr = [];
            arr.push(parseInt(oneStr));
            arr.push(parseInt(twoStr));
            arr.sort();
            newArr.push(arr.join(""));
        }
    }

    repeatArr = newArr.duplicateNew().uniqueArr(); //重复号码
    newArr = newArr.uniqueArr();
    var temp = newArr.length;
    var shu = $("#positioninfo-zuds").html();
    zhushu = temp * shu;
    return zhushu;
}

/**
 * 注数-组选复式
 */
function zhushu_rx2zuxfs(){
    var zuArr = [];
    var tempArr = [];
    $.each($(".recl-1005-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
        zuArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-zufs").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-直选和值
 */
function zhushu_rx2zxhz(){
    var hzArr = [];
    var newArr = [];
    $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
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
    var shu = $("#positioninfo-hz").html();
    var lengthArr = zhushu * shu;
    return lengthArr;
}

/**
 * 注数-直选单式
 */
function zhushu_rx2zxds(){
    var checkStrArr = [], checkArr = [];
    var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
    //选取选中checkbox
    $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    var newArr = [], arrTemp = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
            newArr.push(arr_new[i]);
        }
    }

    var temp = newArr.length;
    var shu = $("#positioninfo-ds").html();
    var zhushu = temp * shu;
    return zhushu;
}

/**
 * 注数-直选复式
 */
function zhushu_rx2zxfs(){
    var arrNew = [], tempArr = [];
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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

//******************不定位*******************
/**
 * 注数-五星三码
 */
function zhushu_wx3m(){
    var budwArr = [];
    $.each($(".recl-1012-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-五星二码
 */
function zhushu_wxem(){
    var budwArr = [];
    $.each($(".recl-1011-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-五星一码
 */
function zhushu_wxym(){
    var budwArr = [];
    $.each($(".recl-1010-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    return budwArr.length;
}

/**
 * 注数-后四二码
 */
function zhushu_h4em(){
    var budwArr = [];
    $.each($(".recl-1009-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-后四一码
 */
function zhushu_h4ym(){
    var budwArr = [];
    $.each($(".recl-1008-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    return budwArr.length;
}

/**
 * 注数-前四二码
 */
function zhushu_q4em(){
    var budwArr = [];
    $.each($(".recl-1007-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-前四一码
 */
function zhushu_q4ym(){
    var budwArr = [];
    $.each($(".recl-1006-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    return budwArr.length;
}

/**
 * 注数-后三二码
 */
function zhushu_hsem(){
    var budwArr = [];
    $.each($(".recl-1005-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-后三一码
 */
function zhushu_hsym(){
    var budwArr = [];
    $.each($(".recl-1004-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    return budwArr.length;
}

/**
 * 注数-前三二码
 */
function zhushu_qsem(){
    var budwArr = [];
    $.each($(".recl-1003-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-前三一码
 */
function zhushu_qsym(){
    var budwArr = [];
    $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    return budwArr.length;
}

//*************************定位胆****************************
/**
 * 注数-定位胆
 */
function zhushu_dwd(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [], newArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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

//*************************前2****************************
/**
 * 注数-组选包胆
 */
function zhushu_q2zuxbd(valArr){
    var tempArr = [];
    var bdArr = [], nowTemp = [];
    $.each($(".recl-1009-zuxbd ul li[data-name = '胆码'] span.acti"), function (index, value) {
        nowTemp.push($.trim($(this).find("i").html()));
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
function zhushu_q2zuxhz(valArr){
    var tempArr = [];
    var hzArr = [], temp = [], nowTemp = [];
    var sumTemp = 0, num = 0;
    $.each($(".recl-1008-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        nowTemp.push($.trim($(this).find("i").html()));
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

/**
 * 注数-组选单式
 */
function zhushu_q2zuxds(){
    var textStr = $(".recl-1007-zuxds .content_jiang .content_tex").val();
    var newArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
            var strTemp = "", strTemp1 = "";
            var str1 = arr_new[i].toString();
            var str2 = arr_new[i].toString();
            strTemp = str1.substr(0, 1);
            strTemp1 = str2.substr(1, 1);
            if (strTemp != strTemp1) {
                var tempArr = [];
                tempArr.push(parseInt(strTemp));
                tempArr.push(parseInt(strTemp1));
                tempArr.sort();
                newArr.push(tempArr.join(""));
            }
        }
    }
    if (newArr.length <= 0) {
        return 0;
    }
    return newArr.length;
}


/**
 * 注数-组选复式
 */
function zhushu_q2zuxfs(){
    var tempArr = [], zuxArr = [];
    $.each($(".recl-1006-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
        zuxArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-直选跨度
 */
function zhushu_q2zxkd(valArr){
    var tempArr = [];
    var kdArr = [], numTemp = [];
    var num = 0;
    $.each($(".recl-1005-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
        numTemp.push($.trim($(this).find("i").html()));
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

/**
 * 注数-直选和值
 */
function zhushu_q2zxhz(valArr){
    var tempArr = [];
    var hzArr = [], temp = [], nowTemp = [];
    var tempValue = 0, sumTemp = 0, num = 0;
    $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        nowTemp.push($.trim($(this).find("i").html()));
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

/**
 * 注数-直选单式
 */
function zhushu_q2zxds(){
    var textStr = $(".recl-1003 .content_jiang .content_tex").val();
    var newArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
            newArr.push(arr_new[i]);
        }
    }

    if (newArr.length <= 0) {
        return 0;
    }
    return newArr.length;
}

/**
 * 注数-直选复式
 */
function zhushu_q2zxfs(){
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
        return 0;
    }

    for(var i = 0; i < wanArr.length; i++){
        for(var i1 = 0; i1 < qianArr.length; i1++){
            tempArr.push(wanArr[i] + "" + qianArr[i1]);
        }
    }
    return tempArr.length;
}


//=======================前3=======================
/**
 * 注数-特殊号
 */
function zhushu_q3tsh() {
    var tsArr = [];
    $.each($(".cl-1015-tsh ul li.tsh_li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
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
    $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
        wsArr.push($.trim($(this).find("i").html()));
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
function zhushu_q3zxbd(){
    var baoDanArr = [], newArr = [];
    $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
        baoDanArr.push($.trim($(this).find("i").html()));
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
    $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength <= 0) {
        return 0;
    }
    newArr = getZxhzNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-混合组选
 */
function zhushu_q3hhzx(){
    var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '';
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        }
    }
    return tempArr.length;
}

/**
 * 注数-组六单式
 */
function zhushu_q3z6ds(){
    var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        }
    }
    return tempArr.length;
}

/**
 * 注数-组六复式
 */
function zhushu_q3z6fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength < 3) {
        return 0;
    }
    newArr = getZuLiuNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-组三单式
 */
function zhushu_q3z3ds(){
    var zhushu = 0;
    var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        }
    }

    return tempArr.length;
}


/**
 * 注数-组三复式
 */
function zhushu_q3z3fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });

    var heZhiLength = fuShiArr.length;
    if (heZhiLength <= 1) {
        return 0;
    }
    newArr = getZuXuanNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-直选跨度
 */
function zhushu_q3zxkd() {
    var newArr = [];
    var kaDuArr = [];
    $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
        kaDuArr.push($.trim($(this).find("i").html()));
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
    $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        heZhiArr.push($.trim($(this).find("i").html()));
    });

    var heZhiLength = heZhiArr.length;
    if (heZhiLength <= 0) {
        return 0;
    }

    newArr = getHezNewArrs(heZhiArr);
    return newArr.length;
}

/**
 * 注数-前3组合
 */
function zhushu_q3zh() {
    var wanArr = [], qianArr = [], baiArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
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
 * 注数-前3直选单式
 */
function zhushu_q3zxds() {
    var textStr = $(".content_jiang .content_tex").val();
    var newArr = [];
    var errorArr = [];
    var errorStr = '';
    var zhushu = 0;
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    return newArr.length;
}

/**
 * 注数-前3直选复式
 */
function zhushu_q3zxfs() {
    var newArr = [];
    var wanArr = [], qianArr = [], baiArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });

    var wanLength = wanArr.length;
    var qianLength = qianArr.length;
    var baiLength = baiArr.length;
    newArr = getThreeNewArrs(wanArr, qianArr, baiArr);
    return newArr.length;
}


/*********************************/
/**********后三**********/

/**
 * 注数-特殊号
 */
function zhushu_h3tsh() {
    var tsArr = [];
    $.each($(".cl-1015-tsh ul li.tsh_li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
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
    $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
        wsArr.push($.trim($(this).find("i").html()));
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
function zhushu_h3zxbd(){
    var baoDanArr = [], newArr = [];
    $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
        baoDanArr.push($.trim($(this).find("i").html()));
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
    $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength <= 0) {
        return 0;
    }
    newArr = getZxhzNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-混合组选
 */
function zhushu_h3hhzx(){
    var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '';
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        }
    }
    return tempArr.length;
}

/**
 * 注数-组六单式
 */
function zhushu_h3z6ds(){
    var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        }
    }
    return tempArr.length;
}

/**
 * 注数-组六复式
 */
function zhushu_h3z6fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });
    var zlLength = fuShiArr.length;
    if (zlLength < 3) {
        return 0;
    }
    newArr = getZuLiuNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-组三单式
 */
function zhushu_h3z3ds(){
    var zhushu = 0;
    var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        }
    }

    return tempArr.length;
}


/**
 * 注数-组三复式
 */
function zhushu_h3z3fs(){
    var fuShiArr = [], newArr = [];
    $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
        fuShiArr.push($.trim($(this).find("i").html()));
    });

    var heZhiLength = fuShiArr.length;
    if (heZhiLength <= 1) {
        return 0;
    }
    newArr = getZuXuanNewArrs(fuShiArr);
    return newArr.length;
}

/**
 * 注数-直选跨度
 */
function zhushu_h3zxkd() {
    var newArr = [];
    var kaDuArr = [];
    $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
        kaDuArr.push($.trim($(this).find("i").html()));
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
    $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        heZhiArr.push($.trim($(this).find("i").html()));
    });

    var heZhiLength = heZhiArr.length;
    if (heZhiLength <= 0) {
        return 0;
    }

    newArr = getHezNewArrs(heZhiArr);
    return newArr.length;
}

/**
 * 注数-后3组合
 */
function zhushu_h3zh() {
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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
 * 注数-后3直选单式
 */
function zhushu_h3zxds() {
    var textStr = $(".content_jiang .content_tex").val();
    var newArr = [];
    var errorArr = [];
    var errorStr = '';
    var zhushu = 0;
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    return newArr.length;
}

/**
 * 注数-后3直选复式
 */
function zhushu_h3zxfs() {
    var newArr = [];
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-5星直选单式
 */
function zhushu_5xzxds() {
    var textStr = $(".content_jiang .content_tex").val();
    var newArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 5) {
            newArr.push(arr_new[i]);
        }
    }
    return newArr.length;
}

/**
 * 注数-4星直选单式
 */
function zhushu_4xzxds() {
    var textStr = $(".content_jiang .content_tex").val();
    var newArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
            newArr.push(arr_new[i]);
        }
    }
    return newArr.length;
}

/**
 * 注数-5星直选复式
 */
function zhushu_5xzxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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
    if (typeof newArr == "undefined" || newArr.length <= 0) {
        if (typeof clearStateTouZhu == 'function') {
            clearStateTouZhu();
        }
        return;
    }
    return newArr.length;
}

/**
 * 注数-4星直选复式
 */
function zhushu_4xzxfs() {
    var qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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

/**
 * 注数-前二大小单双
 */
function zhushu_q2dxds(){
    var dxdsWArr = [], dxdsQArr = [], tempArr = [];
    $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        dxdsWArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        dxdsQArr.push($.trim($(this).find("i").html()));
    });

    for (var n = 0; n < dxdsWArr.length; n++) {
        for (var m = 0; m < dxdsQArr.length; m++) {
            tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m]);
        }
    }
    return tempArr.length;
}

/**
 * 注数-后二大小单双
 */
function zhushu_h2dxds(){
    var dxdsSArr = [], dxdsGArr = [];
    $.each($(".recl-1003-h2dxds ul li[data-name = '十'] span.acti"), function (index, value) {
        dxdsSArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1003-h2dxds ul li[data-name = '个'] span.acti"), function (index, value) {
        dxdsGArr.push($.trim($(this).find("i").html()));
    });
    return dxdsSArr.length * dxdsGArr.length;
}

/**
 * 注数-前三大小单双
 */
function zhushu_q3dxds(){
    var dxdsWArr = [], dxdsQArr = [], dxdsBArr = [];
    $.each($(".recl-1004-q3dxds ul li[data-name = '万'] span.acti"), function (index, value) {
        dxdsWArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1004-q3dxds ul li[data-name = '千'] span.acti"), function (index, value) {
        dxdsQArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1004-q3dxds ul li[data-name = '百'] span.acti"), function (index, value) {
        dxdsBArr.push($.trim($(this).find("i").html()));
    });
    return dxdsWArr.length * dxdsQArr.length * dxdsBArr.length;
}

/**
 * 注数-后三大小单双
 */
function zhushu_h3dxds(){
    var dxdsBArr = [],dxdsSArr = [], dxdsGArr = [];
    $.each($(".recl-1005-h3dxds ul li[data-name = '百'] span.acti"), function (index, value) {
        dxdsBArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1005-h3dxds ul li[data-name = '十'] span.acti"), function (index, value) {
        dxdsSArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1005-h3dxds ul li[data-name = '个'] span.acti"), function (index, value) {
        dxdsGArr.push($.trim($(this).find("i").html()));
    });
    return dxdsBArr.length * dxdsSArr.length * dxdsGArr.length;
}

//=============================================随机注数算法汇总======================================
// 随机生成注数
function getSuiji(total) {
    var zhushu = 1;
    var suijiFun = getPlayPlFun_suiji();
    if (typeof suijiFun == 'undefined') {
        return;
    }

    // 获取随机注数
    for (var i = 0; i < total; ++i) {
        var data = eval(suijiFun + "()");
        if (typeof data == 'undefined' || data.length <= 0) {
            return;
        }

        //位置选择不正确（rx2,rx3,rx4中）
        if(data == -1){
            return;
        }

        var obj = {};
        //======函数获取=====
        obj.showPlayName = data.showPlayName;
        obj.showContent = data.showContent;
        zhushu = (typeof data.betZhushu != 'undefined' || data.betZhushu > 1) ? data.betZhushu : zhushu;
        obj.betContent = data.betContent;
        obj.betPlayGroupId = data.playGroupId;
        //========动态获取=====
        obj.betPerMoney = $("#inputMoney").data("money");
        obj.betZhushu = zhushu;
        obj.betBeishu = $("#inputBeishu").data("beishu");
        obj.betMode = getSelectMode();
        obj.betTotalMoney = obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu;
        obj.betPlayPl = $("#jiangjin-change").data("value");
        obj.betFandian = $("#fandian-bfb").data("value");
        var  strPlId = getPlayPlId();
        if(strPlId.toString().indexOf('|') > 0){
            obj.betPlayPlId = (strPlId.toString().split("|"))[0];
        } else{
            obj.betPlayPlId = getPlayPlId();
        }
        obj.betPlayId = getPlayId();

        // 添加预算
        addYuxuan(obj);
    }

    // 统计右侧注数，金额
    calcAll();
}

//**********************任选4***********************
/**
 * 任选4-组选4
 */
function suiji_rx4zu4() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkStrArr = [], checkArr = [];
    var arrZux4 = [], str1 = '',  str2 = '';
    while (arrZux4.length < 1) {
        var x1 = parseInt(Math.random() * 10);
        var x2 = parseInt(Math.random() * 10);
        if (x1 != x2) {
            arrZux4.push("三重号: (" + x1 + "), 单号: (" + x2 + ")");
            str1 = x1;
            str2 = x2;
        }
    }

    //选取选中checkbox
    $.each($(".re-select-zux4 input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    if(checkArr.length < 4){
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    var shu =  $("#positioninfo-zux4").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任四组选-组选4";
    showContent = arrZux4.join("");
    betContent = checkStrArr.join(',') + "|" + str1 + "|" + str2;
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    }
}

/**
 * 任选4-组选6
 */
function suiji_rx4zu6() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkStrArr = [], checkArr = [];
    var arrZux6 = [];
    var str1 = '', str2 = '';
    ;        while (arrZux6.length < 1) {
        var x1 = parseInt(Math.random() * 10);
        var x2 = parseInt(Math.random() * 10);
        if (x1 != x2) {
            arrZux6.push("二重号: (" + x1 + "," + x2 + ")");
            str1 = x1;
            str2 = x2;
        }
    }

    //选取选中checkbox
    $.each($(".re-select-zux6 input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    if(checkArr.length < 4){
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    var shu =  $("#positioninfo-zux6").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任四组选-组选6";
    showContent = arrZux6.join("");
    betContent = checkStrArr.join(',') + "|" + str1 + "," + str2;
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选4-组选12
 */
function suiji_rx4zu12() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkStrArr = [], checkArr = [];
    var arrZux12 = [];
    var str1 = '', str2 = '';
    while (arrZux12.length < 1) {
        var x1 = parseInt(Math.random() * 10);
        var x2 = parseInt(Math.random() * 10);
        var x3 = parseInt(Math.random() * 10);
        if (x1 != x2 && x1 != x3 && x2 != x3) {
            arrZux12.push("二重号: (" + x1 + "), " + "单号: (" + x2 + "," + x3 + ")");
            str1 = x1;
            str2 = x2 + "," + x3;
        }
    }

    //选取选中checkbox
    $.each($(".re-select-zux12 input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    if(checkArr.length < 4){
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    var shu = $("#positioninfo-zux12").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任四组选-组选12";
    showContent = arrZux12.join("");
    betContent = checkStrArr.join(',') + "|" + str1 + "|" + str2;
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选4-组选24
 */
function suiji_rx4zu24() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkStrArr = [], checkArr = [];
    var arrZu6 = [];
    var arrZux24 = [];
    while (arrZux24.length < 1) {
        var x1 = parseInt(Math.random() * 10);
        var x2 = parseInt(Math.random() * 10);
        var x3 = parseInt(Math.random() * 10);
        var x4 = parseInt(Math.random() * 10);
        if (x1 != x2 && x1 != x3 && x1 != x4 && x2 != x3 && x2 != x4 && x3 != x4) {
            arrZux24.push(x1 + "," + x2 + "," + x3 + "," + x4);
        }
    }

    //选取选中checkbox
    $.each($(".re-select-zux24 input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    if(checkArr.length < 4){
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    var shu = $("#positioninfo-zux24").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任四组选-组选24";
    showContent = "组选24: (" + arrZux24.join("") + ")";
    betContent = checkStrArr.join(',') + "|" + arrZux24.join(",");
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选4-直选单式
 */
function suiji_rx4zxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkStrArr = [], checkArr = [];
    var arrZu6 = [];
    while (arrZu6.length < 1) {
        var x1 = parseInt(Math.random() * 10);
        var x2 = parseInt(Math.random() * 10);
        var x3 = parseInt(Math.random() * 10);
        var x4 = parseInt(Math.random() * 10);
        arrZu6.push(x1 + "" + x2 + "" + x3 + "" + x4);

    }
    //选取选中checkbox
    $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    if(checkArr.length < 4){
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    var shu = $("#positioninfo-ds").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任四直选-直选单式";
    showContent = "号码: (" + arrZu6[0] + ")";
    betContent = checkStrArr.join(',') + "|" + arrZu6[0];
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选4-直选复式
 */
function suiji_rx4zxfs(){
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var arr = [];

    while (arr.length < 5) {
        var num1 = parseInt(Math.random() * 10);
        arr.push(num1);
    }

    showPlayName = "任四直选-直选复式";
    showContent = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
    betContent =  arr[0] + '|' + arr[1] + '|' + arr[2] + '|' + arr[3] + '|' + arr[4];
    betZhushu = 5;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}



//**********************任选3***********************

/**
 * 任选3-组选和值
 */
function suiji_rx3zuxhz(){
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var hzArr = [], checkStrArr = [], checkArr = [];

    while (hzArr.length < 1) {
        var num1 = parseInt(Math.random() * 26) + 1;
        hzArr.push(num1);
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
    //选取选中checkbox
    $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    if(checkArr.length < 3){
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    var shu = $("#positioninfo-zuxhz").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三组选-组选和值";
    showContent = "号码: (" + hzArr[0] +")";
    betContent =  checkStrArr.join(',') + "|" + hzArr[0];
    betZhushu = newArr.length * shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选3-混合组选
 */
function suiji_rx3hhzux() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkStrArr = [], checkArr = [];
    var arrZu6 = [];
    while (arrZu6.length < 1) {
        var x1 = parseInt(Math.random() * 10);
        var x2 = parseInt(Math.random() * 10);
        var x3 = parseInt(Math.random() * 10);
        if (!(x1 == x2 && x2 == x3 && x3 == x2)) {
            arrZu6.push(x1 + "" + x2 + "" + x3);
        }
    }
    //选取选中checkbox
    $.each($(".re-select-hhzux input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 3){
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    var shu = $("#positioninfo-hhzux").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三直选-混合组选";
    showContent = "号码: (" + arrZu6[0] + ")";
    betContent = checkStrArr.join(',') + "|" + arrZu6.join(',');
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选3-组六单式
 */
function suiji_rx3z6ds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkStrArr = [], checkArr = [];
    var arrZu6 = [];
    while (arrZu6.length < 1) {
        var x1 = parseInt(Math.random() * 10);
        var x2 = parseInt(Math.random() * 10);
        var x3 = parseInt(Math.random() * 10);
        if (x1 != x2 && x2 != x3 && x3 != x2) {
            arrZu6.push(x1 + "" + x2 + "" + x3);
        }
    }
    //选取选中checkbox
    $.each($(".re-select-zu6ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });

    if(checkArr.length < 3){
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    var shu = $("#positioninfo-zu6ds").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三直选-组六单式";
    showContent = "号码: (" + arrZu6[0] + ")";
    betContent = checkStrArr.join(',') + "|" + arrZu6[0];
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选3-组六复式
 */
function suiji_rx3z6fs() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkStrArr = [], checkArr = [];
    var arrZu6 = [];
    while (arrZu6.length < 1) {
        var x1 = parseInt(Math.random() * 10);
        var x2 = parseInt(Math.random() * 10);
        var x3 = parseInt(Math.random() * 10);
        if (x1 != x2 && x2 != x3 && x3 != x2) {
            arrZu6.push(x1 + "," + x2 + "," + x3);
        }
    }
    //选取选中checkbox
    $.each($(".re-select-zu6fs input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 3){
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    var shu = $("#positioninfo-zu6fs").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三直选-组六复式";
    showContent = "号码: (" + arrZu6[0] + ")";
    betContent = checkStrArr.join(',') + "|" + arrZu6[0];
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}


/**
 * 任选3-组三单式
 */
function suiji_rx3z3ds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var arrZu3ds = [];
    var checkStrArr = [], checkArr = [];
    while (arrZu3ds.length < 1) {
        var num1 = parseInt(Math.random() * 10);
        var num2 = parseInt(Math.random() * 10);
        var num3 = parseInt(Math.random() * 10);
        if (num1 == num2 && num2 != num3 || num2 == num3 && num3 != num1 || num3 == num1 && num1 != num2) {
            arrZu3ds.push(num1 + "" + num2 + "" + num3);
        }
    }
    //选取选中checkbox
    $.each($(".re-select-zu3ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 3){
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    var shu = $("#positioninfo-zu3ds").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三直选-组三单式";
    showContent = "号码: (" + arrZu3ds[0] + ")";
    betContent = checkStrArr.join(',') + "|" + arrZu3ds[0];
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选3-组三复式
 */
function suiji_rx3z3fs() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var arr = [];
    var checkStrArr = [], checkArr = [];

    while (arr.length < 2) {
        var num1 = parseInt(Math.random() * 10);
        var num2 = parseInt(Math.random() * 10);
        if (num1 != num2) {
            arr.push(num1);
            arr.push(num2);
        }

    }
    var tempArr = [];
    for (var i = 0; i < arr.length; i++) {
        for (var i1 = 0; i1 < arr.length; i1++) {
            if (arr[i] != arr[i1]) {
                tempArr.push(arr[i] + "" + arr[i1]);
            }
        }

    }
    //选取选中checkbox
    $.each($(".recl-1005-zu3Rx3 input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 3){
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    var shu = $("#positioninfo-zu3fs").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三直选-组三复式";
    showContent = "号码: (" + arr[0] + "," + arr[1] + ")";
    betContent = checkStrArr.join(',') + "|" + arr[0] + "," + arr[1];
    betZhushu = tempArr.length * shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选3-直选和值
 */
function suiji_rx3zxhz(){
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var hzArr = [], checkStrArr = [], checkArr = [];

    while (hzArr.length < 1) {
        var num1 = parseInt(Math.random() * 28);
        hzArr.push(num1);
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

    //选取选中checkbox
    $.each($(".recl-1004-zxhz input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 3){
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    var shu = $("#positioninfo-hz").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三直选-直选和值";
    showContent = "号码: (" + hzArr[0] +")";
    betContent =  checkStrArr.join(',') + "|" + hzArr[0];
    betZhushu = shu * newArr.length;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}


/**
 * 任选3-直选单式
 */
function suiji_rx3zxds(){
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var arr = [], checkStrArr = [], checkArr = [];

    while (arr.length < 3) {
        var num1 = parseInt(Math.random() * 10);
        arr.push(num1);
    }
    //选取选中checkbox
    $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 3){
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    var shu = $("#positioninfo-ds").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三直选-直选复式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent =  checkStrArr.join(',') + "|" +  arr[0] + "" + arr[1] + "" + arr[2];
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选3-直选复式
 */
function suiji_rx3zxfs(){
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var arr = [];

    while (arr.length < 5) {
        var num1 = parseInt(Math.random() * 10);
        arr.push(num1);
    }

    showPlayName = "任三直选-直选复式";
    showContent = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
    betContent = arr[0] + "|" + arr[1] + "|" + arr[2] + "|" + arr[3] + "|" + arr[4];
    betZhushu = 10;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

//**********************任选2************************
/**
 * 任选2-组选和值
 */
function suiji_rx2zuxhz() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var zuxhz = [];
    var checkArr = [], checkStrArr = [];
    var newArr = [];
    //选取选中checkbox
    $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 2){
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    zuxhz.push(parseInt(Math.random() * 17) + 1);

    for (var i = 0; i < zuxhz.length; i++) {
        for (var x = 0; x < 10; x++) {
            for (var y = 0; y < 10; y++) {
                if ((x + y) == zuxhz[i] && x != y) {
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
    var shu = $("#positioninfo-zuhz").html();
    showPlayName = "任二直选-组选和值";
    betZhushu = newArr.length * shu;
    showContent = "号码: (" + zuxhz[0] + ")";
    betContent = checkStrArr.join(',') + "|" + zuxhz.join(',');

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选2-组选单式
 */
function suiji_rx2zuxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkArr = [], checkStrArr = [];
    var arr = [];

    while (arr.length < 2) {
        var num1 = parseInt(Math.random() * 10);
        var num2 = parseInt(Math.random() * 10);
        if(num1 != num2){
            arr.push(num1);
            arr.push(num2);
        }
    }

    //选取选中checkbox
    $.each($(".re-select-zuxds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 2){
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    var shu = $("#positioninfo-zuds").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    betZhushu = shu;
    showPlayName = "任二组选-组选单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + ")";
    betContent = checkStrArr.join(',') + "|" + arr[0] + "" + arr[1];
    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选2-组选复式
 */
function suiji_rx2zuxfs() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var arr = [];

    while (arr.length < 2) {
        var num1 = parseInt(Math.random() * 10);
        var num2 = parseInt(Math.random() * 10);
        if (num1 != num2) {
            arr.push(num1);
            arr.push(num2);
        }
    }
    var checkArr = [], checkStrArr = [];
    var shu = $("#positioninfo-zufs").html();
    //选取选中checkbox
    $.each($(".recl-1005-fs input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 2){
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    showPlayName = "任二组选-组选复式";
    showContent = "号码: (" + arr[0] + "," + arr[1] + ")";
    betContent = checkStrArr.join(',') + "|" + arr[0] + "," + arr[1];
    betZhushu = shu;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选2-直选和值
 */
function suiji_rx2zxhz() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var hzsj = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".recl-1004-hz input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 2){
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    hzsj.push(parseInt(Math.random() * 19));
    var newArr = [];
    for (var i = 0; i < hzsj.length; i++) {
        for (var x = 0; x < 10; x++) {
            for (var y = 0; y < 10; y++) {
                if (x + y == hzsj[i]) {
                    newArr.push(x + "" + y);
                }
            }
        }
    }

    var shu = $("#positioninfo-hz").html();

    showPlayName = "任二直选-直选和值";
    betZhushu = newArr.length * shu;
    showContent = "号码: (" + hzsj[0] + ")";
    betContent = checkStrArr.join(',') + "|" + hzsj.join(',');

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选2-直选单式
 */
function suiji_rx2zxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var checkArr = [], checkStrArr = [];
    var arr = [];

    while (arr.length < 2) {
        var num = parseInt(Math.random() * 10);
        arr.push(num);
    }

    //选取选中checkbox
    $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if(checkArr.length < 2){
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    var shu = $("#positioninfo-ds").html();
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    betZhushu = shu;
    showPlayName = "任二直选-直选单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + ")";
    betContent = checkStrArr.join(',') + "|" + arr[0] + "" + arr[1];
    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 任选2-直选复式
 */
function suiji_rx2zxfs() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;
    var tempArr = [];
    var arr = [];

    for (var i = 0; i <= 9; ++i) {
        tempArr[i] = 0;
    }

    while (arr.length < 5) {
        var num = parseInt(Math.random() * 10);
        arr.push(num);
    }

    showPlayName = "任二直选-直选复式";
    showContent = "万位: " + arr[0] + " 千位: " + arr[1] + " 百位: " + arr[2] + " 十位: " + arr[3] + " 个位: " + arr[4];
    betContent = arr[0] + "|" + arr[1] + "|" + arr[2] + "|" + arr[3] + "|" + arr[4];
    betZhushu = 10;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

//**********************不定位************************
/**
 * 不定位-五星三码"
 */
function suiji_wx3m() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = [];
    while(arr.length < 3){
        var zhiHao1 = parseInt(Math.random() * 10);
        var zhiHao2 = parseInt(Math.random() * 10);
        var zhiHao3 = parseInt(Math.random() * 10);
        if(zhiHao1 != zhiHao2 && zhiHao2 != zhiHao3 && zhiHao1 != zhiHao3){
            arr.push(zhiHao1);
            arr.push(zhiHao2);
            arr.push(zhiHao3);
        }
    }

    showPlayName = "五星-五星三码";
    showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + "," + zhiHao3 + ")";
    betContent = zhiHao1 + "," + zhiHao2 + "," + zhiHao3;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-五星二码"
 */
function suiji_wxem() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = getRandom2num();
    var zhiHao1 = arr[0];
    var zhiHao2 = arr[1];

    showPlayName = "五星-五星二码";
    showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
    betContent = zhiHao1 + "," + zhiHao2;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-五星一码"
 */
function suiji_wxym() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var zhiHao1 = parseInt(Math.random() * 10);

    showPlayName = "五星-五星一码";
    showContent = "不定位: (" + zhiHao1 + ")";
    betContent = zhiHao1;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-后四二码"
 */
function suiji_h4em() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = getRandom2num();
    var zhiHao1 = arr[0];
    var zhiHao2 = arr[1];

    showPlayName = "四星-后四二码";
    showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
    betContent = zhiHao1 + "," + zhiHao2;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-后四一码"
 */
function suiji_h4ym() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var zhiHao1 = parseInt(Math.random() * 10);

    showPlayName = "四星-后四一码";
    showContent = "不定位: (" + zhiHao1 + ")";
    betContent = zhiHao1;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-前四二码"
 */
function suiji_q4em() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = getRandom2num();
    var zhiHao1 = arr[0];
    var zhiHao2 = arr[1];

    showPlayName = "四星-前四二码";
    showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
    betContent = zhiHao1 + "," + zhiHao2;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-前四一码"
 */
function suiji_q4ym() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var zhiHao1 = parseInt(Math.random() * 10);

    showPlayName = "四星-前四一码";
    showContent = "不定位: (" + zhiHao1 + ")";
    betContent = zhiHao1;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-后三二码"
 */
function suiji_hsem() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = getRandom2num();
    var zhiHao1 = arr[0];
    var zhiHao2 = arr[1];

    showPlayName = "三星-后三二码";
    showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
    betContent = zhiHao1 + "," + zhiHao2;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-后三一码"
 */
function suiji_hsym() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arrTsh = [], newArr = [];
    while (newArr.length < 1) {
        var zhiTsh = parseInt(Math.random() * 10);
        newArr.push(zhiTsh);
    }

    showPlayName = "三星-后三一码";
    showContent = "不定位: (" + newArr[0] + ")";
    betContent = newArr.join("");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 不定位-前三二码"
 */
function suiji_qsem() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = getRandom2num();
    var zhiHao1 = arr[0];
    var zhiHao2 = arr[1];

    showPlayName = "三星-前三二码";
    showContent = "不定位: (" + zhiHao1 + "," + zhiHao2 + ")";
    betContent = zhiHao1 + "," + zhiHao2;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

//获取两位0到9之间的随机数
function getRandom2num(){
    var arr = [];
    while(arr.length < 2){
        var zhiHao1 = parseInt(Math.random() * 10);
        var zhiHao2 = parseInt(Math.random() * 10);
        if(zhiHao1 != zhiHao2){
            arr.push(zhiHao1);
            arr.push(zhiHao2);
        }
    }
    return arr;
}

/**
 * 不定位-前三一码"
 */
function suiji_qsym() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arrTsh = [], newArr = [];
    while (newArr.length < 1) {
        var zhiTsh = parseInt(Math.random() * 10);
        newArr.push(zhiTsh);
    }

    showPlayName = "三星-前三一码";
    showContent = "不定位: (" + newArr[0] + ")";
    betContent = newArr.join("");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

//**************定位胆***************
/**
 * 定位胆"
 */
function suiji_dwd() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var numArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var xArr = ["万位", "千位", "百位", "十位", "个位"];

    var arr = [];
    var betStr = '';
    while (arr.length < 1) {
        var num1 = parseInt(Math.random() * 5);
        var num2 = parseInt(Math.random() * 10);
        var str = xArr[num1];
        str = str + ": (" + numArr[num2] + ")";
        arr.push(str);
        if(num1 == 0){
            betStr = numArr[num2] + "|" + "|" + "|" + "|";
        } else if(num1 == 1){
            betStr = "|" + numArr[num2] + "|" + "|" + "|";
        } else if(num1 == 2){
            betStr = "|" + "|" + numArr[num2] + "|" + "|";
        } else if(num1 == 3){
            betStr = "|" + "|" + "|" + numArr[num2] + "|";
        } else if(num1 == 4){
            betStr = "|" + "|" + "|" + "|" + numArr[num2];
        }

    }

    showPlayName = "定位胆-定位胆";
    showContent = arr[0];
    betContent = betStr;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

//**********************前二**********************
/**
 * 前2直选-组选包胆"
 */
function suiji_q2zuxbd() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = '';

    var arrTsh = [], newArr = [];
    while (newArr.length < 1) {
        var zhiTsh = parseInt(Math.random() * 10);
        newArr.push(zhiTsh);
    }
    betZhushu = zhushu_q2zuxbd(newArr);
    showPlayName = "前二组选-包胆";
    showContent = "包胆: (" + newArr[0] + ")";
    betContent = newArr.join("");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}


/**
 * 前2直选-组选和值"
 */
function suiji_q2zuxhz() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = '';

    var arrTsh = [], newArr = [];
    while (newArr.length < 1) {
        var zhiTsh = parseInt(Math.random() * 17) + 1;
        newArr.push(zhiTsh);
    }
    betZhushu = zhushu_q2zuxhz(newArr);
    showPlayName = "前二组选-和值";
    showContent = "和值: (" + newArr[0] + ")";
    betContent = newArr.join("");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 前2直选-组选单式"
 */
function suiji_q2zuxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var newArr = [];
    while (newArr.length < 2) {
        var zhiHao1 = parseInt(Math.random() * 10);
        var zhiHao2 = parseInt(Math.random() * 10);
        if(zhiHao1 != zhiHao2){
            newArr.push(zhiHao1);
            newArr.push(zhiHao2);
        }
    }
    showPlayName = "前二组选-单式";
    showContent = "号码: (" + newArr.join(",") + ")";
    betContent = newArr.join("");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前2直选-组选复式"
 */
function suiji_q2zuxfs() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var newArr = [];
    while (newArr.length < 2) {
        var zhiHao1 = parseInt(Math.random() * 10);
        var zhiHao2 = parseInt(Math.random() * 10);
        if(zhiHao1 != zhiHao2){
            newArr.push(zhiHao1);
            newArr.push(zhiHao2);
        }
    }
    showPlayName = "前二组选-复式";
    showContent = "组选: (" + newArr.join(",") + ")";
    betContent = newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前2直选-直选跨度"
 */
function suiji_q2zxkd() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = '';

    var arrTsh = [], newArr = [];
    while (newArr.length < 1) {
        var zhiTsh = parseInt(Math.random() * 10);
        newArr.push(zhiTsh);
    }
    betZhushu = zhushu_q2zxkd(newArr);
    showPlayName = "前二直选-跨度";
    showContent = "跨度: (" + newArr[0] + ")";
    betContent = newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 前2直选-直选和值"
 */
function suiji_q2zxhz() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = '';

    var arrTsh = [], newArr = [];
    while (newArr.length < 1) {
        var zhiTsh = parseInt(Math.random() * 19);
        newArr.push(zhiTsh);
    }
    betZhushu = zhushu_q2zxhz(newArr);
    showPlayName = "前二直选-和值";
    showContent = "和值: (" + newArr[0] + ")";
    betContent = newArr.join("");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 前2直选-直选单式"
 */
function suiji_q2zxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arrTsh = [], newArr = [];
    arrTsh = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

    while (newArr.length < 2) {
        var zhiTsh = parseInt(Math.random() * arrTsh.length);
        newArr.push(arrTsh[parseInt(zhiTsh)]);
    }

    showPlayName = "前二直选-单式";
    showContent = "号码: (" + newArr[0] + "" + newArr[1] + ")";
    betContent = newArr[0] + "" + newArr[1];

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前2直选-直选复式"
 */
function suiji_q2zxfs() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arrTsh = [], newArr = [];
    arrTsh = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

    while (newArr.length < 2) {
        var zhiTsh = parseInt(Math.random() * arrTsh.length);
        newArr.push(arrTsh[parseInt(zhiTsh)]);
    }

    showPlayName = "前二直选-复式";
    showContent = "万位: (" + newArr[0] + ") 千位: (" + newArr[1] + ")";
    betContent = newArr[0] + "|" + newArr[1];;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}


//*************前三***************
/**
 * 前三其它-特殊号"
 */
function suiji_q3tsh() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arrTsh = [], newArr = [];
    arrTsh[0] = "对子";
    arrTsh[1] = "顺子";
    arrTsh[2] = "豹子";
    while (newArr.length != 1) {
        var zhiTsh = parseInt(Math.random() * 3);
        newArr.push(arrTsh[parseInt(zhiTsh)]);
    }

    showPlayName = "前三其它-特殊号";
    showContent = "特殊号: (" + newArr[0] + ")";
    betContent = newArr[0];

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前三其它-前三和值尾数"
 */
function suiji_q3hzws () {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "前三其它-前三和值尾数";
    showContent = "尾数: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}


/**
 * 前三直选-组选包胆
 */
function suiji_q3zxbd () {
    var baoDanArr = [];
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    baoDanArr.push(arr);
    betZhushu = getZxbdNewArrs(baoDanArr).length;
    showPlayName = "前三直选-组选包胆";
    showContent = "包胆: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 前三直选-组选和值
 */
function suiji_q3zuxhz () {
    var fuShiArr = [];
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;

    var tempArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    fuShiArr.push(arr);
    betZhushu = getZxhzNewArrs(fuShiArr).length;
    showPlayName = "前三直选-组选和值";
    showContent = "和值: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 前三组选-混合组选
 */
function suiji_q3hhzx() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        var xHhzx = parseInt(Math.random() * 10);
        var yHhzx = parseInt(Math.random() * 10);
        var zHhzx = parseInt(Math.random() * 10);
        if (xHhzx == yHhzx && yHhzx != zHhzx || xHhzx == zHhzx && zHhzx != yHhzx || yHhzx == zHhzx && zHhzx != xHhzx || xHhzx != yHhzx && yHhzx != zHhzx && zHhzx != xHhzx) {
            arr.push(xHhzx);
            arr.push(yHhzx);
            arr.push(zHhzx);
        }
    }

    showPlayName = "前三组选-混合组选";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前三组选-组六单式
 */
function suiji_q3z6ds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        var xZlfs = parseInt(Math.random() * 10);
        var yZlfs = parseInt(Math.random() * 10);
        var zZlfs = parseInt(Math.random() * 10);
        if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
            arr.push(xZlfs);
            arr.push(yZlfs);
            arr.push(zZlfs);
        }
    }

    showPlayName = "前三组选-组六单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前三组选-组六复式
 */
function suiji_q3z6fs () {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        var xZlfs = parseInt(Math.random() * 10);
        var yZlfs = parseInt(Math.random() * 10);
        var zZlfs = parseInt(Math.random() * 10);
        if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
            arr.push(xZlfs);
            arr.push(yZlfs);
            arr.push(zZlfs);
        }
    }

    showPlayName = "前三组选-组六复式";
    showContent = "组六: ({0},{1},{2})".format(arr[0],arr[1],arr[2]);
    betContent = "{0},{1},{2}".format(arr[0],arr[1],arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}


/**
 * 前三组选-组三单式
 */
function suiji_q3z3ds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        var xZxds = parseInt(Math.random() * 10);
        var yZxds = parseInt(Math.random() * 10);
        var zZxds = parseInt(Math.random() * 10);
        if (xZxds == yZxds && yZxds != zZxds || xZxds == zZxds && zZxds != yZxds || yZxds == zZxds && zZxds != xZxds) {
            arr.push(xZxds);
            arr.push(yZxds);
            arr.push(zZxds);
        }
    }

    showPlayName = "前三组选-组三单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 后三组选-组三复式
 */
function suiji_q3z3fs () {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 2) {
        var x = parseInt(Math.random() * 10);
        var y = parseInt(Math.random() * 10);
        if (x != y) {
            arr.push(x);
            arr.push(y);
        }
    }

    showPlayName = "前三组选-组三复式";
    showContent = "组三: ({0},{1})".format(arr[0],arr[1]);
    betContent = "{0},{1}".format(arr[0],arr[1]);
    betZhushu = 2; //默认两个号码两注
    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 后三直选-跨度
 */
function suiji_q3zxkd () {
    // 初始化变量
    var betZhushu = 0;
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    betZhushu = getKaduNewArrs(arr).length;
    showPlayName = "前三直选-跨度";
    showContent = "跨度: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 前三直选-和值
 */
function suiji_q3zxhz () {
    var betZhushu = 0;
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    betZhushu = getHezNewArrs(arr).length;
    showPlayName = "前三直选-和值";
    showContent = "和值: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 前三直选-组合
 */
function suiji_q3zh () {
    var baiArr =[], shiArr = [], geArr =[];
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    baiArr.push(arr[0]);
    shiArr.push(arr[1]);
    geArr.push(arr[2]);
    betZhushu = (getHszhNewArrs(baiArr, shiArr, geArr)).length
    showPlayName = "前三直选-组合";
    showContent = "万位: ({0}), 千位: ({1}), 百位: ({2})".format(arr[0], arr[1], arr[2]);
    betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 前三直选-单式
 */
function suiji_q3zxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "前三直选-单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前三直选复式
 */
function suiji_q3zxfs () {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "前三直选-复式";
    showContent = "万位: ({0}), 千位: ({1}), 百位: ({2})".format(arr[0], arr[1], arr[2]);
    betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}


/******************************************************/
/**************后三*************/

/**
 * 后三其它-特殊号"
 */
function suiji_h3tsh() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arrTsh = [], newArr = [];
    arrTsh[0] = "对子";
    arrTsh[1] = "顺子";
    arrTsh[2] = "豹子";
    while (newArr.length != 1) {
        var zhiTsh = parseInt(Math.random() * 3);
        newArr.push(arrTsh[parseInt(zhiTsh)]);
    }

    showPlayName = "后三其它-特殊号";
    showContent = "特殊号: (" + newArr[0] + ")";
    betContent = newArr[0];

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 后三其它-后三和值尾数"
 */
function suiji_h3hzws () {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "后三其它-后三和值尾数";
    showContent = "尾数: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}


/**
 * 后三直选-组选包胆
 */
function suiji_h3zxbd () {
    var baoDanArr = [];
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    baoDanArr.push(arr);
    betZhushu = getZxbdNewArrs(baoDanArr).length;
    showPlayName = "后三直选-组选包胆";
    showContent = "包胆: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 后三直选-组选和值
 */
function suiji_h3zuxhz () {
    var fuShiArr = [];
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;

    var tempArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    fuShiArr.push(arr);
    betZhushu = getZxhzNewArrs(fuShiArr).length;
    showPlayName = "后三直选-组选和值";
    showContent = "和值: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 后三组选-混合组选
 */
function suiji_h3hhzx() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        var xHhzx = parseInt(Math.random() * 10);
        var yHhzx = parseInt(Math.random() * 10);
        var zHhzx = parseInt(Math.random() * 10);
        if (xHhzx == yHhzx && yHhzx != zHhzx || xHhzx == zHhzx && zHhzx != yHhzx || yHhzx == zHhzx && zHhzx != xHhzx || xHhzx != yHhzx && yHhzx != zHhzx && zHhzx != xHhzx) {
            arr.push(xHhzx);
            arr.push(yHhzx);
            arr.push(zHhzx);
        }
    }

    showPlayName = "后三组选-混合组选";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 后三组选-组六单式
 */
function suiji_h3z6ds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        var xZlfs = parseInt(Math.random() * 10);
        var yZlfs = parseInt(Math.random() * 10);
        var zZlfs = parseInt(Math.random() * 10);
        if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
            arr.push(xZlfs);
            arr.push(yZlfs);
            arr.push(zZlfs);
        }
    }

    showPlayName = "后三组选-组六单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 后三组选-组六复式
 */
function suiji_h3z6fs () {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        var xZlfs = parseInt(Math.random() * 10);
        var yZlfs = parseInt(Math.random() * 10);
        var zZlfs = parseInt(Math.random() * 10);
        if (xZlfs != yZlfs && yZlfs != zZlfs && zZlfs != xZlfs) {
            arr.push(xZlfs);
            arr.push(yZlfs);
            arr.push(zZlfs);
        }
    }

    showPlayName = "后三组选-组六复式";
    showContent = "组六: ({0},{1},{2})".format(arr[0],arr[1],arr[2]);
    betContent = "{0},{1},{2}".format(arr[0],arr[1],arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}


/**
 * 后三组选-组三单式
 */
function suiji_h3z3ds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        var xZxds = parseInt(Math.random() * 10);
        var yZxds = parseInt(Math.random() * 10);
        var zZxds = parseInt(Math.random() * 10);
        if (xZxds == yZxds && yZxds != zZxds || xZxds == zZxds && zZxds != yZxds || yZxds == zZxds && zZxds != xZxds) {
            arr.push(xZxds);
            arr.push(yZxds);
            arr.push(zZxds);
        }
    }

    showPlayName = "后三组选-组三单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 后三组选-组三复式
 */
function suiji_h3z3fs () {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = 0;

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 2) {
        var x = parseInt(Math.random() * 10);
        var y = parseInt(Math.random() * 10);
        if (x != y) {
            arr.push(x);
            arr.push(y);
        }
    }

    showPlayName = "后三组选-组三复式";
    showContent = "组三: ({0},{1})".format(arr[0],arr[1]);
    betContent = "{0},{1}".format(arr[0],arr[1]);
    betZhushu = 2; //默认两个号码两注
    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 后三直选-跨度
 */
function suiji_h3zxkd () {
    // 初始化变量
    var betZhushu = 0;
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    betZhushu = getKaduNewArrs(arr).length;
    showPlayName = "后三直选-跨度";
    showContent = "跨度: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 后三直选-和值
 */
function suiji_h3zxhz () {
    var betZhushu = 0;
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27];
    var arr = [];
    while (arr.length < 1) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    betZhushu = getHezNewArrs(arr).length;
    showPlayName = "后三直选-和值";
    showContent = "和值: ({0})".format(arr[0]);
    betContent = "{0}".format(arr[0]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 后三直选-组合
 */
function suiji_h3zh () {
    var baiArr =[], shiArr = [], geArr =[];
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';
    var betZhushu = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    baiArr.push(arr[0]);
    shiArr.push(arr[1]);
    geArr.push(arr[2]);
    betZhushu = (getHszhNewArrs(baiArr, shiArr, geArr)).length
    showPlayName = "后三直选-组合";
    showContent = "百位: ({0}), 十位: ({1}), 个位: ({2})".format(arr[0], arr[1], arr[2]);
    betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        betZhushu: betZhushu,
        playGroupId: playGroupId
    };
}

/**
 * 后三直选-单式
 */
function suiji_h3zxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "后三直选-单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + ")";
    betContent = "{0}{1}{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 后三直选复式
 */
function suiji_h3zxfs () {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 3) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "后三直选-复式";
    showContent = "百位: ({0}), 十位: ({1}), 个位: ({2})".format(arr[0], arr[1], arr[2]);
    betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 5星直选复式
 */
function suiji_5xzxfs() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 5) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "五星直选-复式";
    showContent = "万位: ({0}), 千位: ({1}), 百位: ({2}), 十位: ({3}), 个位: ({4})".format(arr[0], arr[1], arr[2], arr[3], arr[4]);
    betContent = "{0}|{1}|{2}|{3}|{4}".format(arr[0], arr[1], arr[2], arr[3], arr[4]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 4星直选复式
 */
function suiji_4xzxfs() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 4) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "四星直选-复式";
    showContent = "千位: ({0}), 百位: ({1}), 十位: ({2}), 个位: ({3})".format(arr[0], arr[1], arr[2], arr[3]);
    betContent = "{0}|{1}|{2}|{3}".format(arr[0], arr[1], arr[2], arr[3]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 5星直选单式
 */
function suiji_5xzxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 5) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "五星直选-单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + "" + arr[3] + "" + arr[4] + ")";
    betContent = "{0}{1}{2}{3}{4}".format(arr[0], arr[1], arr[2], arr[3], arr[4]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 4星直选单式
 */
function suiji_4xzxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var arr = [];
    while (arr.length < 4) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "4星直选-单式";
    showContent = "号码: (" + arr[0] + "" + arr[1] + "" + arr[2] + "" + arr[3] + ")";
    betContent = "{0}{1}{2}{3}".format(arr[0], arr[1], arr[2], arr[3]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前二大小单双
 */
function suiji_q2dxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = ["大", "小", "单", "双"];
    var arr = [];
    while (arr.length < 2) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }
    showPlayName = "前二大小单双";
    showContent = "万位: ({0}), 千位: ({1})".format(arr[0], arr[1]);
    betContent = "{0}|{1}".format(arr[0], arr[1]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}


/**
 * 后二大小单双
 */
function suiji_h2dxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = ["大", "小", "单", "双"];
    var arr = [];
    while (arr.length < 2) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "后二大小单双";
    showContent = "十位: ({0}), 个位: ({1})".format(arr[0], arr[1]);
    betContent = "{0}|{1}".format(arr[0], arr[1]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 前三大小单双
 */
function suiji_q3dxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = ["大", "小", "单", "双"];
    var arr = [];
    while (arr.length < 3) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "后二大小单双";
    showContent = "万位: ({0}), 千位: ({1}), 百位: ({2})".format(arr[0], arr[1], arr[2]);
    betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 后三大小单双
 */
function suiji_h3dxds() {
    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var tempArr = ["大", "小", "单", "双"];
    var arr = [];
    while (arr.length < 3) {
        arr.push(tempArr[parseInt(Math.random() * tempArr.length)]);
    }

    showPlayName = "后三大小单双";
    showContent = "百位: ({0}), 十位: ({1}), 个位: ({2})".format(arr[0], arr[1], arr[2]);
    betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

// 官方玩法数据转换，转换为提交格式
//===============================获取内容算法===================================
function tjzd() {
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
        alert("号码选择不完整，请重新选择");
        return;
    }

    var obj = {};
    //======函数获取=====
    obj.showPlayName = data.showPlayName;
    obj.showContent = data.showContent;
    obj.betContent = data.betContent;
    //======动态获取=====
    obj.betPerMoney = $("#inputMoney").data("money");
    obj.betZhushu = zhushu;
    obj.betBeishu = $("#inputBeishu").data("beishu");
    obj.betMode = getSelectMode();
    obj.betTotalMoney = (obj.betZhushu * obj.betPerMoney * getMode(obj.betMode) * obj.betBeishu).toFixed(3);
    obj.betPlayGroupId = playGroupId;
    obj.betFandian = $("#fandian-bfb").data("value");
    obj.betPlayPl = $("#jiangjin-change").data("value");
    var  strPlId = getPlayPlId();
    if(strPlId.toString().indexOf('|') > 0){
        obj.betPlayPlId = (strPlId.toString().split("|"))[0];
    } else{
        obj.betPlayPlId = getPlayPlId();
    }
    obj.betPlayId = getPlayId();

    clearSelected();
    clearTextarea();
    clearStateTouZhu();
    addYuxuan(obj);
    calcAll();
}
//**************任选4***************
/**
 * 任选4-组选4
 */
function content_rx4zu4() {
    var sanChongHaoArr = [], danHaoArr = [];
    var checkStrArr = [], checkArr = [];

    $.each($(".recl-1007-zux4 ul li[data-name = '三重号'] span.acti"), function (index, value) {
        sanChongHaoArr.push($.trim($(this).find("i").html()));
    });

    $.each($(".recl-1007-zux4 ul li[data-name = '单号'] span.acti"), function (index, value) {
        danHaoArr.push($.trim($(this).find("i").html()));
    });

    $(".re-select-zux4 input[name='position_zux4']:checked").each(function () {
        checkArr.push($(this).val());
    });

    if (checkArr.length < 4) {
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任四组选-组选4";
    showContent = "三重号: (" + sanChongHaoArr.join(",") + "), " + "单号: (" + danHaoArr.join(",") + ")";
    betContent = checkStrArr.join(',') + "|" + sanChongHaoArr.join(",") + "|" + danHaoArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    }
}

/**
 * 任选4-组选6
 */
function content_rx4zu6() {
    var erChongHaoArr = [];
    var checkStrArr = [], checkArr = [];
    $.each($(".recl-1006-zux6 ul li[data-name = '二重号'] span.acti"), function (index, value) {
        erChongHaoArr.push($.trim($(this).find("i").html()));
    });

    $(".re-select-zux6 input[name='position_zux6']:checked").each(function () {
        checkArr.push($(this).val());
    });

    if (checkArr.length < 4) {
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任四组选-组选6";
    showContent = "二重号: (" + erChongHaoArr.join(",") + ")";
    betContent = checkStrArr.join(',') + "|" + erChongHaoArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    }
}

/**
 * 任选4-组选12
 */
function content_rx4zu12() {
    var erChongHaoArr = [], danHaoArr = [];
    var checkStrArr = [], checkArr = [];
    $.each($(".recl-1005-zux12 ul li[data-name = '二重号'] span.acti"), function (index, value) {
        erChongHaoArr.push($.trim($(this).find("i").html()));
    });

    $.each($(".recl-1005-zux12 ul li[data-name = '单号'] span.acti"), function (index, value) {
        danHaoArr.push($.trim($(this).find("i").html()));
    });

    $(".re-select-zux12 input[name='position_zux12']:checked").each(function () {
        checkArr.push($(this).val());
    });

    if (checkArr.length < 4) {
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任四组选-组选12";
    showContent = "二重号: (" + erChongHaoArr.join(",") + "), " + "单号: (" + danHaoArr.join(",") + ")";
    betContent = checkStrArr.join(',') + "|" + erChongHaoArr.join(",") + "|" + danHaoArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    }
}

/**
 * 任选4-组选24
 */
function content_rx4zu24() {
    var zu24Arr = [];
    var checkArr = [], checkStrArr = [];
    $.each($(".recl-1004-zux24 ul li[data-name = '组选24'] span.acti"), function (index, value) {
        zu24Arr.push($.trim($(this).find("i").html()));
    });

    $(".re-select-zux24 input[type='checkbox']:checked").each(function () {
        checkArr.push($(this).val());
    });

    if (checkArr.length < 4) {
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任四组选-组选24";
    showContent = "组选24: (" + zu24Arr.join(",") + ")";
    betContent = checkStrArr.join(',') + "|" + zu24Arr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    }
}

/**
 * 任选4-直选单式
 */
function content_rx4zxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任四直选-直选复式";
    showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
    betContent = strTemp;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    }
}
/**
 * 任选4-直选单式
 */
function content_rx4zxds() {
    var errorStr = '';
    var repeatArr = [], allErrorArr = [];
    var errorArr = [];
    var checkArr = [], checkStrArr = [];
    var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
    var newArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
            newArr.push(arr_new[i]);
        }else{
            if(arr_new[i] != ""){
                errorArr.push(arr_new[i]);
            }
        }
    }

    // repeatArr = newArr.duplicateNew(); //重复号码
    // newArr = newArr.uniqueArr();
    var arrTemp = [];
    $(".re-select-ds input[type='checkbox']:checked").each(function () {
        checkArr.push($(this).val());
    });

    if (checkArr.length < 4) {
        alert("[任选四]至少需要选择4个位置");
        return -1;
    }

    if(newArr.length <= 0){
        return 0;
    }

    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    // if (repeatArr.length > 0) {
    //     allErrorArr.push("自动过滤重复号码:");
    //     for(var r = 0; r < repeatArr.length; r++){
    //         allErrorArr.push(repeatArr[r]);
    //     }
    // }
    if (errorArr.length > 0) {
        allErrorArr.push(" 被过滤掉的错误号码");
        for (var l = 0; l < errorArr.length; l++) {
            allErrorArr.push(errorArr[l]);
        }
    }

    if (allErrorArr.length > 0) {
        for (var e = 0; e < allErrorArr.length; e++) {
            errorStr += allErrorArr[e] + " ";
        }
        alert(errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任四直选-直选单式";
    showContent = "号码: (" + newArr.join(",") + ")";
    betContent = checkStrArr.join(',') + "|" + newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    }
}

//**************任选3***************
/**
 * 任选3-组选和值
 */
function content_rx3zuxhz() {
    var hzArr = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    if (checkArr.length < 3) {
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    $.each($(".recl-1010-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
    })

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    showPlayName = "任三直选-组选和值";
    showContent = "号码: (" + hzArr.join(",") + ")";
    betContent = checkStrArr.join(',') + "|" + hzArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
        playGroupId: playGroupId
    };
}

/**
 * 任选3-混合组选
 */
function content_rx3hhzux() {
    var errorStr = '', zhushu = 0;
    var repeatArr = [], allErrorArr = [];
    var errorArr = [], arrTemp = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-hhzux input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    var textStr = $(".recl-1009-hhzux .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            errorArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var arr = [];
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        arr.push(oneStr);
        arr.push(twoStr);
        arr.push(threeStr);
        arr.sort();
        if (twoStr == threeStr && oneStr == threeStr && twoStr == oneStr) {
            errorArr.push(newArr[n]);
        } else {
            tempArr.push(arr.join(""));
        }
    }
    repeatArr = tempArr.duplicate(); //重复号码
    tempArr = tempArr.uniqueArr(); // 去掉重复号码

    if (checkArr.length < 3) {
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    if (repeatArr.length > 0) {
        allErrorArr.push("自动过滤重复号码:");
        for (var r = 0; r < repeatArr.length; r++) {
            allErrorArr.push(repeatArr[r]);
        }
    }
    if (errorArr.length > 0) {
        allErrorArr.push(" 被过滤掉的错误号码:");
        for (var l = 0; l < errorArr.length; l++) {
            allErrorArr.push(errorArr[l]);
        }
    }

    if (allErrorArr.length > 0) {
        for (var e = 0; e < allErrorArr.length; e++) {
            errorStr += allErrorArr[e] + " ";
        }
        alert($.trim(errorStr));
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任三组选-混合组选";
    showContent = "号码: (" + tempArr.join(',') + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + tempArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选3-组六单式
 */
function content_rx3z6ds() {
    var errorStr = '', zhushu = 0;
    var repeatArr = [], allErrorArr = [];
    var errorArr = [], arrTemp = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-zu6ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    var textStr = $(".recl-1008-zu6ds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            if(arr_new[i] != ""){
                errorArr.push(arr_new[i]);
            }
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var arr = [];
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        arr.push(oneStr);
        arr.push(twoStr);
        arr.push(threeStr);
        arr.sort();
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
            tempArr.push(arr.join(""));
        } else {
            errorArr.push(newArr[n]);
        }
    }

    // repeatArr = tempArr.duplicateNew().uniqueArr(); //重复号码
    // tempArr = tempArr.uniqueArr(); // 去掉重复号码

    if (checkArr.length < 3) {
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    if(tempArr.length <= 0){
        return 0;
    }

    // if (repeatArr.length > 0) {
    //     allErrorArr.push("自动过滤重复号码:");
    //     for (var r = 0; r < repeatArr.length; r++) {
    //         allErrorArr.push(repeatArr[r]);
    //     }
    // }
    if (errorArr.length > 0) {
        allErrorArr.push(" 被过滤掉的错误号码:");
        for (var l = 0; l < errorArr.length; l++) {
            allErrorArr.push(errorArr[l]);
        }
    }

    if (allErrorArr.length > 0) {
        for (var e = 0; e < allErrorArr.length; e++) {
            errorStr += allErrorArr[e] + " ";
        }
        alert($.trim(errorStr));
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任三组选-组六单式";
    showContent = "号码: (" + tempArr.join(',') + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + tempArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选3-组六复式
 */
function content_rx3z6fs() {
    var zuArr = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-zu6fs input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    $.each($(".recl-1007-zu6fs ul li[data-name = '组六'] span.acti"), function (index, value) {
        zuArr.push($.trim($(this).find("i").html()));
    });

    if (checkArr.length < 3) {
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任三组选-组六复式";
    showContent = "号码: (" + zuArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + zuArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选3-组三单式
 */
function content_rx3z3ds() {
    var errorStr = '', zhushu = 0;
    var repeatArr = [], allErrorArr = [];
    var errorArr = [], arrTemp = [];
    var textStr = $(".recl-1006-zu3ds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));

    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-zu3ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    var arr_new = textStr.split(",");

    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            if(arr_new[i] != ""){
                errorArr.push(arr_new[i]);
            }
        }
    }

    for (var n = 0; n < newArr.length; n++) {
        var arr = [];
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        arr.push(oneStr);
        arr.push(twoStr);
        arr.push(threeStr);
        arr.sort();
        if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(arr.join(""));
        } else {
            errorArr.push(newArr[n]);
        }
    }
    // repeatArr = tempArr.duplicateNew().uniqueArr(); //重复号码
    // tempArr = tempArr.uniqueArr(); // 去掉重复号码

    if (checkArr.length < 3) {
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    if(tempArr.length <= 0){
        return 0;
    }

    // if (repeatArr.length > 0) {
    //     allErrorArr.push("自动过滤重复号码:");
    //     for (var r = 0; r < repeatArr.length; r++) {
    //         allErrorArr.push(repeatArr[r]);
    //     }
    // }
    if (errorArr.length > 0) {
        allErrorArr.push(" 被过滤掉的错误号码:");
        for (var l = 0; l < errorArr.length; l++) {
            allErrorArr.push(errorArr[l]);
        }
    }

    if (allErrorArr.length > 0) {
        for (var e = 0; e < allErrorArr.length; e++) {
            errorStr += allErrorArr[e] + " ";
        }
        alert($.trim(errorStr));
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任三组选-组三单式";
    showContent = "号码: (" + tempArr.join(',') + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + tempArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选3-组三复式
 */
function content_rx3z3fs() {
    var zuArr = [], arrTemp = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".recl-1005-zu3Rx3 input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    $.each($(".recl-1005-zu3fs ul li[data-name = '组三'] span.acti"), function (index, value) {
        zuArr.push($.trim($(this).find("i").html()));
    });

    if (checkArr.length < 3) {
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任三组选-组三复式";
    showContent = "号码: (" + zuArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + zuArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选3-直选和值
 */
function content_rx3zxhz() {
    var hzArr = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".recl-1004-hz input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
    });

    if (checkArr.length < 3) {
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任三直选-直选和值";
    showContent = "号码: (" + hzArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + hzArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选3-直选单式
 */
function content_rx3zxds() {
    var errorStr = '';
    var repeatArr = [], allErrorArr = [];
    var errorArr = [];
    var newArr = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();

    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            if (arr_new[i] != "") {
                errorArr.push(arr_new[i]);
            }
        }
    }


    if (checkArr.length < 3) {
        alert("[任选三]至少需要选择3个位置");
        return -1;
    }

    if(newArr.length <= 0){
        return 0;
    }

    if (errorArr.length > 0) {
        allErrorArr.push(" 被过滤掉的错误号码");
        for (var l = 0; l < errorArr.length; l++) {
            allErrorArr.push(errorArr[l]);
        }
    }

    if (allErrorArr.length > 0) {
        for (var e = 0; e < allErrorArr.length; e++) {
            errorStr += allErrorArr[e] + " ";
        }
        alert(errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任三直选-直选单式";
    showContent = "号码: (" + newArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选3-直选复式
 */
function content_rx3zxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任三直选-直选复式";
    showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
    // 转换投注格式
    betContent = strTemp;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

//**************任选2***************
/**
 * 任选二-组选和值
 */
function content_rx2zuxhz() {
    var hzArr = [], arrTemp = [];
    var checkArr = [], checkStrArr = [];
    //选取选中checkbox
    $.each($(".re-select-zuxhz input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    $.each($(".recl-1007-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
    });

    $(".recl-1007-zuxhz input[name='position_zuxhz']:checked").each(function () {
        arrTemp.push($(this).val());
    });
    if (arrTemp.length < 2) {
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任二组选-组选和值";
    showContent = "号码: (" + hzArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + hzArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选二-组选单式
 */
function content_rx2zuxds() {
    var checkStrArr = [], checkArr = [];
    //选取选中checkbox
    $.each($(".re-select-zuxds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    var errorStr = '';
    var repeatArr = [], allErrorArr = [];
    var errorArr = [], arrTemp = [];
    var textStr = $(".recl-1006-zuxds .content_jiang .content_tex").val();
    var newArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
            var oneStr = (arr_new[i].toString()).substr(0, 1);
            var twoStr = (arr_new[i].toString()).substr(1, 1);
            var arr = [];
            arr.push(parseInt(oneStr));
            arr.push(parseInt(twoStr));
            arr.sort();
            newArr.push(arr.join(""));
        } else {
            if (arr_new[i] != "") {
                errorArr.push(arr_new[i]);
            }
        }
    }

    if (checkArr.length < 2) {
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    if(newArr.length <= 0){
        return 0;
    }

    if (errorArr.length > 0) {
        allErrorArr.push(" 被过滤掉的错误号码");
        for (var l = 0; l < errorArr.length; l++) {
            allErrorArr.push(errorArr[l]);
        }
    }

    if (allErrorArr.length > 0) {
        for (var e = 0; e < allErrorArr.length; e++) {
            errorStr += allErrorArr[e] + " ";
        }
        alert(errorStr);
    }

    $(".re-select-zuxds input[type='checkbox']:checked").each(function () {
        arrTemp.push($(this).val());
    });
    if (arrTemp.length < 2) {
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任二组选-组选单式";
    showContent = "号码: (" + newArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选二-组选复式
 */
function content_rx2zuxfs() {
    var checkStrArr = [], checkArr = [];
    //选取选中checkbox
    $.each($(".recl-1005-fs input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    var zuArr = [], arrTemp = [];
    $.each($(".recl-1005-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
        zuArr.push($.trim($(this).find("i").html()));
    });

    if (checkArr.length < 2) {
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任二组选-组选复式";
    showContent = "号码: (" + zuArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + zuArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选二-直选和值
 */
function content_rx2zxhz() {
    var hzArr = [], arrTemp = [], checkStrArr = [], checkArr = [];
    $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
    });
    //选取选中checkbox
    $.each($(".recl-1004-hz input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);

    $(".recl-1004-zxhz input[name='position_hz']:checked").each(function () {
        arrTemp.push($(this).val());
    });
    if (arrTemp.length < 2) {
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任二直选-直选和值";
    showContent = "号码: (" + hzArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + hzArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选二-直选单式
 */
function content_rx2zxds() {
    var checkStrArr = [], checkArr = [];
    var errorStr = '';
    var repeatArr = [], allErrorArr = [];
    var errorArr = [];

    var textStr = $(".recl-1003-zxds .content_jiang .content_tex").val();
    //选取选中checkbox
    $.each($(".re-select-ds input[type='checkbox']:checked"), function (index, value) {
        checkArr.push($(this).val());
    });
    //获取位数字符串
    checkStrArr = getNoWeiStr(checkArr);
    var newArr = [], arrTemp = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
            newArr.push(arr_new[i]);
        } else {
            if (arr_new[i] != "") {
                errorArr.push(arr_new[i]);
            }
        }
    }

    $(".recl-1003-zxds input[name='position_ds']:checked").each(function () {
        arrTemp.push($(this).val());
    });
    if (arrTemp.length < 2) {
        alert("[任选二]至少需要选择2个位置");
        return -1;
    }

    if(newArr.length <= 0){
        return 0;
    }

    if (errorArr.length > 0) {
        allErrorArr.push(" 被过滤掉的错误号码");
        for (var l = 0; l < errorArr.length; l++) {
            allErrorArr.push(errorArr[l]);
        }
    }

    if (allErrorArr.length > 0) {
        for (var e = 0; e < allErrorArr.length; e++) {
            errorStr += allErrorArr[e] + " ";
        }
        alert(errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任二直选-直选单式";
    showContent = "号码: (" + newArr.join(",") + ")";
    // 转换投注格式
    betContent = checkStrArr.join(',') + "|" + newArr.join(',');

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 任选二-直选复式
 */
function content_rx2zxfs(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "任二直选-直选复式";
    showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
    // 转换投注格式
    betContent = strTemp;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

//**************不定位***************
/**
 * 不定位-五星三码
 */
function content_wx3m(){
    var budwArr = [];
    $.each($(".recl-1012-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "五星-五星三码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-五星二码
 */
function content_wxem(){
    var budwArr = [];
    $.each($(".recl-1011-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "五星-五星二码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-五星一码
 */
function content_wxym(){
    var budwArr = [];
    $.each($(".recl-1010-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "五星-五星一码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 不定位-后三二码
 */
function content_h4em(){
    var budwArr = [];
    $.each($(".recl-1009-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "四星-后四二码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-后四一码
 */
function content_h4ym(){
    var budwArr = [];
    $.each($(".recl-1008-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "四星-后四一码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-前四二码
 */
function content_q4em(){
    var budwArr = [];
    $.each($(".recl-1007-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "四星-前四二码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-前四一码
 */
function content_q4ym(){
    var budwArr = [];
    $.each($(".recl-1006-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "四星-前四一码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-后三二码
 */
function content_hsem(){
    var budwArr = [];
    $.each($(".recl-1005-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "三星-后三二码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-后三一码
 */
function content_hsym(){
    var budwArr = [];
    $.each($(".recl-1004-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "三星-后三一码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-前三二码
 */
function content_qsem(){
    var budwArr = [];
    $.each($(".recl-1003-budw ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "三星-前三二码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",")

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 不定位-前三一码
 */
function content_qsym(){
    var budwArr = [];
    $.each($(".cl-1002 ul li[data-name = '不定位'] span.acti"), function (index, value) {
        budwArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "三星-前三一码";
    showContent = "不定位: (" + budwArr.join(",") + ")";
    // 转换投注格式
    betContent = budwArr.join(",")

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

//**************定位胆***************
/**
 * 定位胆
 */
function content_dwd(){
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
    });

    var wanStr = wanArr.length > 0 ? ("万位: (" + wanArr.join(",") + ")") : "";
    var qianStr = qianArr.length > 0 ? (" 千位: (" + qianArr.join(",") + ")") : "";
    var baiStr = baiArr.length > 0 ? (" 百位: (" + baiArr.join(",") + ")") : "";
    var shiStr = shiArr.length > 0 ?  (" 十位: (" + shiArr.join(",") + ")") : "";
    var geStr = geArr.length > 0 ? (" 个位: (" + geArr.join(",") + ")") : "";

    var nowArr = [];
    var strTemp = $.trim(
        (wanStr == ' ' ? ' ' : wanArr.join(",") + "|") +
        (qianStr == ' ' ? ' ': qianArr.join(",") + "|") +
        (baiStr == ' ' ? ' ': baiArr.join(",") + "|") +
        (shiStr == ' ' ? ' ' : shiArr.join(",") + "|") +
        (geStr == ' ' ? ' ': geArr.join(","))
    );

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "定位胆-定位胆";
    showContent = $.trim(wanStr + qianStr + baiStr + shiStr + geStr);
    // 转换投注格式
    betContent = strTemp;

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

//**************前2***************
/**
 * 前二组选-组选包胆
 */
function content_q2zuxbd(){
    var dmArr = [];
    $.each($(".recl-1009-zuxbd ul li[data-name = '胆码'] span.acti"), function (index, value) {
        dmArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前二组选-包胆";
    showContent = "包胆: (" + dmArr.join(",") + ")";
    // 转换投注格式
    betContent = dmArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前二组选-组选和值
 */
function content_q2zuxhz(){
    var hzArr = [];
    $.each($(".recl-1008-zuxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前二组选-和值";
    showContent = "和值: (" + hzArr.join(",") + ")";
    // 转换投注格式
    betContent = hzArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前二组选-组选单式
 */
function content_q2zuxds(){
    var textStr = $(".recl-1007-zuxds .content_jiang .content_tex").val();
    var newArr = [];
    var repeatArr = [], errorArr = [], allErrorArr = [], pairArr = [];
    var errorStr = '';
    var zhushu = 0;
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
            var strTemp = "", strTemp1 = "";
            var str1 = arr_new[i].toString();
            var str2 = arr_new[i].toString();
            strTemp = str1.substr(0, 1);
            strTemp1 = str2.substr(1, 1);
            if (strTemp != strTemp1) {
                var tempArr = [];
                tempArr.push(parseInt(strTemp));
                tempArr.push(parseInt(strTemp1));
                tempArr.sort();
                newArr.push(tempArr.join(""));
            } else {
                pairArr.push(arr_new[i]);
            }
        } else {
            if (arr_new[i] != "") {
                errorArr.push(arr_new[i]);
            }
        }
    }

    if(newArr.length <= 0){
        return 0;
    }

    if (pairArr.length > 0) {
        allErrorArr.push("自动过滤对子号码:");
        for (var p = 0; p < pairArr.length; p++) {
            allErrorArr.push(pairArr[p]);
        }
    }

    if (errorArr.length > 0) {
        allErrorArr.push(" 被过滤掉的错误号码");
        for (var l = 0; l < errorArr.length; l++) {
            allErrorArr.push(errorArr[l]);
        }
    }

    if (allErrorArr.length > 0) {
        for (var e = 0; e < allErrorArr.length; e++) {
            errorStr += allErrorArr[e] + " ";
        }
        alert(errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前二组选-单式";
    showContent = "号码: (" + newArr + ")";
    // 转换投注格式
    betContent = newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前二组选-组选复式
 */
function content_q2zuxfs(){
    var zuxArr = [];
    $.each($(".recl-1006-zuxfs ul li[data-name = '组选'] span.acti"), function (index, value) {
        zuxArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前二组选-复式";
    showContent = "组选: (" + zuxArr.join(",") + ")";
    // 转换投注格式
    betContent = zuxArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 前二直选-直选跨度
 */
function content_q2zxkd(){
    var kdArr = [];
    $.each($(".recl-1005-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
        kdArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前二直选-跨度";
    showContent = "跨度: (" + kdArr.join(",") + ")";
    // 转换投注格式
    betContent = kdArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前二直选-直选和值
 */
function content_q2zxhz(){
    var hzArr = [];
    $.each($(".recl-1004-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前二直选-和值";
    showContent = "和值: (" + hzArr.join(",") + ")";
    // 转换投注格式
    betContent = hzArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前二直选-直选单式
 */
function content_q2zxds(){
    var textStr = $(".recl-1003 .content_jiang .content_tex").val();
    var newArr = [];
    var errorArr = [];
    var errorStr = '';
    var zhushu = 0;
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 2) {
            newArr.push(arr_new[i]);
        } else {
            if(arr_new[i] != ''){
                errorArr.push(arr_new[i]);
            }
        }
    }

    if(newArr.length <= 0){
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + "";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前二直选-单式";
    showContent = "号码: (" + newArr + ")";
    // 转换投注格式
    betContent = newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前二直选-直选复式
 */
function content_q2zxfs(){
    var wanArr = [], qianArr = [];
    $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前二直选-复式";
    showContent = "万位：({0})，千位：({1})".format(
        wanArr.join(","),
        qianArr.join(",")
    );
    // 转换投注格式
    betContent = gfwf_2xfs(
        wanArr,
        qianArr
    );

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

//*************************前三***************************
/**
 * 前三组选-特殊号
 */
function content_q3tsh(){
    var thArr = [];
    $.each($(".cl-1015-tsh ul li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
        thArr.push($.trim($(this).html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三其它-特殊号";
    showContent = "特殊号: (" + thArr.join(",") + ")";
    betContent = thArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 前三组选-前三和值尾数
 */
function content_q3hzws(){
    var hzArr = [];
    $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三其它-前三和值尾数";
    showContent = "和值尾数: (" + hzArr.join(",") + ")";
    betContent = hzArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 前三组选-组选包胆
 */
function content_q3zxbd(){
    var bdArr = [];
    $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
        bdArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三组选-组选包胆";
    showContent = "包胆: (" + bdArr.join(",") + ")";
    betContent = bdArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三组选-组选和值
 */
function content_q3zuxhz(){
    var heZhiArr = [];
    $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        heZhiArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三组选-组选和值";
    showContent = "和值: (" + heZhiArr.join(",") + ")";
    betContent = heZhiArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三组选-组六混合
 */
function content_q3hhzx(){
    var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            errorArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        } else {
            errorArr.push(newArr[n]);
        }
    }

    if(tempArr.length <= 0){
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三组选-混合组选";
    showContent = "号码: (" + tempArr.join(',') + ")";
    betContent = tempArr.join(',');

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三组选-组六单式
 */
function content_q3z6ds(){
    var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        } else {
            if(newArr[n] != ''){
              errorArr.push(newArr[n]);
            }
        }
    }

    if(tempArr.length <= 0){
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三组选-组六单式";
    showContent = "号码: (" + tempArr.join(',') + ")";
    betContent = tempArr.join(',');

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三组选-组六复式
 */
function content_q3z6fs(){
    var zuLiuArr = [];

    $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
        zuLiuArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三组选-组六复式";
    showContent = "组六: (" + zuLiuArr.join(",") + ")";
    betContent = zuLiuArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三组选-组三单式
 */
function content_q3z3ds() {
    var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        } else {
            if(newArr[n] != ''){
                errorArr.push(newArr[n]);
            }
        }
    }
    if(tempArr.length <= 0){
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }


    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三组选-组三单式";
    showContent = "号码: (" + tempArr.join(',') + ")";
    betContent = tempArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三组选-组三复式
 */
function content_q3z3fs() {
    var zuSanArr = [];
    $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
        zuSanArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三组选-组三复式";
    showContent = "组三: (" + zuSanArr.join(",") + ")";
    betContent = zuSanArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三直选-前三组合
 */
function content_q3zh() {
    var wanArr = [], qianArr = [], baiArr = [];
    $.each($(".cl-1004-hszh ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1004-hszh ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1004-hszh ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三直选-组合";
    showContent = "万位：({0})，千位：({1})，百位：({2})".format(
        wanArr.join(","),
        qianArr.join(","),
        baiArr.join(",")
    );
    betContent = gfwf_3xfs(
        wanArr,
        qianArr,
        baiArr
    );

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 后三直选-跨度
 */
function content_q3zxkd() {
    var kaDuArr = [];
    $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
        kaDuArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三直选-跨度";
    showContent = "跨度: (" + kaDuArr.join(",") + ")";
    betContent = kaDuArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三直选-和值
 */
function content_q3zxhz() {
    var heZhiArr = [];
    var zhushu = 0;
    $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        heZhiArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三直选-和值";
    showContent = "和值: (" + heZhiArr.join(",") + ")";
    betContent = heZhiArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 前三直选-直选单式
 */
function content_q3zxds() {
    var textStr = $(".content_jiang .content_tex").val();
    var newArr = [];
    var errorArr = [];
    var errorStr = '';
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            if(arr_new[i] != ''){
                errorArr.push(arr_new[i]);
            }
        }
    }

    if (newArr.length <= 0) {
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三直选-单式";
    showContent = "号码: (" + newArr.join(",") + ")";
    betContent = newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三直选复式
 */
function content_q3zxfs() {
    var wanArr = [], qianArr = [], shiArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "前三直选-复式";
    showContent = "万位：({0})，千位：({1})，百位：({2})".format(
        wanArr.join(","),
        qianArr.join(","),
        shiArr.join(",")
    );
    betContent = gfwf_3xfs(
        wanArr,
        qianArr,
        shiArr
    );

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}



/**********************************/
/**后三**/
/**
 * 后三组选-特殊号
 */
function content_h3tsh(){
    var thArr = [];
    $.each($(".cl-1015-tsh ul li[data-name = '特殊号'] span.acti_tsh"), function (index, value) {
        thArr.push($.trim($(this).html()));
    });

    if (thArr.length <= 0) {
        alert("至少选择1注号码才能投注");
        return false;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三其它-特殊号";
    showContent = "特殊号: (" + thArr.join(",") + ")";
    betContent = thArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 后三组选-后三和值尾数
 */
function content_h3hzws(){
    var hzArr = [];
    $.each($(".cl-1014-hzws ul li[data-name = '和值尾数'] span.acti"), function (index, value) {
        hzArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三其它-后三和值尾数";
    showContent = "和值尾数: (" + hzArr.join(",") + ")";
    betContent = hzArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 后三组选-组选包胆
 */
function content_h3zxbd(){
    var bdArr = [];
    $.each($(".cl-1013-zxbd ul li[data-name = '包胆'] span.acti"), function (index, value) {
        bdArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三组选-组选包胆";
    showContent = "包胆: (" + bdArr.join(",") + ")";
    betContent = bdArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三组选-组选和值
 */
function content_h3zuxhz(){
    var heZhiArr = [];
    $.each($(".cl-1012-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        heZhiArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三组选-组选和值";
    showContent = "和值: (" + heZhiArr.join(",") + ")";
    betContent = heZhiArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三组选-组六混合
 */
function content_h3hhzx(){
    var textStr = $(".cl-1011-hhzx .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            errorArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr || oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        } else {
            errorArr.push(newArr[n]);
        }
    }

    if (tempArr.length <= 0) {
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三组选-混合组选";
    showContent = "号码: (" + tempArr.join(',') + ")";
    betContent = tempArr.join(',');

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三组选-组六单式
 */
function content_h3z6ds(){
    var textStr = $(".cl-1010-zlds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (twoStr != threeStr && oneStr != threeStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        } else {
            if(newArr[n] != ''){
              errorArr.push(newArr[n]);
            }
        }
    }

    if (tempArr.length <= 0) {
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三组选-组六单式";
    showContent = "号码: (" + tempArr.join(',') + ")";
    betContent = tempArr.join(',');

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三组选-组六复式
 */
function content_h3z6fs(){
    var zuLiuArr = [];

    $.each($(".cl-1009-zlfs ul li[data-name = '组六'] span.acti"), function (index, value) {
        zuLiuArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三组选-组六复式";
    showContent = "组六: (" + zuLiuArr.join(",") + ")";
    betContent = zuLiuArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三组选-组三单式
 */
function content_h3z3ds() {
    var textStr = $(".cl-1008-zsds .content_jiang .content_tex").val();
    var newArr = [], tempArr = [], errorStr = '', errorArr = [];
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        }
    }
    for (var n = 0; n < newArr.length; n++) {
        var temp = newArr[n].toString();
        var oneStr = temp.substr(0, 1);
        var twoStr = temp.substr(1, 1);
        var threeStr = temp.substr(2, 1);
        if (oneStr == twoStr && twoStr != threeStr || twoStr == threeStr && oneStr != threeStr || threeStr == oneStr && twoStr != oneStr) {
            tempArr.push(newArr[n]);
        } else {
            if (newArr[n] != '') {
                errorArr.push(newArr[n]);
            }
        }
    }
    if (tempArr.length <= 0) {
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }


    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三组选-组三单式";
    showContent = "号码: (" + tempArr.join(',') + ")";
    betContent = tempArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三组选-组三复式
 */
function content_h3z3fs() {
    var zuSanArr = [];
    $.each($(".cl-1007-zsfs ul li[data-name = '组三'] span.acti"), function (index, value) {
        zuSanArr.push($.trim($(this).find("i").html()));
    });


    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三组选-组三复式";
    showContent = "组三: (" + zuSanArr.join(",") + ")";
    betContent = zuSanArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三直选-后三组合
 */
function content_h3zh() {
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1004-hszh ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1004-hszh ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1004-hszh ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三直选-组合";
    showContent = "百位：({0})，十位：({1})，个位：({2})".format(
        baiArr.join(","),
        shiArr.join(","),
        geArr.join(",")
    );
    betContent = gfwf_3xfs(
        baiArr,
        shiArr,
        geArr
    );

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent,
    };

}


/**
 * 后三直选-跨度
 */
function content_h3zxkd() {
    var kaDuArr = [];
    $.each($(".cl-1006-zxkd ul li[data-name = '跨度'] span.acti"), function (index, value) {
        kaDuArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三直选-跨度";
    showContent = "跨度: (" + kaDuArr.join(",") + ")";
    betContent = kaDuArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三直选-和值
 */
function content_h3zxhz() {
    var heZhiArr = [];
    var zhushu = 0;
    $.each($(".cl-1005-zxhz ul li[data-name = '和值'] span.acti"), function (index, value) {
        heZhiArr.push($.trim($(this).find("i").html()));
    });

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三直选-和值";
    showContent = "和值: (" + heZhiArr.join(",") + ")";
    betContent = heZhiArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}


/**
 * 后三直选-直选单式
 */
function content_h3zxds() {
    var textStr = $(".content_jiang .content_tex").val();
    var newArr = [];
    var errorArr = [];
    var errorStr = '';
    var zhushu = 0;
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 3) {
            newArr.push(arr_new[i]);
        } else {
            if (arr_new[i] != '') {
                errorArr.push(arr_new[i]);
            }
        }
    }

    if (newArr.length <= 0) {
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三直选-单式";
    showContent = "号码: (" + newArr.join("") + ")";
    betContent = newArr.join("");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三直选复式
 */
function content_h3zxfs() {
    var baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
    });

    if(baiArr.length <= 0|| shiArr.length <= 0|| geArr.length <= 0){
        return;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "后三直选-复式";
    showContent = "百位：({0})，十位：({1})，个位：({2})".format(
        baiArr.join(","),
        shiArr.join(","),
        geArr.join(",")
    );
    betContent = gfwf_3xfs(
        baiArr,
        shiArr,
        geArr
    );

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 5星直选复式
 */
function content_5xzxfs() {
    var wanArr = [], qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        wanArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
    });

    if(wanArr.length <= 0 || qianArr.length <= 0|| baiArr.length <= 0|| shiArr.length <= 0|| geArr.length <= 0){
        return;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "五星直选-复式";
    showContent = "万位：({0})，千位：({1})，百位：({2})，十位：({3})，个位：({4})".format(
        wanArr.join(","),
        qianArr.join(","),
        baiArr.join(","),
        shiArr.join(","),
        geArr.join(",")
    );
    betContent = gfwf_5xfs(
        wanArr,
        qianArr,
        baiArr,
        shiArr,
        geArr
    );

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 4星直选复式
 */
function content_4xzxfs() {
    var qianArr = [], baiArr = [], shiArr = [], geArr = [];
    $.each($(".cl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        qianArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '百'] span.acti"), function (index, value) {
        baiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '十'] span.acti"), function (index, value) {
        shiArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".cl-1002 ul li[data-name = '个'] span.acti"), function (index, value) {
        geArr.push($.trim($(this).find("i").html()));
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
    betContent = gfwf_4xfs(
        qianArr,
        baiArr,
        shiArr,
        geArr
    );

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 5星直选单式
 */
function content_5xzxds() {
    var textStr = $(".content_jiang .content_tex").val();
    var newArr = [];
    var errorArr = [];
    var errorStr = '';
    var zhushu = 0;
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 5) {
            newArr.push(arr_new[i]);
        } else {
            if(arr_new[i] != ''){
              errorArr.push(arr_new[i]);
            }
        }
    }
    if (newArr.length <= 0) {
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "五星直选-单式";
    showContent = "号码: (" + newArr.join(",") + ")";
    betContent = newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 4星直选单式
 */
function content_4xzxds() {
    var textStr = $(".content_jiang .content_tex").val();
    var newArr = [];
    var errorArr = [];
    var errorStr = '';
    var zhushu = 0;
    textStr = $.trim(textStr.replace(/[^0-9]/g, ','));
    var arr_new = textStr.split(",");
    for (var i = 0; i < arr_new.length; i++) {
        if (arr_new[i].toString().length > 0 && arr_new[i].toString().length == 4) {
            newArr.push(arr_new[i]);
        } else {
            if(arr_new[i] != ''){
                errorArr.push(arr_new[i]);
            }
        }
    }

    if (newArr.length <= 0) {
        return 0;
    }

    if (errorArr.length > 0) {
        for (var e = 0; e < errorArr.length; e++) {
            errorStr += errorArr[e] + ",";
        }
        alert("被过滤掉的错误号码" + errorStr);
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    showPlayName = "四星直选-单式";
    showContent = "号码: (" + newArr.join(",") + ")";
    betContent = newArr.join(",");

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前2大小单双
 */
function content_q2dxds() {
    var zhushu = 0;
    var dxdsWArr = [], dxdsQArr = [], tempArr = [];

    $.each($(".recl-1002 ul li[data-name = '万'] span.acti"), function (index, value) {
        dxdsWArr.push($.trim($(this).find("i").html()));
    });

    $.each($(".recl-1002 ul li[data-name = '千'] span.acti"), function (index, value) {
        dxdsQArr.push($.trim($(this).find("i").html()));
    });

    for (var n = 0; n < dxdsWArr.length; n++) {
        for (var m = 0; m < dxdsQArr.length; m++) {
            tempArr.push(dxdsWArr[n] + "" + dxdsQArr[m]);
        }
    }

    if(dxdsWArr.length <= 0 || dxdsQArr.length <= 0){
        return;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = [
        dxdsWArr.join(","),
        dxdsQArr.join(",")
    ];

    showPlayName = "前二大小单双";
    showContent = "万位: ({0}), 千位: ({1})".format(arr[0], arr[1]);
    betContent = "{0}|{1}".format(arr[0], arr[1]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后2大小单双
 */
function content_h2dxds() {
    var zhushu = 0;
    var dxdsSArr = [], dxdsGArr = [], tempArr = [];
    $.each($(".recl-1003-h2dxds ul li[data-name = '十'] span.acti"), function (index, value) {
        dxdsSArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1003-h2dxds ul li[data-name = '个'] span.acti"), function (index, value) {
        dxdsGArr.push($.trim($(this).find("i").html()));
    });

    for (var n = 0; n < dxdsSArr.length; n++) {
        for (var m = 0; m < dxdsGArr.length; m++) {
            tempArr.push(dxdsSArr[n] + "" + dxdsGArr[m]);
        }
    }
    if(dxdsSArr.length <= 0 || dxdsGArr.length <= 0){
        return;
    }

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = [
        dxdsSArr.join(","),
        dxdsGArr.join(",")
    ];

    showPlayName = "后二大小单双";
    showContent = "十位: ({0}), 个位: ({1})".format(arr[0], arr[1]);
    betContent = "{0}|{1}".format(arr[0], arr[1]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 前三大小单双
 */
function content_q3dxds() {
    var zhushu = 0;
    var dxdsWArr = [], dxdsQArr = [], dxdsBArr = [], tempArr = [];
    $.each($(".recl-1004-q3dxds ul li[data-name = '万'] span.acti"), function (index, value) {
        dxdsWArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1004-q3dxds ul li[data-name = '千'] span.acti"), function (index, value) {
        dxdsQArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1004-q3dxds ul li[data-name = '百'] span.acti"), function (index, value) {
        dxdsBArr.push($.trim($(this).find("i").html()));
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

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = [
        dxdsWArr.join(","),
        dxdsQArr.join(","),
        dxdsBArr.join(",")
    ];

    showPlayName = "前三大小单双";
    showContent = "万位: ({0}), 千位: ({1}), 百位: ({2})".format(arr[0], arr[1], arr[2]);
    betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 后三大小单双
 */
function content_h3dxds() {
    var zhushu = 0;
    var dxdsBArr = [],dxdsSArr = [], dxdsGArr = [], tempArr = [];
    $.each($(".recl-1005-h3dxds ul li[data-name = '百'] span.acti"), function (index, value) {
        dxdsBArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1005-h3dxds ul li[data-name = '十'] span.acti"), function (index, value) {
        dxdsSArr.push($.trim($(this).find("i").html()));
    });
    $.each($(".recl-1005-h3dxds ul li[data-name = '个'] span.acti"), function (index, value) {
        dxdsGArr.push($.trim($(this).find("i").html()));
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

    // 初始化变量
    var showPlayName = '';
    var showContent = '';
    var betContent = '';

    var arr = [
        dxdsBArr.join(","),
        dxdsSArr.join(","),
        dxdsGArr.join(",")
    ];

    showPlayName = "后三大小单双";
    showContent = "百位: ({0}), 十位: ({1}), 个位: ({2})".format(arr[0], arr[1], arr[2]);
    betContent = "{0}|{1}|{2}".format(arr[0], arr[1], arr[2]);

    return {
        showPlayName: showPlayName,
        showContent: showContent,
        betContent: betContent
    };
}

/**
 * 时时彩-五星复选
 * @param wanArr 万数组
 * @param qianArr 千数组
 * @param baiArr 百数组
 * @param shiArr 十数组
 * @param geArr 个数组
 */
function gfwf_5xfs(
    wanArr,
    qianArr,
    baiArr,
    shiArr,
    geArr
) {
    var tmpStr_1 = wanArr.join(",");
    var tmpStr_2 = qianArr.join(",");
    var tmpStr_3 = baiArr.join(",");
    var tmpStr_4 = shiArr.join(",");
    var tmpStr_5 = geArr.join(",");

    return "{0}|{1}|{2}|{3}|{4}".format(
        tmpStr_1,
        tmpStr_2,
        tmpStr_3,
        tmpStr_4,
        tmpStr_5
    );
}

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

function getMode(mode) {
    if (mode == 1) {    // 元
        return 1;
    } else if (mode == 2) { // 角
        return 0.1;
    } else if (mode == 3) { // 分
        return 0.01;
    } else if (mode == 4) { // 厘
        return 0.001;
    }
    return;
}

// 获取选中的模式
function getSelectMode() {
    var mode = $("#inputMoneyStr").val();
    if (mode == '元') {
        return 1;
    } else if (mode == '角') {
        return 2;
    } else if (mode == '分') {
        return 3;
    }
    return;
}

// 最近最新开奖时间（默认50期），用于追号模板渲染
function renderZhuihao(obj) {
    ajaxRequest({
        url: CONFIG.BASEURL + "ssc/ajaxGetLatestOpenTimeList.json",
        data: {
            playGroupId: playGroupId   // 全局变量
        },
        success: function(json) {
            if (json.result != 1) {
                return;
            }

            $("#zhInfo").show();
            $("#zhInfo .list_wrap_zh").eq(1).show();
            $(obj).parent().attr("sp", "1");

            // 模板逻辑处理.......
//                var html = "";
        }
    });
}

// 获取当前选中位数
function getWeiStr(arr){
    var checkArr = [], checkStrArr = [];
    checkArr = arr;
    for(var i = 0; i < checkArr.length; i++){
        if(checkArr[i] == 1){
            checkStrArr.push("万位");
        } else if(checkArr[i] == 2){
            checkStrArr.push("千位");
        } else if(checkArr[i] == 3){
            checkStrArr.push("百位");
        } else if(checkArr[i] == 4){
            checkStrArr.push("十位");
        } else if(checkArr[i] == 5){
            checkStrArr.push("个位");
        }
    }
    return checkStrArr;
}

function getNoWeiStr(arr){
    var checkArr = [], checkStrArr = [];
    checkArr = arr;
    for(var i = 0; i < checkArr.length; i++){
        if(checkArr[i] == 1){
            checkStrArr.push("万");
        } else if(checkArr[i] == 2){
            checkStrArr.push("千");
        } else if(checkArr[i] == 3){
            checkStrArr.push("百");
        } else if(checkArr[i] == 4){
            checkStrArr.push("十");
        } else if(checkArr[i] == 5){
            checkStrArr.push("个");
        }
    }
    return checkStrArr;
}


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

//清除注单内容按钮
function clearZhudan() {
    var len = $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").length;
    if(len > 0) {
        showTishi1Template();
        $("#block_close").click(function(){
            closeLayer();
        });
        $(".del-Tishi").parent().parent().css({"border":"6px solid #ccc","border-radius":"8px","top":"150px"});
    } else{
        showTishi2Template();
        $("#block_close").click(function(){
            closeLayer2();
        });
        $(".del-TishiType2").parent().parent().css({"border":"6px solid #ccc","border-radius":"8px","top":"150px"});
    }

}

//清除投注内容确认按钮
function enterType1(){
    var len = $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").length;
    if(len > 0) {
        closeLayer();
        clearContent();
    } else{
        closeLayer();
    }
}

//清除注单提示取消按钮
function cancelType1() {
    closeLayer();
}

//清除
function enterType2(){
    closeLayer2();
}

//清除注单内容
function clearContent(){
    $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").remove();
    calcAll();
    if ($("#zhudanList .re_touzhu_tem").length <= 0) {
        $("#zhudanList").html('<tr class="noRecord"><td>暂无投注项</td></tr>');
    }
}

//清除手动输入区域
function clearTextarea() {
    $(".content_jiang textarea").val('');
    clearStateTouZhu();
}

//清除手动选中内容
function clearSelected() {
    $(".Single .layout .Pick ul li span.acti").removeClass("acti");
    $(".re-5x-i i.acti").removeClass("acti");
    $(".Pick ul li span.acti_tsh").removeClass("acti_tsh");
    $("#zhushuInfo").data("zhushu", 0);
    if(typeof clearStateTouZhu == 'function'){
        clearStateTouZhu();
    }
}

function closeLayer(){
    if (layerTishi1 != null) {
        layer.close(layerTishi1);
        layerTishi1 = null;
    }
}

function closeLayer2(){
    if (layerTishi2 != null) {
        layer.close(layerTishi2);
        layerTishi2 = null;
    }
}

function closeLayerInsert(){
    if (layerInfoInsert != null) {
        layer.close(layerInfoInsert);
        layerInfoInsert = null;
    }
}

// 当前注数内容状态
function calcAll() {
    var totalZhushu = 0;
    var totalBeishu = 0;
    var totalMoney = 0;
    var valStr = $("#inputBeishu").val();
    var str = '';

    $(".Detailedlist .layout .boxt .left table tbody tr.re_touzhu_tem").each(function () {
        totalZhushu = add(totalZhushu, $(this).data("bet_zhushu"));
        totalBeishu = add(totalBeishu, $(this).data("bet_beishu"));
        totalMoney = add(totalMoney, $(this).data("bet_total_money"));
    });

    str = '总投 <span>' + totalZhushu + '</span> 注，<span>' + totalBeishu + '</span> 倍，共 <span class="totalM">' + totalMoney + '</span> 元。';
    $("#zongtouInfo").html(str);
    $(".i_beishu").html(valStr);
}
