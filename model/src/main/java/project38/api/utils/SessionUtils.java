package project38.api.utils;

import org.apache.commons.lang3.StringUtils;

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
        if (null == httpServletRequest || StringUtils.isBlank(companyShortName)) {
            return;
        }

        HttpSession session = httpServletRequest.getSession();
        session.setMaxInactiveInterval(15 * 60);    // 15分钟超时
        session.setAttribute("COMPANY_SHORT_NAME", companyShortName);
    }
}
