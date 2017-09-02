package project38.ssc.mobile.controller;

import org.apache.commons.lang3.StringUtils;
import project38.api.common.utils.JSONUtils;
import project38.api.result.LogoResult;
import project38.api.result.WebInfoResult;
import project38.api.utils.ApiUtils;
import project38.api.utils.SessionUtils;

import javax.servlet.http.HttpServletRequest;

public abstract class CacheController extends BaseController {
    /**
     * 获取官方玩法赔率
     * @param httpServletRequest
     * @param companyShortName
     * @param playGroupId
     * @return
     */
    protected String getCacheGfwfPl(
            HttpServletRequest httpServletRequest,
            String companyShortName,
            Long playGroupId
    ) {
        // 官方玩法赔率
        String gfwfPl = SessionUtils.getGfwfPl(httpServletRequest, playGroupId);
        if (StringUtils.isBlank(gfwfPl)) {
            gfwfPl = JSONUtils.toJSONStr(ApiUtils.getSscPlayPl_gfwf(playGroupId, companyShortName));
            SessionUtils.setGfwfPl(httpServletRequest, playGroupId, gfwfPl);
        }
        return gfwfPl;
    }

    /**
     * 获取Mobile首页LOGO
     * @param httpServletRequest
     * @param companyShortName
     * @return
     */
    protected LogoResult getCacheMobileIndexLogo(
            HttpServletRequest httpServletRequest,
            String companyShortName
    ) {
        LogoResult logoResult = SessionUtils.getMobileIndexLogo(httpServletRequest);
        if (logoResult == null || logoResult.getResult() != 1) {
            logoResult = ApiUtils.getLogo(1, companyShortName);
            SessionUtils.setMobileIndexLogo(httpServletRequest, logoResult);
        }
        return logoResult;
    }

    /**
     * 获取Mobile登录LOGO
     * @param httpServletRequest
     * @param companyShortName
     * @return
     */
    protected LogoResult getCacheMobileLoginLogo(
            HttpServletRequest httpServletRequest,
            String companyShortName
    ) {
        LogoResult logoResult = SessionUtils.getMobileLoginLogo(httpServletRequest);
        if (logoResult == null || logoResult.getResult() != 1) {
            logoResult = ApiUtils.getLogo(5, companyShortName);
            SessionUtils.setMobileLoginLogo(httpServletRequest, logoResult);
        }
        return logoResult;
    }

    /**
     * 获取Mobile桌面LOGO
     * @param httpServletRequest
     * @param companyShortName
     * @return
     */
    protected LogoResult getCacheMobileDesktopLogo(
            HttpServletRequest httpServletRequest,
            String companyShortName
    ) {
        LogoResult logoResult = SessionUtils.getMobileDesktopLogo(httpServletRequest);
        if (logoResult == null || logoResult.getResult() != 1) {
            logoResult = ApiUtils.getLogo(6, companyShortName);
            SessionUtils.setMobileDesktopLogo(httpServletRequest, logoResult);
        }
        return logoResult;
    }

    /**
     * 获取Mobile网站ICO
     * @param httpServletRequest
     * @param companyShortName
     * @return
     */
    protected LogoResult getCacheMobileIco(
            HttpServletRequest httpServletRequest,
            String companyShortName
    ) {
        LogoResult logoResult = SessionUtils.getMobileIco(httpServletRequest);
        if (logoResult == null || logoResult.getResult() != 1) {
            logoResult = ApiUtils.getLogo(4, companyShortName);
            SessionUtils.setMobileIco(httpServletRequest, logoResult);
        }
        return logoResult;
    }

    /**
     * 获取Mobile网站信息
     * @param httpServletRequest
     * @param companyShortName
     * @return
     */
    protected WebInfoResult getCacheWebInfo(
            HttpServletRequest httpServletRequest,
            String companyShortName
    ) {
        WebInfoResult webInfoResult = SessionUtils.getMobileWebInfo(httpServletRequest);
        if (webInfoResult == null || webInfoResult.getResult() != 1) {
            webInfoResult = ApiUtils.getWebInfo(2, companyShortName);
            SessionUtils.setMobileWebInfo(httpServletRequest, logoResult);
        }
        return webInfoResult;
    }

}