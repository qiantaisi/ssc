package project38.ssc.web.controller;

import org.apache.commons.lang3.StringUtils;
import project38.api.common.utils.JSONUtils;
import project38.api.result.LogoResult;
import project38.api.result.QRCodeResult;
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
     * 获取PC二维码
     * @param httpServletRequest
     * @param companyShortName
     * @return
     */
    protected QRCodeResult getCachePcEwm(
            HttpServletRequest httpServletRequest,
            String companyShortName
    ) {
        // PC二维码
        QRCodeResult qrCodeResult = SessionUtils.getPcEwm(httpServletRequest);
        if (qrCodeResult == null || qrCodeResult.getResult() != 1) {
            qrCodeResult = ApiUtils.getQRCodePC(companyShortName);
            SessionUtils.setPcEwm(httpServletRequest, qrCodeResult);
        }
        return qrCodeResult;
    }

    /**
     * 获取PC首页LOGO
     * @param httpServletRequest
     * @param companyShortName
     * @return
     */
    protected LogoResult getCachePcIndexLogo(
            HttpServletRequest httpServletRequest,
            String companyShortName
    ) {
        // PC首页LOGO
        LogoResult logoResult = SessionUtils.getPcIndexLogo(httpServletRequest);
        if (logoResult == null || logoResult.getResult() != 1) {
            logoResult = ApiUtils.getLogo(2, companyShortName);
            SessionUtils.setPcIndexLogo(httpServletRequest, logoResult);
        }
        return logoResult;
    }
}