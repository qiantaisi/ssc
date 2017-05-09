package project38.ssc.web.controller;


import project38.api.common.utils.JSONUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import project38.api.result.PromotionResult;
import project38.api.utils.ApiUtils;

import java.util.Date;

/**
 * 优惠活动
 */
@Controller
@RequestMapping("/promotion")
public class PromotionController extends BaseController {

    private static final Log log = LogFactory.getLog(PromotionController.class);

    @RequestMapping(value = "/getList.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public PromotionResult getList(Integer pageIndex, Integer pageSize, Date startTime, Date endTime, String companyShortName) {
        System.out.println(JSONUtils.toJSONStr(ApiUtils.getPromotion(pageIndex, pageSize, startTime, endTime, companyShortName)));
        return ApiUtils.getPromotion(pageIndex, pageSize, startTime, endTime, companyShortName);
    }
}
