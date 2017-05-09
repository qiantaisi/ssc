package project38.ssc.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.*;
import project38.api.utils.ApiUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;


/**
 * 用户模块
 */
@Controller
@RequestMapping("/redpacket")
public class RedPacketController extends BaseController {
    private static final Log log = LogFactory.getLog(RedPacketController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest httpServletRequest) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        return this.renderView("redpacket/index", modelMap);
    }

    @RequestMapping(value = "/ajaxChoujiang.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public RedPacketResult ajaxChoujiang(String account) throws Exception {
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.redpacketChoujiang(account,companyShortName);
    }

    @RequestMapping(value = "/ajaxGetList.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public RedPacketListResult ajaxGetList(String account ) throws Exception {
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.redpacketgetList(account,companyShortName);
    }
}
