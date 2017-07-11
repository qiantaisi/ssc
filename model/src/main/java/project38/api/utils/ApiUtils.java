package project38.api.utils;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import project38.api.common.ApiConstant;
import project38.api.common.result.CommonResult;
import project38.api.common.utils.HttpUtils;
import project38.api.common.utils.JSONUtils;
import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.lang3.time.DateFormatUtils;
import project38.api.result.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2016/11/15.
 */
public class ApiUtils{
    private static final boolean IS_DEBUG = false;


    public static CommonResult resetDrawPassword(Long uid, String token, String oldPassword, String newPassword, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("oldPassword", oldPassword);
        paramsMap.put("newPassword", newPassword);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_RESET_DRAW_PASSWORD, paramsMap, companyShortName), CommonResult.class);

    }

    public static CommonResult resetPassword(Long uid, String token, String oldPassword, String newPassword, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("oldPassword", oldPassword);
        paramsMap.put("newPassword", newPassword);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_RESET_PASSWORD, paramsMap, companyShortName), CommonResult.class);
    }

    public static CommonResult submitWeixinzz(Long uid, String token, Double money, String userWeixinName, Integer weixinId, Date time,String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("money", money);
        paramsMap.put("userWeixinName", userWeixinName);
        paramsMap.put("weixinId", weixinId);
        paramsMap.put("time", formatDate(time, "yyyy-MM-dd HH:mm:ss"));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_WEI_XIN_ZZ, paramsMap, companyShortName), CommonResult.class);
    }

    public static CommonResult submitQqzz(Long uid, String token, Double money, String userQqName, Integer qqId, Date time, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("money", money);
        paramsMap.put("userQQName", userQqName);
        paramsMap.put("qqId", qqId);
        paramsMap.put("time", formatDate(time, "yyyy-MM-dd HH:mm:ss"));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_QQ_ZZ, paramsMap, companyShortName), CommonResult.class);
    }


    public static CommonResult submitAlipayzz(Long uid, String token, Double money, String userAlipayName, Integer alipayId, Date time, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("money", money);
        paramsMap.put("userAlipayName", userAlipayName);
        paramsMap.put("alipayId", alipayId);
        paramsMap.put("time", formatDate(time, "yyyy-MM-dd HH:mm:ss"));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_ALIPAY_ZZ, paramsMap, companyShortName), CommonResult.class);
    }


    public static CommonResult submitTenpayzz(Long uid, String token, Double money, String userTenpayName, Integer tenpayId, Date time, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("money", money);
        paramsMap.put("userTenpayName", userTenpayName);
        paramsMap.put("tenpayId", tenpayId);
        paramsMap.put("time", formatDate(time, "yyyy-MM-dd HH:mm:ss"));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_TENPAY_ZZ, paramsMap, companyShortName), CommonResult.class);
    }


    public static CommonResult submitYhzz(Long uid, String token, Double money, Integer depositChannelId, String bankAccount, Long bankCardId, String userBankName, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("money", money);
        paramsMap.put("depositChannelId", depositChannelId);
        paramsMap.put("bankAccount", bankAccount);
        paramsMap.put("bankCardId", bankCardId);
        paramsMap.put("userBankName", userBankName);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SUBMIT_YHZZ, paramsMap, companyShortName), CommonResult.class);
    }


    public static CommonResult checkOnline(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_CHECK_ONLINE, paramsMap, companyShortName), CommonResult.class);
    }


    /**
     * 注册接口
     * @param account 账号
     * @param password 密码
     * @param name 姓名
     * @param ip IP
     * @param url 注册网址
     * @param qq QQ号
     * @param agentId 代理ID
     * @param companyShortName 公司标志
     * @return
     */
    public static CommonResult register(
            String account,
            String password,
            String name,
            String ip,
            String url,
            String qq,
            Long agentId,
            String companyShortName,
            String deviceNo,
            String phone,
            String email
    ) {
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("account", account);
        paramsMap.put("password", password);
        paramsMap.put("name", name);
        paramsMap.put("ip", ip);
        paramsMap.put("url", url);
        paramsMap.put("qq", qq);
        paramsMap.put("agentId", agentId);
        paramsMap.put("deviceNo", deviceNo);
        paramsMap.put("phone", phone);
        paramsMap.put("email", email);

        return JSONUtils.toObject(commonRequest(ApiConstant.API_REGISTER, paramsMap, companyShortName), CommonResult.class);
    }


    public static LoginResult login(String account, String password, String ip, Integer loginType, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":\"\",\"token\":\"zxcxvads1zxce124casd\",\"userId\":421}", LoginResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("account", account);
        paramsMap.put("password", password);
        paramsMap.put("ip", ip);
        paramsMap.put("loginType", loginType);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_LOGIN, paramsMap, companyShortName), LoginResult.class);
    }

    public static CommonResult submitWithdraw(Long uid, String token, Double money, Long id, String drawPassword, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("money", money);
        paramsMap.put("id", id);
        paramsMap.put("drawPassword", drawPassword);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SUBMIT_WITHDRAW, paramsMap, companyShortName), CommonResult.class);
    }

    public static CommonResult editUserInfo(Long uid, String token, String nickname, Date birthday, String qq, String telephone, String email, Integer sex, String companyShortName) {
        if (IS_DEBUG) {
            CommonResult result=new CommonResult();
            result.setResult(1);
            return result;
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("nickname", nickname);
        paramsMap.put("birthday", formatDate(birthday, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("qq", qq);
        paramsMap.put("telephone", telephone);
        paramsMap.put("email", email);
        paramsMap.put("sex", sex);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_EDIT_USER_INFO, paramsMap, companyShortName), CommonResult.class);
    }

    public static DepositChannelResult getDepositChannel(String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"depositChannelList\":[{\"id\":1,\"name\":\"在线银行\"},{\"id\":2,\"name\":\"手机银行\"},{\"id\":3,\"name\":\"柜台转账\"},{\"id\":4,\"name\":\"ATM现金转账\"}]}", DepositChannelResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_DEPOSIT_CHANNEL, paramsMap, companyShortName), DepositChannelResult.class);
    }

    public static UserSessionResult getUserSession(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new UserSessionResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_USER_SESSION, paramsMap, companyShortName), UserSessionResult.class);
    }

    public static UserLastInfoResult getUserLastInfo(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new UserLastInfoResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_USER_LAST_INFO, paramsMap, companyShortName), UserLastInfoResult.class);
    }



    public static UserDepositListResult getDepositList(Long uid, String token, Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Integer status, Integer type, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"pageNum\":1,\"pageSize\":25,\"size\":1,\"total\":1,\"firstPage\":1,\"prePage\":0,\"nextPage\":0,\"lastPage\":1,\"hasPreviousPage\":false,\"hasNextPage\":false,\"navigatePages\":8,\"navigatepageNums\":[1],\"pageMoney\":111.000,\"totalMoney\":111.000,\"userDepositList\":[{\"orderNo\":\"2\",\"time\":1479982169000,\"type\":1,\"money\":111.000,\"remarks\":\"1\",\"status\":1}]}", UserDepositListResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("status", status);
        paramsMap.put("type", type);
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_DEPOSIT_LIST, paramsMap, companyShortName), UserDepositListResult.class);
    }

    public static UserDepositListResult.UserDeposit getDeposit(Long uid, String token, String orderNo, String companyShortName) {
        if (IS_DEBUG) {
            return new UserDepositListResult.UserDeposit();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("orderNo", orderNo);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_DEPOSIT, paramsMap, companyShortName), UserDepositListResult.UserDeposit.class);
    }

    public static SscBetsListResult getSscBetsList(Long uid, String token, Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Long playGroupId, Long playId, Integer status, Boolean isZhongjiang, String companyShortName) {
        if (IS_DEBUG) {
            String str="{\"result\": 1,\"description\": null,\"pageNum\": 1,\"pageSize\": 25,\"size\": 25,\n\"total\": 27,\n   \"firstPage\": 1,\n    \"prePage\": 0,\n    \"nextPage\": 2,\n   \"lastPage\": 2,\n\"hasPreviousPage\": false,\n    \"hasNextPage\": true,\n    \"navigatePages\": 8,\n  \"navigatepageNums\": [\n1,\n   2\n],\n   \"sscBetsList\": [\n    {\n\"playId\": 216,\n  \"createTime\": 1478864112000,\n\"playPl\": 6826,\n\"totalMoney\": 12,\n \"status\": 0,\n\"zhushu\": 1,\n\"perMoney\": 12,\n\"winOrLose\": null,\n\"content\": \"百位-单\",\n\"number\": \"20161111082\",\n\"playGroupId\": 1,\n\"orderNumber\": \"2016111119351222308591\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 216,\n\"createTime\": 1478864112000,\n\"playPl\": 6830,\n\"totalMoney\": 12,\n\"status\": 0,\n\"zhushu\": 1,\n\"perMoney\": 12,\n\"winOrLose\": null,\n\"content\": \"十位-大\",\n\"number\": \"20161111082\",\n\"playGroupId\": 1,\n\"orderNumber\": \"2016111119351222908592\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 216,\n\"createTime\": 1478864112000,\n\"playPl\": 6832,\n\"totalMoney\": 12,\n\"status\": 0,\n\"zhushu\": 1,\n\"perMoney\": 12,\n\"winOrLose\": null,\n\"content\": \"十位-单\",\n\"number\": \"20161111082\",\n\"playGroupId\": 1,\n\"orderNumber\": \"2016111119351237508593\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 216,\n\"createTime\": 1478864072000,\n\"playPl\": 6824,\n\"totalMoney\": 21,\n\"status\": 0,\n\"zhushu\": 1,\n\"perMoney\": 21,\n\"winOrLose\": null,\n\"content\": \"百位-大\",\n\"number\": \"20161111082\",\n\"playGroupId\": 1,\n\"orderNumber\": \"2016111119343228208589\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 216,\n\"createTime\": 1478864072000,\n\"playPl\": 6830,\n\"totalMoney\": 21,\n\"status\": 0,\n\"zhushu\": 1,\n\"perMoney\": 21,\n\"winOrLose\": null,\n\"content\": \"十位-大\",\n\"number\": \"20161111082\",\n\"playGroupId\": 1,\n\"orderNumber\": \"2016111119343248208590\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8889,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": 8888,\n\"content\": \"第一球-1\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190606808569\",\n\"zjMoney\": 8889\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8890,\n \"totalMoney\": 1,\n\"status\": 1,\n \"zhushu\": 1,\n \"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-2\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190613008570\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8891,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n \"content\": \"第一球-3\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190616808571\",\n\"zjMoney\": 0\n},\n {\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8892,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-4\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190617108572\",\n\"zjMoney\": 0\n},\n{\n \"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8893,\n\"totalMoney\": 1,\n\"status\": 1,\n \"zhushu\": 1,\n \"perMoney\": 1,\n\"winOrLose\": -1,\n \"content\": \"第一球-5\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190620108573\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8894,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-6\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190620508574\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n \"playPl\": 8895,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-7\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190620808575\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8896,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-8\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190621008576\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8897,\n\"totalMoney\": 1,\n \"status\": 1,\n\"zhushu\": 1,\n \"perMoney\": 1,\n \"winOrLose\": -1,\n\"content\": \"第一球-9\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190621608577\",\n\"zjMoney\": 0\n },\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8898,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-10\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n \"orderNumber\": \"2016111112190621908578\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8899,\n \"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-11\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190622208579\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8900,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-12\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190622508580\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8901,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-13\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190622808581\",\n\"zjMoney\": 0\n },\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8902,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-14\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190623108582\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8903,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-15\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190623408583\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8904,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-16\",\n\"number\": \"20161111020\",\n \"playGroupId\": 11,\n\"orderNumber\": \"2016111112190623608584\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8905,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-17\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190624308585\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8906,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-18\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190624608586\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8907,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-19\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190624808587\",\n\"zjMoney\": 0\n},\n{\n\"playId\": 278,\n\"createTime\": 1478837946000,\n\"playPl\": 8908,\n\"totalMoney\": 1,\n\"status\": 1,\n\"zhushu\": 1,\n\"perMoney\": 1,\n\"winOrLose\": -1,\n\"content\": \"第一球-20\",\n\"number\": \"20161111020\",\n\"playGroupId\": 11,\n\"orderNumber\": \"2016111112190625108588\",\n\"zjMoney\": 0\n}\n]\n}";
            return JSONUtils.toObject(str,SscBetsListResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("playGroupId", playGroupId);
        paramsMap.put("playId", playId);
        paramsMap.put("status", status);
        paramsMap.put("isZhongjiang", isZhongjiang);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SSC_BETS_LIST, paramsMap, companyShortName), SscBetsListResult.class);
    }

    public static SscBetsListResult.SscBets getSscBets(Long uid, String token, String orderNumber, String companyShortName) {
        if (IS_DEBUG) {
            return new SscBetsListResult.SscBets();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("orderNumber", orderNumber);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SSC_BETS, paramsMap, companyShortName), SscBetsListResult.SscBets.class);
    }

    public static SscBetsListResult.SscBets getAgentSscBets(Long uid, String token, String orderNumber, String companyShortName) {
        if (IS_DEBUG) {
            return new SscBetsListResult.SscBets();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("orderNumber", orderNumber);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_GET_SSC_BETS, paramsMap, companyShortName), SscBetsListResult.SscBets.class);
    }

    public static UserWithdrawListResult getWithdrawList(Long uid, String token, Date startTime, Date endTime, Integer pageIndex, Integer pageSize, Integer status, Integer type, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"pageNum\":1,\"pageSize\":25,\"size\":1,\"total\":1,\"firstPage\":1,\"prePage\":0,\"nextPage\":0,\"lastPage\":1,\"hasPreviousPage\":false,\"hasNextPage\":false,\"navigatePages\":8,\"navigatepageNums\":[1],\"pageMoney\":2.000,\"totalMoney\":2.000,\"userWithdrawList\":[{\"orderNo\":\"3\",\"time\":1479982526000,\"type\":4,\"money\":2.000,\"remarks\":\"1\",\"status\":1}]}", UserWithdrawListResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("status", status);
        paramsMap.put("type", type);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_WITHDRAW_LIST, paramsMap, companyShortName), UserWithdrawListResult.class);
    }

    public static UserWithdrawListResult.UserWithdraw getWithdraw(Long uid, String token, String orderNo, String companyShortName) {
        if (IS_DEBUG) {
            return new UserWithdrawListResult.UserWithdraw();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("orderNo", orderNo);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_WITHDRAW, paramsMap, companyShortName), UserWithdrawListResult.UserWithdraw.class);
    }

    public static UserInboxResult getUserInboxList(Long uid, String token, Date startTime, Date endTime, Boolean hasRead, Integer pageIndex, Integer pageSize, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"pageNum\":1,\"pageSize\":25,\"size\":2,\"total\":2,\"firstPage\":1,\"prePage\":0,\"nextPage\":0,\"lastPage\":1,\"hasPreviousPage\":false,\"hasNextPage\":false,\"navigatePages\":8,\"navigatepageNums\":[1],\"userInboxList\":[{\"id\":1,\"content\":\"12\",\"createTime\":1476079304000,\"hasRead\":true},{\"id\":2,\"content\":\"21\",\"createTime\":1476079298000,\"hasRead\":false}]}", UserInboxResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("hasRead", hasRead);
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_USER_INBOX_LIST, paramsMap, companyShortName), UserInboxResult.class);
    }


    public static UserInboxResult.UserInbox getUserInbox(Long uid, String token, Long noticeId, String companyShortName) {
        if (IS_DEBUG) {
            return new UserInboxResult.UserInbox();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("noticeId", noticeId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_USER_INBOX, paramsMap, companyShortName), UserInboxResult.UserInbox.class);
    }

    public static UserBindStatusResult getBindStatus(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new UserBindStatusResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_BIND_STATUS, paramsMap, companyShortName), UserBindStatusResult.class);
    }

    public static UserBankCardResult getUserBankCardList(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"userBankCardList\":[{\"id\":1,\"bankName\":\"3\",\"subBankName\":\"2\",\"userName\":\"1\",\"bankAccount\":\"4\"}]}", UserBankCardResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_USER_BANK_CARD_LIST, paramsMap, companyShortName), UserBankCardResult.class);
    }

    public static UserBankCardResult.UserBankCard getUserBankCard(Long uid, String token, Long userBankCardId, String companyShortName) {
        if (IS_DEBUG) {
            return new UserBankCardResult.UserBankCard();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("userBankCardId", userBankCardId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_USER_BANK_CARD, paramsMap, companyShortName), UserBankCardResult.UserBankCard.class);
    }

    public static SystemPayOnlineResult getSystemPayonline(Long uid, String token, Integer payType, Integer[] typeList, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":0,\"description\":null,\"systemPayOnlineList\":[{\"id\":1,\"minMoney\":1,\"maxMoney\":1,\"name\":\"宝付\"},{\"id\":7,\"minMoney\":1,\"maxMoney\":1,\"name\":\"智付（微信）\"},{\"id\":8,\"minMoney\":1,\"maxMoney\":1,\"name\":\"闪付支付\"},{\"id\":10,\"minMoney\":0.01,\"maxMoney\":100,\"name\":\"汇潮\"},{\"id\":11,\"minMoney\":0.01,\"maxMoney\":100,\"name\":\"乐盈\"},{\"id\":12,\"minMoney\":0.01,\"maxMoney\":100,\"name\":\"口袋支付\"}]}", SystemPayOnlineResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("payType", payType);
        paramsMap.put("typeList", arr2Str(typeList));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SYS_PAYON_ONLINE, paramsMap, companyShortName), SystemPayOnlineResult.class);
    }

    public static SkInfoResult getSystemTenpay(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"skInfoList\":[{\"id\":1,\"username\":\"214\",\"account\":\"124\",\"imageData\":\"iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAACXBIWXMAAJnKAACZygHjkaQiAAAB\\r\\nZGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczpt\\r\\nZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS4xLjIiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0\\r\\ndHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRl\\r\\nc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5h\\r\\nZG9iZS5jb20veGFwLzEuMC8iPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPkFkb2JlIEltYWdl\\r\\nUmVhZHk8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRm\\r\\nOlJERj4KPC94OnhtcG1ldGE+ChD8w3AAAAHyUExURf///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAALmVNPEAAACldFJOUwABAgMEBQYICQoLDA0ODxAREhMUFRYXGBkaHB0e\\r\\nHyAiIyQlJiorLC4vMDEyMzQ1Ojs9P0BBQ0RLUV9gYWNlZ2lrcHFydHV2d3h5e3x9fn+BgoSFhoeJ\\r\\niouMjY6PkZKTlJaXmJmam5ydnp+goaKjpKeoqayvsLGys7a3wcPJzs/Q0dPU19ja3d7f4OHi4+Tl\\r\\n5ufo6ert7u/w8vP09fb3+Pn6+/z9/gSld+kAAAnVSURBVHja7dxPiF1XHcDxd+e9eW9m4pjMNE3T\\r\\nNA6jYhe28Q8VrWnpQilaxbYroYF2Y/+IoaB2IdhNEQqiuCiCi1JSN+kiRLGbuhKJ2pRSBQsmUEtp\\r\\naoNNJunMkD/z581777p1d36Fw+G+mc93fTj3nPs+7777Nqc63hrHlp+9kB509HCmq718Ij1m/9Pz\\r\\nY3knJ1ra0QEAgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgA\\r\\nASAABMD4197Ge+tEBq2fH1XFVjS6aa7g/gfvDdJbu5DraisXy33h6vZCNxeA87/cKveR1I/eXRDA\\r\\n6vMX0wCGua525oVyX6R67qmDuQDU/YIA8t3u0Na2im6t5MU263zvAFXJz6Toxbbx1mIX8xLoX4AA\\r\\nEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAJpevbXDb0An\\r\\n20z3HRqlhlTLL603bP+7H+8nT9KY+OtrBVc0fWQ+ebbLxOunmgfg84fSYy52mvYF6N0eGHS+JIDO\\r\\nbTelB13JBiDfT8AgMGZzPB+Tg6JXi9ykfD9cXgK9BAoAASAABIAAEAACQAAIAAEgAASAABAAAkAA\\r\\nCAABIAAEgAAQAAJAAAgAASAABIAAEADaSQDagTFlDwhpj+dH0in6seX7SC6fT58RdGVU8k4upVfU\\r\\nmtxfNezzH60M02cEfdhAAC9NJtddDddK3so/vJJcUWvhhzMNA7D2XDt9I/sNBLDetAPAWhsbgdtd\\r\\nN23V9XUvgfbvBggAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAA\\r\\nEAACQB8RQN0vuaRhyYttRU6I6Y7l1jZDh5+EjojZ94OCKx8t5prp7tuTt6Bun9hMT3Q514o++VjB\\r\\nJ25vPhuAubvG8ul2x5fTY1aPXym4osXFxt2k7fwOMMj1E+AlUAAIAAEgAASAABAAAkAACAABIAAE\\r\\ngAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAuAjV2WbadC8JRWtszyWy14dZZqofWA6Pejq\\r\\nanrMaKUez6/S/rFc9uhyQMDRw+kxdT/wub3yu8CjdO94Pkw7F3b2T2DVi9ykCMkl7wDbtnob7w0A\\r\\n/wIEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAAWBvDa9z\\r\\nNNdMr/89PWbhvk7Bva0eSxKo577VzXOx3Q9+LD3ozb+lx0w9eEN60D9fTY+ZeWA+AuBwrtt9JjBm\\r\\nzz0lcb/4p/SYg/dmAjBz167AMykAoHvnjelBowCA3p17iz4mIwe3jfolAURO7uvluli9GRgU2X69\\r\\nXnIiv5NeAgWAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAkAACADt\\r\\nKAB1YMyg6N4iR1YM2iW3FlpRro8kNlHozJ6t1Tp52kbd+3T6Ru6JHNpxdS19tE9nLjDT/KfSg+Yv\\r\\n9dJb66a31pqNbG02sKLetaX0iqrAiqYDE7Va1fHAut95fiu9podvTQNoTweudvLVNIB9Pwqc7dLv\\r\\np2/A8our6a3dGzjaqJoO3O3BRnrQ4LfvpVd0+L7AxY69X2V6Agw+GAZG7Wrl6dpSekw78lTuBs5/\\r\\nWl++FHgC5tpaJ3CS2ODaxTwrGlwNTBR7B6jarYJFlpRtQXVkpqrk9kcTmVYUmsi/AP8CBIAAEAAC\\r\\nQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAG0XAJPZBkUKHdkwleli\\r\\n9UbjPpJ+ZNmBMd2tyNWq7waQLJ0KHBHz1cVhlv133vpHetCer3eS96A+FDhJ6fpr64FbuVnn0faZ\\r\\n29KDhm8EDoma2kivqDMRObmsam3fnrgn00Qvn8g00de+l2miP7+QHtP7+b4d/g7QadyKsv1MRp5I\\r\\n05teAgWAABAAAkAACAABIAAEgAAQAAIAAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABEDT\\r\\na97pJ3XzblJn/1h+tqPLo/SgfuAAqKqX65u0N/1dGk1HjqTqFYXbeXosAaz+eik96OQf02P2fX8m\\r\\nz4r2Prkn/QA4+0x6oqnHDxQFMD+eT/fIT9fycnpMO9dTeWJuLvAT8H56zPRW0Ts5pu8A2X5M241b\\r\\nUqcCQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQAAIAAEgAASAABAAAuD/\\r\\n2pgODIqc/bA2GRgUOfthLdepRbGJquOBQStnh+U+ktHiYnrQ8rMX0oO+kj61pzV1S3pro82LgYlu\\r\\nHiU/3uHgg/REnYVhcqLRVmCiyYOjALhO5DNZ+k3JL+Wji5kmOvyl9JgrP11JDzrySOBqTwVIfjMy\\r\\n0c/eSo+5PzLRM2/n+gmouiUBZDu2px8Ysxl5TgaOpGttRH4CIr8l/WwThb7cXgK9BAoAASAABIAA\\r\\nEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACoPFFDn+oS05UjTLtLDZR\\r\\nJ9udnJ5Mbq8artUN+/yr2fX0oNBpS7tm0xebDBxa0u8FJmpHJpqaLQrgyK1JcdWV5643DMDcE4Hz\\r\\nrwKHTbV6jw3Sn9u5X6Unmvz2rvRE7wQm6n5nV1EAew+mx/y3cb847VtyPUoOBAa9+6+ApIcCS3o7\\r\\nMNHMQ5El5ftEIifJDVpKfnGHRSfyL8C/AAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAA\\r\\nEAACQAAIAAEgAASAABAAAkA7CcBkYMxUVXJvncbd7cj213Mdo1RNlb1Jpy+lV76yWfJ2v3E9uaL6\\r\\n418M3IF//yfP92RU35++R5O7M21/4y9zRQGcOtW079vp0+kxC58N3IEzJzOt6BuPFNz++u+9A+T5\\r\\n4drWN8lLoJdAASAABIAAEAACQAAIAAEgAASAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAAC\\r\\nQNsFwLDkkuqSFxtV23ZrsUJHxEzc0C+4pKlcE8300jd819ZWclDV2ZNpRd30xVpVJ5PJarZdZwKw\\r\\n8OO63Belnss10wNfSB8StX7senqiO36SZ/v1uV+kVzT18P482599cjbXE6D7ibH8ebvxYHrM8rsf\\r\\npgd9biHTis6dTY/p5TpJbWLu5h3+Ehh5cxlGTokq+p7QzXa1gX8BAkAACAABIAAEgAAQAAJAAAgA\\r\\nAQCAABAAAkAACAABIAAEgAAQAAJAAAgAASAABIAAEAACQABo3Psf15GrbrCKchgAAAAASUVORK5C\\r\\nYII=\"}]}", SkInfoResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SYS_TENPAY, paramsMap, companyShortName), SkInfoResult.class);
    }

    public static SkInfoResult getSystemWeixin(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"skInfoList\":[{\"id\":1,\"username\":\"214\",\"account\":\"124\",\"imageData\":\"iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAACXBIWXMAAJnKAACZygHjkaQiAAAB\\r\\nZGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczpt\\r\\nZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS4xLjIiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0\\r\\ndHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRl\\r\\nc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5h\\r\\nZG9iZS5jb20veGFwLzEuMC8iPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPkFkb2JlIEltYWdl\\r\\nUmVhZHk8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRm\\r\\nOlJERj4KPC94OnhtcG1ldGE+ChD8w3AAAAHyUExURf///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\n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\\r\\nYII=\"}]}", SkInfoResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SYS_WEIXIN, paramsMap, companyShortName), SkInfoResult.class);
    }

    public static SkInfoResult getSystemAlipay(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"skInfoList\":[{\"id\":1,\"username\":\"214\",\"account\":\"124\",\"imageData\":\"iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAACXBIWXMAAJnKAACZygHjkaQiAAAB\\r\\nZGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczpt\\r\\nZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS4xLjIiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0\\r\\ndHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRl\\r\\nc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5h\\r\\nZG9iZS5jb20veGFwLzEuMC8iPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPkFkb2JlIEltYWdl\\r\\nUmVhZHk8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRm\\r\\nOlJERj4KPC94OnhtcG1ldGE+ChD8w3AAAAHyUExURf///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\\r\\n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\\r\\nYII=\"}]}", SkInfoResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SYS_ALIPAY, paramsMap, companyShortName), SkInfoResult.class);
    }

    public static SystemBankCardResult getSystemBankCard(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"bankcardList\":[{\"id\":1,\"bankAccount\":\"8888888888888888888\",\"bankName\":\"工商银行（测试）\",\"userName\":\"张三（测试）\",\"subBankName\":\"张三支行（测试）\",\"isEnable\":true,\"updateTime\":1472689509000,\"createTime\":1472689289000},{\"id\":2,\"bankAccount\":\"123\",\"bankName\":\"123\",\"userName\":\"421\",\"subBankName\":\"142\",\"isEnable\":true,\"updateTime\":1475918891000,\"createTime\":1475918891000}]}", SystemBankCardResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SYSTEM_BANK_CARD, paramsMap, companyShortName), SystemBankCardResult.class);
    }

    public static SafeInfoResult getSafeInfo(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"thisLoginTime\":1478837921000,\"lastLoginTime\":1478682768000,\"thisLoginIp\":\"192.168.146.1\",\"lastLoginIp\":\"192.168.146.1\",\"thisLoginCity\":\"未知国家\",\"lastLoginCity\":\"未知国家\",\"registerTime\":1476258356000,\"registerIp\":\"192.168.146.1\"}", SafeInfoResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SAFE_INFO, paramsMap, companyShortName), SafeInfoResult.class);
    }

    public static PromotionResult getPromotion(String companyShortName) {
        if (IS_DEBUG) {
            return new PromotionResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_PROMOTION, paramsMap, companyShortName), PromotionResult.class);
    }

    public static ServerTimeResult getServerTime(String companyShortName) {
        if (IS_DEBUG) {
            ServerTimeResult result=new ServerTimeResult();
            result.setServerTime(new Date());
            return result;
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SERVER_TIME, paramsMap, companyShortName), ServerTimeResult.class);
    }

    public static SscPlayGroupListResult getSscPlayGroupList(String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"sscPlayGroupList\":[{\"id\":1,\"name\":\"重庆时时彩\"},{\"id\":2,\"name\":\"天津时时彩\"},{\"id\":3,\"name\":\"新疆时时彩\"},{\"id\":4,\"name\":\"体彩排列3\"},{\"id\":5,\"name\":\"福彩3D\"},{\"id\":6,\"name\":\"六合彩\"},{\"id\":7,\"name\":\"幸运28\"},{\"id\":8,\"name\":\"北京快乐8\"},{\"id\":9,\"name\":\"北京PK10\"},{\"id\":10,\"name\":\"重庆幸运农场\"},{\"id\":11,\"name\":\"广东快乐十分\"}],\"sscPlayList\":[{\"id\":204,\"name\":\"特码\",\"playGroupId\":6},{\"id\":205,\"name\":\"正码\",\"playGroupId\":6},{\"id\":206,\"name\":\"正特码\",\"playGroupId\":6},{\"id\":207,\"name\":\"正码1-6\",\"playGroupId\":6},{\"id\":208,\"name\":\"连码\",\"playGroupId\":6},{\"id\":209,\"name\":\"半波\",\"playGroupId\":6},{\"id\":210,\"name\":\"一肖/尾数\",\"playGroupId\":6},{\"id\":211,\"name\":\"特肖\",\"playGroupId\":6},{\"id\":212,\"name\":\"合肖\",\"playGroupId\":6},{\"id\":213,\"name\":\"连肖\",\"playGroupId\":6},{\"id\":214,\"name\":\"尾数连\",\"playGroupId\":6},{\"id\":215,\"name\":\"全不中\",\"playGroupId\":6},{\"id\":216,\"name\":\"双面\",\"playGroupId\":1},{\"id\":217,\"name\":\"数字盘\",\"playGroupId\":1},{\"id\":218,\"name\":\"一字定位\",\"playGroupId\":1},{\"id\":219,\"name\":\"二字定位\",\"playGroupId\":1},{\"id\":220,\"name\":\"三字定位\",\"playGroupId\":1},{\"id\":221,\"name\":\"一字组合\",\"playGroupId\":1},{\"id\":222,\"name\":\"二字组合\",\"playGroupId\":1},{\"id\":223,\"name\":\"二字和数\",\"playGroupId\":1},{\"id\":224,\"name\":\"组选三\",\"playGroupId\":1},{\"id\":225,\"name\":\"组选六\",\"playGroupId\":1},{\"id\":226,\"name\":\"跨度\",\"playGroupId\":1},{\"id\":227,\"name\":\"龙虎\",\"playGroupId\":1},{\"id\":228,\"name\":\"双面\",\"playGroupId\":2},{\"id\":229,\"name\":\"数字盘\",\"playGroupId\":2},{\"id\":230,\"name\":\"一字定位\",\"playGroupId\":2},{\"id\":231,\"name\":\"二字定位\",\"playGroupId\":2},{\"id\":232,\"name\":\"三字定位\",\"playGroupId\":2},{\"id\":233,\"name\":\"一字组合\",\"playGroupId\":2},{\"id\":234,\"name\":\"二字组合\",\"playGroupId\":2},{\"id\":235,\"name\":\"二字和数\",\"playGroupId\":2},{\"id\":236,\"name\":\"组选三\",\"playGroupId\":2},{\"id\":237,\"name\":\"组选六\",\"playGroupId\":2},{\"id\":238,\"name\":\"跨度\",\"playGroupId\":2},{\"id\":239,\"name\":\"龙虎\",\"playGroupId\":2},{\"id\":240,\"name\":\"双面\",\"playGroupId\":3},{\"id\":241,\"name\":\"数字盘\",\"playGroupId\":3},{\"id\":242,\"name\":\"一字定位\",\"playGroupId\":3},{\"id\":243,\"name\":\"二字定位\",\"playGroupId\":3},{\"id\":244,\"name\":\"三字定位\",\"playGroupId\":3},{\"id\":245,\"name\":\"一字组合\",\"playGroupId\":3},{\"id\":246,\"name\":\"二字组合\",\"playGroupId\":3},{\"id\":247,\"name\":\"二字和数\",\"playGroupId\":3},{\"id\":248,\"name\":\"组选三\",\"playGroupId\":3},{\"id\":249,\"name\":\"组选六\",\"playGroupId\":3},{\"id\":250,\"name\":\"跨度\",\"playGroupId\":3},{\"id\":251,\"name\":\"龙虎\",\"playGroupId\":3},{\"id\":252,\"name\":\"定位\",\"playGroupId\":5},{\"id\":253,\"name\":\"组合\",\"playGroupId\":5},{\"id\":254,\"name\":\"和数\",\"playGroupId\":5},{\"id\":255,\"name\":\"组选三\",\"playGroupId\":5},{\"id\":256,\"name\":\"组选六\",\"playGroupId\":5},{\"id\":257,\"name\":\"跨度\",\"playGroupId\":5},{\"id\":258,\"name\":\"双面\",\"playGroupId\":9},{\"id\":259,\"name\":\"数字盘\",\"playGroupId\":9},{\"id\":260,\"name\":\"冠军\",\"playGroupId\":9},{\"id\":261,\"name\":\"亚军\",\"playGroupId\":9},{\"id\":262,\"name\":\"季军\",\"playGroupId\":9},{\"id\":263,\"name\":\"第四名\",\"playGroupId\":9},{\"id\":264,\"name\":\"第五名\",\"playGroupId\":9},{\"id\":265,\"name\":\"第六名\",\"playGroupId\":9},{\"id\":266,\"name\":\"第七名\",\"playGroupId\":9},{\"id\":267,\"name\":\"第八名\",\"playGroupId\":9},{\"id\":268,\"name\":\"第九名\",\"playGroupId\":9},{\"id\":269,\"name\":\"第十名\",\"playGroupId\":9},{\"id\":270,\"name\":\"冠亚和\",\"playGroupId\":9},{\"id\":271,\"name\":\"选5\",\"playGroupId\":8},{\"id\":272,\"name\":\"选4\",\"playGroupId\":8},{\"id\":273,\"name\":\"选3\",\"playGroupId\":8},{\"id\":274,\"name\":\"选2\",\"playGroupId\":8},{\"id\":275,\"name\":\"选1\",\"playGroupId\":8},{\"id\":276,\"name\":\"其他\",\"playGroupId\":8},{\"id\":277,\"name\":\"双面\",\"playGroupId\":11},{\"id\":278,\"name\":\"第一球\",\"playGroupId\":11},{\"id\":279,\"name\":\"第二球\",\"playGroupId\":11},{\"id\":280,\"name\":\"第三球\",\"playGroupId\":11},{\"id\":281,\"name\":\"第四球\",\"playGroupId\":11},{\"id\":282,\"name\":\"第五球\",\"playGroupId\":11},{\"id\":283,\"name\":\"第六球\",\"playGroupId\":11},{\"id\":284,\"name\":\"第七球\",\"playGroupId\":11},{\"id\":285,\"name\":\"第八球\",\"playGroupId\":11},{\"id\":286,\"name\":\"龙虎\",\"playGroupId\":11},{\"id\":287,\"name\":\"定位\",\"playGroupId\":4},{\"id\":288,\"name\":\"组合\",\"playGroupId\":4},{\"id\":289,\"name\":\"和数\",\"playGroupId\":4},{\"id\":290,\"name\":\"组选三\",\"playGroupId\":4},{\"id\":291,\"name\":\"组选六\",\"playGroupId\":4},{\"id\":292,\"name\":\"跨度\",\"playGroupId\":4},{\"id\":293,\"name\":\"和值\",\"playGroupId\":7},{\"id\":294,\"name\":\"双面\",\"playGroupId\":10},{\"id\":295,\"name\":\"第一球\",\"playGroupId\":10},{\"id\":296,\"name\":\"第二球\",\"playGroupId\":10},{\"id\":297,\"name\":\"第三球\",\"playGroupId\":10},{\"id\":298,\"name\":\"第四球\",\"playGroupId\":10},{\"id\":299,\"name\":\"第五球\",\"playGroupId\":10},{\"id\":300,\"name\":\"第六球\",\"playGroupId\":10},{\"id\":301,\"name\":\"第七球\",\"playGroupId\":10},{\"id\":302,\"name\":\"第八球\",\"playGroupId\":10},{\"id\":303,\"name\":\"龙虎\",\"playGroupId\":10}]}", SscPlayGroupListResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SSC_PLAY_GROUP, paramsMap, companyShortName), SscPlayGroupListResult.class);
    }

    public static SscTimeResult getAllSscOpenTime(String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":null,\"sscTimeList\":[{\"playGroupId\":1,\"playGroupName\":\"重庆时时彩\",\"leftTime\":188,\"number\":\"20161116111\",\"lastOpenNumber\":\"20161107118\",\"lastOpenTime\":1478533851000,\"lastOpenData\":\"7,2,1,5,8\",\"leftOpenTime\":248,\"opening\":true},{\"playGroupId\":2,\"playGroupName\":\"天津时时彩\",\"leftTime\":35887,\"number\":\"20161117001\",\"lastOpenNumber\":\"20161109051\",\"lastOpenTime\":1478683995000,\"lastOpenData\":\"2,0,1,9,1\",\"leftOpenTime\":35947,\"opening\":true},{\"playGroupId\":3,\"playGroupName\":\"新疆时时彩\",\"leftTime\":486,\"number\":\"20161116080\",\"lastOpenNumber\":\"20161109046\",\"lastOpenTime\":1478684433000,\"lastOpenData\":\"0,5,7,7,8\",\"leftOpenTime\":546,\"opening\":true},{\"playGroupId\":4,\"playGroupName\":\"体彩排列3\",\"leftTime\":74946,\"number\":\"2016315\",\"lastOpenNumber\":\"2016306\",\"lastOpenTime\":1478608767000,\"lastOpenData\":\"7,4,0\",\"leftOpenTime\":76746,\"opening\":true},{\"playGroupId\":5,\"playGroupName\":\"福彩3D\",\"leftTime\":76686,\"number\":\"2016315\",\"lastOpenNumber\":\"2016306\",\"lastOpenTime\":1478608600000,\"lastOpenData\":\"0,7,3\",\"leftOpenTime\":76746,\"opening\":true},{\"playGroupId\":6,\"playGroupName\":\"六合彩\",\"leftTime\":80286,\"number\":\"2016133\",\"lastOpenNumber\":\"2016130\",\"lastOpenTime\":1478784600000,\"lastOpenData\":\"1,2,3,4,5,6,20\",\"leftOpenTime\":80346,\"opening\":true},{\"playGroupId\":7,\"playGroupName\":\"幸运28\",\"leftTime\":186,\"number\":\"792526\",\"lastOpenNumber\":\"791206\",\"lastOpenTime\":1478684430000,\"lastOpenData\":\"7,0,3\",\"leftOpenTime\":246,\"opening\":true},{\"playGroupId\":8,\"playGroupName\":\"北京快乐8\",\"leftTime\":186,\"number\":\"792526\",\"lastOpenNumber\":\"791206\",\"lastOpenTime\":1478684430000,\"lastOpenData\":\"06,07,17,19,23,24,30,33,42,47,48,49,51,52,54,56,58,62,69,72,01\",\"leftOpenTime\":246,\"opening\":true},{\"playGroupId\":9,\"playGroupName\":\"北京PK10\",\"leftTime\":6,\"number\":\"587097\",\"lastOpenNumber\":\"585777\",\"lastOpenTime\":1478684269000,\"lastOpenData\":\"06,03,01,10,09,05,02,08,07,04\",\"leftOpenTime\":66,\"opening\":true},{\"playGroupId\":10,\"playGroupName\":\"重庆幸运农场\",\"leftTime\":126,\"number\":\"20161116093\",\"lastOpenNumber\":\"20161109059\",\"lastOpenTime\":1478684023000,\"lastOpenData\":\"10,15,03,18,20,11,07,17\",\"leftOpenTime\":186,\"opening\":true},{\"playGroupId\":11,\"playGroupName\":\"广东快乐十分\",\"leftTime\":35885,\"number\":\"20161117001\",\"lastOpenNumber\":\"20161111020\",\"lastOpenTime\":1478794920000,\"lastOpenData\":\"1,2,3,4,5,6,7,8\",\"leftOpenTime\":35945,\"opening\":true}]}", SscTimeResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_ALL_SSC_OPEN_TIME, paramsMap, companyShortName), SscTimeResult.class);
    }


    /**
     * 获取所有彩种开奖时间（无封盘）
     * @return
     */
    public static SscAllTimeResult getAllSscOpenTimeTwo(String companyShortName){
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_ALL_SSC_OPEN_TIME_TWO, paramsMap, companyShortName), SscAllTimeResult.class);
    }

    /**
     * 获取彩种当前开奖时间
     * @return
     */
    public static SscCurrentTimeResult getCurrentTimeResult(String companyShortName){
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SSC_CURRENT_OPEN_TIME, paramsMap, companyShortName), SscCurrentTimeResult.class);
    }

    public static LogoResult getLogo(Integer type, String companyShortName) {
        if (IS_DEBUG) {
            return new LogoResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("type", type);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_LOGO, paramsMap, companyShortName), LogoResult.class);
    }

    private static String formatDate(Date date, String pattern) {
        if (null == date) {
            return null;
        }
        return DateFormatUtils.format(date, pattern);
    }


    public static CommonResult readUserInboxNotice(Long uid, String token, Long[] idList, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("idList", arr2Str(idList));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_READ_USER_INBOX_NOTICE, paramsMap, companyShortName), CommonResult.class);
    }
    public static CommonResult delUserInboxNotice(Long uid, String token, Long[] idList, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("idList", arr2Str(idList));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_DEL_USER_INBOX_NOTICE, paramsMap, companyShortName), CommonResult.class);
    }
    @Deprecated
    public static CommonResult addUserBank(Long uid, String token, String bankName, String subBankName, String bankAccount, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("bankName", bankName);
        paramsMap.put("subBankName", subBankName);
        paramsMap.put("bankAccount", bankAccount);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_ADD_USER_BANK, paramsMap, companyShortName), CommonResult.class);
    }
    public static CommonResult addUserBank(Long uid, String token, String bankName, String subBankName, String bankAccount, String location, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("bankName", bankName);
        paramsMap.put("subBankName", subBankName);
        paramsMap.put("bankAccount", bankAccount);
        paramsMap.put("location", location);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_ADD_USER_BANK, paramsMap, companyShortName), CommonResult.class);
    }
    public static CommonResult updateUserInfo(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_UPDATE_USER_INFO, paramsMap, companyShortName), CommonResult.class);
    }
    public static KefuResult getKefu(String companyShortName) {
        if (IS_DEBUG) {
            return new KefuResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_KEFU, paramsMap, companyShortName), KefuResult.class);
    }
    public static KhxyResult getKhxy(String companyShortName) {
        if (IS_DEBUG) {
            return new KhxyResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_KHXY, paramsMap, companyShortName), KhxyResult.class);
    }
    public static CommonResult bet(Long uid, String token, String betForm, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("betForm", betForm);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_BET, paramsMap, companyShortName), CommonResult.class);
    }
    public static CarouselResult getCarouselList(Boolean isEnable, Integer type, String companyShortName) {
        if (IS_DEBUG) {
            return new CarouselResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("isEnable", isEnable);
        paramsMap.put("type", type);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_CAROUSEL_LIST, paramsMap, companyShortName), CarouselResult.class);
    }
    public static CommonResult chedan(Long uid, String token, Long id, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("id", id);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_CHEDAN, paramsMap, companyShortName), CommonResult.class);
    }
    public static SscOpenTimeResult getSscOpenTime(Boolean isData, Long playGroupId, Long playId, Integer lastDataOffset, Integer lastDataSize, Boolean calcJiangchi, String companyShortName) {
        if (IS_DEBUG) {
            return new SscOpenTimeResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("isData", isData);
        paramsMap.put("playGroupId", playGroupId);
        paramsMap.put("playId", playId);
        paramsMap.put("lastDataOffset", lastDataOffset);
        paramsMap.put("lastDataSize", lastDataSize);
        paramsMap.put("calcJiangchi", calcJiangchi);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SSC_OPEN_TIME, paramsMap, companyShortName), SscOpenTimeResult.class);
    }
    public static ImageResult getImageData(Long id, String companyShortName) {
        if (IS_DEBUG) {
            return new ImageResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("id", id);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_IMAGE_DATA, paramsMap, companyShortName), ImageResult.class);
    }
    public static CommonResult sigout(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SIGOUT, paramsMap, companyShortName), CommonResult.class);
    }

    public static CommonResult setUserBankDefault(Long uid, String token, Long id, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("id", id);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SET_USER_BANK_DEFAULT, paramsMap, companyShortName), CommonResult.class);
    }

    public static CommonResult delUserBank(Long uid, String token, Long id, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("id", id);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_DEL_USER_BANK, paramsMap, companyShortName), CommonResult.class);
    }

    public static BetListResult getBetDetails(Long uid, String token, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer status, Long playGroupId, String number, String orderNumber, Boolean isZhongjiang, String companyShortName) {
        if (IS_DEBUG) {
             return JSONUtils.toObject("{\"result\":1,\"description\":null,\"pageNum\":1,\"pageSize\":25,\"size\":25,\"total\":160,\"firstPage\":1,\"prePage\":0,\"nextPage\":2,\"lastPage\":7,\"hasPreviousPage\":false,\"hasNextPage\":true,\"navigatePages\":8,\"navigatepageNums\":[1,2,3,4,5,6,7],\"betList\":[{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"个位-双\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521369204185\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"千位-合\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521363004169\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"个位-单\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521368904184\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"千位-质\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521362704168\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"个位-小\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521368604183\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"千位-双\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521362304167\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"个位-大\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521368304182\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"千位-单\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521362004166\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"十位-合\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521368004181\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"千位-小\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521361704165\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"十位-质\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521367704180\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"千位-大\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521361404164\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"十位-双\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521367404179\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"万位-合\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521361104163\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":9.4,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"总和、龙虎和-和\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521372104194\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"十位-单\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521367104178\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"万位-质\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521360804162\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"总和、龙虎和-虎\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521371704193\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"十位-小\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521366604177\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"万位-双\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521359904161\",\"zjMoney\":0},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"总和、龙虎和-龙\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521371404192\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"十位-大\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521366304176\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"万位-单\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521359504160\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":0.985,\"content\":\"总和、龙虎和-总双\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521371104191\",\"zjMoney\":1.985},{\"time\":1480431133000,\"playPl\":1.985,\"playName\":\"双面\",\"totalMoney\":1,\"status\":1,\"zhushu\":1,\"perMoney\":1,\"winOrLose\":-1,\"content\":\"百位-合\",\"number\":\"20161129107\",\"orderNumber\":\"2016112922521366004175\",\"zjMoney\":0}]}",BetListResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("status", status);
        paramsMap.put("playGroupId", playGroupId);
        paramsMap.put("number", number);
        paramsMap.put("orderNumber", orderNumber);
        paramsMap.put("isZhongjiang", isZhongjiang);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_BET_DETAILS, paramsMap, companyShortName), BetListResult.class);
    }

    public static WebNoticeResult getPopupNoticeList(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new WebNoticeResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_POPUP_NOTICE_LIST, paramsMap, companyShortName), WebNoticeResult.class);
    }

    public static WebNoticeResult.WebNotice getPopupNotice(String pk, String companyShortName) {
        if (IS_DEBUG) {
            return new WebNoticeResult.WebNotice();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("pk", pk);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_POPUP_NOTICE, paramsMap, companyShortName), WebNoticeResult.WebNotice.class);
    }

    public static WebNoticeResult getScrollNoticeList(Date startTime, Date endTime, String companyShortName) {
        if (IS_DEBUG) {
            return new WebNoticeResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SCROLL_NOTICE_LIST, paramsMap, companyShortName), WebNoticeResult.class);
    }

    public static WebInfoResult getWebInfo(Integer type, String companyShortName) {
        if (IS_DEBUG) {
            return new WebInfoResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("type", type);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_WEB_INFO, paramsMap, companyShortName), WebInfoResult.class);
    }

    /**
     * 获得开奖记录
     * @param playGroupId 彩种编码
     * @param pageIndex 页码（可为空）
     * @param pageSize 每页数量（可为空）
     * @param startTime 开始时间（可为空）
     * @param endTime 结束时间（可为空）
     * @param date 开奖日期（可为空）
     * @return
     */
    public static SscHistoryResult getHistory(Long playGroupId, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, String date, String number, String companyShortName) {
        if (IS_DEBUG) {
            return new SscHistoryResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("date", date);
        paramsMap.put("number", number);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_HISTORY, paramsMap, companyShortName), SscHistoryResult.class);
    }

    public static AgentUserListResult getUserList(Long uid, String token, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, String account, Long id, String companyShortName) {
        if (IS_DEBUG) {
            return new AgentUserListResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("account", account);
        paramsMap.put("id", id);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_GET_USER_LIST, paramsMap, companyShortName), AgentUserListResult.class);
    }

    public static BetListResult getTouzhu(Long uid, String token, String account, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer status, Long playGroupId, Long playId, String number, String orderNumber, String companyShortName) {
        if (IS_DEBUG) {
            return new BetListResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("account", account);
        paramsMap.put("status", status);
        paramsMap.put("playGroupId", playGroupId);
        paramsMap.put("playId", playId);
        paramsMap.put("number", number);
        paramsMap.put("orderNumber", orderNumber);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_GET_TOUZHU, paramsMap, companyShortName), BetListResult.class);
    }

    public static AgentTdlsResult getLiushui(Long uid, String token, Integer pageIndex, Integer pageSize, String account, Date startTime, Date endTime, Integer type, String companyShortName) {
        if (IS_DEBUG) {
            return new AgentTdlsResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("account", account);
        paramsMap.put("type", type);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_GET_LIUSHUI, paramsMap, companyShortName), AgentTdlsResult.class);
    }

    public static CommonResult addUser(Long uid, String token, String account, String password, String name, String ip, String url, String qq, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("account", account);
        paramsMap.put("password", password);
        paramsMap.put("name", name);
        paramsMap.put("ip", ip);
        paramsMap.put("url", url);
        paramsMap.put("qq", qq);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_ADD_USER, paramsMap, companyShortName), CommonResult.class);
    }
    public static CommonResult updateOnlineInfo(Long uid, String token, String url, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("url", url);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_UPDATE_ONLINE_INFO, paramsMap, companyShortName), CommonResult.class);
    }
    public static CommonResult agentEnableUser(Long uid, String token, Long userId, Boolean isEnable, String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("userId", userId);
        paramsMap.put("isEnable", isEnable);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_ENABLE_USER, paramsMap, companyShortName), CommonResult.class);
    }

    public static SscPlayJjDescriptionResult getSscPlayJjDescription(Long playId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscPlayJjDescriptionResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playId", playId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SSC_PLAY_JJ_DESCRIPTION, paramsMap, companyShortName), SscPlayJjDescriptionResult.class);
    }

    public static AgentReportResult getAgentReport(Long uid, String token, Date startTime, Date endTime, String companyShortName) {
        if (IS_DEBUG) {
            return new AgentReportResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_GET_AGENT_REPORT, paramsMap, companyShortName), AgentReportResult.class);
    }

