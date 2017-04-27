<%@ page import="project28.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="cl-960">
    特串@<font class="red pl" data-plid="6725"></font>
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="1">
                <span class="ball-2 ball-red">01</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="2">
                <span class="ball-2 ball-red">02</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="3">
                <span class="ball-2 ball-blue">03</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4">
                <span class="ball-2 ball-blue">04</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="5">
                <span class="ball-2 ball-green">05</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="6">
                <span class="ball-2 ball-green">06</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="7">
                <span class="ball-2 ball-red">07</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="8">
                <span class="ball-2 ball-red">08</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="9">
                <span class="ball-2 ball-blue">09</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="10">
                <span class="ball-2 ball-blue">10</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="11">
                <span class="ball-2 ball-green">11</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="12">
                <span class="ball-2 ball-red">12</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="13">
                <span class="ball-2 ball-red">13</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="14">
                <span class="ball-2 ball-blue">14</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="15">
                <span class="ball-2 ball-blue">15</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="16">
                <span class="ball-2 ball-green">16</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="17">
                <span class="ball-2 ball-green">17</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="18">
                <span class="ball-2 ball-red">18</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="19">
                <span class="ball-2 ball-red">19</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="20">
                <span class="ball-2 ball-blue">20</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="21">
                <span class="ball-2 ball-green">21</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="22">
                <span class="ball-2 ball-green">22</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="23">
                <span class="ball-2 ball-red">23</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="24">
                <span class="ball-2 ball-red">24</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="25">
                <span class="ball-2 ball-blue">25</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="26">
                <span class="ball-2 ball-blue">26</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="27">
                <span class="ball-2 ball-green">27</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="28">
                <span class="ball-2 ball-green">28</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="29">
                <span class="ball-2 ball-red">29</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="30">
                <span class="ball-2 ball-red">30</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="31">
                <span class="ball-2 ball-blue">31</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="32">
                <span class="ball-2 ball-green">32</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="33">
                <span class="ball-2 ball-green">33</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="34">
                <span class="ball-2 ball-red">34</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="35">
                <span class="ball-2 ball-red">35</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="36">
                <span class="ball-2 ball-blue">36</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="37">
                <span class="ball-2 ball-blue">37</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="38">
                <span class="ball-2 ball-green">38</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="39">
                <span class="ball-2 ball-green">39</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="40">
                <span class="ball-2 ball-red">40</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="41">
                <span class="ball-2 ball-blue">41</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="42">
                <span class="ball-2 ball-blue">42</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        <tr>
            <td data-name="43">
                <span class="ball-2 ball-green">43</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="44">
                <span class="ball-2 ball-green">44</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="45">
                <span class="ball-2 ball-red">45</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>


        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="46">
                <span class="ball-2 ball-red">46</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="47">
                <span class="ball-2 ball-blue">47</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="48">
                <span class="ball-2 ball-blue">48</span>
                <span class="pl" data-plid="6725"></span>
            </td>
            <td data-name="49">
                <span class="ball-2 ball-green">49</span>
                <span class="pl" data-plid="6725"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<input type="hidden" data-plid="6725" id="pl"/>
<script>
    var playGroupId = 6;
    var playId = 208;
    var playGroupName = '特串';

    function getZhudan(inputMoney, number) {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        var arr = getFlagArrs(tmp, 2);
        if (arr.length == 0) {
            Tools.alert("请至少选择2个号码");
            return;
        }
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };
        $.each(arr, function(index, value){
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: "特串-" + value.split(" ").join(","),
                playPlId: $("#pl").data('plid'),
                playPl: $("#pl").data("pl")
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        });
        return betForm;
    }
    function getZhushu() {
        var tmp = [];
        $(".cl-604 table tbody tr td.active").each(function () {
            tmp.push($(this).data("name"));
        });
        if (tmp.length < 2) {
            return 0;
        }
        var arr = getFlagArrs(tmp, 2);
        return arr.length;
    }
</script>
