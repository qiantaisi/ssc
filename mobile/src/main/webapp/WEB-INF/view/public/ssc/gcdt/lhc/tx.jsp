<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="project38.api.common.utils.DateUtils" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>

<div class="cl-603">
    特码生肖
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="鼠">
                <span>鼠</span>
                <span class="pl" data-plid="6769"></span>
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
                <span class="pl" data-plid="6770"></span>
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
                <span class="pl" data-plid="6771"></span>
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
                <span class="pl" data-plid="6772"></span>
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
                <span class="pl" data-plid="6773"></span>
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
                <span class="pl" data-plid="6774"></span>
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
                <span class="pl" data-plid="6775"></span>
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
                <span class="pl" data-plid="6776"></span>
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
                <span class="pl" data-plid="6777"></span>
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
                <span class="pl" data-plid="6778"></span>
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
                <span class="pl" data-plid="6779"></span>
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
                <span class="pl" data-plid="6780"></span>
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

<script>
    var playGroupId = 6;
    var playId = 211;
    var playGroupName = '特肖';

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
