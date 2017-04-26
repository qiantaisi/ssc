package project38.ssc.web.controller;

import project38.api.common.helper.IPHelper;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.LoginResult;
import project38.api.result.WebInfoResult;
import project38.api.utils.ApiUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2016/11/8.
 */
@Controller
@RequestMapping("/*")
public class IndexController extends BaseController{
    private static Log log = LogFactory.getLog(IndexController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;

    @RequestMapping(value = "/ajaxGetWebInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public WebInfoResult ajaxGetWebInfo() {
        return ApiUtils.getWebInfo(1);
    }

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1);
        modelMap.put("webTitle", webInfoResult.getWebTitle());
        modelMap.put("webKeywords", webInfoResult.getWebKeywords());
        modelMap.put("webDescription", webInfoResult.getWebDescription());
        modelMap.put("webTjjs", webInfoResult.getWebTjjs());
        modelMap.put("icoData", ApiUtils.getLogo(4));
        modelMap.put("webName",webInfoResult.getWebName());
        return this.renderView("index/index", modelMap);
    }

    @RequestMapping(value = "/main.html", method = RequestMethod.GET)
    public ModelAndView main() {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1);
        modelMap.put("carouseList", ApiUtils.getCarouselList(true, 2));
        modelMap.put("serverTime", ApiUtils.getServerTime().getServerTime());
        modelMap.put("logo", ApiUtils.getLogo(2));
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        modelMap.put("webName",webInfoResult.getWebName());

//        modelMap.put("userInboxResult", ApiUtils.getUserInboxList(uid, token, null, null, null, 0, 2));
        return this.renderView("index/main", modelMap);
    }

    @RequestMapping(value = "/register.html", method = RequestMethod.GET)
    public ModelAndView register() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1);
        modelMap.put("khxy", ApiUtils.getKhxy());
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(2));
        modelMap.put("webName", webInfoResult.getWebName());
        return this.renderView("index/register", modelMap);
    }

    @RequestMapping(value = "/login.html", method = RequestMethod.GET)
    public ModelAndView login() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1);
        modelMap.put("khxy", ApiUtils.getKhxy());
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(2));
        modelMap.put("webName", webInfoResult.getWebName());
        return this.renderView("index/login", modelMap);
    }

    @RequestMapping(value = "/kjjg.html", method = RequestMethod.GET)
    public ModelAndView kjjg() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(2));
        return this.renderView("index/kjjg", modelMap);
    }

    @RequestMapping(value = "/yhhd.html", method = RequestMethod.GET)
    public ModelAndView yhhd() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1);
        modelMap.put("logo", ApiUtils.getLogo(2));
        modelMap.put("kefuUrl", ApiUtils.getKefu().getKefuUrl());
        modelMap.put("promotionList", ApiUtils.getPromotion(1, 4, null, null).getPromotionList());
        modelMap.put("webName", webInfoResult.getWebName());
        return this.renderView("index/yhhd", modelMap);
    }


    @RequestMapping(value = "/shiwan.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult LoginResult() {
        LoginResult loginResult = new LoginResult();
        try {
            return ApiUtils.memberShiwanLogin(IPHelper.getIpAddr(httpServletRequest), httpServletRequest.getServerName(), 2);
        } catch (Exception e) {
            log.error(this, e);
            loginResult.setResult(-100);
            loginResult.setDescription("服务器错误");
        }
        return loginResult;
    }
}
