<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!-- content -->
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix rehd" id="toptouzhu">
            <c:import url="../common/toptouzhu.jsp">
                <c:param name="flagGroup" value="22"/>
            </c:import>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px; ">
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-zm_a')" class="active">正码A</a>
                    <a href="javascript:void(0)" onclick="getSscSubPage('lhc-zm_b')">正码B</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><span class="ball-icon ball-01"></span></td>
                    <td data-num="1"><strong class="color-red pl" data-plid="6100"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-1" data-plid="6100"/></td>

                    <td><span class="ball-icon ball-11"></span></td>
                    <td data-num="11"><strong class="color-red pl" data-plid="6110"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-11" data-plid="6110"/></td>

                    <td><span class="ball-icon ball-21"></span></td>
                    <td data-num="21"><strong class="color-red pl" data-plid="6120"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-21" data-plid="6120"/></td>

                    <td><span class="ball-icon ball-31"></span></td>
                    <td data-num="31"><strong class="color-red pl" data-plid="6130"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-31" data-plid="6130"/></td>

                    <td><span class="ball-icon ball-41"></span></td>
                    <td data-num="41"><strong class="color-red pl" data-plid="6140"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-41" data-plid="6140"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-02"></span></td>
                    <td data-num="2"><strong class="color-red pl" data-plid="6101"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-2" data-plid="6101"/></td>

                    <td><span class="ball-icon ball-12"></span></td>
                    <td data-num="12"><strong class="color-red pl" data-plid="6111"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-12" data-plid="6111"/></td>

                    <td><span class="ball-icon ball-22"></span></td>
                    <td data-num="22"><strong class="color-red pl" data-plid="6121"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-22" data-plid="6121"/></td>

                    <td><span class="ball-icon ball-32"></span></td>
                    <td data-num="32"><strong class="color-red pl" data-plid="6131"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-32" data-plid="6131"/></td>

                    <td><span class="ball-icon ball-42"></span></td>
                    <td data-num="42"><strong class="color-red pl" data-plid="6141"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-42" data-plid="6141"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-03"></span></td>
                    <td data-num="3"><strong class="color-red pl" data-plid="6102"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-3" data-plid="6102"/></td>

                    <td><span class="ball-icon ball-13"></span></td>
                    <td data-num="13"><strong class="color-red pl" data-plid="6112"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-13" data-plid="6112"/></td>

                    <td><span class="ball-icon ball-23"></span></td>
                    <td data-num="23"><strong class="color-red pl" data-plid="6122"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-23" data-plid="6122"/></td>

                    <td><span class="ball-icon ball-33"></span></td>
                    <td data-num="33"><strong class="color-red pl" data-plid="6132"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-33" data-plid="6132"/></td>

                    <td><span class="ball-icon ball-43"></span></td>
                    <td data-num="43"><strong class="color-red pl" data-plid="6142"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-43" data-plid="6142"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-04"></span></td>
                    <td data-num="4"><strong class="color-red pl" data-plid="6103"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-4" data-plid="6103"/></td>

                    <td><span class="ball-icon ball-14"></span></td>
                    <td data-num="14"><strong class="color-red pl" data-plid="6113"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-14" data-plid="6113"/></td>

                    <td><span class="ball-icon ball-24"></span></td>
                    <td data-num="24"><strong class="color-red pl" data-plid="6123"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-24" data-plid="6123"/></td>

                    <td><span class="ball-icon ball-34"></span></td>
                    <td data-num="34"><strong class="color-red pl" data-plid="6133"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-34" data-plid="6133"/></td>

                    <td><span class="ball-icon ball-44"></span></td>
                    <td data-num="44"><strong class="color-red pl" data-plid="6143"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-44" data-plid="6143"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-05"></span></td>
                    <td data-num="5"><strong class="color-red pl" data-plid="6104"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-5" data-plid="6104"/></td>

                    <td><span class="ball-icon ball-15"></span></td>
                    <td data-num="15"><strong class="color-red pl" data-plid="6114"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-15" data-plid="6114"/></td>

                    <td><span class="ball-icon ball-25"></span></td>
                    <td data-num="25"><strong class="color-red pl" data-plid="6124"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-25" data-plid="6124"/></td>

                    <td><span class="ball-icon ball-35"></span></td>
                    <td data-num="35"><strong class="color-red pl" data-plid="6134"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-35" data-plid="6134"/></td>

                    <td><span class="ball-icon ball-45"></span></td>
                    <td data-num="45"><strong class="color-red pl" data-plid="6144"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-45" data-plid="6144"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-06"></span></td>
                    <td data-num="6"><strong class="color-red pl" data-plid="6105"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-6" data-plid="6105"/></td>

                    <td><span class="ball-icon ball-16"></span></td>
                    <td data-num="16"><strong class="color-red pl" data-plid="6115"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-16" data-plid="6115"/></td>

                    <td><span class="ball-icon ball-26"></span></td>
                    <td data-num="26"><strong class="color-red pl" data-plid="6125"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-26" data-plid="6125"/></td>

                    <td><span class="ball-icon ball-36"></span></td>
                    <td data-num="36"><strong class="color-red pl" data-plid="6135"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-36" data-plid="6135"/></td>

                    <td><span class="ball-icon ball-46"></span></td>
                    <td data-num="46"><strong class="color-red pl" data-plid="6145"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-46" data-plid="6145"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-07"></span></td>
                    <td data-num="7"><strong class="color-red pl" data-plid="6106"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-7" data-plid="6106"/></td>

                    <td><span class="ball-icon ball-17"></span></td>
                    <td data-num="17"><strong class="color-red pl" data-plid="6116"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-17" data-plid="6116"/></td>

                    <td><span class="ball-icon ball-27"></span></td>
                    <td data-num="27"><strong class="color-red pl" data-plid="6126"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-27" data-plid="6126"/></td>

                    <td><span class="ball-icon ball-37"></span></td>
                    <td data-num="37"><strong class="color-red pl" data-plid="6136"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-37" data-plid="6136"/></td>

                    <td><span class="ball-icon ball-47"></span></td>
                    <td data-num="47"><strong class="color-red pl" data-plid="6146"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-47" data-plid="6146"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-08"></span></td>
                    <td data-num="8"><strong class="color-red pl" data-plid="6107"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-8" data-plid="6107"/></td>

                    <td><span class="ball-icon ball-18"></span></td>
                    <td data-num="18"><strong class="color-red pl" data-plid="6117"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-18" data-plid="6117"/></td>

                    <td><span class="ball-icon ball-28"></span></td>
                    <td data-num="28"><strong class="color-red pl" data-plid="6127"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-28" data-plid="6127"/></td>

                    <td><span class="ball-icon ball-38"></span></td>
                    <td data-num="38"><strong class="color-red pl" data-plid="6137"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-38" data-plid="6137"/></td>

                    <td><span class="ball-icon ball-48"></span></td>
                    <td data-num="48"><strong class="color-red pl" data-plid="6147"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-48" data-plid="6147"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-09"></span></td>
                    <td data-num="9"><strong class="color-red pl" data-plid="6108"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-9" data-plid="6108"/></td>

                    <td><span class="ball-icon ball-19"></span></td>
                    <td data-num="19"><strong class="color-red pl" data-plid="6118"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-19" data-plid="6118"/></td>

                    <td><span class="ball-icon ball-29"></span></td>
                    <td data-num="29"><strong class="color-red pl" data-plid="6128"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-29" data-plid="6128"/></td>

                    <td><span class="ball-icon ball-39"></span></td>
                    <td data-num="39"><strong class="color-red pl" data-plid="6138"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-39" data-plid="6138"/></td>

                    <td><span class="ball-icon ball-49"></span></td>
                    <td data-num="49"><strong class="color-red pl" data-plid="6148"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-49" data-plid="6148"/></td>
                </tr>

                <tr>
                    <td><span class="ball-icon ball-10"></span></td>
                    <td data-num="10"><strong class="color-red pl" data-plid="6109"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-10" data-plid="6109"/></td>

                    <td><span class="ball-icon ball-20"></span></td>
                    <td data-num="20"><strong class="color-red pl" data-plid="6119"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-20" data-plid="6119"/></td>

                    <td><span class="ball-icon ball-30"></span></td>
                    <td data-num="30"><strong class="color-red pl" data-plid="6129"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-30" data-plid="6129"/></td>

                    <td><span class="ball-icon ball-40"></span></td>
                    <td data-num="40"><strong class="color-red pl" data-plid="6139"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-40" data-plid="6139"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>总大</td>
                    <td><strong class="color-red pl" data-plid="6153"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-总大" data-plid="6153"/></td>

                    <td>总小</td>
                    <td><strong class="color-red pl" data-plid="6154"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-总小" data-plid="6154"/></td>

                    <td>总单</td>
                    <td><strong class="color-red pl" data-plid="6155"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-总单" data-plid="6155"/></td>

                    <td>总双</td>
                    <td><strong class="color-red pl" data-plid="6156"></strong></td>
                    <td><input type="text" class="table-txt" data-name="正码A-总双" data-plid="6156"/></td>

                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right cl-10">
        <div class="table-common table-border-color">
            <table width="100%" border="1">
                <tbody>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>合单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>合双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>大单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>小单</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>大双</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>小双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>尾大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>尾小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>鼠</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>牛</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>虎</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>兔</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>龙</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>蛇</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>马</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>羊</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>猴</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>鸡</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>狗</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>猪</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>家禽</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>野兽</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-red">红</span>大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-red">红</span>小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-red">红</span>单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-red">红</span>双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-blue">蓝</span>大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-blue">蓝</span>小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-blue">蓝</span>单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-blue">蓝</span>双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-green">绿</span>大</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-green">绿</span>小</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-green">绿</span>单</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td><span class="color-green">绿</span>双</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>红波</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>蓝波</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>绿波</td>
                    <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                    <td>全选</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>
<c:import url="../common/subPageCommonJs.jsp"/>
<c:import url="common/commonJs.jsp"/>
<script>
    var playGroupId = 6;
    var playId = 205;
    var playGroupName = '正码A';

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common input").each(function () {
            var inputMoney = $(this).val();
            if (typeof inputMoney != 'undefined' && inputMoney != '') {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: $("#number").data("number"),
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: $(this).data("name"),
                    playPlId: $(this).data("plid"),
                    playPl: $(this).data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            }
        });
        return betForm;
    }

    function checkZhudan() {
        return true;
    }

</script>