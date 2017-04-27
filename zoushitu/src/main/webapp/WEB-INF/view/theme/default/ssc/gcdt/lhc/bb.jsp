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
    半波
</div>
<div class="cl-604">
    <table>
        <tbody>
        <tr>
            <td data-name="红单">
                <span>红单</span>
                <span class="pl" data-plid="6729">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">1</span>
                <span class="ball-2 ball-red">7</span>
                <span class="ball-2 ball-red">13</span>
                <span class="ball-2 ball-red">19</span>
                <span class="ball-2 ball-red">23</span>
                <span class="ball-2 ball-red">29</span>
                <span class="ball-2 ball-red">35</span>
                <span class="ball-2 ball-red">45</span>
            </td>
        </tr>
        <tr>
            <td data-name="红双">
                <span>红双</span>
                <span class="pl" data-plid="6730">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">2</span>
                <span class="ball-2 ball-red">8</span>
                <span class="ball-2 ball-red">12</span>
                <span class="ball-2 ball-red">18</span>
                <span class="ball-2 ball-red">24</span>
                <span class="ball-2 ball-red">30</span>
                <span class="ball-2 ball-red">34</span>
                <span class="ball-2 ball-red">40</span>
                <span class="ball-2 ball-red">46</span>
            </td>
        </tr>
        <tr>
            <td data-name="红大">
                <span>红大</span>
                <span class="pl" data-plid="6731">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">29</span>
                <span class="ball-2 ball-red">30</span>
                <span class="ball-2 ball-red">34</span>
                <span class="ball-2 ball-red">35</span>
                <span class="ball-2 ball-red">40</span>
                <span class="ball-2 ball-red">45</span>
                <span class="ball-2 ball-red">46</span>
            </td>
        </tr>
        <tr>
            <td data-name="红小">
                <span>红小</span>
                <span class="pl" data-plid="6732">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">1</span>
                <span class="ball-2 ball-red">2</span>
                <span class="ball-2 ball-red">7</span>
                <span class="ball-2 ball-red">8</span>
                <span class="ball-2 ball-red">12</span>
                <span class="ball-2 ball-red">13</span>
                <span class="ball-2 ball-red">18</span>
                <span class="ball-2 ball-red">19</span>
                <span class="ball-2 ball-red">23</span>
                <span class="ball-2 ball-red">24</span>
            </td>
        </tr>
        <tr>
            <td data-name="红合单">
                <span>红合单</span>
                <span class="pl" data-plid="6741">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">1</span>
                <span class="ball-2 ball-red">7</span>
                <span class="ball-2 ball-red">12</span>
                <span class="ball-2 ball-red">18</span>
                <span class="ball-2 ball-red">23</span>
                <span class="ball-2 ball-red">29</span>
                <span class="ball-2 ball-red">30</span>
                <span class="ball-2 ball-red">34</span>
                <span class="ball-2 ball-red">45</span>
            </td>
        </tr>
        <tr>
            <td data-name="红合双">
                <span>红合双</span>
                <span class="pl" data-plid="6742">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-red">2</span>
                <span class="ball-2 ball-red">8</span>
                <span class="ball-2 ball-red">13</span>
                <span class="ball-2 ball-red">19</span>
                <span class="ball-2 ball-red">24</span>
                <span class="ball-2 ball-red">35</span>
                <span class="ball-2 ball-red">40</span>
                <span class="ball-2 ball-red">46</span>
            </td>
        </tr>
        <tr>
            <td data-name="绿单">
                <span>绿单</span>
                <span class="pl" data-plid="6737">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">5</span>
                <span class="ball-2 ball-green">11</span>
                <span class="ball-2 ball-green">17</span>
                <span class="ball-2 ball-green">21</span>
                <span class="ball-2 ball-green">27</span>
                <span class="ball-2 ball-green">33</span>
                <span class="ball-2 ball-green">39</span>
                <span class="ball-2 ball-green">43</span>
                <span class="ball-2 ball-green">49</span>
            </td>
        </tr>
        <tr>
            <td data-name="绿双">
                <span>绿双</span>
                <span class="pl" data-plid="6738">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">6</span>
                <span class="ball-2 ball-green">16</span>
                <span class="ball-2 ball-green">22</span>
                <span class="ball-2 ball-green">28</span>
                <span class="ball-2 ball-green">32</span>
                <span class="ball-2 ball-green">38</span>
                <span class="ball-2 ball-green">44</span>
            </td>
        </tr>
        <tr>
            <td data-name="绿大">
                <span>绿大</span>
                <span class="pl" data-plid="6739">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">27</span>
                <span class="ball-2 ball-green">28</span>
                <span class="ball-2 ball-green">32</span>
                <span class="ball-2 ball-green">33</span>
                <span class="ball-2 ball-green">38</span>
                <span class="ball-2 ball-green">39</span>
                <span class="ball-2 ball-green">43</span>
                <span class="ball-2 ball-green">44</span>
            </td>
        </tr>
        <tr>
            <td data-name="绿小">
                <span>绿小</span>
                <span class="pl" data-plid="6740">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">5</span>
                <span class="ball-2 ball-green">6</span>
                <span class="ball-2 ball-green">11</span>
                <span class="ball-2 ball-green">16</span>
                <span class="ball-2 ball-green">17</span>
                <span class="ball-2 ball-green">21</span>
                <span class="ball-2 ball-green">22</span>
            </td>
        </tr>
        <tr>
            <td data-name="绿合单">
                <span>绿合单</span>
                <span class="pl" data-plid="6745">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">5</span>
                <span class="ball-2 ball-green">16</span>
                <span class="ball-2 ball-green">21</span>
                <span class="ball-2 ball-green">27</span>
                <span class="ball-2 ball-green">32</span>
                <span class="ball-2 ball-green">38</span>
                <span class="ball-2 ball-green">43</span>
                <span class="ball-2 ball-green">49</span>
            </td>
        </tr>
        <tr>
            <td data-name="绿合双">
                <span>绿合双</span>
                <span class="pl" data-plid="6746">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-green">6</span>
                <span class="ball-2 ball-green">11</span>
                <span class="ball-2 ball-green">17</span>
                <span class="ball-2 ball-green">22</span>
                <span class="ball-2 ball-green">28</span>
                <span class="ball-2 ball-green">33</span>
                <span class="ball-2 ball-green">39</span>
                <span class="ball-2 ball-green">44</span>
            </td>
        </tr>
        <tr>
            <td data-name="蓝单">
                <span>蓝单</span>
                <span class="pl" data-plid="6733">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">3</span>
                <span class="ball-2 ball-blue">9</span>
                <span class="ball-2 ball-blue">15</span>
                <span class="ball-2 ball-blue">25</span>
                <span class="ball-2 ball-blue">31</span>
                <span class="ball-2 ball-blue">37</span>
                <span class="ball-2 ball-blue">41</span>
                <span class="ball-2 ball-blue">47</span>
            </td>
        </tr>
        <tr>
            <td data-name="蓝双">
                <span>蓝双</span>
                <span class="pl" data-plid="6734">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">4</span>
                <span class="ball-2 ball-blue">10</span>
                <span class="ball-2 ball-blue">14</span>
                <span class="ball-2 ball-blue">20</span>
                <span class="ball-2 ball-blue">26</span>
                <span class="ball-2 ball-blue">36</span>
                <span class="ball-2 ball-blue">42</span>
                <span class="ball-2 ball-blue">48</span>
            </td>
        </tr>
        <tr>
            <td data-name="蓝大">
                <span>蓝大</span>
                <span class="pl" data-plid="6735">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">25</span>
                <span class="ball-2 ball-blue">26</span>
                <span class="ball-2 ball-blue">31</span>
                <span class="ball-2 ball-blue">36</span>
                <span class="ball-2 ball-blue">37</span>
                <span class="ball-2 ball-blue">41</span>
                <span class="ball-2 ball-blue">42</span>
                <span class="ball-2 ball-blue">47</span>
                <span class="ball-2 ball-blue">48</span>
            </td>
        </tr>
        <tr>
            <td data-name="蓝小">
                <span>蓝小</span>
                <span class="pl" data-plid="6736">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">3</span>
                <span class="ball-2 ball-blue">4</span>
                <span class="ball-2 ball-blue">9</span>
                <span class="ball-2 ball-blue">10</span>
                <span class="ball-2 ball-blue">14</span>
                <span class="ball-2 ball-blue">15</span>
                <span class="ball-2 ball-blue">20</span>
            </td>
        </tr>
        <tr>
            <td data-name="蓝合单">
                <span>蓝合单</span>
                <span class="pl" data-plid="6743">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">3</span>
                <span class="ball-2 ball-blue">9</span>
                <span class="ball-2 ball-blue">10</span>
                <span class="ball-2 ball-blue">14</span>
                <span class="ball-2 ball-blue">25</span>
                <span class="ball-2 ball-blue">36</span>
                <span class="ball-2 ball-blue">41</span>
                <span class="ball-2 ball-blue">47</span>
            </td>
        </tr>
        <tr>
            <td data-name="蓝合双">
                <span>蓝合双</span>
                <span class="pl" data-plid="6744">9999</span>
            </td>
            <td class="not-selected">
                <span class="ball-2 ball-blue">4</span>
                <span class="ball-2 ball-blue">15</span>
                <span class="ball-2 ball-blue">20</span>
                <span class="ball-2 ball-blue">26</span>
                <span class="ball-2 ball-blue">31</span>
                <span class="ball-2 ball-blue">37</span>
                <span class="ball-2 ball-blue">42</span>
                <span class="ball-2 ball-blue">48</span>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var playGroupId = 6;
    var playId = 209;
    var playGroupName = '半波';

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
