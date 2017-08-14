package project38.ssc.web.controller;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project38.api.common.utils.JSONUtils;
import project38.api.result.QRCodeResult;
import project38.api.utils.ApiUtils;
import project38.api.utils.SessionUtils;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

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
}