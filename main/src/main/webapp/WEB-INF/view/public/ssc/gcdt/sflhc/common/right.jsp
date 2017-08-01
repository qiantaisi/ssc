<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<div class="fr main-right">
    <div class="table-common table-border-color">
        <table width="100%" border="1">
            <tbody>
            <tr>
                <script>
                    var arr = [];
                    for (var i = 25; i <= 49; ++i) {
                        arr.push(i);
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>大</td>
                <script>
                    arr = [];
                    for (var i = 1; i <= 24; ++i) {
                        arr.push(i);
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>小</td>
            </tr>
            <tr>
                <script>
                    arr = [];
                    for (var i = 1; i <= 49; ++i) {
                        if (i % 2 == 1) {
                            arr.push(i);
                        }
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>单</td>
                <script>
                    arr = [];
                    for (var i = 1; i <= 49; ++i) {
                        if (i % 2 == 0) {
                            arr.push(i);
                        }
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>双</td>
            </tr>
            <tr>
                <script>
                    arr = [1, 7, 12, 18, 23, 29, 30, 34, 45, 5, 16, 21, 27, 32, 38, 43, 49, 3, 9, 10, 14, 25, 36, 41, 47];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>合单</td>
                <script>
                    arr = [2, 8, 13, 19, 24, 34, 35, 40, 46, 6, 11, 17, 22, 28, 33, 44, 4, 15, 20, 26, 37, 42, 48];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>合双</td>
            </tr>
            <tr>
                <script>
                    arr = [];
                    for (var i = 1; i <= 49; ++i) {
                        if (i % 2 == 1 && i >= 25) {
                            arr.push(i);
                        }
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>大单</td>
                <script>
                    arr = [];
                    for (var i = 1; i <= 49; ++i) {
                        if (i % 2 == 1 && i <= 24) {
                            arr.push(i);
                        }
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>小单</td>
            </tr>
            <tr>
                <script>
                    arr = [];
                    for (var i = 1; i <= 49; ++i) {
                        if (i % 2 == 0 && i >= 25) {
                            arr.push(i);
                        }
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>大双</td>
                <script>
                    arr = [];
                    for (var i = 1; i <= 49; ++i) {
                        if (i % 2 == 0 && i <= 24) {
                            arr.push(i);
                        }
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
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
                <script>
                    arr = getSxValue('虎');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>虎</td>
                <script>
                    arr = getSxValue('兔');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>兔</td>
            </tr>
            <tr>
                <script>
                    arr = getSxValue('龙');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>龙</td>
                <script>
                    arr = getSxValue('蛇');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>蛇</td>
            </tr>
            <tr>
                <script>
                    arr = getSxValue('马');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>马</td>
                <script>
                    arr = getSxValue('羊');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>羊</td>
            </tr>
            <tr>
                <script>
                    arr = getSxValue('猴');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>猴</td>
                <script>
                    arr = getSxValue('鸡');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>鸡</td>
            </tr>
            <tr>
                <script>
                    arr = getSxValue('狗');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>狗</td>
                <script>
                    arr = getSxValue('猪');
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>猪</td>
            </tr>
            <tr>
                <script>
                    arr = getSxValue('牛').concat(getSxValue('马')).concat(getSxValue('羊')).concat(getSxValue('鸡')).concat(getSxValue('狗')).concat(getSxValue('猪'));
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>家禽</td>
                <script>
                    arr = getSxValue('鼠').concat(getSxValue('虎')).concat(getSxValue('兔')).concat(getSxValue('龙')).concat(getSxValue('蛇')).concat(getSxValue('猴'));
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>野兽</td>
            </tr>
            <tr>
                <script>
                    arr = [29, 30, 34, 35, 40, 45, 46];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-red">红</span>大</td>
                <script>
                    arr = [1, 2, 7, 8, 12, 13, 18, 19, 23, 24];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-red">红</span>小</td>
            </tr>
            <tr>
                <script>
                    arr = [1, 7, 13, 19, 23, 29, 35, 45];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-red">红</span>单</td>
                <script>
                    arr = [2, 8, 12, 18, 24, 30, 34, 35, 40, 46];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-red">红</span>双</td>
            </tr>
            <tr>
                <script>
                    arr = [25, 26, 31, 36, 37, 41, 42, 47, 48];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-blue">蓝</span>大</td>
                <script>
                    arr = [3, 4, 9, 10, 14, 15, 20];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-blue">蓝</span>小</td>
            </tr>
            <tr>
                <script>
                    arr = [3, 9, 15, 25, 31, 37, 41, 47];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-blue">蓝</span>单</td>
                <script>
                    arr = [4, 10, 14, 20, 26, 36, 42, 48];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-blue">蓝</span>双</td>
            </tr>
            <tr>
                <script>
                    arr = [27, 28, 32, 33, 39, 43, 44, 49];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-green">绿</span>大</td>
                <script>
                    arr = [5, 6, 11, 16, 17, 21, 22];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-green">绿</span>小</td>
            </tr>
            <tr>
                <script>
                    arr = [5, 11, 17, 21, 27, 33, 39, 43, 49];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-green">绿</span>单</td>
                <script>
                    arr = [6, 16, 22, 28, 32, 38, 44];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td><span class="color-green">绿</span>双</td>
            </tr>
            <tr>
                <script>
                    arr = [1, 2, 7, 8, 12, 13, 18, 19, 23, 24, 29, 30, 34, 35, 40, 45, 46];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>红波</td>
                <script>
                    arr = [3, 4, 9, 10, 14, 15, 20, 25, 26, 31, 36, 37, 41, 42, 47, 48];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>蓝波</td>
            </tr>
            <tr>
                <script>
                    arr = [5, 6, 11, 16, 17, 21, 22, 27, 28, 32, 33, 38, 39, 43, 44, 49];
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>绿波</td>
                <script>
                    arr = [];
                    for (var i = 1; i <= 49; ++i) {
                        arr.push(i);
                    }
                    document.write('<td><input type="checkbox" name="checkbox" value="checkbox" data-nums="' + arr.join(",") + '"></td>');
                </script>
                <td>全选</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>