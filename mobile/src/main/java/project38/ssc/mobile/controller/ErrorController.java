package project38.ssc.mobile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import project38.api.common.exception.UserException;
import project38.api.result.WebInfoResult;
import project38.api.utils.ApiUtils;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/error")
public class ErrorController extends BaseController{

    @RequestMapping(value = "/404.html", method = RequestMethod.GET)
    public ModelAndView error_404() throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(5, companyShortName));
        return this.renderView("error/404/index", modelMap);
    }

//    @RequestMapping(value = "/500.html", method = RequestMethod.GET)
//    public ModelAndView error_500() {
//        String companyShortName = this.getCompanyShortName();
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1,companyShortName);
//        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
//        modelMap.put("webName",webInfoResult.getWebName());
//        return this.renderView( "error/500/index", modelMap);
//    }

//    @RequestMapping(value = "/incompatible.html", method = RequestMethod.GET)
//    public ModelAndView error_incompatible() {
//        String companyShortName = this.getCompanyShortName();
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        WebInfoResult webInfoResult = ApiUtils.getWebInfo(1,companyShortName);
//        modelMap.put("webName",webInfoResult.getWebName());
//        return this.renderView("error/incompatible/index", modelMap);
//    }
}
