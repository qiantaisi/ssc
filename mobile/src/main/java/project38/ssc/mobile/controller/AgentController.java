package project38.ssc.mobile.controller;

import project38.api.common.exception.UserException;
import project38.api.common.helper.IPHelper;
import project38.api.common.result.CommonResult;
import org.apache.commons.lang3.StringUtils;
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
import java.util.Date;

/**
 * 代理控制器
 * <p>
 * Created by Administrator on 2016/11/14.
 */

@Controller
@RequestMapping(value = "/agent")
public class AgentController extends BaseController {
    private static final Log log = LogFactory.getLog(AgentController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView agentindex(String companyShortName) throws UserException {
        return this.renderView("agent/index", null);
    }

    @RequestMapping(value = "/ajaxGetUserList.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public AgentUserListResult ajaxGetUserList(Integer pageIndex, Integer pageSize, Date startTime, Date endTime, String account, Long id) {
        AgentUserListResult result = new AgentUserListResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            String companyShortName = this.getCompanyShortName();
            return ApiUtils.getUserList(uid, token, pageIndex, pageSize, startTime, endTime, account, id, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

//    @RequestMapping(value = "/agentEnableUser.json", method = {RequestMethod.GET, RequestMethod.POST})
//    @ResponseBody
//    public CommonResult agentEnableUser(Long userId, Boolean isEnable) {
//        CommonResult result = new CommonResult();
//        try {
//            Long uid = this.getUid(httpServletRequest);
//            String token = this.getToken(httpServletRequest);
//            String companyShortName = this.getCompanyShortName();
//            return ApiUtils.agentEnableUser(uid, token, userId, isEnable, companyShortName);
//        } catch (Exception e) {
//            log.error(this, e);
//            result.setResult(-100);
//            result.setDescription("服务器错误");
//        }
//        return result;
//    }

    @RequestMapping(value = "/ajaxAddUser.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public CommonResult ajaxAddUser(String account, String password, String name, String qq) {
        CommonResult result = new CommonResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            String companyShortName = this.getCompanyShortName();

            if (StringUtils.isBlank(account)) {
                throw new UserException(-5, "用户名不能为空");
            }

            if (StringUtils.isBlank(password)) {
                throw new UserException(-6, "密码不能为空");
            }

            if (StringUtils.isBlank(name)) {
                throw new UserException(-7, "真实姓名不能为空");
            }

            if (StringUtils.isBlank(qq)) {
                throw new UserException(-8, "QQ不能为空");
            }

            return ApiUtils.addUser(uid, token, account, password, name, IPHelper.getIpAddr(httpServletRequest), httpServletRequest.getServerName(), qq, companyShortName);
        } catch (UserException e) {
            result.setResult(e.getCode());
            result.setDescription(e.getMessage());
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/ajaxGetLiushui.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public AgentTdlsResult ajaxGetLiushui(Integer pageIndex, Integer pageSize, String account, Date startTime, Date endTime, Integer type) {
        AgentTdlsResult result = new AgentTdlsResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            String companyShortName = this.getCompanyShortName();

            return ApiUtils.getLiushui(uid, token, pageIndex, pageSize, account, startTime, endTime, type, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/ajaxGetTouzhu.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public BetListResult ajaxGetTouzhu(String account, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer status, Long playGroupId, Long playId, String number, String orderNumber) {
        BetListResult result = new BetListResult();
        String companyShortName = this.getCompanyShortName();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            return ApiUtils.getTouzhu(uid, token, account, pageIndex, pageSize, startTime, endTime, status, playGroupId, playId, number, orderNumber, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/ajaxGetUserReport.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public AgentUserReportResult ajaxGetUserReport(Integer pageIndex, Integer pageSize, Date startTime, Date endTime, String account, Long id) {
        AgentUserReportResult result = new AgentUserReportResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            String companyShortName = this.getCompanyShortName();
//            return ApiUtils.getUserBalanceList(uid, token, pageIndex, pageSize, startTime, endTime, account, id);
            return ApiUtils.getUserReport(uid, token, pageIndex, pageSize, startTime, endTime, account, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/ajaxGetAgentReport.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public AgentReportResult ajaxGetAgentReport(Date startTime, Date endTime) {
        AgentReportResult result = new AgentReportResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            String companyShortName = this.getCompanyShortName();
            return ApiUtils.getAgentReport(uid, token, startTime, endTime, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    @RequestMapping(value = "/ajaxGetUserYjList.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public AgentUserYjListResult ajaxGetUserYjList(Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer type) {
        AgentUserYjListResult result = new AgentUserYjListResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            String companyShortName = this.getCompanyShortName();

            return ApiUtils.agentGetUserYjList(uid, token, pageIndex, pageSize, startTime, endTime, type, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }
}
