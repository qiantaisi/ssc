<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
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
    正码A
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="正码A-1">
                <span class="ball-2 ball-red">01</span>
                <span class="pl" data-plid="6100"></span>
            </td>
            <td data-name="正码A-2">
                <span class="ball-2 ball-red">02</span>
                <span class="pl" data-plid="6101"></span>
            </td>
            <td data-name="正码A-3">
                <span class="ball-2 ball-blue">03</span>
                <span class="pl" data-plid="6102"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-4">
                <span class="ball-2 ball-blue">04</span>
                <span class="pl" data-plid="6103"></span>
            </td>
            <td data-name="正码A-5">
                <span class="ball-2 ball-green">05</span>
                <span class="pl" data-plid="6104"></span>
            </td>
            <td data-name="正码A-6">
                <span class="ball-2 ball-green">06</span>
                <span class="pl" data-plid="6105"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-7">
                <span class="ball-2 ball-red">07</span>
                <span class="pl" data-plid="6106"></span>
            </td>
            <td data-name="正码A-8">
                <span class="ball-2 ball-red">08</span>
                <span class="pl" data-plid="6107"></span>
            </td>
            <td data-name="正码A-9">
                <span class="ball-2 ball-blue">09</span>
                <span class="pl" data-plid="6108"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-10">
                <span class="ball-2 ball-blue">10</span>
                <span class="pl" data-plid="6109"></span>
            </td>
            <td data-name="正码A-11">
                <span class="ball-2 ball-green">11</span>
                <span class="pl" data-plid="6110"></span>
            </td>
            <td data-name="正码A-12">
                <span class="ball-2 ball-red">12</span>
                <span class="pl" data-plid="6111"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-13">
                <span class="ball-2 ball-red">13</span>
                <span class="pl" data-plid="6112"></span>
            </td>
            <td data-name="正码A-14">
                <span class="ball-2 ball-blue">14</span>
                <span class="pl" data-plid="6113"></span>
            </td>
            <td data-name="正码A-15">
                <span class="ball-2 ball-blue">15</span>
                <span class="pl" data-plid="6114"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-16">
                <span class="ball-2 ball-green">16</span>
                <span class="pl" data-plid="6115"></span>
            </td>
            <td data-name="正码A-17">
                <span class="ball-2 ball-green">17</span>
                <span class="pl" data-plid="6116"></span>
            </td>
            <td data-name="正码A-18">
                <span class="ball-2 ball-red">18</span>
                <span class="pl" data-plid="6117"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-19">
                <span class="ball-2 ball-red">19</span>
                <span class="pl" data-plid="6118"></span>
            </td>
            <td data-name="正码A-20">
                <span class="ball-2 ball-blue">20</span>
                <span class="pl" data-plid="6119"></span>
            </td>
            <td data-name="正码A-21">
                <span class="ball-2 ball-green">21</span>
                <span class="pl" data-plid="6120"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-22">
                <span class="ball-2 ball-green">22</span>
                <span class="pl" data-plid="6121"></span>
            </td>
            <td data-name="正码A-23">
                <span class="ball-2 ball-red">23</span>
                <span class="pl" data-plid="6122"></span>
            </td>
            <td data-name="正码A-24">
                <span class="ball-2 ball-red">24</span>
                <span class="pl" data-plid="6123"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-25">
                <span class="ball-2 ball-blue">25</span>
                <span class="pl" data-plid="6124"></span>
            </td>
            <td data-name="正码A-26">
                <span class="ball-2 ball-blue">26</span>
                <span class="pl" data-plid="6125"></span>
            </td>
            <td data-name="正码A-27">
                <span class="ball-2 ball-green">27</span>
                <span class="pl" data-plid="6126"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-28">
                <span class="ball-2 ball-green">28</span>
                <span class="pl" data-plid="6127"></span>
            </td>
            <td data-name="正码A-29">
                <span class="ball-2 ball-red">29</span>
                <span class="pl" data-plid="6128"></span>
            </td>
            <td data-name="正码A-30">
                <span class="ball-2 ball-red">30</span>
                <span class="pl" data-plid="6129"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-31">
                <span class="ball-2 ball-blue">31</span>
                <span class="pl" data-plid="6130"></span>
            </td>
            <td data-name="正码A-32">
                <span class="ball-2 ball-green">32</span>
                <span class="pl" data-plid="6131"></span>
            </td>
            <td data-name="正码A-33">
                <span class="ball-2 ball-green">33</span>
                <span class="pl" data-plid="6132"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-34">
                <span class="ball-2 ball-red">34</span>
                <span class="pl" data-plid="6133"></span>
            </td>
            <td data-name="正码A-35">
                <span class="ball-2 ball-red">35</span>
                <span class="pl" data-plid="6134"></span>
            </td>
            <td data-name="正码A-36">
                <span class="ball-2 ball-blue">36</span>
                <span class="pl" data-plid="6135"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-37">
                <span class="ball-2 ball-blue">37</span>
                <span class="pl" data-plid="6136"></span>
            </td>
            <td data-name="正码A-38">
                <span class="ball-2 ball-green">38</span>
                <span class="pl" data-plid="6137"></span>
            </td>
            <td data-name="正码A-39">
                <span class="ball-2 ball-green">39</span>
                <span class="pl" data-plid="6138"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-40">
                <span class="ball-2 ball-red">40</span>
                <span class="pl" data-plid="6139"></span>
            </td>
            <td data-name="正码A-41">
                <span class="ball-2 ball-blue">41</span>
                <span class="pl" data-plid="6140"></span>
            </td>
            <td data-name="正码A-42">
                <span class="ball-2 ball-blue">42</span>
                <span class="pl" data-plid="6141"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-43">
                <span class="ball-2 ball-green">43</span>
                <span class="pl" data-plid="6142"></span>
            </td>
            <td data-name="正码A-44">
                <span class="ball-2 ball-green">44</span>
                <span class="pl" data-plid="6143"></span>
            </td>
            <td data-name="正码A-45">
                <span class="ball-2 ball-blue">45</span>
                <span class="pl" data-plid="6144"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
            <td data-name="正码A-46">
                <span class="ball-2 ball-red">46</span>
                <span class="pl" data-plid="6145"></span>
            </td>
            <td data-name="正码A-47">
                <span class="ball-2 ball-blue">47</span>
                <span class="pl" data-plid="6146"></span>
            </td>
        </tr>
        </tbody>
    </table>
    <table>
        <tbody>
        <tr>
        <td data-name="正码A-48">
            <span class="ball-2 ball-blue">48</span>
            <span class="pl" data-plid="6147"></span>
        </td>
        <td data-name="正码A-49">
            <span class="ball-2 ball-green">49</span>
            <span class="pl" data-plid="6148"></span>
        </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="cl-603">
    正码A
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="正码A-总大">
                <span>总大</span>
                <span class="pl" data-plid="6153"></span>
            </td>
            <td data-name="正码A-总小">
                <span>总小</span>
                <span class="pl" data-plid="6154"></span>
            </td>
        </tr>
        <tr>
            <td data-name="正码A-总单">
                <span>总单</span>
                <span class="pl" data-plid="6155"></span>
            </td>
            <td data-name="正码A-总双">
                <span>总双</span>
                <span class="pl" data-plid="6156"></span>
            </td>
        </tr>
</tbody>
</table>
</div>

<script>
    var playGroupId = 6;
    var playId = 205;
    var playGroupName = '正码A';

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
