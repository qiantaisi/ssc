package hg.controller;

public abstract class CacheController extends BaseController {
//    /**
//     * 获取官方玩法赔率
//     * @param httpServletRequest
//     * @param companyShortName
//     * @param playGroupId
//     * @return
//     */
//    protected String getCacheGfwfPl(
//            HttpServletRequest httpServletRequest,
//            String companyShortName,
//            Long playGroupId
//    ) {
//        // 官方玩法赔率
//        String gfwfPl = SessionUtils.getGfwfPl(httpServletRequest, playGroupId);
//        if (StringUtils.isBlank(gfwfPl)) {
//            gfwfPl = JSONUtils.toJSONStr(ApiUtils.getSscPlayPl_gfwf(playGroupId, companyShortName));
//            SessionUtils.setGfwfPl(httpServletRequest, playGroupId, gfwfPl);
//        }
//        return gfwfPl;
//    }
//
//    /**
//     * 获取PC二维码
//     * @param httpServletRequest
//     * @param companyShortName
//     * @return
//     */
//    protected QRCodeResult getCachePcEwm(
//            HttpServletRequest httpServletRequest,
//            String companyShortName
//    ) {
//        // PC二维码
//        QRCodeResult qrCodeResult = SessionUtils.getPcEwm(httpServletRequest);
//        if (qrCodeResult == null || qrCodeResult.getResult() != 1) {
//            qrCodeResult = ApiUtils.getQRCodePC(companyShortName);
//            SessionUtils.setPcEwm(httpServletRequest, qrCodeResult);
//        }
//        return qrCodeResult;
//    }
}
