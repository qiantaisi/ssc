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
import project38.ssc.mobile.auth.Authentication;
import project38.ssc.mobile.form.SscBetForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTML;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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

    @Autowired
    private HttpServletRequest httpServletRequest;

    @RequestMapping(value = "/register.html",method = RequestMethod.GET)
    public ModelAndView register(){
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("index/register", modelMap);
    }

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        modelMap.put("icoData", ApiUtils.getLogo(4,companyShortName));
        return this.renderView("ssc/index", modelMap);
    }

    @RequestMapping(value = "/main.html", method = RequestMethod.GET)
    public ModelAndView main() {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("webPopUpNoticeResult", ApiUtils.getPopupNoticeList(uid, token,null, null,companyShortName));
        
        modelMap.put("logo", ApiUtils.getLogo(3,companyShortName));
        return this.renderView("ssc/main", modelMap);
    }

    @RequestMapping(value = "/gcdt.html", method = RequestMethod.GET)
    public ModelAndView gcdt() {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        
        modelMap.put("popupNoticeList", ApiUtils.getPopupNoticeList(uid, token,null, null, companyShortName).getWebNoticeList());
        return this.renderView("ssc/gcdt/gcdt", modelMap);
    }

    @RequestMapping(value = "/tingcaipage.html", method = RequestMethod.GET)
    public ModelAndView tingcaipage() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        return this.renderView("ssc/gcdt/tingcaipage", modelMap);
    }

    @RequestMapping(value = "/gcdt/{group}.html", method = RequestMethod.GET)
    public ModelAndView gcdtGroup(@PathVariable String group, HttpServletResponse httpServletResponse,String companyShortName) throws IOException {
        Map<String, Object> modelMap = new HashMap<String, Object>();

//        SscPlayGroupResult sscPlayGroupResult = ApiUtils.getSscPlayGroup(group);
//
//        // 彩种禁用暂停
//        if (!sscPlayGroupResult.getEnable()) {
//            String path = httpServletRequest.getContextPath();
//            String basePath = httpServletRequest.getScheme() + "://" + httpServletRequest.getServerName() + ":" + httpServletRequest.getServerPort() + path + "/ssc/tingcaipage.html";
//
//            httpServletResponse.sendRedirect(basePath);
//            return null;
//        }

        return this.renderView("ssc/gcdt/" + group, modelMap);
    }

    @RequestMapping(value = "/zst/{module}.html", method = RequestMethod.GET)
    public ModelAndView zstModule(@PathVariable String module) {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("ssc/zst/" + module, modelMap);
    }

    @RequestMapping(value = "/gcdt/{group}/{play}.html", method = RequestMethod.GET)
    public ModelAndView gcdtGroupPlay(@PathVariable String group, @PathVariable String play) {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("ssc/gcdt/" + group + "/" + play, modelMap);
    }

    @Authentication
    @RequestMapping(value = "/ajaxBet.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxBet(HttpServletRequest httpServletRequest, String betForm) {
        CommonResult result = new CommonResult();
        try {
            SscBetForm sscBetForm = JSONUtils.toObject(betForm, SscBetForm.class);
            if (null == sscBetForm) {
                result.setResult(-1000);
                result.setDescription("参数错误");
                return this.renderJson(result);
            }

            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            String companyShortName = this.getCompanyShortName();
            result = ApiUtils.bet(uid, token, betForm, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }

    @RequestMapping(value = "/getSscOpenTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getSscOpenTime(Boolean isData, Long playGroupId, Long playId, Boolean calcJiangchi) {
        SscOpenTimeResult result = new SscOpenTimeResult();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getSscOpenTime(isData, playGroupId, playId, 0, 5, calcJiangchi, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }

    @RequestMapping(value = "/getAllOpenTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String gouCaiDaTJson () {
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getAllSscOpenTime(companyShortName));
    }


    @Authentication
    @RequestMapping(value = "/getBetDetails.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getBetDetails(HttpServletRequest httpServletRequest,Integer pageIndex,Integer pageSize,Date startTime,Date endTime,Integer status,Long playGroupId,String number,String orderNumber, Boolean isZhongjiang ) {
        BetListResult result = new BetListResult();

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        result = ApiUtils.getBetDetails(uid,token,pageIndex,pageSize,startTime,endTime,status, playGroupId, number, orderNumber, isZhongjiang,companyShortName);
        return this.renderJson(result);
    }

    @RequestMapping(value = "/ajaxGetHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult ajaxGetHistory(Long playGroupId, Integer pageIndex, Integer pageSize, String date) {
        SscHistoryResult result = new SscHistoryResult();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getHistory(playGroupId, pageIndex, pageSize, null, null, date,companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/ajaxGetSscPlayJjDescription.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscPlayJjDescriptionResult ajaxGetSscPlayJjDescription(Long playId) {
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


    @RequestMapping(value = "/ajaxGetSscOpenTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxGetSscOpenTime(Long playGroupId ) {
        SscOpenTimeResult result = new SscOpenTimeResult();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getSscOpenTime(false, playGroupId, null, null, null, null, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }


    @RequestMapping(value = "/getSscOpenTimePer.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getSscOpenTimePer(Long playGroupId ) {
        SscOpenTimeResultPer result = new SscOpenTimeResultPer();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getSscOpenTimePer(playGroupId, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }

    /**
     * 剩余时间
     * @param playGroupId
     * @return
     */
    @RequestMapping(value = "/ajaxGetSscLeftTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscLeftTimeResult ajaxGetSscLeftTime(Long playGroupId ) {
        SscLeftTimeResult result = new SscLeftTimeResult();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getSscLeftTime(playGroupId, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    /**
     * 赔率
     * @param playId
     * @return
     */
    @RequestMapping(value = "/ajaxGetSscPlayPl.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscPlayPlResult ajaxGetSscPlayPl(Long playId ) {
        String companyShortName = this.getCompanyShortName();
        SscPlayPlResult result = new SscPlayPlResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            result = ApiUtils.getSscPlayPl(uid, token, playId, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    /**
     * 最新开奖历史
     * @param playGroupId
     * @return
     */
    @RequestMapping(value = "/ajaxGetSscDataHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult2 ajaxGetSscDataHistory(Long playGroupId ) {
        String companyShortName = this.getCompanyShortName();
        SscHistoryResult2 result = new SscHistoryResult2();
        try {
            result = ApiUtils.getSscDataHistory(0, 5, playGroupId, null, project38.api.common.utils.DateUtils.getBeijingCalendar().getTime(),companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    /**
     * 开奖历史记录
     * @param playGroupId
     * @return
     */
    @RequestMapping(value = "/ajaxGetDataHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult3 ajaxGetDataHistory(Integer pageIndex, Integer pageSize, Date openDate, String number, Long playGroupId, Date startTime, Date endTime) {
        SscHistoryResult3 result = new SscHistoryResult3();
        String companyShortName = this.getCompanyShortName();
        try {
            result = ApiUtils.getDataHistory(pageIndex, pageSize, openDate, number, playGroupId, startTime, endTime, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    /**
     * 开奖历史记录
     * @param type
     * @return
     */
    @RequestMapping(value = "/ajaxGetAllDataHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult3 ajaxGetAllDataHistory(Integer type) {
        String companyShortName = this.getCompanyShortName();
        SscHistoryResult3 result = new SscHistoryResult3();
        try {
            result = ApiUtils.getAllDataHistory(type, null, companyShortName);
        } catch (Exception e) {
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/kjjl/list.html",method = RequestMethod.GET)
    public ModelAndView kjjlList(Long playGroupId ){
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("playGroupId", playGroupId);
        return this.renderView("ssc/kjjl/list", modelMap);
    }

    @RequestMapping(value = "/kjjl/all.html",method = RequestMethod.GET)
    public ModelAndView kjjlAll(){
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("ssc/kjjl/all", modelMap);
    }

    @RequestMapping(value = "/kjjl/bqxq.html",method = RequestMethod.GET)
    public ModelAndView kjjlGdqc(Long playGroupId){
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        modelMap.put("playGroupId", playGroupId);
        modelMap.put("openData", JSONUtils.toJSONStr(ApiUtils.getAllDataHistory(3, playGroupId,companyShortName)));
        return this.renderView("ssc/kjjl/bqxq", modelMap);
    }

    @RequestMapping(value = "/wfsm/lskj.html",method = RequestMethod.GET)
    public ModelAndView wfsmLskj(Long playGroupId){
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("playGroupId", playGroupId);
        return this.renderView("ssc/wfsm/lskj", modelMap);
    }

    @RequestMapping(value = "/wfsm/wfsm.html",method = RequestMethod.GET)
    public ModelAndView wfsmWfsm( Long playGroupId ){
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("playGroupId", playGroupId);
        return this.renderView("ssc/wfsm/wfsm", modelMap);
    }

    @RequestMapping(value = "/zst/{playGroupName}/{zstName}.html",method = RequestMethod.GET)
    public ModelAndView wfsmWfsm(@PathVariable String playGroupName, @PathVariable String zstName){
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("ssc/zst/" + playGroupName + "/" + zstName, modelMap);
    }

    @RequestMapping(value = "/getSscOpenTime2.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscOpenTimeResult getSscOpenTime2(Long playGroupId) {
        String companyShortName = this.getCompanyShortName();
        SscOpenTimeResult result = new SscOpenTimeResult();
        try {
            result = ApiUtils.getSscOpenTime2(playGroupId,companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/getPlanOpenDataHistory.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscHistoryResult2 getPlanOpenDataHistory(Integer size, Long playGroupId) {
        String companyShortName = this.getCompanyShortName();
        SscHistoryResult2 result = new SscHistoryResult2();
        try {
            // 默认5条
            if (size == null) {
                size = 5;
            }

            result = ApiUtils.getPlanOpenDataHistory(size, playGroupId,companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-1000);
            result.setDescription("服务器错误");
        }
        return result;
    }
}
