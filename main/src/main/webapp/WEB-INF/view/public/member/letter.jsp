<%@ page import="java.util.Date" %>
<%@ page import="org.apache.commons.lang3.time.DateUtils" %>
<%@ page import="org.apache.commons.lang3.time.DateFormatUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<c:import url="common/bodyStart.jsp"/>
<div class="eveb_content">
    <div class="eveb_sub_nav">
        <ul class="eveb_sub_nav_type fl">
            <li class="on"><a href="javascript:void(0)" onclick="changeStatus(this, null)">全部 <em id="totalNum">(--)</em></a></li>
            <li><a href="javascript:void(0)" onclick="changeStatus(this, true)">已读<em id="hasReadNum">(--)</em></a></li>
            <li><a href="javascript:void(0)" onclick="changeStatus(this, false)">未读 <em id="unReadNum">(--)</em></a></li>
        </ul>
        <div class="eveb_search">
            <input type="hidden" name="pageIndex" />
            <input type="hidden" name="hasRead" />
            起止时间：
            <input name="starttime" id="starttime" type="text" size="11" class="suminp" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})" value=""> - <input name="endtime" id="endtime" type="text" size="11" class="suminp" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})" value="">

            <a onclick="shaixuan()" href="javascript:void(0)" class="button_small button_1">筛选</a>
            <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(1)">今日</a>
            <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(3)">3天</a>
            <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(7)">本周</a>
        </div>
    </div>
    <div id="loading" style="display:none;"></div>
    <ul class="eveb_letter_list">
        
    </ul>
    <div class="eveb_list_footer">
        <div class="eveb_list_select fl">
            <label><input type="checkbox" id="eveb_select_all"> 全选</label>
            <a href="javascript:void(0)" class="button_small button_3 delete_confirm" onclick="delSelect()">删除</a>
            <a href="javascript:void(0)" class="button_small button_3 readed_confirm" onclick="readSelect()">标记为已读</a>
        </div>
        <div class="eveb_page fr">

        </div>
    </div>
