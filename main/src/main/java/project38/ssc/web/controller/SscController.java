package project38.ssc.web.controller;
import org.apache.commons.lang3.StringUtils;
import project38.api.common.exception.UserException;
import project38.api.common.result.CommonResult;
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
import project38.api.result.*;
import project38.api.utils.SessionUtils;
import project38.ssc.web.auth.Authentication;
import project38.ssc.web.form.SscBetForm;
import project38.api.utils.ApiUtils;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * SSC控制器
 * Created by Administrator on 2016/11/14.
 */
@Controller
@RequestMapping("/ssc")
public class SscController extends CacheController {
    private static final Log log = LogFactory.getLog(SscController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;

    @RequestMapping(value = "/register.html", method = RequestMethod.GET)
    public ModelAndView register() throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("index/register", modelMap);
    }

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index() throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        modelMap.put("icoData", ApiUtils.getLogo(4,companyShortName));
        return this.renderPublicView("ssc/index", modelMap);
    }

    @RequestMapping(value = "/main.html", method = RequestMethod.GET)
    public ModelAndView main() throws UserException {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("webPopUpNoticeResult", ApiUtils.getPopupNoticeList(uid, token, companyShortName));
        modelMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
        modelMap.put("logo", ApiUtils.getLogo(3,companyShortName));
        return this.renderPublicView("ssc/main", modelMap);
    }

    @RequestMapping(value = "/gcdt.html", method = RequestMethod.GET)
    public ModelAndView gcdt() throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("ssc/gcdt/gcdt", modelMap);
    }

    @RequestMapping(value = "/tingcaipage.html", method = RequestMethod.GET)
    public ModelAndView tingcaipage() throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("ssc/gcdt/tingcaipage", modelMap);
    }

