<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="lot-content clearfix">
		<div class="fl main-left">
			<div class="hd clearfix rehd" id="toptouzhu">
				<c:import url="../common/toptouzhu.jsp">
					<c:param name="flagGroup" value="22"/>
				</c:import>
				<div class="fr">
					<div class="T-tab clearfix"  style="margin-top: 4.4px; ">
						<a href="javascript:void(0)" onclick="getSscSubPage('cqssc-yzdw_wdw')">万定位</a>
						<a href="javascript:void(0)" onclick="getSscSubPage('cqssc-yzdw_qdw')">千定位</a>
						<a href="javascript:void(0)" onclick="getSscSubPage('cqssc-yzdw_bdw')">百定位</a>
						<a href="javascript:void(0)" onclick="getSscSubPage('cqssc-yzdw_sdw')">十定位</a>
						<a href="javascript:void(0)" onclick="getSscSubPage('cqssc-yzdw_gdw')" class="active">个定位</a>
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
		                </tr>
		            </thead>

		            <tbody>
		            	<tr>
		            		<td><strong>0</strong></td>
		            		<td><strong class="color-red pl" data-plid="7077"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-0" data-plid="7077"/></td>

		            		<td><strong>1</strong></td>
		            		<td><strong class="color-red pl" data-plid="7092"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-1" data-plid="7092"/></td>

		            		<td><strong>2</strong></td>
		            		<td><strong class="color-red pl" data-plid="7107"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-2" data-plid="7107"/></td>

		            		<td><strong>3</strong></td>
		            		<td><strong class="color-red pl"  data-plid="7122"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-3" data-plid="7122"/></td>
		            	</tr>

		            	<tr>
		            		<td><strong>4</strong></td>
		            		<td><strong class="color-red pl" data-plid="7137"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-4" data-plid="7137"/></td>

		            		<td><strong>5</strong></td>
		            		<td><strong class="color-red pl" data-plid="7152"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-5" data-plid="7152"/></td>

		            		<td><strong>6</strong></td>
		            		<td><strong class="color-red pl" data-plid="7167"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-6" data-plid="7167"/></td>

		            		<td><strong>7</strong></td>
		            		<td><strong class="color-red pl"  data-plid="7182"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-7" data-plid="7182"/></td>
		            	</tr>
		            	<tr>
		            		<td><strong>8</strong></td>
		            		<td><strong class="color-red pl" data-plid="7197"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-8" data-plid="7197"/></td>

		            		<td><strong>9</strong></td>
		            		<td><strong class="color-red pl" data-plid="7212"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-9" data-plid="7212"/></td>

		            		<td><strong>大</strong></td>
		            		<td><strong class="color-red pl" data-plid="7227"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-大" data-plid="7227"/></td>

		            		<td><strong>小</strong></td>
		            		<td><strong class="color-red pl" data-plid="7242"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-小" data-plid="7242"/></td>
		            	</tr>
		            	<tr>
		            		<td><strong>单</strong></td>
		            		<td><strong class="color-red pl" data-plid="7257"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-单" data-plid="7257"/></td>

		            		<td><strong>双</strong></td>
		            		<td><strong class="color-red pl" data-plid="7272"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-双" data-plid="7272"/></td>

		            		<td><strong>质</strong></td>
		            		<td><strong class="color-red pl" data-plid="7287"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-质" data-plid="7287"/></td>

		            		<td><strong>合</strong></td>
		            		<td><strong class="color-red pl" data-plid="7302"></strong></td>
		            		<td><input type="text" class="table-txt" data-name="个定位-合" data-plid="7302"/></td>
		            	</tr>
	            	</tbody>
				</table>
			</div>

			<div class="btns">
				<button type="submit" class="btn btn-1">提交</button>
				<button class="btn btn-2">重设</button>
			</div>


			<c:import url="common/bottom_zs.jsp"/>
		</div>

	<div class="fr main-right cl-10"></div>
</div>
<c:import url="../common/subPageCommonJs.jsp" />
<script>
	var playGroupId = 1;
	var playId = 218;
	var playGroupName = '一字定位';

	function getZhudan() {
		var betForm = {
			totalMoney: 0,
			sscBetList: [],
			totalZhushu: 0
		};

		$(".main-left .table-common input").each(function() {
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