</div>
<c:import url="common/commonJs.jsp"/>
<c:import url="common/subCommonJs.jsp"/>
<script>
    $(function() {
        getData();

    });
    function goPage(pageIndex) {
        $("input[name='pageIndex']").val(pageIndex);
        getData();
    }
    function shaixuan() {
        $("input[name='pageIndex']").val(1);
        getData();
    }

    //获取地址栏参数
    function GetQueryString(name)
    {
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if(r!=null)return  unescape(r[2]); return null;
    }

    function changeStatus(obj, hasRead) {
        $(".eveb_sub_nav_type .on").removeClass("on");
        $(obj).parent().addClass("on");
        if (null == hasRead) {
            $("input[name='hasRead']").val('');
        } else {
            $("input[name='hasRead']").val(hasRead);
        }
        $("input[name='pageIndex']").val(1);
        getData();
    }
    function showLoading() {
        var height = $(window).height() - Tools.parseInt($(".eveb_content").css("padding-top")) - $(".eveb_sub_nav").height();
        $("#loading").html('<img style="display:block;text-align:center;margin:auto;margin-top:' + (height / 2) + 'px" src="${resPath}img/base_loading.gif"/>');
        $(".eveb_letter_list").hide();
        $(".eveb_list_footer").hide();
        $("#loading").show();
    }
    function hideLoading() {
        $("#loading").hide();
        $(".eveb_letter_list").show();
        $(".eveb_list_footer").show();
        $("input[type='checkbox']").removeAttr("checked");
    }
    function getData() {
        ajaxRequest({
            url: "<%=basePath%>member/ajaxGetLetter.json",
            data: {
                pageIndex: $("input[name='pageIndex']").val(),
                hasRead: $("input[name='hasRead']").val(),
                startTime: $("input[name='starttime']").val(),
                endTime: $("input[name='endtime']").val()
            },
            beforeSend: function() {
                showLoading();
            },
            success: function(json) {
                if (json.result != 1) {
                    return;
                }

                $("#totalNum").html(json.totalNum);
                $("#hasReadNum").html(json.totalHasReadNum);
                $("#unReadNum").html(json.totalUnReadNum);
                if (json.userInboxList.length == 0) {
                    $("#loading").html('<p style="text-align:center;padding:15px 0">暂无数据</p>');
                    return;
                }
                $("input[name='pageIndex']").val(json.pageNum);

                // 数据
                var str = '';
                $.each(json.userInboxList, function(index, value) {
                    str += '<li>';
                    str += '<div class="eveb_letter_title num_'+ value.id +'">';
                    str += '<span class="fl">';
                    str += '<input type="checkbox" name="ids[]" value="' + value.id + '">';
                    str += '<a href="javascript:void(0)" '+(value.hasRead ? '' : 'class="new"')+'>' + value.content.substr(0, 20) + '...</a>';
                    str += value.hasRead ? '' : '<em>新</em>';
                    str += '</span>';
                    str += '<span class="fr">' + Tools.formatDate(value.createTime) + '</span>';
                    str += '</div>';
                    str += '<div class="detail">';
                    str += '<p>' + value.content + '</p>';
                    str += '<div class="eveb_letter_control">';
                    str += '<a href="javascript:void(0)" class="button_small button_3 delete_confirm" onclick="del(' + value.id + ')">删除</a>';
                    if (!value.hasRead) {
                        str += '<a href="javascript:void(0)" class="button_small button_3 readed_confirm" onclick="read(' + value.id + ')">标记为已读</a>';
                    }
                    str += '</div>';
                    str += '</div>';
                    str += '</li>';
                });
                $(".eveb_letter_list").html(str);
                // 分页
                str = '';
                str += '<span style="margin:0 3px;float:left;width:auto;padding:0 5px;height:25px;line-height:25px;">总共' + (Math.ceil(json.total / json.pageSize)) + '页，' + json.total + '条，当前第' + json.pageNum + '页</span>';
                if (json.hasPreviousPage) {
                    str += '<a href="javascript:void(0)" onclick="goPage(' + (json.prePage) + ')" style="margin:0 3px;float:left;width:auto;padding:0 5px;">上一页</a>';
                } else {
                    str += '<a href="javascript:void(0)" style="margin:0 3px;float:left;width:auto;padding:0 5px;">上一页</a>';
                }
                str += '<span style="margin:0 3px;float:left;width:auto;padding:0 5px;height:25px;line-height:25px;">跳转到</span>';
                str += '<input type="text" id="pageNum" style="margin:0 3px;float:left;border:1px solid #eee;width:30px;line-height:25px;height:25px;" value="' + json.pageNum + '" />';
                str += '<button class="letterbtn-bg" onclick="goPage(document.getElementById(\'pageNum\').value)" type="text" style="margin:0 3px;float:left;border:1px solid #eee;width:30px;line-height:25px;height:25px;background:#fa6200;padding:0 5px;width:auto;color:#fff;font-size:14px;" value="0">确定</button>';
                if (json.hasNextPage) {
                    str += '<a href="javascript:void(0)" onclick="goPage(' + (json.nextPage) + ')" style="margin:0 3px;float:left;width:auto;padding:0 5px;">下一页</a>';
                } else {
                    str += '<a href="javascript:void(0)" style="margin:0 3px;float:left;width:auto;padding:0 5px;">下一页</a>';
                }
                $(".eveb_page").html(str);
                eveb_letter_list();
                eveb_select_all();
                hideLoading();

                //跳转展开相对应的信件内容
                var paramStr = GetQueryString('cs');
                if(typeof paramStr != 'undefined'){
                    var urlStr = ".eveb_letter_list li .num_"+ paramStr;
                    $(urlStr).trigger('click');
                }

            }
        });
    }
    //站内信
    function eveb_letter_list(){
        $('.eveb_letter_list li .eveb_letter_title').click(function(){
            $(this).parent('li').css('background','#F5F5F5').siblings().css('background','#FFF');
            if(!$(this).siblings('.detail').is(':visible')){
                $(this).siblings('.detail').slideDown().parent('li').siblings().children('.detail').slideUp();
            }else{
                $(this).siblings('.detail').slideUp();
                $(this).parent('li').css('background','#FFF');
            }
        });
        $('.eveb_letter_list li:last').css('border-bottom',0);
    }

    //全选
    function eveb_select_all(){
        $("#eveb_select_all").click(function(){
            $("input[name='ids[]']").attr("checked", this.checked).prop("checked", this.checked);
        });
    }

    function delSelect() {
        var ids = [];
        $("input[name='ids[]']").each(function() {
            if ($(this).is(":checked")) {
                ids.push($(this).val());
            }
        });

        if (ids.length == 0) {
            alert("请选择");
            return;
        }
        delList(ids);
    }
    function del(id) {
        var ids = [];
        ids.push(id);
        delList(ids);
    }
    function delList(ids) {
        if (!confirm("确认要删除吗？")) {
            return;
        }

        ajaxRequest({
            url: "<%=basePath%>member/ajaxDelZnx.json",
            data: {
                ids: ids
            },
            beforeSend: function() {
                showLoading();
            },
            success: function(json) {
                if (json.result == 1) {

                }
                getData();
            }
        });
    }

    function readSelect() {
        var ids = [];
        $("input[name='ids[]']").each(function() {
            if ($(this).is(":checked")) {
                ids.push($(this).val());
            }
        });

        if (ids.length == 0) {
            alert("请选择");
            return;
        }
        readList(ids);
    }
    function read(id) {
        var ids = [];
        ids.push(id);
        readList(ids);
    }
    function readList(ids) {
        ajaxRequest({
            url: "<%=basePath%>member/ajaxReadZnx.json",
            data: {
                ids: ids
            },
            beforeSend: function() {
                showLoading();
            },
            success: function(json) {
                if (json.result == 1) {

                }
                getData();
            }
        });
    }
</script>
<c:import url="common/bodyEnd.jsp"/>