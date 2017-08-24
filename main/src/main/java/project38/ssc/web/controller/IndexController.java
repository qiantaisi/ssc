package project38.ssc.web.controller;

import org.springframework.web.bind.annotation.*;
import project38.api.common.exception.UserException;
import project38.api.common.helper.IPHelper;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.LoginResult;
import project38.api.result.RegisterResult;
import project38.api.result.WebInfoResult;
import project38.api.utils.ApiUtils;
import project38.api.result.SscHistoryResult3;
import project38.api.result.ArticleResult;
import project38.api.result.SscZJNoticeResult;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/11/8.
 */
@Controller
@RequestMapping("/*")
public class IndexController extends BaseController {
    private static Log log = LogFactory.getLog(IndexController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;

    @RequestMapping(value = "/ajaxGetWebInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public WebInfoResult ajaxGetWebInfo() {
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.getWebInfo(1, companyShortName);
    }

    @RequestMapping(value = "/ajaxGetRegisterResult.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public RegisterResult ajaxGetRegisterResult() throws Exception {
        String companyShortName = this.getCompanyShortName();
        RegisterResult registerResult= ApiUtils.getRegisterResult(companyShortName);
        return registerResult;
    }

    @RequestMapping(value = "/ajaxChekeAcount.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public RegisterResult ajaxChekeAcount(String acount) throws Exception {
        String companyShortName = this.getCompanyShortName();
        companyShortName=null;
        Map<String, Object> modelMap = new HashMap<String, Object>();
        RegisterResult registerResult= ApiUtils.getAccountUniqueFlag(acount,companyShortName);
        return registerResult;
    }


    @RequestMapping(value = "/ajaxGetSscDataMainPage.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult3 ajaxGetSscDataMainPage(
            @RequestParam(value = "playIds[]", required = false) List<Long> playIds,
            Long playId
    ) {
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.getSscDataMainPage(playIds, playId, companyShortName);
    }

    @RequestMapping(value = "/ajaxGetZJNotic.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscZJNoticeResult ajaxGetZJNotic(){
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.getNotices(companyShortName);
    }


    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index() {
        String companyShortName = this.getCompanyShortName();

        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1, companyShortName);
        modelMap.put("webTitle", webInfoResult.getWebTitle());
        modelMap.put("webKeywords", webInfoResult.getWebKeywords());
        modelMap.put("webDescription", webInfoResult.getWebDescription());
        modelMap.put("webTjjs", webInfoResult.getWebTjjs());
        modelMap.put("icoData", ApiUtils.getLogo(4, companyShortName));
        modelMap.put("webName", webInfoResult.getWebName());
        return this.renderView("index/index", modelMap);
    }

    @RequestMapping(value = "/main.html", method = RequestMethod.GET)
    public ModelAndView main() {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1, companyShortName);
        modelMap.put("carouseList", ApiUtils.getCarouselList(true, 2, companyShortName));
//        modelMap.put("serverTime", ApiUtils.getServerTime(companyShortName).getServerTime());
        modelMap.put("logo", ApiUtils.getLogo(2, companyShortName));
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        modelMap.put("webName", webInfoResult.getWebName());
        modelMap.put("webInfo", webInfoResult);
        modelMap.put("Notices", ApiUtils.getNotices(companyShortName));
        modelMap.put("webPopUpNoticeResult", ApiUtils.getPopupNoticeList(uid, token, companyShortName));
//        modelMap.put("qrcode", ApiUtils.getQRCodePC(companyShortName));

        return this.renderView("index/main", modelMap);
    }

    @RequestMapping(value = "/zixun/{id}.html", method = RequestMethod.GET)
    public ModelAndView ziXun(@PathVariable Long id) {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        modelMap.put("Article", ApiUtils.getArtByid(companyShortName, id));
        modelMap.put("logo", ApiUtils.getLogo(2, companyShortName));
        return this.renderView("index/zxxx", modelMap);
    }

    @RequestMapping(value = "/register.html", method = RequestMethod.GET)
    public ModelAndView register() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1, companyShortName);
        modelMap.put("khxy", ApiUtils.getKhxy(companyShortName));
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(2, companyShortName));
        modelMap.put("webName", webInfoResult.getWebName());
        modelMap.put("webInfo", webInfoResult);
//        modelMap.put("webPopUpNoticeResult", ApiUtils.getPopupNoticeList(uid, token, companyShortName));

        // 注册限制
        RegisterResult registerResult = ApiUtils.getRegisterResult(companyShortName);
        modelMap.put("registerResult", registerResult);
        return this.renderView("index/register", modelMap);
    }

    @RequestMapping(value = "/login.html", method = RequestMethod.GET)
    public ModelAndView login() {

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1, companyShortName);
        modelMap.put("khxy", ApiUtils.getKhxy(companyShortName));
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(2, companyShortName));
        modelMap.put("webName", webInfoResult.getWebName());
        modelMap.put("webInfo", webInfoResult);
        modelMap.put("webPopUpNoticeResult", ApiUtils.getPopupNoticeList(uid, token, companyShortName));
        return this.renderView("index/login", modelMap);
    }

    @RequestMapping(value = "/kjjg.html", method = RequestMethod.GET)
    public ModelAndView kjjg() {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(2, companyShortName));
        return this.renderView("index/kjjg", modelMap);
    }

    @RequestMapping(value = "/yhhd.html", method = RequestMethod.GET)
    public ModelAndView yhhd() throws UserException {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1, companyShortName);
        modelMap.put("logo", ApiUtils.getLogo(2, companyShortName));
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        modelMap.put("webName", webInfoResult.getWebName());
        return this.renderView("index/yhhd", modelMap);
    }

    @RequestMapping(value = "/app.html", method = RequestMethod.GET)
    public ModelAndView app() throws UserException {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("logo", ApiUtils.getLogo(2, companyShortName));
        modelMap.put("data", ApiUtils.getDownloadManagementResult(companyShortName));
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        return this.renderPublicView("index/app", modelMap);

    }

    @RequestMapping(value = "/publicYhhd.html", method = RequestMethod.GET)
    public ModelAndView publicYhhd() throws UserException {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1, companyShortName);
        modelMap.put("promotionList", ApiUtils.getPromotion(companyShortName).getPromotionList());
        return this.renderPublicView("index/yhhd", modelMap);
    }


    @RequestMapping(value = "/shiwan.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult LoginResult() {
        String companyShortName = this.getCompanyShortName();
        LoginResult loginResult = new LoginResult();
        try {
            return ApiUtils.memberShiwanLogin(IPHelper.getIpAddr(httpServletRequest), httpServletRequest.getServerName(), 2, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            loginResult.setResult(-100);
            loginResult.setDescription("服务器错误");
        }
        return loginResult;
    }
}
