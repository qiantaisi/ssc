<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="lot-content clearfix">
    <div class="fl main-left re-main-left">
        <div class="table-common">
            <table width="100%" border="1" class="kstable">
                <thead>
                <tr>
                    <th colspan="12"><strong>二同号单选@<span class="pl red" data-plid="11810"></span></strong></th>
                </tr>
                <tr>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                    <th>号码</th>
                    <th>选择</th>
                </tr>
                </thead>

                <tbody>

                <tr>
                    <td><strong class="pl">11</strong></td>
                    <td><input type="checkbox" data-name="11"></td>

                    <td><strong class="pl">22</strong></td>
                    <td><input type="checkbox" data-name="22"></td>

                    <td><strong class="pl">33</strong></td>
                    <td><input type="checkbox" data-name="33"></td>

                    <td><strong class="pl">44</strong></td>
                    <td><input type="checkbox" data-name="44"></td>

                    <td><strong class="pl">55</strong></td>
                    <td><input type="checkbox" data-name="55"></td>

                    <td><strong class="pl">66</strong></td>
                    <td><input type="checkbox" data-name="66"></td>
                </tr>

                <tr>
                    <td><strong class="pl">1</strong></td>
                    <td><input type="checkbox" data-name="1"></td>

                    <td><strong class="pl">2</strong></td>
                    <td><input type="checkbox" data-name="2"></td>

                    <td><strong class="pl">3</strong></td>
                    <td><input type="checkbox" data-name="3"></td>

                    <td><strong class="pl">4</strong></td>
                    <td><input type="checkbox" data-name="4"></td>

                    <td><strong class="pl">5</strong></td>
                    <td><input type="checkbox" data-name="5"></td>

                    <td><strong class="pl">6</strong></td>
                    <td><input type="checkbox" data-name="6"></td>
                </tr>


                </tbody>

                <tfoot>
                <tr>
                    <td colspan="12">
                        <c:import url="../common/toptouzhu.jsp">
                            <c:param name="flagGroup" value="11"/>
                            <c:param name="navGroup" value="2"/>
                        </c:import>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>

        <c:import url="common/bottom_zs.jsp"/>
    </div>

    <div class="fr main-right cl-10 re-main-right"></div>
</div>
<c:import url="../common/subPageCommonJs.jsp"/>

<input type="hidden" data-plid="11810" id="pl_jsks"/>

<script>

    //同一组选项只能单项选择
   $(".table-common .kstable tbody tr td").find("input[type='checkbox']").click(function (e) {
       e.stopPropagation(); //阻止冒泡事件 （点击checkbox时 阻止td被点击）
       var obj = $(this);
       changeStatus(obj);
   });

   //单击单元格选中checkbox
    $(".table-common .kstable tbody tr td").click(function () {
        var flag = $(this).children()[0].hasAttribute('type');
        if(flag == false){
            return;
        }

        var checkFlag = $(this).children().is(":checked");
        var obj =  $(this).children();
        if(checkFlag == false){
            $(this).children().prop("checked",true);
            changeStatus(obj);
        }else if(checkFlag == true){
            $(this).children().attr("checked",false);
            changeStatus(obj);
        }
    });

   //改变当前checkbox状态
    function changeStatus(obj) {
        var data = $(obj).data("name");
        if(data/10 > 1){
            var name = data.toString().substr(1);
            var flag = $("input[data-name='" + name + "']").is(":checked");
            if(flag == true){
                $("input[data-name='"+name+"']").attr("checked",false);
            }
        }else{
            var onename = parseInt(data + '' + data);
            var flag = $("input[data-name='" + onename + "']").is(":checked");
            if(flag == true){
                $("input[data-name='" + onename + "']").attr("checked",false);
            }
        }
    }

</script>
<script>
    var playGroupId = 21;
    var playId = 471;
    var playGroupName = '二同号单选';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        var oneArr = [], twoArr = [];

        $(".main-left .table-common input").each(function() {
            if ($(this).is(":checked")) {
                var num = $(this).data('name');
                if(num == 11 || num == 22 || num == 33 || num == 44 || num == 55 || num == 66){
                    oneArr.push($(this).data('name'));
                }else if((num == 1 || num == 2 || num == 3 || num == 4 || num == 5 || num == 6)){
                    twoArr.push($(this).data('name'));
                }
            }
        });

        if (oneArr.length < 1) {
            Tools.error('双个数字组至少选择一个号码');
            return;
        }
        if (twoArr.length < 1) {
            Tools.error('单个数字组至少选择一个号码');
            return;
        }

        var dataArr = [];
        if (oneArr.length > 0) {
            var tmp = [];
            $.each(oneArr, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }

        if (twoArr.length > 0) {
            var tmp = [];
            $.each(twoArr, function(index, value) {
                tmp.push(value);
            });
            dataArr.push(tmp);
        }

        var inputMoney = $("#inputMoney").val();
        if (typeof inputMoney == 'undefined' || !inputMoney) {
            Tools.toast("请输入正确的金额");
            return;
        }
        for (var i = 0; i < dataArr[0].length; ++i) {
            for (var j = 0; j < dataArr[1].length; ++j) {

                    betForm.sscBetList.push({
                        playGroupName: playGroupName,
                        playGroupId: playGroupId,
                        number: $("#number").data("number"),
                        playId: playId,
                        zhushu: 1,
                        perMoney: inputMoney,
                        content: dataArr[0][i] + ',' + dataArr[1][j],
                        playPlId: $("#pl_jsks").data("plid"),
                        playPl: $("#pl_jsks").data("pl")
                    });
                    betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                    betForm.totalZhushu = add(betForm.totalZhushu, 1);
            }
        }
        return betForm;
    }

    function checkZhudan() {
        var arr = [];
        $(".main-left .table-common input").each(function() {
            if ($(this).is(":checked")) {
                arr.push($(this).data('name'));
            }
        });

        if (arr.length < 2) {
            Tools.error('请选择2个及以上号码');
            return;
        }
        return true;
    }
</script>