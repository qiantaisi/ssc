package project38.ssc.mobile.controller;

import org.apache.commons.lang3.StringUtils;
import project38.api.common.utils.JSONUtils;
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

}