//    @RequestMapping(value = "/gcdt/{group}.html", method = RequestMethod.GET)
//    public ModelAndView gcdtGroup(@PathVariable String group) throws UserException {
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        String companyShortName = this.getCompanyShortName();
//        if (!"gcdt".equals(group)) {
//            // 彩种禁用
//            SscPlayGroupResult sscPlayGroupResult = ApiUtils.getSscPlayGroup(group, companyShortName);
//            if (null != sscPlayGroupResult && null != sscPlayGroupResult.getEnable() && !sscPlayGroupResult.getEnable()) {
//                return this.renderPublicView("ssc/gcdt/tingcaipage", modelMap);
//            }
//        }
//        return this.renderPublicView("ssc/gcdt/" + group, modelMap);
//    }


    @RequestMapping(value = "/zst/{module}.html", method = RequestMethod.GET)
    public ModelAndView zstModule(@PathVariable String module) throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("ssc/zst/" + module, modelMap);
    }

    @RequestMapping(value = "/gcdt/{group}/{play}.html", method = RequestMethod.GET)
    public ModelAndView gcdtGroupPlay(@PathVariable String group, @PathVariable String play) throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("ssc/gcdt/" + group + "/" + play, modelMap);
    }

    @Authentication
    @RequestMapping(value = "/ajaxBet.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxBet(HttpServletRequest httpServletRequest, String betForm ) {
        CommonResult result = new CommonResult();
        String companyShortName = this.getCompanyShortName();
        try {
            SscBetForm sscBetForm = JSONUtils.toObject(betForm, SscBetForm.class);
            if (null == sscBetForm) {
                result.setResult(-1000);
                result.setDescription("参数错误");
                return this.renderJson(result);
            }

            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            result = ApiUtils.bet(uid, token, betForm, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }

//    @RequestMapping(value = "/getSscOpenTime.json", method = {RequestMethod.GET, RequestMethod.POST})
//    @ResponseBody
//    public String getSscOpenTime(Boolean isData, Long playGroupId, Long playId, Boolean calcJiangchi) {
//        SscOpenTimeResult result = new SscOpenTimeResult();
//        try {
//            result = ApiUtils.getSscOpenTime(isData, playGroupId, playId, 0, 5, calcJiangchi);
//        } catch (Exception e) {
//            result.setResult(-1000);
//            result.setDescription("服务器错误");
//        }
//        return this.renderJson(result);
//    }

    @RequestMapping(value = "/getAllOpenTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String gouCaiDaTJson() {
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getAllSscOpenTime(companyShortName));
    }

    @RequestMapping(value = "/getAllDataHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getAllDataHistory(Integer type) {
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getAllDataHistory(type,null, companyShortName));
    }

    @RequestMapping(value = "/getAllSscOpenTime2.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getAllSscOpenTime2() {
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getAllSscOpenTime2(companyShortName));
    }

    @RequestMapping(value = "/getCurrentTime2.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String goucaiDaTGetTime() {
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getCurrentTimeResult(companyShortName));
    }

    @Authentication
    @RequestMapping(value = "/getBetDetails.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getBetDetails(HttpServletRequest httpServletRequest, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer status, Long playGroupId, String number, String orderNumber, Boolean isZhongjiang ) {
        BetListResult result = new BetListResult();

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        result = ApiUtils.getBetDetails(uid, token, pageIndex, pageSize, startTime, endTime, status, playGroupId, number, orderNumber, isZhongjiang, companyShortName);
        return this.renderJson(result);
    }

    @RequestMapping(value = "/ajaxGetHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult ajaxGetHistory(Long playGroupId, Integer pageIndex, Integer pageSize, String startT, String endT, String date) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        Date todayStart = calendar.getTime();
        calendar.add(Calendar.DAY_OF_MONTH, 1);
        Date todayEnd = calendar.getTime();

        Date yestodayEnd = todayStart;
        calendar.add(Calendar.DAY_OF_MONTH, -2);
        Date yestodayStart = calendar.getTime();
        calendar.add(Calendar.DAY_OF_MONTH, -1);
        Date day3Start = calendar.getTime();
        Date day3End = todayEnd;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SscHistoryResult result = new SscHistoryResult();
        Date startTime = null;
        Date endTime = null;

        if (startT != null && startT != "") {
            if ("t1".equals(startT)) {
                startTime = todayStart;
                endTime = todayEnd;
            } else if ("t2".equals(startT)) {
                startTime = yestodayStart;
                endTime = yestodayEnd;
            } else if ("t3".equals(startT)) {
                startTime = day3Start;
                endTime = day3End;
            }
        }
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getHistory(playGroupId, pageIndex, pageSize, startTime, endTime, date, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/ajaxGetSscPlayJjDescription.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscPlayJjDescriptionResult ajaxGetSscPlayJjDescription(Long playId ) {
        SscPlayJjDescriptionResult result = new SscPlayJjDescriptionResult();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getSscPlayJjDescription(playId, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/getPlanOpenDataHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult2 getPlanOpenDataHistory(Integer size, Long playGroupId ) {
        SscHistoryResult2 result = new SscHistoryResult2();
        String companyShortName = this.getCompanyShortName();
        try {
            // 默认5条
            if (size == null) {
                size = 5;
            }

            result = ApiUtils.getPlanOpenDataHistory(size, playGroupId, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/getSscOpenCode.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscOpenDataResult getSscOpenCode(Long playGroupId, String number) {
        SscOpenDataResult result = new SscOpenDataResult();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getSscOpenCode(playGroupId, number, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/getSscPlayPl.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscPlayPlResult getSscPlayPl(Long playId ) {
        SscPlayPlResult result = new SscPlayPlResult();
        String companyShortName = this.getCompanyShortName();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            result = ApiUtils.getSscPlayPl(uid, token, playId, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/getSscOpenTime2.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getSscOpenTime2(Long playGroupId) {
        SscOpenTimeResult result = new SscOpenTimeResult();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getSscOpenTime2(playGroupId, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }

    /**
     * 官方玩法
     * @param group
     * @return
     */
    @RequestMapping(value = "/gcdt/gfwf/{group}/{play}.html", method = RequestMethod.GET)
    public ModelAndView gcdtGfwf(@PathVariable String group, @PathVariable String play) throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("ssc/gcdt/gfwf/" + group + "/" + play, modelMap);
    }

    @RequestMapping(value = "/gcdt/index.html", method = RequestMethod.GET)
    public ModelAndView gcdtIndex() throws UserException {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        modelMap.put("icoData", ApiUtils.getLogo(3, companyShortName));
        return this.renderPublicView("ssc/gcdt/index", modelMap);
    }

    @RequestMapping(value = "/gcdt/{group}.html", method = RequestMethod.GET)
    public ModelAndView gcdt_group(@PathVariable String group) throws UserException {
        // 彩种ID
        Long playGroupId = 1L;

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 公司标志
        String companyShortName = this.getCompanyShortName();

        // 彩种禁用
        SscPlayGroupResult sscPlayGroupResult = ApiUtils.getSscPlayGroup(playGroupId, companyShortName);
        if (null != sscPlayGroupResult && null != sscPlayGroupResult.getEnable() && !sscPlayGroupResult.getEnable()) {
            return this.renderPublicView("ssc/gcdt/tingcaipage", modelMap);
        }

        // 官方玩法赔率
        modelMap.put("playPlListJson", this.getCacheGfwfPl(httpServletRequest, companyShortName, playGroupId));

        return this.renderPublicView("ssc/gcdt/" + group, modelMap);
    }

}