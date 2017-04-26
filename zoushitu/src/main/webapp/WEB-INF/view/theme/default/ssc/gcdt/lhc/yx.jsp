<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.petsathall.project.common.utils.DateUtils" %>
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
    一肖/尾
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="鼠">
                <span>鼠</span>
                <span class="pl" data-plid="6747"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">10</span>
                <span class="ball-2 ball-green">22</span>
                <span class="ball-2 ball-red">34</span>
                <span class="ball-2 ball-red">46</span>
            </td>
        </tr>
        <tr>
            <td data-name="牛">
                <span>牛</span>
                <span class="pl" data-plid="6748"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">9</span>
                <span class="ball-2 ball-green">21</span>
                <span class="ball-2 ball-green">33</span>
                <span class="ball-2 ball-red">45</span>
            </td>
        </tr>
        <tr>
            <td data-name="虎">
                <span>虎</span>
                <span class="pl" data-plid="6749"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">8</span>
                <span class="ball-2 ball-blue">20</span>
                <span class="ball-2 ball-green">32</span>
                <span class="ball-2 ball-green">44</span>
            </td>
        </tr>
        <tr>
            <td data-name="兔">
                <span>兔</span>
                <span class="pl" data-plid="6750"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">7</span>
                <span class="ball-2 ball-red">19</span>
                <span class="ball-2 ball-blue">31</span>
                <span class="ball-2 ball-green">43</span>
            </td>
        </tr>
        <tr>
            <td data-name="龙">
                <span>龙</span>
                <span class="pl" data-plid="6751"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">6</span>
                <span class="ball-2 ball-red">18</span>
                <span class="ball-2 ball-red">30</span>
                <span class="ball-2 ball-blue">42</span>
            </td>
        </tr>
        <tr>
            <td data-name="蛇">
                <span>蛇</span>
                <span class="pl" data-plid="6752"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">5</span>
                <span class="ball-2 ball-green">17</span>
                <span class="ball-2 ball-red">29</span>
                <span class="ball-2 ball-blue">41</span>
            </td>
        </tr>
        <tr>
            <td data-name="马">
                <span>马</span>
                <span class="pl" data-plid="6753"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">4</span>
                <span class="ball-2 ball-green">16</span>
                <span class="ball-2 ball-green">28</span>
                <span class="ball-2 ball-blue">40</span>
            </td>
        </tr>
        <tr>
            <td data-name="羊">
                <span>羊</span>
                <span class="pl" data-plid="6754"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">3</span>
                <span class="ball-2 ball-blue">15</span>
                <span class="ball-2 ball-green">27</span>
                <span class="ball-2 ball-green">39</span>
            </td>
        </tr>
        <tr>
            <td data-name="猴">
                <span>猴</span>
                <span class="pl" data-plid="6755"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">2</span>
                <span class="ball-2 ball-blue">14</span>
                <span class="ball-2 ball-blue">26</span>
                <span class="ball-2 ball-green">38</span>
            </td>
        </tr>
        <tr>
            <td data-name="鸡">
                <span>鸡</span>
                <span class="pl" data-plid="6756"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">1</span>
                <span class="ball-2 ball-red">13</span>
                <span class="ball-2 ball-blue">25</span>
                <span class="ball-2 ball-blue">37</span>
                <span class="ball-2 ball-green">49</span>
            </td>
        </tr>
        <tr>
            <td data-name="狗">
                <span>狗</span>
                <span class="pl" data-plid="6757"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">12</span>
                <span class="ball-2 ball-red">24</span>
                <span class="ball-2 ball-blue">36</span>
                <span class="ball-2 ball-blue">48</span>
            </td>
        </tr>
        <tr>
            <td data-name="猪">
                <span>猪</span>
                <span class="pl" data-plid="6758"></span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">11</span>
                <span class="ball-2 ball-red">23</span>
                <span class="ball-2 ball-red">35</span>
                <span class="ball-2 ball-blue">47</span>
            </td>
        </tr>
        </tbody>
    </table>
</div>


<div class="cl-603">
    尾数
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="0尾">
                <span>0尾</span>
                <span class="pl" data-plid="6759"></span>
            </td>
            <td data-name="1尾">
                <span>1尾</span>
                <span class="pl" data-plid="6760"></span>
            </td>
        </tr>
        <tr>
            <td data-name="2尾">
                <span>2尾</span>
                <span class="pl" data-plid="6761"></span>
            </td>
            <td data-name="3尾">
                <span>3尾</span>
                <span class="pl" data-plid="6762"></span>
            </td>
        </tr>
        <tr>
            <td data-name="4尾">
                <span>4尾</span>
                <span class="pl" data-plid="6763"></span>
            </td>
            <td data-name="5尾">
                <span>5尾</span>
                <span class="pl" data-plid="6764"></span>
            </td>
        </tr>
        <tr>
            <td data-name="6尾">
                <span>6尾</span>
                <span class="pl" data-plid="6765"></span>
            </td>
            <td data-name="7尾">
                <span>7尾</span>
                <span class="pl" data-plid="6766"></span>
            </td>
        </tr>
        <tr>
            <td data-name="8尾">
                <span>8尾</span>
                <span class="pl" data-plid="6767"></span>
            </td>
            <td data-name="9尾">
                <span>9尾</span>
                <span class="pl" data-plid="6768"></span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 6;
    var playId = 210;
    var playGroupName = '一肖/尾';

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

