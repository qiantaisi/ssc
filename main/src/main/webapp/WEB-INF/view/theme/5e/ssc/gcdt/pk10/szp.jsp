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
        <c:import url="../common/toptouzhu.jsp">
            <c:param name="flagGroup" value="11"/>
            <c:param name="navGroup" value="1"/>
        </c:import>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="3">冠军</th>
                    <th colspan="3">亚军</th>
                    <th colspan="3">季军</th>
                    <th colspan="3">第四名</th>
                    <th colspan="3">第五名</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8267"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-1" data-plid="8267"/></td>

                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8268"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-1" data-plid="8268"/></td>

                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8269"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-1" data-plid="8269"/></td>

                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8270"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-1" data-plid="8270"/></td>

                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8271"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-1" data-plid="8271"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8277"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-2" data-plid="8277"/></td>

                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8278"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-2" data-plid="8278"/></td>

                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8279"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-2" data-plid="8279"/></td>

                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8280"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-2" data-plid="8280"/></td>

                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8281"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-2" data-plid="8281"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8287"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-3" data-plid="8287"/></td>

                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8288"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-3" data-plid="8288"/></td>

                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8289"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-3" data-plid="8289"/></td>

                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8290"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-3" data-plid="8290"/></td>

                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8291"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-3" data-plid="8291"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8297"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-4" data-plid="8297"/></td>

                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8298"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-4" data-plid="8298"/></td>

                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8299"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-4" data-plid="8299"/></td>

                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8300"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-4" data-plid="8300"/></td>

                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8301"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-4" data-plid="8301"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8307"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-5" data-plid="8307"/></td>

                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8308"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-5" data-plid="8308"/></td>

                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8309"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-5" data-plid="8309"/></td>

                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8310"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-5" data-plid="8310"/></td>

                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8311"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-5" data-plid="8311"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8317"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-6" data-plid="8317"/></td>

                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8318"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-6" data-plid="8318"/></td>

                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8319"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-6" data-plid="8319"/></td>

                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8320"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-6" data-plid="8320"/></td>

                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8321"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-6" data-plid="8321"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8327"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-7" data-plid="8327"/></td>

                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8328"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-7" data-plid="8328"/></td>

                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8329"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-7" data-plid="8329"/></td>

                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8330"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-7" data-plid="8330"/></td>

                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8331"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-7" data-plid="8331"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8337"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-8" data-plid="8337"/></td>

                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8338"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-8" data-plid="8338"/></td>

                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8339"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-8" data-plid="8339"/></td>

                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8340"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-8" data-plid="8340"/></td>

                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8341"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-8" data-plid="8341"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8347"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-9" data-plid="8347"/></td>

                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8348"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-9" data-plid="8348"/></td>

                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8349"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-9" data-plid="8349"/></td>

                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8350"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-9" data-plid="8350"/></td>

                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8351"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-9" data-plid="8351"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8357"></strong></td>
                    <td><input type="text" class="table-txt" data-name="冠军-10" data-plid="8357"/></td>

                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8358"></strong></td>
                    <td><input type="text" class="table-txt" data-name="亚军-10" data-plid="8358"/></td>

                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8359"></strong></td>
                    <td><input type="text" class="table-txt" data-name="季军-10" data-plid="8359"/></td>

                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8360"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第四名-10" data-plid="8360"/></td>

                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8361"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第五名-10" data-plid="8361"/></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="3">第六名</th>
                    <th colspan="3">第七名</th>
                    <th colspan="3">第八名</th>
                    <th colspan="3">第九名</th>
                    <th colspan="3">第十名</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8272"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-1" data-plid="8272"/></td>

                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8273"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-1" data-plid="8273"/></td>

                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8274"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-1" data-plid="8274"/></td>

                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8275"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-1" data-plid="8275"/></td>

                    <td width="30"><strong>1</strong></td>
                    <td><strong class="color-red pl" data-plid="8276"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-1" data-plid="8276"/></td>
                </tr>

                <tr>
                    <td width="30" width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8282"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-2" data-plid="8282"/></td>

                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8283"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-2" data-plid="8283"/></td>

                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8284"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-2" data-plid="8284"/></td>

                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8285"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-2" data-plid="8285"/></td>

                    <td width="30"><strong>2</strong></td>
                    <td><strong class="color-red pl" data-plid="8286"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-2" data-plid="8286"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8292"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-3" data-plid="8292"/></td>

                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8293"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-3" data-plid="8293"/></td>

                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8294"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-3" data-plid="8294"/></td>

                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8295"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-3" data-plid="8295"/></td>

                    <td width="30"><strong>3</strong></td>
                    <td><strong class="color-red pl" data-plid="8296"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-3" data-plid="8296"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8302"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-4" data-plid="8302"/></td>

                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8303"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-4" data-plid="8303"/></td>

                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8304"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-4" data-plid="8304"/></td>

                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8305"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-4" data-plid="8305"/></td>

                    <td width="30"><strong>4</strong></td>
                    <td><strong class="color-red pl" data-plid="8306"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-4" data-plid="8306"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8312"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-5" data-plid="8312"/></td>

                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8313"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-5" data-plid="8313"/></td>

                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8314"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-5" data-plid="8314"/></td>

                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8315"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-5" data-plid="8315"/></td>

                    <td width="30"><strong>5</strong></td>
                    <td><strong class="color-red pl" data-plid="8316"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-5" data-plid="8316"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8322"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-6" data-plid="8322"/></td>

                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8323"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-6" data-plid="8323"/></td>

                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8324"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-6" data-plid="8324"/></td>

                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8325"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-6" data-plid="8325"/></td>

                    <td width="30"><strong>6</strong></td>
                    <td><strong class="color-red pl" data-plid="8326"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-6" data-plid="8326"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8332"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-7" data-plid="8332"/></td>

                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8333"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-7" data-plid="8333"/></td>

                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8334"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-7" data-plid="8334"/></td>

                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8335"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-7" data-plid="8335"/></td>

                    <td width="30"><strong>7</strong></td>
                    <td><strong class="color-red pl" data-plid="8336"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-7" data-plid="8336"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8342"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-8" data-plid="8342"/></td>

                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8343"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-8" data-plid="8343"/></td>

                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8344"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-8" data-plid="8344"/></td>

                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8345"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-8" data-plid="8345"/></td>

                    <td width="30"><strong>8</strong></td>
                    <td><strong class="color-red pl" data-plid="8346"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-8" data-plid="8346"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8352"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-9" data-plid="8352"/></td>

                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8353"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-9" data-plid="8353"/></td>

                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8354"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-9" data-plid="8354"/></td>

                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8355"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-9" data-plid="8355"/></td>

                    <td width="30"><strong>9</strong></td>
                    <td><strong class="color-red pl" data-plid="8356"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-9" data-plid="8356"/></td>
                </tr>

                <tr>
                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8362"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第六名-10" data-plid="8362"/></td>

                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8363"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第七名-10" data-plid="8363"/></td>

                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="8364"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第八名-10" data-plid="8364"/></td>

                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="9322"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第九名-10" data-plid="9322"/></td>

                    <td width="30"><strong>10</strong></td>
                    <td><strong class="color-red pl" data-plid="9321"></strong></td>
                    <td><input type="text" class="table-txt" data-name="第十名-10" data-plid="9321"/></td>
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

    </div>
</div>
<c:import url="common/bottom_zs.jsp"/>
<c:import url="../common/subPageCommonJs.jsp"/>
<script>
    var playGroupId = 9;
    var playId = 259;
    var playGroupName = '数字盘';

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