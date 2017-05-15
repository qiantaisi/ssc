package project38.ssc.mobile.controller;

import project38.api.common.helper.IPHelper;
import project38.api.common.result.CommonResult;
import project38.api.common.utils.JSONUtils;
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
import project38.api.utils.ApiUtils;
import project38.ssc.mobile.auth.Authentication;

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
     *
     * @return
     */
    @RequestMapping(value = "/ajaxRegister.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult ajaxRegister(String account, String password, String name, Long agentId) {
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

            String companyShortName = this.getCompanyShortName();

            // 接口返回数据
            String ip = IPHelper.getIpAddr(httpServletRequest);
            CommonResult responseResult = ApiUtils.register(account, password, name, ip, httpServletRequest.getServerName(), null, agentId,companyShortName);
            if (responseResult.getResult() == 1) {
                // 登录
                result = ApiUtils.login(account, password, ip, 1,companyShortName);
                if (result.getResult() != 1) {
                    result.setResult(-6);
                    result.setDescription("注册成功，请登录！");
                } else {
                    result.setUserId(result.getUserId());
                    result.setToken(result.getToken());
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
     *
     * @param httpServletResponse
     * @param account
     * @param password
     * @return
     */
    @RequestMapping(value = "/ajaxLogin.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public LoginResult ajaxLogin(HttpServletResponse httpServletResponse, String account, String password) {
        String companyShortName = this.getCompanyShortName();
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

            // 接口返回数据
            result = ApiUtils.login(account, password, IPHelper.getIpAddr(httpServletRequest), 1,companyShortName);
        } catch (Exception e) {
            log.error(this, e);
            result.setResult(-100);
            result.setDescription("服务器错误");
        }
        return result;
    }

    /**
     * 会员中心首页
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView main() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        
        modelMap.put("unReadZnxCount", ApiUtils.countUserInboxUnRead(uid, token,companyShortName));

        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        modelMap.put("layerInfo", layerInfoResult);
        modelMap.put("yhzzList", ApiUtils.getSystemBankCard(uid, token,companyShortName).getBankcardList());
        modelMap.put("zfbzzList", ApiUtils.getSystemAlipay(uid, token,companyShortName).getSkInfoList());
        modelMap.put("wxzzList", ApiUtils.getSystemWeixin(uid, token,companyShortName).getSkInfoList());
        modelMap.put("cftzzList", ApiUtils.getSystemTenpay(uid, token,companyShortName).getSkInfoList());
        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token ,1, new Integer[] {2, 3},companyShortName));
        return this.renderView("member/index", modelMap);
    }

    /**
     * 个人资料
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/grzl/index.html", method = RequestMethod.GET)
    public ModelAndView grzlIndex() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanEditInfo()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userLastInfo", ApiUtils.getUserLastInfo(uid, token,companyShortName));
        modelMap.put("logo", ApiUtils.getLogo(2,companyShortName));
        return this.renderView("member/grzl/index", modelMap);
    }

    /**
     * 个人资料
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/grzl/edit.html", method = RequestMethod.GET)
    public ModelAndView grzlEdit() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("logo", ApiUtils.getLogo(2,companyShortName));
        return this.renderView("member/grzl/edit", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz.html", method = RequestMethod.GET)
    public ModelAndView zhcz() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/zhcz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/yhzz.html", method = RequestMethod.GET)
    public ModelAndView zhczYhzz() throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("depositChannel", ApiUtils.getDepositChannel(companyShortName));
        return this.renderView("member/zhcz/yhzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/cqk/zz/yhzz.html", method = RequestMethod.GET)
    public ModelAndView zhczZzYhzz() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("yhzzList", JSONUtils.toJSONStr(ApiUtils.getSystemBankCard(uid, token,companyShortName).getBankcardList()));
        return this.renderView("member/cqk/zz/yhzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/hylb.html", method = RequestMethod.GET)
    public ModelAndView jfmxHylb() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token,companyShortName));
//        modelMap.put("bankCardListResult", ApiUtils.getSystemBankCard(uid, token));
        return this.renderView("member/jfmx/hylb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/tjhy.html", method = RequestMethod.GET)
    public ModelAndView jfmxTjhy() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/jfmx/tjhy", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/cwbb.html", method = RequestMethod.GET)
    public ModelAndView jfmxCwbb() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/jfmx/cwbb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/tdls.html", method = RequestMethod.GET)
    public ModelAndView jfmxTdls() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/jfmx/tdls", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/tdye.html", method = RequestMethod.GET)
    public ModelAndView jfmxTdye() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/jfmx/tdye", modelMap);
    }


    @Authentication
    @RequestMapping(value = "/jfmx/tdtz.html", method = RequestMethod.GET)
    public ModelAndView jfmxTdtz() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        SscPlayGroupListResult sscplaylist = ApiUtils.getSscPlayGroupList(companyShortName);
        modelMap.put("sscplaylist", sscplaylist);

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/jfmx/tdtz", modelMap);
    }


    @Authentication
    @RequestMapping(value = "/zhcz/zxzf.html", method = RequestMethod.GET)
    public ModelAndView zhczZxzf() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3},companyShortName));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3},companyShortName));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3},companyShortName));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token,companyShortName));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token,companyShortName));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token,companyShortName));
        modelMap.put("systemPayOnlineResult", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3},companyShortName));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token,companyShortName));
        return this.renderView("member/zhcz/zxzf", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/wxzf.html", method = RequestMethod.GET)
    public ModelAndView zhczWxzf() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3},companyShortName));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3},companyShortName));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3},companyShortName));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token,companyShortName));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token,companyShortName));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token,companyShortName));
        modelMap.put("systemPayOnlineResult", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3},companyShortName));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token,companyShortName));
        return this.renderView("member/zhcz/wxzf", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/zfbzf.html", method = RequestMethod.GET)
    public ModelAndView zfbzf() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3},companyShortName));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3},companyShortName));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3},companyShortName));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token,companyShortName));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token,companyShortName));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token,companyShortName));
        modelMap.put("systemPayOnlineResult", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3},companyShortName));
        modelMap.put("userSession", ApiUtils.getUserSession(uid, token,companyShortName));
        return this.renderView("member/zhcz/zfbzf", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/wxzz.html", method = RequestMethod.GET)
    public ModelAndView zhczWxzz() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);


        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3},companyShortName));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3},companyShortName));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3},companyShortName));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token,companyShortName));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token,companyShortName));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token,companyShortName));
        modelMap.put("systemWeiXinResult", ApiUtils.getSystemWeixin(uid, token,companyShortName));
        return this.renderView("member/zhcz/wxzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/zfbzz.html", method = RequestMethod.GET)
    public ModelAndView zhczZfbzz() throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3},companyShortName));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3},companyShortName));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3},companyShortName));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token,companyShortName));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token,companyShortName));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token,companyShortName));
        modelMap.put("systemAlipayResult", ApiUtils.getSystemAlipay(uid, token,companyShortName));
        return this.renderView("member/zhcz/zfbzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhcz/cftzz.html", method = RequestMethod.GET)
    public ModelAndView zhczCftzz() throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }

        //获取在线支付信息
        modelMap.put("zxzfInfo", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {2, 3},companyShortName));
        //支付宝支付信息
        modelMap.put("zfbzfInfo", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {2, 3},companyShortName));
        //微信支付信息
        modelMap.put("wxzfInfo", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {2, 3},companyShortName));
        //微信转账信息
        modelMap.put("wxzzInfo", ApiUtils.getSystemWeixin(uid, token,companyShortName));
        //支付宝转账信息
        modelMap.put("zfbzzInfo", ApiUtils.getSystemAlipay(uid, token,companyShortName));
        //财付通转账信息
        modelMap.put("cftzzInfo", ApiUtils.getSystemTenpay(uid, token,companyShortName));
        modelMap.put("systemTenpayResult", ApiUtils.getSystemTenpay(uid, token,companyShortName));
        return this.renderView("member/zhcz/cftzz", modelMap);
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
            result = ApiUtils.submitYhzz(uid, token, money, depositChannelId, bankAccount, bankCardId, userBankName,companyShortName);
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
        String companyShortName = this.getCompanyShortName();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanWithdraw()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token,companyShortName));
        modelMap.put("userBankCardResult", ApiUtils.getUserBankCardList(uid, token,companyShortName));

        return this.renderView("member/withdraw", modelMap);
    }


    /**
     * 站内信件
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/letter.html", method = RequestMethod.GET)
    public ModelAndView letterLocation() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/letter", modelMap);
    }

    /**
     * ajax获取站内信件数据
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxGetLetterList.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxGetLetterList(Boolean hasRead, Date startTime, Date endTime, Integer pageIndex, Integer pageSize) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.getUserInboxList(uid, token, startTime, endTime, hasRead, pageIndex, pageSize,companyShortName));
    }

    /**
     * 微信转账
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxSubmitWxzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitWxzz(Double money, String userWeixinName, Integer weixinId, Date time) {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = new CommonResult();

        if (null == money) {
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

        result = ApiUtils.submitWeixinzz(uid, token, money, userWeixinName, weixinId, time,companyShortName);
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
    public String ajaxSubmitQqzz(Double money, String userQqName, Integer qqId, Date time) {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

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

        result = ApiUtils.submitQqzz(uid, token, money, userQqName, qqId, time,companyShortName);
        return this.renderJson(result);
    }

    /**
     * 支付宝转账
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxSubmitZfbzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitZfbzz(Double money, String userAlipayName, Integer alipayId, Date time) {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);

        String token = this.getToken(httpServletRequest);

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

        result = ApiUtils.submitAlipayzz(uid, token, money, userAlipayName, alipayId, time,companyShortName);
        return this.renderJson(result);
    }


    /**
     * 财付通转账
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxSubmitCftzz.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxSubmitCftzz(Double money, String userTenpayName, Integer tenpayId, Date time) {
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

        result = ApiUtils.submitTenpayzz(uid, token, money, userTenpayName, tenpayId, time,companyShortName);
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
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = ApiUtils.submitWithdraw(uid, token, money, id, drawPassword,companyShortName);
        return this.renderJson(result);
    }


    /**
     * 历史记录
     */
    @RequestMapping(value = "/record.html", method = RequestMethod.GET)
    public ModelAndView recordketLocation() throws Exception {
        String companyShortName = this.getCompanyShortName();
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

        return this.renderView(location_str, modelMap);
    }

    /**
     * 账户设置
     */
    @RequestMapping(value = "/setting.html", method = RequestMethod.GET)
    public ModelAndView settingketLocation() throws Exception {
        String companyShortName = this.getCompanyShortName();
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
        return this.renderView(location_str, modelMap);
    }



    /**
     * 账户设置
     */
    @Authentication
    @RequestMapping(value = "/zhsz.html", method = RequestMethod.GET)
    public ModelAndView zhsz() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/zhsz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/grzl.html", method = RequestMethod.GET)
    public ModelAndView zhszGrzl() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanEditInfo()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userSession", ApiUtils.getUserSession(uid, token,companyShortName));
        return this.renderView("member/zhsz/grzl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/dlmm.html", method = RequestMethod.GET)
    public ModelAndView zhszDlmm() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanEditPassword()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/zhsz/dlmm", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/tkmm.html", method = RequestMethod.GET)
    public ModelAndView zhszTkmm() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/zhsz/tkmm", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/yhkgl/index.html", method = RequestMethod.GET)
    public ModelAndView yhkglIndex() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanEditUserBank()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userBankCardList", ApiUtils.getUserBankCardList(uid, token,companyShortName).getUserBankCardList());
        return this.renderView("member/yhkgl/index", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/yhkgl/detail.html", method = RequestMethod.GET)
    public ModelAndView yhkglDetail(Long userBankCardId) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanEditUserBank()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("userBankCard", ApiUtils.getUserBankCard(uid, token, userBankCardId,companyShortName));
        return this.renderView("member/yhkgl/detail", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/aqxx.html", method = RequestMethod.GET)
    public ModelAndView zhszAqxx() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String companyShortName = this.getCompanyShortName();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanSafeinfo()) {
            return this.renderView("member/noaccess", modelMap);
        }

        modelMap.put("safeInfo", ApiUtils.getSafeInfo(uid, token,companyShortName));
        return this.renderView("member/zhsz/aqxx", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/grzl/ajaxEditUserInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxEditUserInfo(String nickname, Date birthday, String qq, String telephone, String email, Integer sex) {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        CommonResult result = ApiUtils.editUserInfo(uid, token, nickname, birthday, qq, telephone, email, sex,companyShortName);
        return this.renderJson(result);
    }

    @Authentication
    @RequestMapping(value = "/zhsz/ajaxResetDrawPassword.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxResetDrawPassword(String oldPassword, String newPassword) {
        Long uid = this.getUid(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        String token = this.getToken(httpServletRequest);
        CommonResult result = ApiUtils.resetDrawPassword(uid, token, oldPassword, newPassword,companyShortName);
        return this.renderJson(result);
    }


    @Authentication
    @RequestMapping(value = "/lsjl.html", method = RequestMethod.GET)
    public ModelAndView lsjl() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/lsjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/ckjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlCkjl(String companyShortName) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("depositChannelResult", ApiUtils.getDepositChannel(companyShortName));
        return this.renderView("member/lsjl/ckjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/tzjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlTzjl(String companyShortName) throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        SscPlayGroupListResult sscplaylist = ApiUtils.getSscPlayGroupList(companyShortName);
        modelMap.put("sscplaylist", sscplaylist);
        return this.renderView("member/lsjl/tzjl", modelMap);
    }

    @RequestMapping(value = "/getSscPlayGroup.json")
    @ResponseBody
    public String getPlayGroup(String companyShortName) {
        return this.renderJson(ApiUtils.getSscPlayGroupList(companyShortName));
    }

    @Authentication
    @RequestMapping(value = "/lsjl/tkjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlTkjl() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/lsjl/tkjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/zjjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlZzjl() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/lsjl/zjjl", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/lsjl/yhjl.html", method = RequestMethod.GET)
    public ModelAndView lsjlYhjl() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/lsjl/yhjl", modelMap);
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
        String companyShortName = this.getCompanyShortName();
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.getWithdrawList(uid, token, startTime, endTime, pageIndex, pageSize, status, type,companyShortName));
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
        Long uid = Long.parseLong((String) httpServletRequest.getAttribute("uid"));
        String companyShortName = this.getCompanyShortName();
        String token = (String) httpServletRequest.getAttribute("token");
        return ApiUtils.getSscBetsList(uid, token, startTime, endTime, pageIndex, pageSize, playGroupId, playId, status, isZhongjiang,companyShortName);
    }

    /**
     * ajax阅读站内信
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxReadZnx.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxReadZnx(@RequestParam("ids[]") Long[] idList) {
        Long uid = this.getUid(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.readUserInboxNotice(uid, token, idList,companyShortName));
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
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.delUserInboxNotice(uid, token, idList,companyShortName));
    }

    /**
     * ajax添加银行卡
     * @param bankName
     * @param subBankName
     * @param bankAccount
     * @param location
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxAddUserBank.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public CommonResult ajaxAddUserBank(String bankName, String subBankName, String bankAccount, String location) {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return ApiUtils.addUserBank(uid, token, bankName, subBankName, bankAccount, location, this.getCompanyShortName());
    }

    /**
     * ajax删除银行卡
     *
     * @return
     */
    @Authentication
    @RequestMapping(value = "/ajaxDelUserBank.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxDelUserBank(Long id) {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.delUserBank(uid, token, id,companyShortName));
    }

    @Authentication
    @RequestMapping(value = "/ajaxSetDefault.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public CommonResult ajaxSetDefault(Long id) {
        String companyShortName = this.getCompanyShortName();
        CommonResult result = new CommonResult();
        try {
            Long uid = this.getUid(httpServletRequest);
            String token = this.getToken(httpServletRequest);

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
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/schd", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/schd/yhqb.html", method = RequestMethod.GET)
    public ModelAndView schdYhqb() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/schd/yhqb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/schd/tjfl.html", method = RequestMethod.GET)
    public ModelAndView schdTjfl() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/schd/tjfl", modelMap);
    }

    @RequestMapping(value = "/ajaxGetServerTime.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String getServerTime() {
        String companyShortName = this.getCompanyShortName();
        return this.renderJson(ApiUtils.getServerTime(companyShortName));
    }

    @RequestMapping(value = "/checkOnline.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String checkOnline() {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return JSONUtils.toJSONStr(ApiUtils.checkOnline(uid, token,companyShortName));
    }

    @Authentication
    @RequestMapping(value = "/updateUserInfo.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String updateUserInfo() {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        ApiUtils.updateUserInfo(uid, token,companyShortName);
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
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        return this.renderJson(ApiUtils.sigout(uid, token,companyShortName));
    }


    /**
     * ajax获取弹窗公告
     *
     * @return
     */
    @RequestMapping(value = "/ajaxGetWebPopUpNoticeList.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public WebNoticeResult ajaxGetWebPopUpNoticeList() throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName = this.getCompanyShortName();
        return ApiUtils.getPopupNoticeList(uid, token,null, null,companyShortName);
    }

    @Authentication
    @RequestMapping(value = "/jfmx/yjjl.html", method = RequestMethod.GET)
    public ModelAndView jfmxYjjl() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/jfmx/yjjl", modelMap);
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
        return ApiUtils.getLogUserCoinList(uid, token,pageIndex, pageSize, startTime, endTime, type,companyShortName);
    }

    @Authentication
    @RequestMapping(value = "/xgmm/index.html", method = RequestMethod.GET)
    public ModelAndView xgmm() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/xgmm/index", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/xgmm/ajaxResetPassword.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public String ajaxResetPassword(String oldPassword, String newPassword) {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        CommonResult result = ApiUtils.resetPassword(uid, token, oldPassword, newPassword,companyShortName);
        return this.renderJson(result);
    }

    @Authentication
    @RequestMapping(value = "/czjl/list.html", method = RequestMethod.GET)
    public ModelAndView czjlList() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/czjl/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/czjl/detail.html", method = RequestMethod.GET)
    public ModelAndView czjlDetail(String orderNo) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("data", ApiUtils.getDeposit(uid, token, orderNo,companyShortName));
        
        return this.renderView("member/czjl/detail", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tkjl/list.html", method = RequestMethod.GET)
    public ModelAndView tkjlList() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        // 权限检查
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/tkjl/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tzjl/list.html", method = RequestMethod.GET)
    public ModelAndView tzjlList() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/tzjl/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tzjl/detail.html", method = RequestMethod.GET)
    public ModelAndView tzjlDetail(String orderNumber) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("data", ApiUtils.getSscBets(uid, token, orderNumber,companyShortName));
        
        return this.renderView("member/tzjl/detail", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/znx/list.html", method = RequestMethod.GET)
    public ModelAndView znxList() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/znx/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/znx/detail.html", method = RequestMethod.GET)
    public ModelAndView znxDetail(Long noticeId) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("data", ApiUtils.getUserInbox(uid, token, noticeId,companyShortName));

        // 标记已读
        Long[] idList = new Long[] {noticeId};
        ApiUtils.readUserInboxNotice(uid, token, idList,companyShortName);

        return this.renderView("member/znx/detail", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/cqk/ck.html", method = RequestMethod.GET)
    public ModelAndView ck(Long noticeId) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanDeposit()) {
            return this.renderView("member/noaccess", modelMap);
        }
        modelMap.put("yhzzList", ApiUtils.getSystemBankCard(uid, token,companyShortName).getBankcardList());
        modelMap.put("zfbzzList", ApiUtils.getSystemAlipay(uid, token,companyShortName).getSkInfoList());
        modelMap.put("wxzzList", ApiUtils.getSystemWeixin(uid, token,companyShortName).getSkInfoList());
        modelMap.put("cftzzList", ApiUtils.getSystemTenpay(uid, token,companyShortName).getSkInfoList());

        // QQ转账
        modelMap.put("qqzzList", ApiUtils.getSystemQq(uid, token,companyShortName).getSkInfoList());

        //获取在线支付信息
        modelMap.put("zxzfInfoList", ApiUtils.getSystemPayonline(uid, token, 1, new Integer[] {1, 3},companyShortName).getSystemPayOnlineList());
        //支付宝支付信息
        modelMap.put("zfbzfInfoList", ApiUtils.getSystemPayonline(uid, token, 2, new Integer[] {1, 3},companyShortName).getSystemPayOnlineList());
        //微信支付信息
        modelMap.put("wxzfInfoList", ApiUtils.getSystemPayonline(uid, token, 3, new Integer[] {1, 3},companyShortName).getSystemPayOnlineList());
        //QQ支付信息
        modelMap.put("qqzfInfoList", ApiUtils.getSystemPayonline(uid, token, 4, new Integer[] {1, 3},companyShortName).getSystemPayOnlineList());
        return this.renderView("member/cqk/ck", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/cqk/qk.html", method = RequestMethod.GET)
    public ModelAndView cqkQk(Long noticeId) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanWithdraw()) {
            return this.renderView("member/noaccess", modelMap);
        }
        modelMap.put("userBankList", JSONUtils.toJSONStr(ApiUtils.getUserBankCardList(uid, token,companyShortName).getUserBankCardList()));

        QkSettingResult qkSettingResult = ApiUtils.getQkSetting(companyShortName);
        modelMap.put("minMoney", qkSettingResult.getMinMoney());
        modelMap.put("maxMoney", qkSettingResult.getMaxMoney());
        return this.renderView("member/cqk/qk", modelMap);
    }

    @RequestMapping(value = "/gonggao/list.html", method = RequestMethod.GET)
    public ModelAndView gonggaoList() throws Exception {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName =  this.getCompanyShortName();
        modelMap.put("popupNoticeList", ApiUtils.getPopupNoticeList(uid, token,null, null,companyShortName).getWebNoticeList());
        return this.renderView("member/gonggao/list", modelMap);
    }

    @RequestMapping(value = "/gonggao/detail.html", method = RequestMethod.GET)
    public ModelAndView gonggaoDetail(String pk) throws Exception {
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);
        String companyShortName =  this.getCompanyShortName();
        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("data", ApiUtils.getPopupNotice(pk,companyShortName));

        return this.renderView("member/gonggao/detail", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/index.html", method = RequestMethod.GET)
    public ModelAndView tgzqIndex() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/tgzq/index", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/hylb.html", method = RequestMethod.GET)
    public ModelAndView tgzqHylb() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/tgzq/hylb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/ajaxGetHylb.json", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public ModelAndView tgzqAjaxGetHylb() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/tgzq/hylbName", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/tjhy.html", method = RequestMethod.GET)
    public ModelAndView tgzqTjhy() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/tgzq/tjhy", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/cwbb.html", method = RequestMethod.GET)
    public ModelAndView tgzqCwbb() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/tgzq/cwbb", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/tdls/list.html", method = RequestMethod.GET)
    public ModelAndView tgzqTdlsList() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/tgzq/tdls/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/tdbb/list.html", method = RequestMethod.GET)
    public ModelAndView tgzqTdyeList() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        return this.renderView("member/tgzq/tdbb/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/tdtz/list.html", method = RequestMethod.GET)
    public ModelAndView tgzqTdtzList() throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }

        return this.renderView("member/tgzq/tdtz/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/tdtz/detail.html", method = RequestMethod.GET)
    public ModelAndView tgzqTdtzDetail(String orderNumber) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);

        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        modelMap.put("data", ApiUtils.getAgentSscBets(uid, token, orderNumber,companyShortName));
        
        return this.renderView("member/tgzq/tdtz/detail", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tgzq/yjjl/list.html", method = RequestMethod.GET)
    public ModelAndView tgzqYjjlList(String pk) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();

        // 权限检查
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/tgzq/yjjl/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/zjjl/list.html", method = RequestMethod.GET)
    public ModelAndView tgzqZjjlList(String pk) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        return this.renderView("member/zjjl/list", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/cqk/zz/wxzz.html", method = RequestMethod.GET)
    public ModelAndView cqkZzWxzz(String pk) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("skInfoList", JSONUtils.toJSONStr(ApiUtils.getSystemWeixin(uid, token,companyShortName).getSkInfoList()));
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/cqk/zz/wxzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/cqk/zz/qqzz.html", method = RequestMethod.GET)
    public ModelAndView cqkZzQqzz(String pk) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("skInfoList", JSONUtils.toJSONStr(ApiUtils.getSystemQq(uid, token,companyShortName).getSkInfoList()));
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/cqk/zz/qqzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/cqk/zz/zfbzz.html", method = RequestMethod.GET)
    public ModelAndView cqkZzZfbzz(String pk) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("skInfoList", JSONUtils.toJSONStr(ApiUtils.getSystemAlipay(uid, token,companyShortName).getSkInfoList()));
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/cqk/zz/zfbzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/cqk/zz/cftzz.html", method = RequestMethod.GET)
    public ModelAndView cqkZzCftzz(String pk) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("skInfoList", JSONUtils.toJSONStr(ApiUtils.getSystemTenpay(uid, token,companyShortName).getSkInfoList()));
        LayerInfoResult layerInfoResult = ApiUtils.getLayer(uid, token,companyShortName);
        if (!layerInfoResult.getCanAgent()) {
            return this.renderView("member/noaccess", modelMap);
        }
        return this.renderView("member/cqk/zz/cftzz", modelMap);
    }

    @Authentication
    @RequestMapping(value = "/tkjl/detail.html", method = RequestMethod.GET)
    public ModelAndView tkjlczjlDetail(String orderNo) throws Exception {
        String companyShortName = this.getCompanyShortName();
        Long uid = this.getUid(httpServletRequest);
        String token = this.getToken(httpServletRequest);

        Map<String, Object> modelMap = new HashMap<String, Object>();
        modelMap.put("data", ApiUtils.getWithdraw(uid, token, orderNo,companyShortName));
        
        return this.renderView("member/tkjl/detail", modelMap);
    }
}
