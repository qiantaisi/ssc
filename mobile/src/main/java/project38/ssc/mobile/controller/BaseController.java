package project38.ssc.mobile.controller;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import project38.api.common.exception.UserException;
import project38.api.common.utils.JSONUtils;
import project38.api.result.CompanyShortNameResult;
import project38.api.result.FenggeResult;
import project38.api.result.MobileFgResult;
import project38.api.result.UserSessionResult;
import project38.api.utils.ApiUtils;
import project38.api.utils.RequestUtils;
import project38.api.utils.SessionUtils;

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

//    /**
//     * 基于@ExceptionHandler异常处理
//     */
//    @ExceptionHandler
//    public ModelAndView exp(HttpServletRequest request, Exception ex) throws UserException {
//        log.error(this, ex);
//
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        String companyShortName = getCompanyShortName();
//        return this.renderView("error/500/index", modelMap);
//    }

    /**
     * 渲染视图
     *
     * @param jspLocation
     * @param modelMap
     * @return
     */
    protected ModelAndView renderView(HttpServletRequest request, String jspLocation, Map<String, Object> modelMap) throws UserException {
        if (null == modelMap) {
            modelMap = new HashMap<String, Object>();
        }

        String theme = null;
//        if (StringUtils.isBlank(theme)) {
//            theme = "default";
//        }

//        if (null != request) {
//            request.setAttribute("theme", theme);
//        }
        // 公司标志

        String companyShortName = getCompanyShortName();
        theme = companyShortName;
        if (null != request) {
            request.setAttribute("theme", theme);
        }

        request.setAttribute("resPath", RequestUtils.getBasePath(httpServletRequest) + "static/theme/" + theme + "/");
        request.setAttribute("commonResPath", RequestUtils.getBasePath(httpServletRequest) + "static/common/");
        request.setAttribute("bottomCssResPath", RequestUtils.getBasePath(httpServletRequest) + "static/public/theme/");

        MobileFgResult mobileFgResult = ApiUtils.getMobileFg(companyShortName);
        request.setAttribute("themeBottomNav", mobileFgResult.mobileFg.getDibu());

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        try {
            UserSessionResult userSessionResult = ApiUtils.getUserSession(uid, token, companyShortName);
            if (null != userSessionResult && userSessionResult.getResult() == 1) {
                modelMap.put("userSession", userSessionResult);
            }
        } catch (Exception e) {
            log.error(this, e);
        }

        // 公共模板读取风格
        FenggeResult fenggeResult = ApiUtils.getWebFengge(
                companyShortName,
                2
        );

        if (null == fenggeResult || fenggeResult.getResult() != 1) {
            throw new UserException(-997, "服务器错误");
        }
        modelMap.put("fengge_1", fenggeResult.getFengge_1());
        modelMap.put("fengge_2", fenggeResult.getFengge_2());

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
    protected ModelAndView renderView(String jspLocation, Map<String, Object> modelMap) throws UserException {
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
        String companyShortName = SessionUtils.getSessionCompanyShortName(httpServletRequest);
        if (StringUtils.isNotBlank(companyShortName)) {
            return companyShortName;
        }

        CompanyShortNameResult companyShortNameResult = ApiUtils.getCompanyShortName(httpServletRequest.getServerName());
        if (companyShortNameResult.getResult() == 1) {
            companyShortName = companyShortNameResult.getCompanyShortName();
            SessionUtils.setSessionCompanyShortName(httpServletRequest, companyShortName);
        }

        if (StringUtils.isBlank(companyShortName)) {
            throw new RuntimeException("非法请求");
        }

        return companyShortName;
    }

    /**
     * 渲染视图
     *
     * @param jspLocation
     * @param modelMap
     * @return
     */
    protected ModelAndView renderPublicView(String jspLocation, Map<String, Object> modelMap) throws UserException {
        if (null == modelMap) {
            modelMap = new HashMap<String, Object>();
        }

        // 公司标志
        String companyShortName = getCompanyShortName();
        httpServletRequest.setAttribute("resPath", RequestUtils.getBasePath(httpServletRequest) + "static/public/");
        httpServletRequest.setAttribute("commonResPath", RequestUtils.getBasePath(httpServletRequest) + "static/common/");
        httpServletRequest.setAttribute("bottomCssResPath", RequestUtils.getBasePath(httpServletRequest) + "static/public/theme/");

        MobileFgResult mobileFgResult = ApiUtils.getMobileFg(companyShortName);
        httpServletRequest.setAttribute("themeBottomNav", mobileFgResult.mobileFg.getDibu());

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        try {
            UserSessionResult userSessionResult = ApiUtils.getUserSession(uid, token, companyShortName);
            if (null != userSessionResult && userSessionResult.getResult() == 1) {
                modelMap.put("userSession", userSessionResult);
            }
        } catch (Exception e) {
            log.error(this, e);
        }

        // 公共模板读取风格
        FenggeResult fenggeResult = ApiUtils.getWebFengge(
                companyShortName,
                2
        );

        if (null == fenggeResult || fenggeResult.getResult() != 1) {
            throw new UserException(-997, "服务器错误");
        }
        modelMap.put("fengge_1", fenggeResult.getFengge_1());
        modelMap.put("fengge_2", fenggeResult.getFengge_2());

        ModelAndView modelAndView = new ModelAndView("public/" + jspLocation);
        modelAndView.addAllObjects(modelMap);
        return modelAndView;
    }
}

