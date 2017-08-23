package project38.api.utils;

import org.apache.commons.lang3.StringUtils;
import project38.api.common.utils.JSONUtils;
import project38.api.result.LogoResult;
import project38.api.result.QRCodeResult;

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
     * @param playGroupId
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
     * @param qrCodeResult
     */
    public static void setPcIndexLogo(HttpServletRequest httpServletRequest, LogoResult logoResult) {
        if (null == logoResult) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("PC_INDEX_LOGO", JSONUtils.toJSONStr(logoResult));
    }
}