//    public static AgentUserBalanceListResult getUserBalanceList(Long uid, String token, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, String account, Long id) {
//        if (IS_DEBUG) {
//            return new AgentUserBalanceListResult();
//        }
//        Map<String, Object> paramsMap = new HashMap<String, Object>();
//        paramsMap.put("uid", uid);
//        paramsMap.put("token", token);
//        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
//        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
//        paramsMap.put("pageIndex", pageIndex);
//        paramsMap.put("pageSize", pageSize);
//        paramsMap.put("account", account);
//        paramsMap.put("id", id);
//        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_GET_USER_BALANCE_LIST, paramsMap, companyShortName), AgentUserBalanceListResult.class);
//    }



    private static String arr2Str(Object[] arr) {
        if (null == arr) {
            return null;
        }

        StringBuilder builder = new StringBuilder();
        String seperate = "";
        for (int i = 0; i < arr.length; ++i) {
            builder.append(seperate).append(arr[i].toString());
            seperate = ",";
        }
        return builder.toString();
    }


    public static AgentUserYjListResult agentGetUserYjList(Long uid, String token, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer type, String companyShortName) {
        if (IS_DEBUG) {
            return new AgentUserYjListResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("type", type);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_GET_USER_YJ_LIST, paramsMap, companyShortName), AgentUserYjListResult.class);
    }

    public static LogUserCoinResult getLogUserCoinList(Long uid, String token, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, Integer type, String companyShortName) {
        if (IS_DEBUG) {
            return new LogUserCoinResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("type", type);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_MEMBER_GET_USER_COIN_LIST, paramsMap, companyShortName), LogUserCoinResult.class);
    }

    public static PromotionResult.Promotion promotionGetById(Long id, String companyShortName) {
        if (IS_DEBUG) {
            return new PromotionResult.Promotion();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("id", id);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_PROMOTION_GET_BY_ID, paramsMap, companyShortName), PromotionResult.Promotion.class);
    }

    public static LoginResult memberShiwanLogin(String ip, String url, Integer loginType, String companyShortName) {
        if (IS_DEBUG) {
            return JSONUtils.toObject("{\"result\":1,\"description\":\"\",\"token\":\"zxcxvads1zxce124casd\",\"userId\":421}", LoginResult.class);
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("ip", ip);
        paramsMap.put("url", url);
        paramsMap.put("loginType", loginType);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_MEMBER_SHIWAN_LOGIN, paramsMap, companyShortName), LoginResult.class);
    }

    public static LayerInfoResult getLayer(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new LayerInfoResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_MEMBER_GET_LAYER, paramsMap, companyShortName), LayerInfoResult.class);
    }

    public static Integer countUserInboxUnRead(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return 0;
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return Integer.parseInt(commonRequest(ApiConstant.API_MEMBER_COUNT_USER_INBOX_UN_READ, paramsMap, companyShortName));
    }

    public static QkSettingResult getQkSetting( String companyShortName) {
        if (IS_DEBUG) {
            return new QkSettingResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_WEB_SETTING_GET_QK_SETTING, paramsMap, companyShortName), QkSettingResult.class);
    }

    public static SscOpenTimeResultPer getSscOpenTimePer(Long playGroupId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscOpenTimeResultPer();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_SSC_OPEN_TIME_PER, paramsMap, companyShortName), SscOpenTimeResultPer.class);
    }

    public static SscHistoryResult2 getSscDataHistory(Integer offset, Integer limit, Long playGroupId, Date startTime, Date endTime, String companyShortName) {
        if (IS_DEBUG) {
            return new SscHistoryResult2();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("offset", offset);
        paramsMap.put("limit", limit);
        paramsMap.put("playGroupId", playGroupId);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_SSC_DATA_HISTORY, paramsMap, companyShortName), SscHistoryResult2.class);
    }

    public static SscPlayPlResult getSscPlayPl(Long uid, String token, Long playId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscPlayPlResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playId", playId);
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_SSC_PLAY_PL, paramsMap, companyShortName), SscPlayPlResult.class);
    }

    public static SscLeftTimeResult getSscLeftTime(Long playGroupId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscLeftTimeResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_LEFT_TIME, paramsMap, companyShortName), SscLeftTimeResult.class);
    }

    public static SscHistoryResult3 getDataHistory(Integer pageIndex, Integer pageSize, Date openDate, String number, Long playGroupId, Date startTime, Date endTime, String companyShortName) {
        if (IS_DEBUG) {
            return new SscHistoryResult3();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("openDate", formatDate(openDate, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("number", number);
        paramsMap.put("playGroupId", playGroupId);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_DATA_HISTORY, paramsMap, companyShortName), SscHistoryResult3.class);
    }

    public static SscHistoryResult3 getAllDataHistory(Integer type, Long playGroupId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscHistoryResult3();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("type", type);
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_ALL_DATA_HISTORY, paramsMap, companyShortName), SscHistoryResult3.class);
    }

    public static AgentUserReportResult getUserReport(Long uid, String token, Integer pageIndex, Integer pageSize, Date startTime, Date endTime, String account, String companyShortName) {
        if (IS_DEBUG) {
            return new AgentUserReportResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        paramsMap.put("pageIndex", pageIndex);
        paramsMap.put("pageSize", pageSize);
        paramsMap.put("startTime", formatDate(startTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("endTime", formatDate(endTime, "yyyy-MM-dd HH:mm:ss"));
        paramsMap.put("account", account);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_AGENT_GET_USER_REPORT, paramsMap, companyShortName), AgentUserReportResult.class);
    }

    public static RedPacketResult redpacketChoujiang(String account, String companyShortName) {
        if (IS_DEBUG) {
            return new RedPacketResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("account", account);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_REDPACKET_CHOUJIANG, paramsMap, companyShortName), RedPacketResult.class);
    }

    public static RedPacketListResult redpacketgetList(String account, String companyShortName) {
        if (IS_DEBUG) {
            return new RedPacketListResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("account", account);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_REDPACKET_GET_LIST, paramsMap, companyShortName), RedPacketListResult.class);
    }

    public static SscHistoryResult2 getPlanOpenDataHistory(Integer size, Long playGroupId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscHistoryResult2();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("size", size);
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_PLAN_OPEN_DATA_HISTORY, paramsMap, companyShortName), SscHistoryResult2.class);
    }

    public static SscOpenDataResult getSscOpenCode(Long playGroupId, String number, String companyShortName) {
        if (IS_DEBUG) {
            return new SscOpenDataResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        paramsMap.put("number", number);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_SSC_OPEN_CODE, paramsMap, companyShortName), SscOpenDataResult.class);
    }

    public static SscOpenTimeResult getSscOpenTime2(Long playGroupId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscOpenTimeResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_SSC_OPEN_TIME_2, paramsMap, companyShortName), SscOpenTimeResult.class);
    }

    public static SscTimeResult2 getAllSscOpenTime2(String companyShortName) {
        if (IS_DEBUG) {
            return new SscTimeResult2();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_ALL_SSC_OPEN_TIME_2, paramsMap, companyShortName), SscTimeResult2.class);
    }

    public static SscHotOpenDataResult getHotSscDataHistory3(String companyShortName) {
        if (IS_DEBUG) {
            return new SscHotOpenDataResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_HOT_SSC_DATA_HISTORY_3, paramsMap, companyShortName), SscHotOpenDataResult.class);
    }

    public static SscPlayGroupResult getSscPlayGroup(Long playGroupId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscPlayGroupResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_SSC_PLAY_GROUP, paramsMap, companyShortName), SscPlayGroupResult.class);
    }

    public static SscPlayGroupResult getSscPlayGroup(String shortName, String companyShortName) {
        if (IS_DEBUG) {
            return new SscPlayGroupResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("shortName", shortName);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_SSC_PLAY_GROUP, paramsMap, companyShortName), SscPlayGroupResult.class);
    }

    /**
     * 获取QQ收款账号
     * @param uid
     * @param token
     * @param companyShortName
     * @return
     */
    public static SkInfoResult getSystemQq(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new SkInfoResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GET_SYS_QQ, paramsMap, companyShortName), SkInfoResult.class);
    }

    /**
     * 获取公司标志
     * @param domain 域名
     * @return
     */
    public static CompanyShortNameResult getCompanyShortName(String domain) {
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("domain", domain);
        return JSONUtils.toObject(HttpUtils.post(ApiConstant.API_WEB_SETTING_GET_COMPANY_SHORT_NAME, paramsMap), CompanyShortNameResult.class);
    }

    /**
     * 普通请求
     * @param apiUrl API地址
     * @param paramsMap 参数
     * @param companyShortName 公司标识
     * @return
     */
    private static String commonRequest(
            String apiUrl,
            Map<String, Object> paramsMap,
            String companyShortName
    ) {
        if (null == paramsMap) {
            paramsMap = new HashMap<String, Object>();
        }
        paramsMap.put("companyShortName", companyShortName);
        
        return HttpUtils.post(apiUrl, paramsMap);
    }

    /**
     * 获取WEB风格
     * @param companyShortName 公司标志
     * @param type 类型（1-PC，2-手机）
     * @return
     */
    public static FenggeResult getWebFengge(
            String companyShortName,
            Integer type
    ) {
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("companyShortName", companyShortName);
        paramsMap.put("type", type);
        return JSONUtils.toObject(HttpUtils.post(ApiConstant.API_WEB_SETTING_GET_FENGGE, paramsMap), FenggeResult.class);
    }

    public static SscPlayPlResult getSscPlayPl_gfwf(Long playGroupId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscPlayPlResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_SSC_PLAY_PL_GFWF, paramsMap, companyShortName), SscPlayPlResult.class);
    }

    public static SscOpenTimeListResult getLatestOpenTimeList(Long playGroupId, String companyShortName) {
        if (IS_DEBUG) {
            return new SscOpenTimeListResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_GET_LATEST_OPEN_TIME_LIST, paramsMap, companyShortName), SscOpenTimeListResult.class);
    }

    public static MobileFgResult getMobileFg(String companyShortName) {
        if (IS_DEBUG) {
            return new MobileFgResult();
        }
        return JSONUtils.toObject(commonRequest(ApiConstant.API_MOBILE_GET_FG, null, companyShortName), MobileFgResult.class);
    }

    public static LatelyGameResult getLatelyGames(Long uid, String token, String companyShortName) {
        if (IS_DEBUG) {
            return new LatelyGameResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("uid", uid);
        paramsMap.put("token", token);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_SSC_LATElYGAMES, paramsMap, companyShortName), LatelyGameResult.class);
    }

    public static SscZJNoticeResult getNotices(String companyShortName){
        if(IS_DEBUG){
            return new SscZJNoticeResult();
        }

        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_INDEX_GETZJNOTICE, paramsMap, companyShortName), SscZJNoticeResult.class);
    }

    public static CommonResult getTodayIsOpen(Long playGroupId,String companyShortName){
        if(IS_DEBUG){
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("playGroupId", playGroupId);
        return JSONUtils.toObject(commonRequest(ApiConstant.API_INDEX_GETZJNOTICE, paramsMap, companyShortName), CommonResult.class);
    }

    public static GameSetResult getGameSet(String companyShortName){
        if(IS_DEBUG){
            return new GameSetResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_GAME_SET, paramsMap, companyShortName), GameSetResult.class);
    }

    public static CommonResult getNeedWithDrawPasswd(String companyShortName) {
        if (IS_DEBUG) {
            return new CommonResult();
        }
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        return JSONUtils.toObject(commonRequest(ApiConstant.API_NEED_WITHDRAWPASSWD, paramsMap, companyShortName), CommonResult.class);
    }
}
