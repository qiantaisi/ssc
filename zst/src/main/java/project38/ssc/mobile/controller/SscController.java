package project38.ssc.mobile.controller;

import project38.api.common.result.CommonResult;
import project38.api.common.utils.JSONUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.*;
import project38.api.utils.ApiUtils;
import java.util.HashMap;
import java.util.Map;

/**
 * SSC控制器
 * Created by Administrator on 2016/11/14.
 */
@Controller
@RequestMapping("/ssc")
public class SscController extends BaseController {
    private Log log = LogFactory.getLog(SscController.class);

    @RequestMapping(value = "/zst/{playGroupName}/{zstName}.html",method = RequestMethod.GET)
    public ModelAndView wfsmWfsm(@PathVariable String playGroupName, @PathVariable String zstName){
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("ssc/zst/" + playGroupName + "/" + zstName, modelMap);
    }

    @RequestMapping(value = "/ajaxGetHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult ajaxGetHistory(Long playGroupId, Integer pageIndex, Integer pageSize, String date, String number) {
        SscHistoryResult result = new SscHistoryResult();
        try {
            result = ApiUtils.getHistory(playGroupId, pageIndex, pageSize, null, null, date, number, "ddxRB4Ha3BuyiflO37OSTZF2quLlb8gN");
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }
}
