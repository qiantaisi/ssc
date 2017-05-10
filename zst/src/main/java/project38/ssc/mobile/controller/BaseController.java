package project38.ssc.mobile.controller;

import project38.api.common.utils.JSONUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.CompanyShortNameResult;
import project38.api.result.UserSessionResult;
import project38.api.utils.ApiUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * 基站控制器
 * Created by Administrator on 2016/4/9.
 */
public abstract class BaseController {
    private static Log log = LogFactory.getLog(BaseController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;

    /** 基于@ExceptionHandler异常处理 */
    @ExceptionHandler
    public ModelAndView exp(HttpServletRequest request, Exception ex) {
        log.error(this, ex);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("error/500/index", modelMap);
    }

    /**
     * 渲染视图
     *
     *
     * @param jspLocation
     * @param modelMap
     * @return
     */
    protected ModelAndView renderView(HttpServletRequest request, String jspLocation, Map<String, Object> modelMap) {
        if (null == modelMap) {
            modelMap = new HashMap<String, Object>();
        }

        String theme = null;
        if (null != request) {
            theme = (String) request.getAttribute("theme");
        }

        if (StringUtils.isBlank(theme)) {
            theme = "default";
        }

        if (null != request) {
            request.setAttribute("theme", theme);
        }

        request.setAttribute("resPath", request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/static/theme/" + theme + "/");

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        UserSessionResult userSessionResult = ApiUtils.getUserSession(uid, token, this.getCompanyShortName());
        if (null != userSessionResult && userSessionResult.getResult() == 1) {
            modelMap.put("userSession", userSessionResult);
        }

        ModelAndView modelAndView = new ModelAndView("theme/" + theme + "/" + jspLocation);
        modelAndView.addAllObjects(modelMap);
        return modelAndView;
    }

     /**
     * 渲染视图
     *
     * @param jspLocation
     * @param modelMap
     * @return
     */
    protected ModelAndView renderView(String jspLocation, Map<String, Object> modelMap) {
        return this.renderView(httpServletRequest, jspLocation, modelMap);
    }

    /**
     * 输出json
     *
     * @param obj
     * @return
     */

    protected String renderJson(Object obj) {
        return JSONUtils.toJSONStr(obj);
    }

    protected Long getUid(HttpServletRequest httpServletRequest) {
        String uidStr = httpServletRequest.getParameter("uid");
        if (StringUtils.isBlank(uidStr)) {
            uidStr = (String) httpServletRequest.getAttribute("uid");
            if (StringUtils.isBlank(uidStr)) {
                Cookie[] cookies = httpServletRequest.getCookies();
                if (cookies != null) {
                    for (int i = 0; i < cookies.length; ++i) {
                        if (StringUtils.equals("uid", cookies[i].getName())) {
                            uidStr = cookies[i].getValue();
                            break;
                        }
                    }
                }
            }
        }
        if (StringUtils.isNotBlank(uidStr)) {
            return Long.parseLong(uidStr);
        } else {
            return null;
        }
    }

    protected String getToken(HttpServletRequest httpServletRequest) {
        String tokenStr = httpServletRequest.getParameter("token");
        if (StringUtils.isBlank(tokenStr)) {
            tokenStr = (String) httpServletRequest.getAttribute("token");
            if (StringUtils.isBlank(tokenStr)) {
                Cookie[] cookies = httpServletRequest.getCookies();
                if (cookies != null) {
                    for (int i = 0; i < cookies.length; ++i) {
                        if (StringUtils.equals("token", cookies[i].getName())) {
                            tokenStr = cookies[i].getValue();
                            break;
                        }
                    }
                }
            }
        }
        if (StringUtils.isNotBlank(tokenStr)) {
            return tokenStr;
        } else {
            return null;
        }
    }

    protected String getCompanyShortName() {
        // 公司标志
        Boolean sessionIsExist = false;

        String companyShortName = (String) httpServletRequest.getSession().getAttribute("COMPANY_SHORT_NAME");
        if (StringUtils.isBlank(companyShortName)) {
            CompanyShortNameResult companyShortNameResult = ApiUtils.getCompanyShortName(httpServletRequest.getServerName());
            if (companyShortNameResult.getResult() == 1) {
                companyShortName = companyShortNameResult.getCompanyShortName();
            }
        } else {
            sessionIsExist = true;
        }
        if (StringUtils.isBlank(companyShortName)) {
            throw new RuntimeException("非法请求");
        }

        if (!sessionIsExist) {
            httpServletRequest.getSession().setAttribute("COMPANY_SHORT_NAME", companyShortName);
        }
        return companyShortName;
    }
}

