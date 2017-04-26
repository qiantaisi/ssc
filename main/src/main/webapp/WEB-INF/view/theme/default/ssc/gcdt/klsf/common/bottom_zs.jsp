<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script>
    $(function () {
        ajaxRequest({
            url: "<%=basePath%>ssc/ajaxGetHistory.json",
            data: {
                pageIndex: 1,
                pageSize: 30,
                playGroupId: playGroupId
            },
            success: function (json) {
                if (json.result != 1) {
                    return;
                }
                var data = json.sscHistoryList;
                data.reverse();

                renderViewRight(data);
            }
        });

    });

    function renderViewRight(json) {
        var result = {
            d1: {
                da: {name: '第一球-大', num: 0},
                xiao: {name: '第一球-小', num: 0},
                dan: {name: '第一球-单', num: 0},
                shuang: {name: '第一球-双', num: 0},
                wd: {name: '第一球-尾大', num: 0},
                wx: {name: '第一球-尾小', num: 0},
                hd: {name: '第一球-合单', num: 0},
                hs: {name: '第一球-合双', num: 0}
            },
            d2: {
                da: {name: '第二球-大', num: 0},
                xiao: {name: '第二球-小', num: 0},
                dan: {name: '第二球-单', num: 0},
                shuang: {name: '第二球-双', num: 0},
                wd: {name: '第二球-尾大', num: 0},
                wx: {name: '第二球-尾小', num: 0},
                hd: {name: '第二球-合单', num: 0},
                hs: {name: '第二球-合双', num: 0}
            },
            d3: {
                da: {name: '第三球-大', num: 0},
                xiao: {name: '第三球-小', num: 0},
                dan: {name: '第三球-单', num: 0},
                shuang: {name: '第三球-双', num: 0},
                wd: {name: '第三球-尾大', num: 0},
                wx: {name: '第三球-尾小', num: 0},
                hd: {name: '第三球-合单', num: 0},
                hs: {name: '第三球-合双', num: 0}
            },
            d4: {
                da: {name: '第四球-大', num: 0},
                xiao: {name: '第四球-小', num: 0},
                dan: {name: '第四球-单', num: 0},
                shuang: {name: '第四球-双', num: 0},
                wd: {name: '第四球-尾大', num: 0},
                wx: {name: '第四球-尾小', num: 0},
                hd: {name: '第四球-合单', num: 0},
                hs: {name: '第四球-合双', num: 0}
            },
            d5: {
                da: {name: '第五球-大', num: 0},
                xiao: {name: '第五球-小', num: 0},
                dan: {name: '第五球-单', num: 0},
                shuang: {name: '第五球-双', num: 0},
                wd: {name: '第五球-尾大', num: 0},
                wx: {name: '第五球-尾小', num: 0},
                hd: {name: '第五球-合单', num: 0},
                hs: {name: '第五球-合双', num: 0}
            },
            d6: {
                da: {name: '第六球-大', num: 0},
                xiao: {name: '第六球-小', num: 0},
                dan: {name: '第六球-单', num: 0},
                shuang: {name: '第六球-双', num: 0},
                wd: {name: '第六球-尾大', num: 0},
                wx: {name: '第六球-尾小', num: 0},
                hd: {name: '第六球-合单', num: 0},
                hs: {name: '第六球-合双', num: 0}
            },
            d7: {
                da: {name: '第七球-大', num: 0},
                xiao: {name: '第七球-小', num: 0},
                dan: {name: '第七球-单', num: 0},
                shuang: {name: '第七球-双', num: 0},
                wd: {name: '第七球-尾大', num: 0},
                wx: {name: '第七球-尾小', num: 0},
                hd: {name: '第七球-合单', num: 0},
                hs: {name: '第七球-合双', num: 0}
            },
            d8: {
                da: {name: '第八球-大', num: 0},
                xiao: {name: '第八球-小', num: 0},
                dan: {name: '第八球-单', num: 0},
                shuang: {name: '第八球-双', num: 0},
                wd: {name: '第八球-尾大', num: 0},
                wx: {name: '第八球-尾小', num: 0},
                hd: {name: '第八球-合单', num: 0},
                hs: {name: '第八球-合双', num: 0}
            },
            zh: {
                da: {name: '总和-大', num: 0},
                xiao: {name: '总和-小', num: 0},
                dan: {name: '总和-单', num: 0},
                shuang: {name: '总和-双', num: 0},
                wd: {name: '总和-尾大', num: 0},
                wx: {name: '总和-尾小', num: 0},
                long: {name: '总和-龙', num: 0},
                hu: {name: '总和-虎', num: 0}
            },
        };

        for (var i = 0; i < json.length; ++i) {
            var value = json[i];
            var openCode = value.openCode.split(",");
            var num1 = Tools.parseInt(openCode[0]);
            var num2 = Tools.parseInt(openCode[1]);
            var num3 = Tools.parseInt(openCode[2]);
            var num4 = Tools.parseInt(openCode[3]);
            var num5 = Tools.parseInt(openCode[4]);
            var num6 = Tools.parseInt(openCode[5]);
            var num7 = Tools.parseInt(openCode[6]);
            var num8 = Tools.parseInt(openCode[7]);

            if (num1 >= 11) {
                result.d1.da.num++;
                result.d1.xiao.num = 0;
            } else {
                result.d1.da.num = 0;
                result.d1.xiao.num++;
            }
            if (num1 % 2 == 0) {
                result.d1.shuang.num++;
                result.d1.dan.num = 0;
            } else {
                result.d1.shuang.num = 0;
                result.d1.dan.num++;
            }
            if (num1 % 10 >= 5) {
                result.d1.wd.num++;
                result.d1.wx.num = 0;
            } else {
                result.d1.wd.num = 0;
                result.d1.wx.num++;
            }
            if ((Math.floor(num1 / 10) + num1 % 10) % 2 == 0) {
                result.d1.hs.num++;
                result.d1.hd.num = 0;
            } else {
                result.d1.hs.num = 0;
                result.d1.hd.num++;
            }

            if (num2 >= 11) {
                result.d2.da.num++;
                result.d2.xiao.num = 0;
            } else {
                result.d2.da.num = 0;
                result.d2.xiao.num++;
            }
            if (num2 % 2 == 0) {
                result.d2.shuang.num++;
                result.d2.dan.num = 0;
            } else {
                result.d2.shuang.num = 0;
                result.d2.dan.num++;
            }
            if (num2 % 10 >= 5) {
                result.d2.wd.num++;
                result.d2.wx.num = 0;
            } else {
                result.d2.wd.num = 0;
                result.d2.wx.num++;
            }
            if ((Math.floor(num2 / 10) + num2 % 10) % 2 == 0) {
                result.d2.hs.num++;
                result.d2.hd.num = 0;
            } else {
                result.d2.hs.num = 0;
                result.d2.hd.num++;
            }

            if (num3 >= 11) {
                result.d3.da.num++;
                result.d3.xiao.num = 0;
            } else {
                result.d3.da.num = 0;
                result.d3.xiao.num++;
            }
            if (num3 % 2 == 0) {
                result.d3.shuang.num++;
                result.d3.dan.num = 0;
            } else {
                result.d3.shuang.num = 0;
                result.d3.dan.num++;
            }
            if (num3 % 10 >= 5) {
                result.d3.wd.num++;
                result.d3.wx.num = 0;
            } else {
                result.d3.wd.num = 0;
                result.d3.wx.num++;
            }
            if ((Math.floor(num3 / 10) + num3 % 10) % 2 == 0) {
                result.d3.hs.num++;
                result.d3.hd.num = 0;
            } else {
                result.d3.hs.num = 0;
                result.d3.hd.num++;
            }

            if (num4 >= 11) {
                result.d4.da.num++;
                result.d4.xiao.num = 0;
            } else {
                result.d4.da.num = 0;
                result.d4.xiao.num++;
            }
            if (num4 % 2 == 0) {
                result.d4.shuang.num++;
                result.d4.dan.num = 0;
            } else {
                result.d4.shuang.num = 0;
                result.d4.dan.num++;
            }
            if (num4 % 10 >= 5) {
                result.d4.wd.num++;
                result.d4.wx.num = 0;
            } else {
                result.d4.wd.num = 0;
                result.d4.wx.num++;
            }
            if ((Math.floor(num4 / 10) + num4 % 10) % 2 == 0) {
                result.d4.hs.num++;
                result.d4.hd.num = 0;
            } else {
                result.d4.hs.num = 0;
                result.d4.hd.num++;
            }

            if (num5 >= 11) {
                result.d5.da.num++;
                result.d5.xiao.num = 0;
            } else {
                result.d5.da.num = 0;
                result.d5.xiao.num++;
            }
            if (num5 % 2 == 0) {
                result.d5.shuang.num++;
                result.d5.dan.num = 0;
            } else {
                result.d5.shuang.num = 0;
                result.d5.dan.num++;
            }
            if (num5 % 10 >= 5) {
                result.d5.wd.num++;
                result.d5.wx.num = 0;
            } else {
                result.d5.wd.num = 0;
                result.d5.wx.num++;
            }
            if ((Math.floor(num5 / 10) + num5 % 10) % 2 == 0) {
                result.d5.hs.num++;
                result.d5.hd.num = 0;
            } else {
                result.d5.hs.num = 0;
                result.d5.hd.num++;
            }

            if (num6 >= 11) {
                result.d6.da.num++;
                result.d6.xiao.num = 0;
            } else {
                result.d6.da.num = 0;
                result.d6.xiao.num++;
            }
            if (num6 % 2 == 0) {
                result.d6.shuang.num++;
                result.d6.dan.num = 0;
            } else {
                result.d6.shuang.num = 0;
                result.d6.dan.num++;
            }
            if (num6 % 10 >= 5) {
                result.d6.wd.num++;
                result.d6.wx.num = 0;
            } else {
                result.d6.wd.num = 0;
                result.d6.wx.num++;
            }
            if ((Math.floor(num6 / 10) + num6 % 10) % 2 == 0) {
                result.d6.hs.num++;
                result.d6.hd.num = 0;
            } else {
                result.d6.hs.num = 0;
                result.d6.hd.num++;
            }

            if (num7 >= 11) {
                result.d7.da.num++;
                result.d7.xiao.num = 0;
            } else {
                result.d7.da.num = 0;
                result.d7.xiao.num++;
            }
            if (num7 % 2 == 0) {
                result.d7.shuang.num++;
                result.d7.dan.num = 0;
            } else {
                result.d7.shuang.num = 0;
                result.d7.dan.num++;
            }
            if (num7 % 10 >= 5) {
                result.d7.wd.num++;
                result.d7.wx.num = 0;
            } else {
                result.d7.wd.num = 0;
                result.d7.wx.num++;
            }
            if ((Math.floor(num7 / 10) + num7 % 10) % 2 == 0) {
                result.d7.hs.num++;
                result.d7.hd.num = 0;
            } else {
                result.d7.hs.num = 0;
                result.d7.hd.num++;
            }

            if (num8 >= 11) {
                result.d8.da.num++;
                result.d8.xiao.num = 0;
            } else {
                result.d8.da.num = 0;
                result.d8.xiao.num++;
            }
            if (num8 % 2 == 0) {
                result.d8.shuang.num++;
                result.d8.dan.num = 0;
            } else {
                result.d8.shuang.num = 0;
                result.d8.dan.num++;
            }
            if (num8 % 10 >= 5) {
                result.d8.wd.num++;
                result.d8.wx.num = 0;
            } else {
                result.d8.wd.num = 0;
                result.d8.wx.num++;
            }
            if ((Math.floor(num8 / 10) + num8 % 10) % 2 == 0) {
                result.d8.hs.num++;
                result.d8.hd.num = 0;
            } else {
                result.d8.hs.num = 0;
                result.d8.hd.num++;
            }

            var sum = num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8;
            if (sum > 84) {
                result.zh.da.num++;
                result.zh.xiao.num = 0;
            } else if (sum < 84) {
                result.zh.da.num = 0;
                result.zh.xiao.num++;
            }
            if (sum % 2 == 0) {
                result.zh.shuang.num++;
                result.zh.dan.num = 0;
            } else {
                result.zh.shuang.num = 0;
                result.zh.dan.num++;
            }
            if (sum % 10 >= 5) {
                result.zh.wd.num++;
                result.zh.wx.num = 0;
            } else {
                result.zh.wd.num = 0;
                result.zh.wx.num++;
            }
            if (num1 > num7) {
                result.zh.long.num++;
                result.zh.hu.num = 0;
            } else if (num1 < num7) {
                result.zh.long.num = 0;
                result.zh.hu.num++;
            }
        }

        var arr = [];
        arr.push(result.d1.da);
        arr.push(result.d1.xiao);
        arr.push(result.d1.dan);
        arr.push(result.d1.shuang);
        arr.push(result.d1.wd);
        arr.push(result.d1.wx);
        arr.push(result.d1.hd);
        arr.push(result.d1.hs);
        arr.push(result.d2.da);
        arr.push(result.d2.xiao);
        arr.push(result.d2.dan);
        arr.push(result.d2.shuang);
        arr.push(result.d2.wd);
        arr.push(result.d2.wx);
        arr.push(result.d2.hd);
        arr.push(result.d2.hs);
        arr.push(result.d3.da);
        arr.push(result.d3.xiao);
        arr.push(result.d3.dan);
        arr.push(result.d3.shuang);
        arr.push(result.d3.wd);
        arr.push(result.d3.wx);
        arr.push(result.d3.hd);
        arr.push(result.d3.hs);
        arr.push(result.d4.da);
        arr.push(result.d4.xiao);
        arr.push(result.d4.dan);
        arr.push(result.d4.shuang);
        arr.push(result.d4.wd);
        arr.push(result.d4.wx);
        arr.push(result.d4.hd);
        arr.push(result.d4.hs);
        arr.push(result.d5.da);
        arr.push(result.d5.xiao);
        arr.push(result.d5.dan);
        arr.push(result.d5.shuang);
        arr.push(result.d5.wd);
        arr.push(result.d5.wx);
        arr.push(result.d5.hd);
        arr.push(result.d5.hs);
        arr.push(result.d6.da);
        arr.push(result.d6.xiao);
        arr.push(result.d6.dan);
        arr.push(result.d6.shuang);
        arr.push(result.d6.wd);
        arr.push(result.d6.wx);
        arr.push(result.d6.hd);
        arr.push(result.d6.hs);
        arr.push(result.d7.da);
        arr.push(result.d7.xiao);
        arr.push(result.d7.dan);
        arr.push(result.d7.shuang);
        arr.push(result.d7.wd);
        arr.push(result.d7.wx);
        arr.push(result.d7.hd);
        arr.push(result.d7.hs);
        arr.push(result.d8.da);
        arr.push(result.d8.xiao);
        arr.push(result.d8.dan);
        arr.push(result.d8.shuang);
        arr.push(result.d8.wd);
        arr.push(result.d8.wx);
        arr.push(result.d8.hd);
        arr.push(result.d8.hs);
        arr.push(result.zh.da);
        arr.push(result.zh.xiao);
        arr.push(result.zh.dan);
        arr.push(result.zh.shuang);
        arr.push(result.zh.wd);
        arr.push(result.zh.wx);
        arr.push(result.zh.long);
        arr.push(result.zh.hu);

        arr.sort(function (a, b) {
            var val1 = a.num;
            var val2 = b.num;
            if (val1 < val2) {
                return -1;
            } else if (val1 > val2) {
                return 1;
            } else {
                return 0;
            }
        });
        arr = arr.reverse();

        var str = '';
        str += '<div class="table-common table-border-color">';
        str += '<table width="100%" border="1">';
        str += '<tbody>';
        str += '<tr>';
        str += '<td colspan="2">两面长龙排行</td>';
        str += '</tr>';
        str += '<tr>';
        str += '<td colspan="2">统计至第' + json[json.length - 1].number + '期</td>';
        str += '</tr>';
        for (var i = 0; i < 5 && i < arr.length; ++i) {
            str += '<tr>';
            str += '<td width="142">' + arr[i].name + '</td>';
            str += '<td>' + arr[i].num + '</td>';
            str += '</tr>';
        }
        str += '</tbody>';
        str += '</table>';
        str += '</div>';
        $(".main-right").html(str);
    }
</script>
