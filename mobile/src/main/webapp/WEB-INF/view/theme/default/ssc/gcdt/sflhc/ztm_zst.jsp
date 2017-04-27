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

<div class="cl-603">
    正三特
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="正三特-1">
                <span class="ball-2 ball-red">01</span>
                <span class="pl" data-plid="13500"></span>
            </td>
            <td data-name="正三特-2">
                <span class="ball-2 ball-red">02</span>
                <span class="pl" data-plid="13511"></span>
            </td>
            <td data-name="正三特-3">
                <span class="ball-2 ball-blue">03</span>
                <span class="pl" data-plid="13522"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-4">
                <span class="ball-2 ball-blue">04</span>
                <span class="pl" data-plid="13533"></span>
            </td>
            <td data-name="正三特-5">
                <span class="ball-2 ball-green">05</span>
                <span class="pl" data-plid="13544"></span>
            </td>
            <td data-name="正三特-6">
                <span class="ball-2 ball-green">06</span>
                <span class="pl" data-plid="13545"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-7">
                <span class="ball-2 ball-red">07</span>
                <span class="pl" data-plid="13546"></span>
            </td>
            <td data-name="正三特-8">
                <span class="ball-2 ball-red">08</span>
                <span class="pl" data-plid="13547"></span>
            </td>
            <td data-name="正三特-9">
                <span class="ball-2 ball-blue">09</span>
                <span class="pl" data-plid="13548"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-10">
                <span class="ball-2 ball-blue">10</span>
                <span class="pl" data-plid="13501"></span>
            </td>
            <td data-name="正三特-11">
                <span class="ball-2 ball-green">11</span>
                <span class="pl" data-plid="13502"></span>
            </td>
            <td data-name="正三特-12">
                <span class="ball-2 ball-red">12</span>
                <span class="pl" data-plid="13503"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-13">
                <span class="ball-2 ball-red">13</span>
                <span class="pl" data-plid="13504"></span>
            </td>
            <td data-name="正三特-14">
                <span class="ball-2 ball-blue">14</span>
                <span class="pl" data-plid="13505"></span>
            </td>
            <td data-name="正三特-15">
                <span class="ball-2 ball-blue">15</span>
                <span class="pl" data-plid="13506"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-16">
                <span class="ball-2 ball-green">16</span>
                <span class="pl" data-plid="13507"></span>
            </td>
            <td data-name="正三特-17">
                <span class="ball-2 ball-green">17</span>
                <span class="pl" data-plid="13508"></span>
            </td>
            <td data-name="正三特-18">
                <span class="ball-2 ball-red">18</span>
                <span class="pl" data-plid="13509"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-19">
                <span class="ball-2 ball-red">19</span>
                <span class="pl" data-plid="13510"></span>
            </td>
            <td data-name="正三特-20">
                <span class="ball-2 ball-blue">20</span>
                <span class="pl" data-plid="13512"></span>
            </td>
            <td data-name="正三特-21">
                <span class="ball-2 ball-green">21</span>
                <span class="pl" data-plid="13513"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-22">
                <span class="ball-2 ball-green">22</span>
                <span class="pl" data-plid="13514"></span>
            </td>
            <td data-name="正三特-23">
                <span class="ball-2 ball-red">23</span>
                <span class="pl" data-plid="13515"></span>
            </td>
            <td data-name="正三特-24">
                <span class="ball-2 ball-red">24</span>
                <span class="pl" data-plid="13516"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-25">
                <span class="ball-2 ball-blue">25</span>
                <span class="pl" data-plid="13517"></span>
            </td>
            <td data-name="正三特-26">
                <span class="ball-2 ball-blue">26</span>
                <span class="pl" data-plid="13518"></span>
            </td>
            <td data-name="正三特-27">
                <span class="ball-2 ball-green">27</span>
                <span class="pl" data-plid="13519"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-28">
                <span class="ball-2 ball-green">28</span>
                <span class="pl" data-plid="13520"></span>
            </td>
            <td data-name="正三特-29">
                <span class="ball-2 ball-red">29</span>
                <span class="pl" data-plid="13521"></span>
            </td>
            <td data-name="正三特-30">
                <span class="ball-2 ball-red">30</span>
                <span class="pl" data-plid="13523"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-31">
                <span class="ball-2 ball-blue">31</span>
                <span class="pl" data-plid="13524"></span>
            </td>
            <td data-name="正三特-32">
                <span class="ball-2 ball-green">32</span>
                <span class="pl" data-plid="13525"></span>
            </td>
            <td data-name="正三特-33">
                <span class="ball-2 ball-green">33</span>
                <span class="pl" data-plid="13526"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-34">
                <span class="ball-2 ball-red">34</span>
                <span class="pl" data-plid="13527"></span>
            </td>
            <td data-name="正三特-35">
                <span class="ball-2 ball-red">35</span>
                <span class="pl" data-plid="13528"></span>
            </td>
            <td data-name="正三特-36">
                <span class="ball-2 ball-blue">36</span>
                <span class="pl" data-plid="13529"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-37">
                <span class="ball-2 ball-blue">37</span>
                <span class="pl" data-plid="13530"></span>
            </td>
            <td data-name="正三特-38">
                <span class="ball-2 ball-green">38</span>
                <span class="pl" data-plid="13531"></span>
            </td>
            <td data-name="正三特-39">
                <span class="ball-2 ball-green">39</span>
                <span class="pl" data-plid="13532"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-40">
                <span class="ball-2 ball-red">40</span>
                <span class="pl" data-plid="13534"></span>
            </td>
            <td data-name="正三特-41">
                <span class="ball-2 ball-blue">41</span>
                <span class="pl" data-plid="13535"></span>
            </td>
            <td data-name="正三特-42">
                <span class="ball-2 ball-blue">42</span>
                <span class="pl" data-plid="13536"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-43">
                <span class="ball-2 ball-green">43</span>
                <span class="pl" data-plid="13537"></span>
            </td>
            <td data-name="正三特-44">
                <span class="ball-2 ball-green">44</span>
                <span class="pl" data-plid="13538"></span>
            </td>
            <td data-name="正三特-45">
                <span class="ball-2 ball-red">45</span>
                <span class="pl" data-plid="13539"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="正三特-46">
                <span class="ball-2 ball-red">46</span>
                <span class="pl" data-plid="13540"></span>
            </td>
            <td data-name="正三特-47">
                <span class="ball-2 ball-blue">47</span>
                <span class="pl" data-plid="13541"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="正三特-48">
                <span class="ball-2 ball-blue">48</span>
                <span class="pl" data-plid="13542"></span>
            </td>
            <td data-name="正三特-49">
                <span class="ball-2 ball-green">49</span>
                <span class="pl" data-plid="13543"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>


