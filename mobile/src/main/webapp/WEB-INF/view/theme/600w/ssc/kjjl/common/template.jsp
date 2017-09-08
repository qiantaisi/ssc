<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="project38.api.utils.RequestUtils" %>
<%
    String basePath = RequestUtils.getBasePath(request);
%>
<script type="text/html" id="template_1">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-1.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">重庆时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_2">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-2.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">天津时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_3">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-3.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">新疆时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_4">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-4.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">体彩排列3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res"></div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_5">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-5.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">福彩3D</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_6">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-6.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">香港六合彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle lhc_item-subtitle">
                    <span class="ball {{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                    <span class="ball {{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                    <span class="ball {{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                    <span class="ball {{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                    <span class="ball {{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                    <span class="ball {{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                    <span class="symbol">+</span>
                    <span class="ball {{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
                </div>
                <div class="item-text">
                    <span>{{sx1}}</span>
                    <span>{{sx2}}</span>
                    <span>{{sx3}}</span>
                    <span>{{sx4}}</span>
                    <span>{{sx5}}</span>
                    <span>{{sx6}}</span>
                    <i>&nbsp;&nbsp;&nbsp;</i>
                    <span>{{sx7}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_7">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-7.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京28</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_8">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-8.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京快乐8</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle item-subtitle_res">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                    <span class="ball">{{num9}}</span>
                    <span class="ball">{{num10}}</span>
                    <span class="ball">{{num11}}</span>
                    <span class="ball">{{num12}}</span>
                    <span class="ball">{{num13}}</span>
                    <span class="ball">{{num14}}</span>
                    <span class="ball">{{num15}}</span>
                    <span class="ball">{{num16}}</span>
                    <span class="ball">{{num17}}</span>
                    <span class="ball">{{num18}}</span>
                    <span class="ball">{{num19}}</span>
                    <span class="ball">{{num20}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_9">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-9.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">北京PK10</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_10">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-10.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">重庆幸运农场</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                </div>
                <div class="item-text">
                    <span>{{str1}}</span>
                    <span>{{str2}}</span>
                    <span>{{str3}}</span>
                    <span>{{str4}}</span>
                    <span>{{str5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_11">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-11.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">广东快乐十分</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball">{{num7}}</span>
                    <span class="ball">{{num8}}</span>
                </div>
                <div class="item-text">
                    <span>{{str1}}</span>
                    <span>{{str2}}</span>
                    <span>{{str3}}</span>
                    <span>{{str4}}</span>
                    <span>{{str5}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_13">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-13.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">三分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_14">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-14.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">幸运飞艇</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_15">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-15.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">分分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_16">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-16.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">两分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_17">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-17.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">五分时时彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text">
                    <span>{{sum}}</span>
                    <span>{{ds}}</span>
                    <span>{{dx}}</span>
                    <span>{{lh}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_18">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-18.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">江苏快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text">
                    <span>{{hezhi}}</span>
                    <span>{{danS}}</span>
                    <span>{{daX}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_19">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-19.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">湖北快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text">
                    <span>{{hezhi}}</span>
                    <span>{{danS}}</span>
                    <span>{{daX}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_20">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-20.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">安徽快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text">
                    <span>{{hezhi}}</span>
                    <span>{{danS}}</span>
                    <span>{{daX}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_21">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-21.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">吉林快3</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                </div>
                <div class="item-text">
                    <span>{{hezhi}}</span>
                    <span>{{danS}}</span>
                    <span>{{daX}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_22">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-22.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">10分六合彩</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle lhc_item-subtitle">
                    <span class="ball {{if bose1 == 1}}col0{{else if bose1 == 2}}col1{{/if}}">{{num1}}</span>
                    <span class="ball {{if bose2 == 1}}col0{{else if bose2 == 2}}col1{{/if}}">{{num2}}</span>
                    <span class="ball {{if bose3 == 1}}col0{{else if bose3 == 2}}col1{{/if}}">{{num3}}</span>
                    <span class="ball {{if bose4 == 1}}col0{{else if bose4 == 2}}col1{{/if}}">{{num4}}</span>
                    <span class="ball {{if bose5 == 1}}col0{{else if bose5 == 2}}col1{{/if}}">{{num5}}</span>
                    <span class="ball {{if bose6 == 1}}col0{{else if bose6 == 2}}col1{{/if}}">{{num6}}</span>
                    <span class="symbol">+</span>
                    <span class="ball {{if bose7 == 1}}col0{{else if bose7 == 2}}col1{{/if}}">{{num7}}</span>
                </div>
                <div class="item-text">
                    <span>{{sx1}}</span>
                    <span>{{sx2}}</span>
                    <span>{{sx3}}</span>
                    <span>{{sx4}}</span>
                    <span>{{sx5}}</span>
                    <span>{{sx6}}</span>
                    <i>&nbsp;&nbsp;&nbsp;</i>
                    <span>{{sx7}}</span>
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_23">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-23.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">极速PK10</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ballpk bg-{{num1}}">{{num1}}</span>
                    <span class="ballpk bg-{{num2}}">{{num2}}</span>
                    <span class="ballpk bg-{{num3}}">{{num3}}</span>
                    <span class="ballpk bg-{{num4}}">{{num4}}</span>
                    <span class="ballpk bg-{{num5}}">{{num5}}</span>
                    <span class="ballpk bg-{{num6}}">{{num6}}</span>
                    <span class="ballpk bg-{{num7}}">{{num7}}</span>
                    <span class="ballpk bg-{{num8}}">{{num8}}</span>
                    <span class="ballpk bg-{{num9}}">{{num9}}</span>
                    <span class="ballpk bg-{{num10}}">{{num10}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>
<script type="text/html" id="template_24">
    <li>
        <a class="item-link item-content" href="<%=basePath%>ssc/kjjl/list.html?playGroupId=24">
            <div class="item-media"><img src="${resPath}img/cz/cz-24.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">广东11选5</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime |
                        dateFormat:'yy-mm-dd HH:MM'}}
                    </div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                </div>
                <div class="item-text item-text_res">
                </div>
            </div>
        </a>
    </li>
</script>

<script type="text/html" id="template_12">
    <li>
        <a class="item-content">
            <div class="item-media"><img src="${resPath}img/cz/cz-12.png" style='width: 2.2rem;'></div>
            <div class="item-inner">
                <div class="item-title-row">
                    <div class="item-title">双色球</div>
                    <div class="item-after"><font class="cl-1105">{{number}}期</font>&nbsp;{{openTime | dateFormat:'yy-mm-dd HH:MM'}}</div>
                </div>
                <div class="item-subtitle">
                    <span class="ball">{{num1}}</span>
                    <span class="ball">{{num2}}</span>
                    <span class="ball">{{num3}}</span>
                    <span class="ball">{{num4}}</span>
                    <span class="ball">{{num5}}</span>
                    <span class="ball">{{num6}}</span>
                    <span class="ball col0">{{num7}}</span>
                </div>
            </div>
        </a>
    </li>
</script>