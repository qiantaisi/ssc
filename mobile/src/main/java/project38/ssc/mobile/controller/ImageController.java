package project38.ssc.mobile.controller;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project38.api.result.LogoResult;
import project38.api.utils.ApiUtils;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

/**
 * Created by Administrator on 2016/5/28.
 */
@Controller
@RequestMapping(value = "/images")
public class ImageController extends CacheController {
    private Log log = LogFactory.getLog(getClass());

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public void id(@PathVariable Long id, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        OutputStream outputSream = null;
        String companyShortName = getCompanyShortName();
        try {
            if (id == null) {
                return;
            }

            String data = ApiUtils.getImageData(id, companyShortName).getImageData();

            if (StringUtils.isBlank(data)) {
                return;
            }
            BASE64Decoder decoder = new BASE64Decoder();
            byte[] bytes = decoder.decodeBuffer(data);

            httpServletResponse.setContentType("image/jpeg");
            httpServletResponse.setCharacterEncoding("UTF-8");

            // 增加缓存
            httpServletResponse.setDateHeader("Last-Modified", new Date().getTime());
            httpServletResponse.setDateHeader("Expires", System.currentTimeMillis() + 1000L * 30 * 24 * 3600);
            httpServletResponse.setHeader("Cache-Control", "Public");
            httpServletResponse.setHeader("Pragma", "Pragma");

            outputSream = httpServletResponse.getOutputStream();
            InputStream in = new ByteArrayInputStream(bytes);
            int len = 0;
            byte[] buf = new byte[1024];
            while ((len = in.read(buf, 0, 1024)) != -1) {
                outputSream.write(buf, 0, len);
            }
            outputSream.flush();
            outputSream.close();
        } catch (Exception e) {
            log.error(getClass(), e);
        } finally {
            if (null != outputSream) {
                try {
                    outputSream.close();
                } catch (Exception e) {
                }
            }
        }
    }

    @RequestMapping(value = "/{id}.png", method = RequestMethod.GET)
    public void idPng(@PathVariable Long id, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        this.id(id, httpServletRequest, httpServletResponse);
    }

    /**
     * 首页Logo
     * @param httpServletRequest
     * @param httpServletResponse
     */
    @RequestMapping(value = "/logo.png", method = RequestMethod.GET)
    public void logo(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String companyShortName = this.getCompanyShortName();
        try {
            LogoResult logoResult = this.getCacheMobileIndexLogo(httpServletRequest, companyShortName);
            if (logoResult == null || logoResult.getResult() != 1) {
                return;
            }

            this.id(logoResult.getImageId(), httpServletRequest, httpServletResponse);
        } catch (Exception e) {
            log.error(getClass(), e);
        }
    }

    /**
     * 登录logo
     * @param httpServletRequest
     * @param httpServletResponse
     */
    @RequestMapping(value = "/logo2.png", method = RequestMethod.GET)
    public void logo2(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String companyShortName = this.getCompanyShortName();
        try {
            LogoResult logoResult = this.getCacheMobileLoginLogo(httpServletRequest, companyShortName);
            if (logoResult == null || logoResult.getResult() != 1) {
                return;
            }

            this.id(logoResult.getImageId(), httpServletRequest, httpServletResponse);
        } catch (Exception e) {
            log.error(getClass(), e);
        }
    }

    /**
     * 桌面Logo
     * @param httpServletRequest
     * @param httpServletResponse
     */
    @RequestMapping(value = "/logo3.png", method = RequestMethod.GET)
    public void logo3(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String companyShortName = this.getCompanyShortName();
        try {
            LogoResult logoResult = this.getCacheMobileDesktopLogo(httpServletRequest, companyShortName);
            if (logoResult == null || logoResult.getResult() != 1) {
                return;
            }

            this.id(logoResult.getImageId(), httpServletRequest, httpServletResponse);
        } catch (Exception e) {
            log.error(getClass(), e);
        }
    }

    /**
     * 网站ICO
     * @param httpServletRequest
     * @param httpServletResponse
     */
    @RequestMapping(value = "/ico.png", method = RequestMethod.GET)
    public void ico(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String companyShortName = this.getCompanyShortName();
        try {
            LogoResult logoResult = this.getCacheMobileIco(httpServletRequest, companyShortName);
            if (logoResult == null || logoResult.getResult() != 1) {
                return;
            }

            this.id(logoResult.getImageId(), httpServletRequest, httpServletResponse);
        } catch (Exception e) {
            log.error(getClass(), e);
        }
    }
}
