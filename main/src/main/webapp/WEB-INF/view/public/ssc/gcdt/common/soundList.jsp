<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<select name="" id="selectCount">
    <option data-file="${resPath}sounds/sound_1.mp3">铃声一</option>
    <option data-file="${resPath}sounds/sound_2.mp3">铃声二</option>
    <option data-file="${resPath}sounds/sound_3.mp3">铃声三</option>
    <option data-file="${resPath}sounds/sound_4.mp3">铃声四</option>
    <option data-file="${resPath}sounds/sound_5.mp3">铃声五</option>
</select>
