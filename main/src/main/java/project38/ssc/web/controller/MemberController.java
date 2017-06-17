package project38.ssc.web.controller;

import project38.api.common.exception.UserException;
import project38.api.common.helper.IPHelper;
import project38.api.common.result.CommonResult;
import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.*;
import project38.ssc.web.auth.Authentication;
import project38.api.utils.ApiUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


/**
 * 用户模块
 */
@Controller
@RequestMapping("/member")
public class MemberController extends BaseController {
    private static final Log log = LogFactory.getLog(MemberController.class);

    @Autowired
    private HttpServletRequest httpServletRequest;

    /**
     * ajax注册请求
     * @param account 账号
     * @param password 密码
     * @param yzm 验证码
     * @param name 姓名
     * @param agentId 代理ID
     * @param deviceNo 设备号
     * @return
     */
    @RequestMapping(value = "/ajaxRegister.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult ajaxRegister(
            String account,
            String password,
            String yzm,
            String name,
            Long agentId,
            String deviceNo
    ) {
        LoginResult result = new LoginResult();

        try {
            String companyShortName = this.getCompanyShortName();

            if (StringUtils.isBlank(account)) {
                result.setResult(-1);
                result.setDescription("账号不能为空");
                return result;
            }

            if (StringUtils.isBlank(password) || password.length() != 32) {
                result.setResult(-2);
                result.setDescription("密码不能为空");
                return result;
            }

            if (StringUtils.isBlank(yzm)) {
                result.setResult(-2);
                result.setDescription("验证码不能为空");
                return result;
            }

            HttpSession session = httpServletRequest.getSession();
            String yzmCode = (String) session.getAttribute("yzmCode");
            session.removeAttribute("yzmCode");
            if (StringUtils.isBlank(yzmCode)) {
                result.setResult(-4);
                result.setDescription("验证码已过期，请重新获取");
                return result;
            }

            if (!StringUtils.equals(yzmCode, yzm)) {
                result.setResult(-5);
                result.setDescription("验证码不正确");
                return result;
            }

            // 注册
            String ip = IPHelper.getIpAddr(httpServletRequest);
            CommonResult responseResult = ApiUtils.register(
                    account,
                    password,
                    name,
                    ip,
                    httpServletRequest.getServerName(),
                    null,
                    agentId,
                    companyShortName,
                    deviceNo
            );

            // 注册成功则登录
            if (responseResult.getResult() == 1) {
                result = ApiUtils.login(account, password, ip,0, companyShortName);
                if (result.getResult() != 1) {  // 自动登录失败，提示前往登录
                    result.setResult(-6);
                    result.setDescription("注册成功，请登录");
                }
            }

            // 返回前台
            result.setResult(responseResult.getResult());
            result.setDescription(responseResult.getDescription());
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    /**
     * ajax请求登录
     * @param account 账号
     * @param password 密码
     * @param yzm 验证码
     * @return
     */
    @RequestMapping(value = "/ajaxLogin.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult ajaxLogin(
            String account,
            String password,
            String yzm
    ) {
        LoginResult result = new LoginResult();
        try {
            if (StringUtils.isBlank(account)) {
                result.setResult(-1);
                result.setDescription("账号不能为空");
                return result;
            }

            if (StringUtils.isBlank(password) || password.length() != 32) {
                result.setResult(-2);
                result.setDescription("密码不能为空");
                return result;
            }

            if (StringUtils.isBlank(yzm)) {
                result.setResult(-3);
                result.setDescription("验证码不能为空");
                return result;
            }

            HttpSession session = httpServletRequest.getSession();
            String yzmCode = (String) session.getAttribute("yzmCode");
            session.removeAttribute("yzmCode");

            if (StringUtils.isBlank(yzmCode)) {
                result.setResult(-4);
                result.setDescription("验证码已过期，请重新获取");
                return result;
            }

            if (!StringUtils.equals(yzmCode, yzm)) {
                result.setResult(-5);
                result.setDescription("验证码不正确");
                return result;
            }

            String companyShortName = this.getCompanyShortName();
            // 登录
            result = ApiUtils.login(
                    account,
                    password,
                    IPHelper.getIpAddr(httpServletRequest),
                    2,
                    companyShortName
            );

            // 登录成功，调取公告
            if (1 == result.getResult()) {
                result.setWebNoticeList(
                        ApiUtils.getPopupNoticeList(
                                result.getUserId(),
                                result.getToken(),
                                companyShortName
                        ).getWebNoticeList()
                );
            }
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    /**
     * 会员中心IFRAME
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView index() throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("logoData", ApiUtils.getLogo(2, companyShortName));
        modelMap.put("icoData", ApiUtils.getLogo(4, companyShortName));
        modelMap.put("serverTime", ApiUtils.getServerTime(companyShortName));
        modelMap.put("kefu", ApiUtils.getKefu(companyShortName));

        return this.renderPublicView("member/index", modelMap);
    }

    /**
     * 会员中心首页
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/main.html", method = RequestMethod.GET)
    public ModelAndView main() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        modelMap.put("userLastInfo", ApiUtils.getUserLastInfo(uid, token, companyShortName));
        modelMap.put("bindStatus", ApiUtils.getBindStatus(uid, token, companyShortName));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token, companyShortName));
        modelMap.put("userInboxList", ApiUtils.getUserInboxList(uid, token, null, null, null, 1, 4, companyShortName).getUserInboxList());
        modelMap.put("promotionList", ApiUtils.getPromotion(companyShortName).getPromotionList());

        return this.renderPublicView("member/main", modelMap);
    }

    /**
     * 个人资料
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/selfInfo.html", method = RequestMethod.GET)
    public ModelAndView selfInfo() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token, companyShortName));

        return this.renderPublicView("member/selfInfo", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz.html", method = RequestMethod.GET)
    public ModelAndView zhcz(String module) throws Exception {
        if (StringUtils.equals(module, "yhzz")) {
        } else if (StringUtils.equals(module, "zxzf")) {
        } else if (StringUtils.equals(module, "wxzf")) {
        } else if (StringUtils.equals(module, "qqzf")) {
        } else if (StringUtils.equals(module, "zfbzf")) {
        } else if (StringUtils.equals(module, "wxzz")) {
        } else if (StringUtils.equals(module, "qqzz")) {
        } else if (StringUtils.equals(module, "cftzz")) {
        } else if (StringUtils.equals(module, "zfbzz")) {
        } else {
            throw new UserException(-1, "404");
        }

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token, companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderPublicView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token, companyShortName));
        modelMap.put("bankCardListResult", ApiUtils.getSystemBankCard(uid, token, companyShortName));
        // 在线支付
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3},companyShortName));
        // 支付宝支付
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3},companyShortName));
        // 微信支付
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3},companyShortName));
        // QQ支付
        modelMap.put("qqzfInfo", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3},companyShortName));

        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token, companyShortName));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token,companyShortName));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token, companyShortName));
        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token, companyShortName));

        modelMap.put("depositChannel", ApiUtils.getDepositChannel(companyShortName));
        return this.renderPublicView("member/zhcz/" + module, modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx.html", method = RequestMethod.GET)
    public ModelAndView jfmx(String module) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token, companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderPublicView("member/noaccess", modelMap);
        }

        if (StringUtils.equals(module, "hylb")) {
        } else if (StringUtils.equals(module, "tjhy")) {
        } else if (StringUtils.equals(module, "cwbb")) {
        } else if (StringUtils.equals(module, "tdls")) {
        } else if (StringUtils.equals(module, "tdbb")) {
        } else if (StringUtils.equals(module, "tdtz")) {
        } else if (StringUtils.equals(module, "yjjl")) {
        } else {
            throw new UserException(-1, "404");
        }

        return this.renderPublicView("member/jfmx/" + module, modelMap);
    }

    /**
     * 银行转账
     *
     * @return
     */
    @RequestMapping(value = "/submitYhzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitYhzz(Double money, Integer depositChannelId, String bankAccount, Long bankCardId, String userBankName) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        CommonResult result = new CommonResult();
        try {

            if (money == null) {
                result.setResult(-1);
                result.setDescription("请输入金额！");
                return this.renderJson(result);
            }
            if (null == depositChannelId) {
                result.setResult(-2);
                result.setDescription("存款渠道编码不能为空！");
                return this.renderJson(result);
            }
            if (StringUtils.isBlank(bankAccount)) {
                result.setResult(-4);
                result.setDescription("银行账号不能为空！");
                return this.renderJson(result);
            }
            if (null == bankCardId) {
                result.setResult(-5);
                result.setDescription("存款银行卡编码不能为空！");
                return this.renderJson(result);
            }
            if (StringUtils.isBlank(userBankName)) {
                result.setResult(-5);
                result.setDescription("转出银行不能为空！");
                return this.renderJson(result);
            }
            result = ApiUtils.submitYhzz(uid, token, money, depositChannelId, bankAccount, bankCardId, userBankName, companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return this.renderJson(result);
    }


    /**
     * 快速提款页面
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/withdraw.html", method = RequestMethod.GET)
    public ModelAndView withdrawLocation() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token, companyShortName);
        if (!layerInfoResult.getCanWithdraw()) {
            return this.renderPublicView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token, companyShortName));
        modelMap.put("userBankCardResult", ApiUtils.getUserBankCardList(uid, token, companyShortName));

        return this.renderPublicView("member/withdraw", modelMap);
    }


    /**
     * 站内信件
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/letter.html", method = RequestMethod.GET)
    public ModelAndView letterLocation() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("member/letter", modelMap);
    }

    /**
     * ajax获取站内信件数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetLetter.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String letterLocation(Boolean hasRead, Date startTime, Date endTime, Integer pageIndex, Integer pageSize) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getUserInboxList(uid, token, startTime, endTime, hasRead, pageIndex, pageSize, companyShortName));
    }


    /**
     * 微信转账
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/submitWeixinzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitWeixinzz(Double money, String userWeixinName, Integer weixinId, Date time) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        CommonResult result = new CommonResult();

        if (money == null) {
            result.setResult(-1);
            result.setDescription("请输入金额！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(userWeixinName)) {
            result.setResult(-2);
            result.setDescription("用户微信昵称不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(weixinId))) {
            result.setResult(-3);
            result.setDescription("微信编码不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(time))) {
            result.setResult(-4);
            result.setDescription("取款时间不能为空！");
            return this.renderJson(result);
        }

        result = ApiUtils.submitWeixinzz(uid, token, money, userWeixinName, weixinId, time, companyShortName);
        return this.renderJson(result);
    }

    /**
     * QQ转账
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxSubmitQqzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitQqzz(Double money, String userQqName, Integer qqId, Date time ) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        CommonResult result = new CommonResult();

        if (null == money) {
            result.setResult(-1);
            result.setDescription("请输入金额！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(userQqName)) {
            result.setResult(-2);
            result.setDescription("用户QQ昵称不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(qqId))) {
            result.setResult(-3);
            result.setDescription("QQ编码不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(time))) {
            result.setResult(-4);
            result.setDescription("取款时间不能为空！");
            return this.renderJson(result);
        }

        result = ApiUtils.submitQqzz(uid, token, money, userQqName, qqId, time, companyShortName);
        return this.renderJson(result);
    }

    /**
     * 支付宝转账`
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/submitAlipayzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxAlipayzz(Double money, String userAlipayName, Integer alipayId, Date time ) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        CommonResult result = new CommonResult();

        if (money == null) {
            result.setResult(-1);
            result.setDescription("请输入金额！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(userAlipayName)) {
            result.setResult(-2);
            result.setDescription("用户支付宝昵称不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(alipayId))) {
            result.setResult(-3);
            result.setDescription("支付宝编码不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(time))) {
            result.setResult(-4);
            result.setDescription("取款时间不能为空！");
            return this.renderJson(result);
        }

        result = ApiUtils.submitAlipayzz(uid, token, money, userAlipayName, alipayId, time, companyShortName);
        return this.renderJson(result);
    }


    /**
     * 财付通转账
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/submitTenpayzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxTenpayzz(Double money, String userTenpayName, Integer tenpayId, Date time ) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        CommonResult result = new CommonResult();

        if (money == null) {
            result.setResult(-1);
            result.setDescription("请输入金额");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(userTenpayName)) {
            result.setResult(-2);
            result.setDescription("用户财付通昵称不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(tenpayId))) {
            result.setResult(-3);
            result.setDescription("财付通编码不能为空！");
            return this.renderJson(result);
        }
        if (StringUtils.isBlank(String.valueOf(time))) {
            result.setResult(-4);
            result.setDescription("取款时间不能为空！");
            return this.renderJson(result);
        }

        result = ApiUtils.submitTenpayzz(uid, token, money, userTenpayName, tenpayId, time, companyShortName);
        return this.renderJson(result);
    }


    /**
     * 快速提款功能
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/submitWithdraw.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxWithdraw(Double money, Long id, String drawPassword) {


        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        CommonResult result = new CommonResult();

        if (money == null) {
            result.setResult(-1);
            result.setDescription("请输入金额");
            return this.renderJson(result);
        }

        if (null == id) {
            result.setResult(-2);
            result.setDescription("请选择银行卡！");
            return this.renderJson(result);
        }


        result = ApiUtils.submitWithdraw(uid, token, money, id, drawPassword, companyShortName);
        return this.renderJson(result);
    }

    /* 市场活动
    * @return
            */
    @RequestMapping(value = "/market.html", method = {RequestMethod.GET})
    public ModelAndView marketLocation(HttpServletRequest Request) throws Exception {
        String locationUrl = "member/market";
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String flag = Request.getParameter("page") != null ? Request.getParameter("page") : "default";
        if (!"default".equals(flag)) {
            locationUrl = locationUrl + "2";
        }

        return this.renderPublicView(locationUrl, modelMap);
    }

    /**
     * 历史记录
     */
    @RequestMapping(value = "/record.html", method = RequestMethod.GET)
    public ModelAndView recordketLocation() throws Exception {
        String location_flag = "member/record";
        String location_str = location_flag + "2";
        Map<String, Object> modelMap = new HashMap<String, Object>();

        String location_num = httpServletRequest.getParameter("page") != null ? httpServletRequest.getParameter("page") : "default";

        if (!"default".equals(location_num)) {
            if ("location1".equals(location_num)) {
                location_str = location_flag;
            } else if ("location2".equals(location_num)) {
                location_str = location_flag + "2";
            } else if ("location3".equals(location_num)) {
                location_str = location_flag + "3";
            } else if ("location4".equals(location_num)) {
                location_str = location_flag + "4";
            } else if ("location5".equals(location_num)) {
                location_str = location_flag + "5";
            }
        }

        return this.renderPublicView(location_str, modelMap);
    }

    /**
     * 账户设置
     */
    @RequestMapping(value = "/setting.html", method = RequestMethod.GET)
    public ModelAndView settingketLocation() throws Exception {

        String location_flag = "member/setting";
        String location_str = location_flag + "2";
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String location_num = httpServletRequest.getParameter("page") != null ? httpServletRequest.getParameter("page") : "default";

        if (!"default".equals(location_num)) {
            if ("location1".equals(location_num)) {
                location_str = location_flag;
            } else if ("location2".equals(location_num)) {
                location_str = location_flag + "2";
            } else if ("location3".equals(location_num)) {
                location_str = location_flag + "3";
            } else if ("location4".equals(location_num)) {
                location_str = location_flag + "4";
            } else if ("location5".equals(location_num)) {
                location_str = location_flag + "5";
            }
        }
        return this.renderPublicView(location_str, modelMap);
    }


    /**
     * 账户设置
     */
    @Authentication
    @RequestMapping(value = "/zhsz.html", method = RequestMethod.GET)
    public ModelAndView zhsz(String module) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();

        try {

            if (StringUtils.equals(module, "grzl")) {
            } else if (StringUtils.equals(module, "dlmm")) {
                // 权限检查
                Long uid = this.getUid(httpServletRequest);
                String token = this.getToken(httpServletRequest);
                String companyShortName = this.getCompanyShortName();
                LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token, companyShortName);
                if (!layerInfoResult.getCanEditPassword()) {
                    return this.renderPublicView("member/noaccess", modelMap);
                }
            } else if (StringUtils.equals(module, "yhkgl")) {
                // 权限检查
                Long uid = this.getUid(httpServletRequest);
                String token = this.getToken(httpServletRequest);
                String companyShortName = this.getCompanyShortName();
                LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token, companyShortName);
                if (!layerInfoResult.getCanEditUserBank()) {
                    return this.renderPublicView("member/noaccess", modelMap);
                }

                modelMap.put("userBankCardResult", ApiUtils.getUserBankCardList(uid, token, companyShortName));
            } else if (StringUtils.equals(module, "aqxx")) {
                // 权限检查
                Long uid = this.getUid(httpServletRequest);
                String token = this.getToken(httpServletRequest);
                String companyShortName = this.getCompanyShortName();
                LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token, companyShortName);
                if (!layerInfoResult.getCanSafeinfo()) {
                    return this.renderPublicView("member/noaccess", modelMap);
                }

                modelMap.put("safeInfo", ApiUtils.getSafeInfo(uid, token, companyShortName));
            } else {
                throw new UserException(-1, "404");
            }
        } catch (Exception e) {
            log.error(this, e);
        }

        return this.renderPublicView("member/zhsz/" + module, modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/ajaxEditUserInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxEditUserInfo(String nickname, Date birthday, String qq, String telephone, String email, Integer sex ) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        CommonResult result = ApiUtils.editUserInfo(uid, token, nickname, birthday, qq, telephone, email, sex, companyShortName);
        return this.renderJson(result);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/ajaxResetPassword.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxResetPassword(String oldPassword, String newPassword ) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        CommonResult result = ApiUtils.resetPassword(uid, token, oldPassword, newPassword, companyShortName);
        return this.renderJson(result);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/ajaxResetDrawPassword.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxResetDrawPassword(String oldPassword, String newPassword ) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        CommonResult result = ApiUtils.resetDrawPassword(uid, token, oldPassword, newPassword, companyShortName);
        return this.renderJson(result);
    }


    @Authentication
    @RequestMapping(value = "/lsjl.html", method = RequestMethod.GET)
    public ModelAndView lsjl(String module) throws Exception {
        if (StringUtils.equals(module, "ckjl")) {
            return this.lsjlCkjl();
        } else if (StringUtils.equals(module, "tzjl")) {
            return this.lsjlTzjl();
        } else if (StringUtils.equals(module, "tkjl")) {
            return this.lsjlTkjl();
        } else if (StringUtils.equals(module, "zjjl")) {
            return this.lsjlZjjl();
        }
        
        throw new UserException(-1, "404");
    }

    @Authentication
    @RequestMapping(value = "/lsjl/ckjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlCkjl() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        modelMap.put("depositChannelResult", ApiUtils.getDepositChannel(companyShortName));
        return this.renderPublicView("member/lsjl/ckjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/tzjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlTzjl() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        SscPlayGroupListResult sscplaylist = ApiUtils.getSscPlayGroupList(companyShortName);
        modelMap.put("sscplaylist", sscplaylist);
        return this.renderPublicView("member/lsjl/tzjl", modelMap);
    }

    @RequestMapping(value = "/getSscPlayGroup.json")
    @ResponseBody
    public String getPlayGroup( ) {
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getSscPlayGroupList(companyShortName));
    }

    @Authentication
    @RequestMapping(value = "/lsjl/tkjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlTkjl() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("member/lsjl/tkjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/zjjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlZjjl() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("member/lsjl/zjjl", modelMap);
    }

    /**
     * ajax获取存款记录数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetCkjl.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxGetCkjl(Boolean hasRead, Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Integer status, Integer type) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getDepositList(uid, token, startTime, endTime, pageIndex, pageSize, status, type,companyShortName));
    }

    /**
     * ajax获取提款记录数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetTkjl.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxGetTkjl(Boolean hasRead, Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Integer status, Integer type) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getWithdrawList(uid, token, startTime, endTime, pageIndex, pageSize, status, type, companyShortName));
    }

    /**
     * ajax获取投注记录数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetTzjl.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public SscBetsListResult ajaxGetTzjl(Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Long playGroupId, Long playId, Integer status, Boolean isZhongjiang) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.getSscBetsList(uid, token, startTime, endTime, pageIndex, pageSize, playGroupId, playId, status, isZhongjiang, companyShortName);
    }

    /**
     * ajax阅读站内信
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxReadZnx.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxReadZnx(@RequestParam("ids[]") Long[] idList ) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.readUserInboxNotice(uid, token, idList, companyShortName));
    }

    /**
     * ajax删除站内信
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxDelZnx.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxDelZnx(@RequestParam("ids[]") Long[] idList) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.delUserInboxNotice(uid, token, idList, companyShortName));
    }

    /**
     * ajax添加银行卡
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxAddUserBank.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxAddUserBank(String bankName, String subBankName, String bankAccount) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.addUserBank(uid, token, bankName, subBankName, bankAccount, companyShortName));
    }

    /**
     * ajax添加银行卡
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxDelUserBank.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxDelUserBank(Long id) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.delUserBank(uid, token, id, companyShortName));
    }

    @Authentication
    @RequestMapping(value = "/ajaxSetDefault.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public CommonResult ajaxSetDefault(Long id) {
        CommonResult result = new CommonResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);
            String companyShortName = this.getCompanyShortName();

            return ApiUtils.setUserBankDefault(uid, token, id,companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }

        return result;
    }

    @Authentication
    @RequestMapping(value = "/schd.html", method = RequestMethod.GET)
    public ModelAndView schd() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("member/schd", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/schd/yhqb.html", method = RequestMethod.GET)
    public ModelAndView schdYhqb() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("member/schd/yhqb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/schd/tjfl.html", method = RequestMethod.GET)
    public ModelAndView schdTjfl() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderPublicView("member/schd/tjfl", modelMap);
    }

    @RequestMapping(value = "/ajaxGetServerTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getServerTime() {
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getServerTime(companyShortName));
    }

    @RequestMapping(value = "/checkOnline.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public CommonResult checkOnline() {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.checkOnline(uid, token, companyShortName);
    }

    @Authentication
    @RequestMapping(value = "/updateUserInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String updateUserInfo() {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        ApiUtils.updateUserInfo(uid, token, companyShortName);
        return this.renderJson(ApiUtils.getUserSession(uid, token,companyShortName));
    }

    @Authentication
    @RequestMapping(value = "/getUserSession.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getUserSession() throws Exception {
        return updateUserInfo();
    }

    @Authentication
    @RequestMapping(value = "/ajaxSigout.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSigout() throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.sigout(uid, token,companyShortName));
    }


    /**
     * ajax获取弹窗公告
     *
     * @return
     */
    @RequestMapping(value = "/ajaxGetWebPopUpNotice.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public WebNoticeResult ajaxGetWebPopUpNotice() throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.getPopupNoticeList(uid, token,companyShortName);
    }

    /**
     * ajax获取弹窗公告
     *
     * @return
     */
    @RequestMapping(value = "/ajaxGetLogUserCoinList.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LogUserCoinResult ajaxGetLogUserCoinList(Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer type) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.getLogUserCoinList(uid, token,pageIndex, pageSize, startTime, endTime, type, companyShortName);
    }
}
