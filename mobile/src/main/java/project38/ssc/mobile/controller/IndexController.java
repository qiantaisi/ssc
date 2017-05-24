package project38.ssc.mobile.controller;

import project38.api.common.helper.IPHelper;
import project38.api.common.utils.JSONUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.LoginResult;
import project38.api.result.PromotionResult;
import project38.api.result.WebInfoResult;
import project38.api.result.WebNoticeResult;
import project38.api.utils.ApiUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/11/8.
 */
@Controller
@RequestMapping("/*")
public class IndexController extends BaseController{
    private static final Log log = LogFactory.getLog(IndexController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;


    @RequestMapping(value = "/kefu.html", method = RequestMethod.GET)
    public ModelAndView kefu() {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(1, companyShortName));
        return this.renderView("index/kefu", modelMap);
    }

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index() {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(2,companyShortName);
        modelMap.put("webTitle", webInfoResult.getWebTitle());
        modelMap.put("webKeywords", webInfoResult.getWebKeywords());
        modelMap.put("webDescription", webInfoResult.getWebDescription());
        modelMap.put("webTjjs", webInfoResult.getWebTjjs());
        modelMap.put("icoData", ApiUtils.getLogo(4,companyShortName));
        return this.renderView("index/index", modelMap);
    }

    @RequestMapping(value = "/main.html", method = RequestMethod.GET)
    public ModelAndView main() {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        Map<String, Object> modelMap = new HashMap<String, Object>();
        try {
            modelMap.put("logo", ApiUtils.getLogo(1, companyShortName));

            WebNoticeResult webNoticeResult = ApiUtils.getPopupNoticeList(uid, token, null, null, companyShortName);
            if (null != webNoticeResult) {
                modelMap.put("popupNoticeList", webNoticeResult.getWebNoticeList());
            }

            modelMap.put("carouseList", ApiUtils.getCarouselList(true, 1, companyShortName));
            // 热门开奖列表
            modelMap.put("kjjgJsonData", JSONUtils.toJSONStr(ApiUtils.getHotSscDataHistory3(companyShortName)));

            //        modelMap.put("yhzzList", ApiUtils.getSystemBankCard(uid, token).getBankcardList());
            //        modelMap.put("zfbzzList", ApiUtils.getSystemAlipay(uid, token).getSkInfoList());
            //        modelMap.put("wxzzList", ApiUtils.getSystemWeixin(uid, token).getSkInfoList());
            //        modelMap.put("cftzzList", ApiUtils.getSystemTenpay(uid, token).getSkInfoList());
            //获取在线支付信息
            modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[]{2, 3}, companyShortName));
        } catch (Exception e) {
            log.error(this, e);
        }

        return this.renderView("index/main", modelMap);
    }

    @RequestMapping(value = "/register.html", method = RequestMethod.GET)
    public ModelAndView register() {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("khxy", ApiUtils.getKhxy(companyShortName));
        modelMap.put("logo", ApiUtils.getLogo(1,companyShortName));
        return this.renderView("index/register", modelMap);
    }

    @RequestMapping(value = "/yhhd.html", method = RequestMethod.GET)
    public ModelAndView yhhd() {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("promotionList", ApiUtils.getPromotion(1, 4, null, null,companyShortName).getPromotionList());
        return this.renderView("index/yhhd", modelMap);
    }

    @RequestMapping(value = "/yhhd/{id}.html", method = RequestMethod.GET)
    public ModelAndView yhhdDetail(@PathVariable Long id) {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("promotion", ApiUtils.promotionGetById(id,companyShortName));
        return this.renderView("index/yhhdDetail", modelMap);
    }

    @RequestMapping(value = "/login.html", method = RequestMethod.GET)
    public ModelAndView login(String refer) {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("logo", ApiUtils.getLogo(1,companyShortName));
        return this.renderView("index/login", modelMap);
    }

    @RequestMapping(value = "/ajaxGetWebInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public WebInfoResult ajaxGetWebInfo() {
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.getWebInfo(2,companyShortName);
    }

    @RequestMapping(value = "/shiwan.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult LoginResult() {
        String companyShortName = this.getCompanyShortName();
        LoginResult loginResult = new LoginResult();
        try {
            return ApiUtils.memberShiwanLogin(IPHelper.getIpAddr(httpServletRequest), httpServletRequest.getServerName(), 1,companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            loginResult.setResult(-100);
            loginResult.setDescription("服务器错误");
        }
        return loginResult;
    }

    @RequestMapping(value = "/pc.html", method = RequestMethod.GET)
    public ModelAndView pc() {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1,companyShortName);
        modelMap.put("webTitle", webInfoResult.getWebTitle());
        modelMap.put("webKeywords", webInfoResult.getWebKeywords());
        modelMap.put("webDescription", webInfoResult.getWebDescription());
        modelMap.put("webTjjs", webInfoResult.getWebTjjs());
        return this.renderView("index/pc", modelMap);
    }
}
