<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="bar bar-footer-secondary cl-606">
    <div class="cl-608 gfwf-cl-608">
        <a class="tab-item tab-item-clear" href="javascript:void(0)" id="btn-reset-gfwf">
            <span class="tab-label cl-953">&nbsp;清除&nbsp;</span>
        </a>

        <span class="zs-span">
            已选
            <font id="zhushu">0</font>
            注&nbsp;
        </span>
            共
            <span id="nowMoney">0</span>
            元

        <a class="tab-item tab-item-touzhu" href="javascript:void(0)" id="btn-submit-gfwf">
            <span class="tab-label cl-952">&nbsp;投注&nbsp;</span>
        </a>
    </div>
</div>

<script type="text/html" id="template_betTemplate">
    <div class="betTemplate" id="gfwfBetTemplate">
        <div class="betHead">
            <span>注单设定</span>
        </div>
        <div class="betContent">
            <div class="slidebg">
                <div class="slide-top slide-item">
                    <span class="ft"><label>赔率：</label><label id="betContent_playPl" class="fandian" data-value="{{defaultPlayPl}}">{{defaultPlayPl}}</label></span>&nbsp;&nbsp;
                    <span class="fr"><label>返利：</label><label id="betContent_fanli" class="fanli" data-value="0">0%</label></span>
                </div>
                <div class="playPlRangeContainer slide-item">
                    <input id="playPlRange" type="range">
                </div>
                <div class="slide-item">
                    <span>单注金额：
                        <input type="number" min="2" value="2" id="betContent_inputMoney"
                               onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                               onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                        >&nbsp;
                        <span class="mode_select selected" data-value="1">元</span>
                        <span class="mode_select" data-value="2">角</span>
                        <span class="mode_select" data-value="3">分</span>
                        <span class="dzje_add">+</span>
                    </span>
                </div>
                <div class="slide-item">
                    <span>下注倍数：
                        <input type="number" min="1" value="1" id="betContent_inputBeishu"
                               onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                               onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                        >&nbsp;倍
                        <span class="beishu_add">+</span>
                    </span>
                </div>
                <div class="slide-item">
                    <span>下注注数：
                        <font id="betContent_zhushu" data-value="{{zhushu}}">{{zhushu}}</font>注
                    </span>
                </div>
                <div class="slide-item">
                    <span>下注总额：
                        <font id="betContent_totalMoney">{{totalMoney}}</font>元
                    </span>
                </div>
                <div class="slide-item">
                    <span>若中奖，单注最高中：
                        <font id="betContent_canWin" color="green">{{canWin}}</font>元
                    </span>
                </div>
                <div class="slide-item"></div>
            </div>
        </div>
        <div class="betFoot">
            <a href="javascript:void(0)" class="no-btn" id="no-btn"><span>取消</span></a>
            <a href="javascript:void(0)" class="yes-btn" id="yes-btn"
               data-bet_play_group_id="{{playGroupId}}"
               data-bet_number="{{number}}"
               data-bet_play_id="{{playId}}"
               data-bet_play_pl_id="{{playPlId}}"
               data-zhushu="{{zhushu}}"
               data-bet_content="{{betContent}}"
            <%--data-bet_mode="{{betMode}}"--%>
            ><span>确认</span></a>
        </div>
    </div>
</script>