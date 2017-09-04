package project38.api.utils;

import org.apache.commons.lang3.StringUtils;
import project38.api.common.utils.JSONUtils;
import project38.api.result.LogoResult;
import project38.api.result.QRCodeResult;
import project38.api.result.WebInfoResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {
    /**
     * 获取公司标志SESSION
     * @param httpServletRequest
     * @return
     */
    public static String getSessionCompanyShortName(HttpServletRequest httpServletRequest) {
        if (null == httpServletRequest) {
            return null;
        }

        return (String) httpServletRequest.getSession().getAttribute("COMPANY_SHORT_NAME");
    }

    /**
     * 设置公司标识SESSION
     * @param httpServletRequest
     * @param companyShortName
     */
    public static void setSessionCompanyShortName(HttpServletRequest httpServletRequest, String companyShortName) {
        if (null == httpServletRequest) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("COMPANY_SHORT_NAME", companyShortName);
    }

    /**
     * 获取官方赔率
     * @param httpServletRequest
     * @param playGroupId
     * @return
     */
    public static String getGfwfPl(HttpServletRequest httpServletRequest, Long playGroupId) {
        if (null == httpServletRequest || null == playGroupId) {
            return null;
        }

        return (String) httpServletRequest.getSession().getAttribute("GFWF_PL_" + playGroupId);
    }

    /**
     * 设置官方赔率
     * @param httpServletRequest
     * @param playGroupId
     * @param jsonData
     */
    public static void setGfwfPl(HttpServletRequest httpServletRequest, Long playGroupId, String jsonData) {
        if (null == playGroupId) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("GFWF_PL_" + playGroupId, jsonData);
    }

    /**
     * 获取PC二维码
     * @param httpServletRequest
     * @param playGroupId
     * @return
     */
    public static QRCodeResult getPcEwm(HttpServletRequest httpServletRequest) {
        if (null == httpServletRequest) {
            return null;
        }

        String data = (String) httpServletRequest.getSession().getAttribute("PC_EWM");
        if (StringUtils.isNotBlank(data)) {
            return JSONUtils.toObject(data, QRCodeResult.class);
        }

        return null;
    }

    /**
     * 设置PC二维码
     * @param httpServletRequest
     * @param qrCodeResult
     */
    public static void setPcEwm(HttpServletRequest httpServletRequest, QRCodeResult qrCodeResult) {
        if (null == qrCodeResult) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("PC_EWM", JSONUtils.toJSONStr(qrCodeResult));
    }

    /**
     * 获取PC首页LOGO
     * @param httpServletRequest
     * @return
     */
    public static LogoResult getPcIndexLogo(HttpServletRequest httpServletRequest) {
        if (null == httpServletRequest) {
            return null;
        }

        String data = (String) httpServletRequest.getSession().getAttribute("PC_INDEX_LOGO");
        if (StringUtils.isNotBlank(data)) {
            return JSONUtils.toObject(data, LogoResult.class);
        }

        return null;
    }

    /**
     * 设置PC首页LOGO
     * @param httpServletRequest
     * @param logoResult
     */
    public static void setPcIndexLogo(HttpServletRequest httpServletRequest, LogoResult logoResult) {
        if (null == logoResult) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("PC_INDEX_LOGO", JSONUtils.toJSONStr(logoResult));
    }

    /**
     * 获取Mobile首页LOGO
     * @param httpServletRequest
     * @return
     */
    public static LogoResult getMobileIndexLogo(HttpServletRequest httpServletRequest) {
        if (null == httpServletRequest) {
            return null;
        }

        String data = (String) httpServletRequest.getSession().getAttribute("MOBILE_INDEX_LOGO");
        if (StringUtils.isNotBlank(data)) {
            return JSONUtils.toObject(data, LogoResult.class);
        }

        return null;
    }

    /**
     * 设置Mobile首页LOGO
     * @param httpServletRequest
     * @param logoResult
     */
    public static void setMobileIndexLogo(HttpServletRequest httpServletRequest, LogoResult logoResult) {
        if (null == logoResult) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("MOBILE_INDEX_LOGO", JSONUtils.toJSONStr(logoResult));
    }

    /**
     * 获取Mobile登录LOGO
     * @param httpServletRequest
     * @return
     */
    public static LogoResult getMobileLoginLogo(HttpServletRequest httpServletRequest) {
        if (null == httpServletRequest) {
            return null;
        }

        String data = (String) httpServletRequest.getSession().getAttribute("MOBILE_LOGIN_LOGO");
        if (StringUtils.isNotBlank(data)) {
            return JSONUtils.toObject(data, LogoResult.class);
        }

        return null;
    }

    /**
     * 设置Mobile登录LOGO
     * @param httpServletRequest
     * @param logoResult
     */
    public static void setMobileLoginLogo(HttpServletRequest httpServletRequest, LogoResult logoResult) {
        if (null == logoResult) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("MOBILE_LOGIN_LOGO", JSONUtils.toJSONStr(logoResult));
    }

    /**
     * 获取Mobile桌面LOGO
     * @param httpServletRequest
     * @return
     */
    public static LogoResult getMobileDesktopLogo(HttpServletRequest httpServletRequest) {
        if (null == httpServletRequest) {
            return null;
        }

        String data = (String) httpServletRequest.getSession().getAttribute("MOBILE_DESKTOP_LOGO");
        if (StringUtils.isNotBlank(data)) {
            return JSONUtils.toObject(data, LogoResult.class);
        }

        return null;
    }

    /**
     * 设置Mobile桌面LOGO
     * @param httpServletRequest
     * @param logoResult
     */
    public static void setMobileDesktopLogo(HttpServletRequest httpServletRequest, LogoResult logoResult) {
        if (null == logoResult) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("MOBILE_DESKTOP_LOGO", JSONUtils.toJSONStr(logoResult));
    }

    /**
     * 获取Mobile网站ICO
     * @param httpServletRequest
     * @return
     */
    public static LogoResult getMobileIco(HttpServletRequest httpServletRequest) {
        if (null == httpServletRequest) {
            return null;
        }

        String data = (String) httpServletRequest.getSession().getAttribute("MOBILE_ICO");
        if (StringUtils.isNotBlank(data)) {
            return JSONUtils.toObject(data, LogoResult.class);
        }

        return null;
    }

    /**
     * 设置Mobile网站ICO
     * @param httpServletRequest
     * @param logoResult
     */
    public static void setMobileIco(HttpServletRequest httpServletRequest, LogoResult logoResult) {
        if (null == logoResult) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("MOBILE_ICO", JSONUtils.toJSONStr(logoResult));
    }

    /**
     * 获取Mobile网站信息
     * @param httpServletRequest
     * @return
     */
    public static WebInfoResult getMobileWebInfo(HttpServletRequest httpServletRequest) {
        if (null == httpServletRequest) {
            return null;
        }

        String data = (String) httpServletRequest.getSession().getAttribute("MOBILE_WEB_INFO");
        if (StringUtils.isNotBlank(data)) {
            return JSONUtils.toObject(data, WebInfoResult.class);
        }

        return null;
    }

    /**
     * 设置Mobile网站信息
     * @param httpServletRequest
     * @param webInfoResult
     */
    public static void setMobileWebInfo(HttpServletRequest httpServletRequest, WebInfoResult webInfoResult) {
        if (null == webInfoResult) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("MOBILE_WEB_INFO", JSONUtils.toJSONStr(webInfoResult));
    }
}
