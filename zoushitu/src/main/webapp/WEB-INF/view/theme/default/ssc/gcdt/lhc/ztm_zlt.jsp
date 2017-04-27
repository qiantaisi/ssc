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
    正六特
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="正六特-1">
                <span class="ball-2 ball-red">01</span>
                <span class="pl" data-plid="6579"></span>
            </td>
            <td data-name="正六特-2">
                <span class="ball-2 ball-red">02</span>
                <span class="pl" data-plid="6580"></span>
            </td>
            <td data-name="正六特-3">
                <span class="ball-2 ball-blue">03</span>
                <span class="pl" data-plid="6581"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-4">
                <span class="ball-2 ball-blue">04</span>
                <span class="pl" data-plid="6582"></span>
            </td>
            <td data-name="正六特-5">
                <span class="ball-2 ball-green">05</span>
                <span class="pl" data-plid="6583"></span>
            </td>
            <td data-name="正六特-6">
                <span class="ball-2 ball-green">06</span>
                <span class="pl" data-plid="6584"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-7">
                <span class="ball-2 ball-red">07</span>
                <span class="pl" data-plid="6585"></span>
            </td>
            <td data-name="正六特-8">
                <span class="ball-2 ball-red">08</span>
                <span class="pl" data-plid="6586"></span>
            </td>
            <td data-name="正六特-9">
                <span class="ball-2 ball-blue">09</span>
                <span class="pl" data-plid="6587"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-10">
                <span class="ball-2 ball-blue">10</span>
                <span class="pl" data-plid="6588"></span>
            </td>
            <td data-name="正六特-11">
                <span class="ball-2 ball-green">11</span>
                <span class="pl" data-plid="6589"></span>
            </td>
            <td data-name="正六特-12">
                <span class="ball-2 ball-red">12</span>
                <span class="pl" data-plid="6590"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-13">
                <span class="ball-2 ball-red">13</span>
                <span class="pl" data-plid="6591"></span>
            </td>
            <td data-name="正六特-14">
                <span class="ball-2 ball-blue">14</span>
                <span class="pl" data-plid="6592"></span>
            </td>
            <td data-name="正六特-15">
                <span class="ball-2 ball-blue">15</span>
                <span class="pl" data-plid="6593"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-16">
                <span class="ball-2 ball-green">16</span>
                <span class="pl" data-plid="6594"></span>
            </td>
            <td data-name="正六特-17">
                <span class="ball-2 ball-green">17</span>
                <span class="pl" data-plid="6595"></span>
            </td>
            <td data-name="正六特-18">
                <span class="ball-2 ball-red">18</span>
                <span class="pl" data-plid="6596"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-19">
                <span class="ball-2 ball-red">19</span>
                <span class="pl" data-plid="6597"></span>
            </td>
            <td data-name="正六特-20">
                <span class="ball-2 ball-blue">20</span>
                <span class="pl" data-plid="6598"></span>
            </td>
            <td data-name="正六特-21">
                <span class="ball-2 ball-green">21</span>
                <span class="pl" data-plid="6599"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-22">
                <span class="ball-2 ball-green">22</span>
                <span class="pl" data-plid="6600"></span>
            </td>
            <td data-name="正六特-23">
                <span class="ball-2 ball-red">23</span>
                <span class="pl" data-plid="6601"></span>
            </td>
            <td data-name="正六特-24">
                <span class="ball-2 ball-red">24</span>
                <span class="pl" data-plid="6602"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-25">
                <span class="ball-2 ball-blue">25</span>
                <span class="pl" data-plid="6603"></span>
            </td>
            <td data-name="正六特-26">
                <span class="ball-2 ball-blue">26</span>
                <span class="pl" data-plid="6604"></span>
            </td>
            <td data-name="正六特-27">
                <span class="ball-2 ball-green">27</span>
                <span class="pl" data-plid="6605"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-28">
                <span class="ball-2 ball-green">28</span>
                <span class="pl" data-plid="6606"></span>
            </td>
            <td data-name="正六特-29">
                <span class="ball-2 ball-red">29</span>
                <span class="pl" data-plid="6607"></span>
            </td>
            <td data-name="正六特-30">
                <span class="ball-2 ball-red">30</span>
                <span class="pl" data-plid="6608"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-31">
                <span class="ball-2 ball-blue">31</span>
                <span class="pl" data-plid="6609"></span>
            </td>
            <td data-name="正六特-32">
                <span class="ball-2 ball-green">32</span>
                <span class="pl" data-plid="6610"></span>
            </td>
            <td data-name="正六特-33">
                <span class="ball-2 ball-green">33</span>
                <span class="pl" data-plid="6611"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-34">
                <span class="ball-2 ball-red">34</span>
                <span class="pl" data-plid="6612"></span>
            </td>
            <td data-name="正六特-35">
                <span class="ball-2 ball-red">35</span>
                <span class="pl" data-plid="6613"></span>
            </td>
            <td data-name="正六特-36">
                <span class="ball-2 ball-blue">36</span>
                <span class="pl" data-plid="6614"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-37">
                <span class="ball-2 ball-blue">37</span>
                <span class="pl" data-plid="6615"></span>
            </td>
            <td data-name="正六特-38">
                <span class="ball-2 ball-green">38</span>
                <span class="pl" data-plid="6616"></span>
            </td>
            <td data-name="正六特-39">
                <span class="ball-2 ball-green">39</span>
                <span class="pl" data-plid="6617"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-40">
                <span class="ball-2 ball-red">40</span>
                <span class="pl" data-plid="6618"></span>
            </td>
            <td data-name="正六特-41">
                <span class="ball-2 ball-blue">41</span>
                <span class="pl" data-plid="6619"></span>
            </td>
            <td data-name="正六特-42">
                <span class="ball-2 ball-blue">42</span>
                <span class="pl" data-plid="6620"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-43">
                <span class="ball-2 ball-green">43</span>
                <span class="pl" data-plid="6621"></span>
            </td>
            <td data-name="正六特-44">
                <span class="ball-2 ball-green">44</span>
                <span class="pl" data-plid="6622"></span>
            </td>
            <td data-name="正六特-45">
                <span class="ball-2 ball-red">45</span>
                <span class="pl" data-plid="6623"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="正六特-46">
                <span class="ball-2 ball-red">46</span>
                <span class="pl" data-plid="6624"></span>
            </td>
            <td data-name="正六特-47">
                <span class="ball-2 ball-blue">47</span>
                <span class="pl" data-plid="6625"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
        <td data-name="正六特-48">
            <span class="ball-2 ball-blue">48</span>
            <span class="pl" data-plid="6626"></span>
        </td>
        <td data-name="正六特-49">
            <span class="ball-2 ball-green">49</span>
            <span class="pl" data-plid="6627"></span>
        </td>
        </tr>
        </tbody>
    </table>
</div>


<div class="cl-603">
    正六特
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="正六特-单">
                <span>单</span>
                <span class="pl" data-plid="6628"></span>
            </td>
            <td data-name="正六特-双">
                <span>双</span>
                <span class="pl" data-plid="6629"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-大">
                <span>大</span>
                <span class="pl" data-plid="6630"></span>
            </td>
            <td data-name="正六特-小">
                <span>小</span>
                <span class="pl" data-plid="6631"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正六特-合单">
                <span>合单</span>
                <span class="pl" data-plid="6636"></span>
            </td>
            <td data-name="正六特-合双">
                <span>合双</span>
                <span class="pl" data-plid="6637"></span>
            </td>
        </tr>

        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="正六特-红波">
                <span>红波</span>
                <span class="pl" data-plid="6638"></span>
            </td>
            <td data-name="正六特-蓝波">
                <span>蓝波</span>
                <span class="pl" data-plid="6639"></span>
            </td>
            <td data-name="正六特-绿波">
                <span>绿波</span>
                <span class="pl" data-plid="6640"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>


<script>
    var playGroupId = 6;
    var playId = 206;
    var playGroupName = '正特码';

    function getZhudan(inputMoney, number) {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".cl-604 table tbody tr td.active").each(function() {
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
