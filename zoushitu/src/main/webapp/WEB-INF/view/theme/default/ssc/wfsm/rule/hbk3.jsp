<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div>
    <h5><strong>一、游戏规则</strong></h5>
    <p>
        <strong>（一）总则</strong></br>
        1.	根据《彩票管理条例》等有关规定，制定本规则。<br/>
        2.	中国福利彩票江苏省快三游戏（以下简称“快三”）由中国福利彩票发行管理中心和组织销售，江苏省福利彩票销售机构（以下称“江苏福彩机构”）在所辖区域内承销。<br/>
        3.	快三采用计算机网络系统发行，在江苏福彩机构设置的销售网点销售，定期开奖。<br/>
        4.	快三实行自愿购买，凡购买该彩票均被视为同意并遵守本规则。<br/>
        5.	不得向未成年人出售彩票或兑付奖金。
    </p>
    <p>
        <strong>（二）开奖与购买方式</strong></br>
        1.	本站江苏快三游戏每天进行82期，开奖时间为08:39至22:10，每隔10分钟开奖一次。快三采用专用电子开奖设备开奖，每期随机生成3个号码，作为当期中奖号码。</br>
        2.	每期开奖后，相关江苏福彩机构应向社会公布开奖号码、将当期销售总额、开各奖级中奖情况及奖池资金余额等信息，并通过视频方式将开奖结果通知销售网点。</br>
        3.	购买者可在对其选定的投注号码选择返点投注，返点越高投注赔率则低。购买者也可以进行追号投注，追号是指将一注或一组号码进行两期或两期以上的投注。追号可分为连续追号和间隔追号，连续追号指追号的期数是连续的，间隔追号指追号的期数不连续。</br>
        4.	购买者可选择机选号码投注、自选号码投注。机选号码投注是指由投注机随机产生投注号码进行投注，自选号码投注是指将购买者选定的号码输入投注机进行投注。</br>
        5.	如果用户投注成功后，若因销售终端故障、通讯线路故障和投注站信用额度受限等原因造成当期无法开奖的，应退还购买者投注金额。
    </p>
    <p>
        <strong>（三）兑奖</strong></br>
        1.	无论大小奖均返还至用户在本站的账户中，一旦用户中奖，系统将自动返还中奖金额。可继续投注或提款，永无弃奖。
    </p>
    <p>
        <strong>（四）玩法说明</strong></br>
        1.	快三投注是指以3个号码组合为一注彩票进行单式投注，每个投注号码为1-6共六个自然数中的任意一个，一组3个号码的组合称为一注。</br>
        2.	三号码组合共设置“和值”、“三同号”、“二同号”、“三不同号”、“二不同号”、“三连号通选”投注方式，具体规定如下：<br/>
        （一）和值投注是指对3个号码的和值进行投注。<br/>
        （二）三同号投注是指对3个相同的号码进行投注，具体分为：<br/>
        1.	三同号通选：是指对所有相同的3个号码进行投注；<br/>
        2.	三同号单选：是指从所有相同的3个号码中任意选择一组号码进行投注。<br/>
        （三）二同号投注是指对2个指定的相同号码进行投注，具体分为：<br/>
        1.	二同号复选：是指对3个号码中2个指定的相同号码和一个任意号码进行投注；<br/>
        2.	二同号单选：是指对3个号码中2个指定的相同号码和一个指定的不同号码进行投注。<br/>
        （四）三不同号投注：是指对3个各不相同的号码进行投注。<br/>
        （五）二不同号投注：是指对3个号码中2个指定的不同号码和一个任意号码进行投注。<br/>
        （六）三连号通选投注：是指对所有3个相连的号码进行投注。
    </p>
    <h5><strong>二、玩法介绍</strong></h5><br/>
    <p>
        <strong>（一）投注方式</strong></br>
        1. 和值：至少选择1个号码，与开奖的3个号码相加之和相同即中奖，单注最高奖金190.08元。
    </p>
    <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
        <tbody>
        <tr align="center">
            <td height="25" bgcolor="#AFAFE4" rowspan="2">例：</td>
            <td height="25" bgcolor="#FFF7F0">开奖：112</td>
        </tr>
        <tr align="center">
            <td height="25" bgcolor="#FFF7F0">选号：4</td>
        </tr>
        </tbody>
    </table>
    <p>
        2. 三同号通选：当开奖号码为三同号(111，222，333，444，555，666)中的任一组即中奖，单注奖金31.68元，1/36中奖机会。
    </p>
    <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
        <tbody>
        <tr align="center">
            <td height="25" bgcolor="#AFAFE4" rowspan="2">例：</td>
            <td height="25" bgcolor="#FFF7F0">开奖：666</td>
        </tr>
        <tr align="center">
            <td height="25" bgcolor="#FFF7F0">选号：三同号通选</td>
        </tr>
        </tbody>
    </table>
    <p>
        3. 三同号单选：至少选1组号码，所选号码与开奖号码相同即中奖，单注奖金190.08元，1/216中奖机会。
    </p>
    <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
        <tbody>
        <tr align="center">
            <td height="25" bgcolor="#AFAFE4" rowspan="2">例：</td>
            <td height="25" bgcolor="#FFF7F0">开奖：111</td>
        </tr>
        <tr align="center">
            <td height="25" bgcolor="#FFF7F0">选号：111</td>
        </tr>
        </tbody>
    </table>
    <p>
        4. 三不同号：至少选择3个号码，与开奖号码全相同即中奖，单注奖金31.68元，1/36的中奖机会。
    </p>
    <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
        <tbody>
        <tr align="center">
            <td height="25" bgcolor="#AFAFE4" rowspan="2">例：</td>
            <td height="25" bgcolor="#FFF7F0">开奖：124</td>
        </tr>
        <tr align="center">
            <td height="25" bgcolor="#FFF7F0">选号：124</td>
        </tr>
        </tbody>
    </table>
    <p>
        5. 二同号复选：至少选1个对子投注，开奖号包含此对子即中奖，单注奖金11.88元，1/13.5中奖机会。
    </p>
    <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
        <tbody>
        <tr align="center">
            <td height="25" bgcolor="#AFAFE4" rowspan="2">例：</td>
            <td height="25" bgcolor="#FFF7F0">开奖：112</td>
        </tr>
        <tr align="center">
            <td height="25" bgcolor="#FFF7F0">选号：114</td>
        </tr>
        </tbody>
    </table>
    <p>
        6. 二同号单选：至少选1个对子和1个不同号投注，与开奖号码全相同即中奖，单注奖金63.36元，1/72中奖机会。
    </p>
    <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table">
        <tbody>
        <tr align="center">
            <td height="25" bgcolor="#AFAFE4" rowspan="2">例：</td>
            <td height="25" bgcolor="#FFF7F0">开奖：112</td>
        </tr>
        <tr align="center">
            <td height="25" bgcolor="#FFF7F0">选号：112</td>
        </tr>
        </tbody>
    </table>
    <p>
        7. 二不同号玩法：至少选择2个号码，与开奖的任意2个号码相同即中奖，单注奖金6.336元，1/7.2的中奖机会。
    </p>
    <table width="300" cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC" class="s-table" style="align:center;">
        <tbody>
        <tr align="center">
            <td height="25" bgcolor="#AFAFE4" rowspan="2">例：</td>
            <td height="25" bgcolor="#FFF7F0">开奖：123</td>
        </tr>
        <tr align="center">
            <td height="25" bgcolor="#FFF7F0">选号：12</td>
        </tr>
        </tbody>
    </table>
</div>
<div class="help_col">
    <h5><strong>总则</strong></h5>
    <p>
        1.	根据《彩票管理条例》等有关规定，制定本规则。 2.	中国福利彩票湖北省快三游戏（以下简称“快三”）由中国福利彩票发行管理中心和组织销售，湖北省福利彩票销售机构（以下称“湖北福彩机构”）在所辖区域内承销。 3.	快三采用计算机网络系统发行，在湖北福彩机构设置的销售网点销售，定期开奖。 4.	快三实行自愿购买，凡购买该彩票均被视为同意并遵守本规则。 5.	不得向未成年人出售彩票或兑付奖金。 本站湖北快三游戏每天进行82期，开奖时间为08:39至22:10，每隔10分钟开奖一次。快三采用专用电子开奖设备开奖，每期随机生成3个号码，作为当期中奖号码。开奖结果为三码 (百、十、个)。假设结果为1 、2 、3。<br></p>
</div>
