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
<%--<div class="cover1">--%>
<%--&lt;%&ndash;显示蒙版&ndash;%&gt;--%>
<%--</div>--%>
<div class="coveron1 hw">
    <div class="consele1">
        <div class="wx">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">五星</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">直选复式</div>
                <%--<div class="xuan_cz2">直选单式</div>--%>
                <%--<div class="xuan_cz3">任选二</div>--%>
            </div>
        </div>
        <div class="sx">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">四星</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">直选复式</div>
                <%--<div class="xuan_cz2">直选单式</div>--%>
                <%--<div class="xuan_cz3">任选二</div>--%>
            </div>
        </div>
        <div class="hs">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">后三</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">直选复式</div>
                <div class="xuan_cz2">直选和值</div>
                <div class="xuan_cz3">直选跨度</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">后三组合</div>
                <div class="xuan_cz2">组三复式</div>
                <div class="xuan_cz3">组六复式</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">组选和值</div>
                <div class="xuan_cz2">组选包胆</div>
                <div class="xuan_cz3">和值尾数</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">特殊号</div>
            </div>
        </div>
        <div class="qs">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">前三</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">直选复式</div>
                <div class="xuan_cz2">直选和值</div>
                <div class="xuan_cz3">直选跨度</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">前三组合</div>
                <div class="xuan_cz2">组三复式</div>
                <div class="xuan_cz3">组六复式</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">组选和值</div>
                <div class="xuan_cz2">组选包胆</div>
                <div class="xuan_cz3">和值尾数</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">特殊号</div>
            </div>
        </div>
        <div class="qe">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">前二</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">直选复式</div>
                <div class="xuan_cz2">直选和值</div>
                <div class="xuan_cz3">直选跨度</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">组选复式</div>
                <div class="xuan_cz2">组选和值</div>
                <div class="xuan_cz3">组选包胆</div>
            </div>
        </div>
        <div class="bdw">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">不定位</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">前三一码</div>
                <div class="xuan_cz2">前三二码</div>
                <div class="xuan_cz3">后三一码</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">后三二码</div>
                <div class="xuan_cz2">前四一码</div>
                <div class="xuan_cz3">前四二码</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">后四一码</div>
                <div class="xuan_cz2">后四二码</div>
                <div class="xuan_cz3">五星一码</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">五星二码</div>
                <div class="xuan_cz2">五星三码</div>
            </div>
        </div>
        <div class="dxds">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">大小单双</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">前二大小单双</div>
                <div class="xuan_cz2">后二大小单双</div>
                <div class="xuan_cz3">前三大小单双</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">
                    后三大小单双
                </div>
            </div>
        </div>
        <div class="rxe">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">任选二</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">直选复式</div>
                <div class="xuan_cz2">直选和值</div>
                <div class="xuan_cz3">组选复式</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">组选和值</div>
            </div>
        </div>
        <div class="rxs">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">任选三</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">直选复式</div>
                <div class="xuan_cz2">直选和值</div>
                <div class="xuan_cz3">组三复式</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">组六复式</div>
                <div class="xuan_cz2">组选和值</div>
            </div>
        </div>
        <div class="rxsi">
            <div class="xuan">
                <div class="xuan1"></div>
                <div class="xuan2">任选三</div>
                <div class="xuan1"></div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">直选复式</div>
                <div class="xuan_cz2">组选24</div>
                <div class="xuan_cz3">组选12</div>
            </div>
            <div class="xuan_cz">
                <div class="xuan_cz1">组选6</div>
                <div class="xuan_cz2">组选4</div>
            </div>
        </div>
    </div>
</div>
