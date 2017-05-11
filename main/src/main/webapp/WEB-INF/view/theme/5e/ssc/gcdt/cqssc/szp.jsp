<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!-- content -->
	<div class="lot-content clearfix">
		<div class="fl main-left">
			<c:import url="../common/toptouzhu.jsp">
				<c:param name="flagGroup" value="11"/>
				<c:param name="navGroup" value="1"/>
			</c:import>

			<div class="table-common">
				<table width="100%" border="1">
					<thead>
						<tr>
							<th colspan="15">万位</th>
						</tr>
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
		            		<td><strong>0</strong></td>
							<td><strong class="color-red pl" data-plid="7023"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7023" data-name="万位-0"/></td>

		            		<td><strong>1</strong></td>
							<td><strong class="color-red pl" data-plid="7028"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7028" data-name="万位-1"/></td>

		            		<td><strong>2</strong></td>
							<td><strong class="color-red pl" data-plid="7033"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7033" data-name="万位-2"/></td>

		            		<td><strong>3</strong></td>
							<td><strong class="color-red pl" data-plid="7038"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7038" data-name="万位-3"/></td>

		            		<td><strong>4</strong></td>
							<td><strong class="color-red pl" data-plid="7043"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7043" data-name="万位-4"/></td>
		            	</tr>

		            	<tr>
		            		<td><strong>5</strong></td>
							<td><strong class="color-red pl" data-plid="7048"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7048" data-name="万位-5"/></td>

		            		<td><strong>6</strong></td>
							<td><strong class="color-red pl" data-plid="7053"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7053" data-name="万位-6"/></td>

		            		<td><strong>7</strong></td>
							<td><strong class="color-red pl" data-plid="7058"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7058" data-name="万位-7"/></td>

		            		<td><strong>8</strong></td>
							<td><strong class="color-red pl" data-plid="7063"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7063" data-name="万位-8"/></td>

		            		<td><strong>9</strong></td>
							<td><strong class="color-red pl" data-plid="7068"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7068" data-name="万位-9"/></td>
		            	</tr>
	            	</tbody>
				</table>

				<table width="100%" border="1">
					<thead>
						<tr>
							<th colspan="15">千位</th>
						</tr>
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
		            		<td><strong>0</strong></td>
							<td><strong class="color-red pl" data-plid="7024"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7024" data-name="千位-0"/></td>

		            		<td><strong>1</strong></td>
							<td><strong class="color-red pl" data-plid="7029"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7029" data-name="千位-1"/></td>

		            		<td><strong>2</strong></td>
							<td><strong class="color-red pl" data-plid="7034"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7034" data-name="千位-2"/></td>

		            		<td><strong>3</strong></td>
							<td><strong class="color-red pl" data-plid="7039"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7039" data-name="千位-3"/></td>

		            		<td><strong>4</strong></td>
							<td><strong class="color-red pl" data-plid="7044"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7044" data-name="千位-4"/></td>
		            	</tr>

		            	<tr>
		            		<td><strong>5</strong></td>
							<td><strong class="color-red pl" data-plid="7049"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7049" data-name="千位-5"/></td>

		            		<td><strong>6</strong></td>
							<td><strong class="color-red pl" data-plid="7054"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7054" data-name="千位-6"/></td>

		            		<td><strong>7</strong></td>
							<td><strong class="color-red pl" data-plid="7059"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7059" data-name="千位-7"/></td>

		            		<td><strong>8</strong></td>
							<td><strong class="color-red pl" data-plid="7064"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7064" data-name="千位-8"/></td>

		            		<td><strong>9</strong></td>
							<td><strong class="color-red pl" data-plid="7069"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7069" data-name="千位-9"/></td>
		            	</tr>
	            	</tbody>
				</table>

				<table width="100%" border="1">
					<thead>
						<tr>
							<th colspan="15">百位</th>
						</tr>
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
		            		<td><strong>0</strong></td>
							<td><strong class="color-red pl" data-plid="7025"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7025" data-name="百位-0"/></td>

		            		<td><strong>1</strong></td>
							<td><strong class="color-red pl" data-plid="7030"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7030" data-name="百位-1"/></td>

		            		<td><strong>2</strong></td>
							<td><strong class="color-red pl" data-plid="7035"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7035" data-name="百位-2"/></td>

		            		<td><strong>3</strong></td>
							<td><strong class="color-red pl" data-plid="7040"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7040" data-name="百位-3"/></td>

		            		<td><strong>4</strong></td>
							<td><strong class="color-red pl" data-plid="7045"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7045" data-name="百位-4"/></td>
		            	</tr>

		            	<tr>
		            		<td><strong>5</strong></td>
							<td><strong class="color-red pl" data-plid="7050"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7050" data-name="百位-5"/></td>

		            		<td><strong>6</strong></td>
							<td><strong class="color-red pl" data-plid="7055"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7055" data-name="百位-6"/></td>

		            		<td><strong>7</strong></td>
							<td><strong class="color-red pl" data-plid="7060"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7060" data-name="百位-7"/></td>

		            		<td><strong>8</strong></td>
							<td><strong class="color-red pl" data-plid="7065"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7065" data-name="百位-8"/></td>

		            		<td><strong>9</strong></td>
							<td><strong class="color-red pl" data-plid="7070"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7070" data-name="百位-9"/></td>
		            	</tr>
	            	</tbody>
				</table>

				<table width="100%" border="1">
					<thead>
						<tr>
							<th colspan="15">十位</th>
						</tr>
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
		            		<td><strong>0</strong></td>
							<td><strong class="color-red pl" data-plid="7026"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7026" data-name="十位-0"/></td>

		            		<td><strong>1</strong></td>
							<td><strong class="color-red pl" data-plid="7031"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7031" data-name="十位-1"/></td>

		            		<td><strong>2</strong></td>
							<td><strong class="color-red pl" data-plid="7036"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7036" data-name="十位-2"/></td>

		            		<td><strong>3</strong></td>
							<td><strong class="color-red pl" data-plid="7041"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7041" data-name="十位-3"/></td>

		            		<td><strong>4</strong></td>
							<td><strong class="color-red pl" data-plid="7046"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7046" data-name="十位-4"/></td>
		            	</tr>

		            	<tr>
		            		<td><strong>5</strong></td>
							<td><strong class="color-red pl" data-plid="7051"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7051" data-name="十位-5"/></td>

		            		<td><strong>6</strong></td>
							<td><strong class="color-red pl" data-plid="7056"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7056" data-name="十位-6"/></td>

		            		<td><strong>7</strong></td>
							<td><strong class="color-red pl" data-plid="7061"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7061" data-name="十位-7"/></td>

		            		<td><strong>8</strong></td>
							<td><strong class="color-red pl" data-plid="7066"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7066" data-name="十位-8"/></td>

		            		<td><strong>9</strong></td>
							<td><strong class="color-red pl" data-plid="7071"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7071" data-name="十位-9"/></td>
		            	</tr>
	            	</tbody>
				</table>

				<table width="100%" border="1">
					<thead>
						<tr>
							<th colspan="15">个位</th>
						</tr>
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
		            		<td><strong>0</strong></td>
							<td><strong class="color-red pl" data-plid="7027"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7027" data-name="个位-0"/></td>

		            		<td><strong>1</strong></td>
							<td><strong class="color-red pl" data-plid="7032"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7032" data-name="个位-1"/></td>

		            		<td><strong>2</strong></td>
							<td><strong class="color-red pl" data-plid="7037"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7037" data-name="个位-2"/></td>

		            		<td><strong>3</strong></td>
							<td><strong class="color-red pl" data-plid="7042"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7042" data-name="个位-3"/></td>

		            		<td><strong>4</strong></td>
							<td><strong class="color-red pl" data-plid="7047"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7047" data-name="个位-4"/></td>
		            	</tr>

		            	<tr>
		            		<td><strong>5</strong></td>
							<td><strong class="color-red pl" data-plid="7052"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7052" data-name="个位-5"/></td>

		            		<td><strong>6</strong></td>
							<td><strong class="color-red pl" data-plid="7057"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7057" data-name="个位-6"/></td>

		            		<td><strong>7</strong></td>
							<td><strong class="color-red pl" data-plid="7062"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7062" data-name="个位-7"/></td>

		            		<td><strong>8</strong></td>
							<td><strong class="color-red pl" data-plid="7067"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7067" data-name="个位-8"/></td>

		            		<td><strong>9</strong></td>
							<td><strong class="color-red pl" data-plid="7072"></strong></td>
							<td><input type="text" class="table-txt" data-plid="7072" data-name="个位-9"/></td>
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
	var playId = 217;
	var playGroupName = '数字盘';

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
