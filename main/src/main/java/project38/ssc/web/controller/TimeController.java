package project38.ssc.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import project38.api.result.ServerTimeResult;
import project38.api.utils.ApiUtils;

/**
 * 时间
 */
@Controller
@RequestMapping("/time")
public class TimeController extends BaseController {
    private static final Log log = LogFactory.getLog(TimeController.class);

    /**
     * ajax获取服务器时间
     * @return
     */
    @RequestMapping(value = "/ajaxGetServerTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxGetServerTime() {
        ServerTimeResult result = new ServerTimeResult();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getServerTime(companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }
}
