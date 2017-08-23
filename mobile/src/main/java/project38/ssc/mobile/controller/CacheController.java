package project38.ssc.mobile.controller;

import org.apache.commons.lang3.StringUtils;
import project38.api.common.utils.JSONUtils;
import project38.api.result.LogoResult;
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
        // PC首页LOGO
        LogoResult logoResult = SessionUtils.getMobileIndexLogo(httpServletRequest);
        if (logoResult == null || logoResult.getResult() != 1) {
            logoResult = ApiUtils.getLogo(1, companyShortName);
            SessionUtils.setMobileIndexLogo(httpServletRequest, logoResult);
        }
        return logoResult;
    }

}