<div class="cl-603">
    正三特
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="正三特-单">
                <span>单</span>
                <span class="pl" data-plid="13549"></span>
            </td>
            <td data-name="正三特-双">
                <span>双</span>
                <span class="pl" data-plid="13550"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-大">
                <span>大</span>
                <span class="pl" data-plid="13553"></span>
            </td>
            <td data-name="正三特-小">
                <span>小</span>
                <span class="pl" data-plid="13554"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正三特-合单">
                <span>合单</span>
                <span class="pl" data-plid="13551"></span>
            </td>
            <td data-name="正三特-合双">
                <span>合双</span>
                <span class="pl" data-plid="13552"></span>
            </td>
        </tr>

        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="正三特-红波">
                <span>红波</span>
                <span class="pl" data-plid="13555"></span>
            </td>
            <td data-name="正三特-蓝波">
                <span>蓝波</span>
                <span class="pl" data-plid="13557"></span>
            </td>
            <td data-name="正三特-绿波">
                <span>绿波</span>
                <span class="pl" data-plid="13556"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>


<script>
    var playGroupId = 22;
    var playId = 473;
    var playGroupName = '正特码';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".cl-604 table tbody tr td.active").each(function () {
            betForm.sscBetList.push({
                playGroupName: playGroupName,
                playGroupId: playGroupId,
                number: number,
                playId: playId,
                zhushu: 1,
                perMoney: inputMoney,
                content: $(this).data("name"),
                playPlId: $(this).find(".pl").data("plid"),
                playPl: $(this).find(".pl").data("pl")
            });
            betForm.totalMoney = add(betForm.totalMoney, inputMoney);
            betForm.totalZhushu = add(betForm.totalZhushu, 1);
        });
        return betForm;
    }

    function getZhushu() {
        return $(".cl-604 table tbody tr td.active").length;
    }
</script>
