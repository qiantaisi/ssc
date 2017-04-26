package project38.ssc.web.controller;

import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * 用户模块
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController { //用户控制器
    private static Log log = LogFactory.getLog(UserController.class);



//    @RequestMapping(value = "/register.html", method = RequestMethod.GET)
//    public ModelAndView register() {
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        modelMap.put("ceshi", "测试1");
//        return this.renderView("user/register", modelMap);
//    }
//
//    @RequestMapping(value = "/ajaxRegister.json", method = {RequestMethod.GET, RequestMethod.POST})
//    @ResponseBody
//    public String ajaxRegister(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, RegisterForm registerForm) {
//        CommonResult result = new CommonResult();
//        try {
//            registerForm.setIp(IPHelper.getIpAddr(httpServletRequest)); // 填充IP
//            registerForm.setUrl(httpServletRequest.getServerName());    // 填充注册地址
//
//            // 组合参数
//            Map<String, Object> paramsMap = new HashMap<String, Object>();
//            paramsMap.put("account", registerForm.getAccount());
//            paramsMap.put("password", registerForm.getPassword());
//            paramsMap.put("name", registerForm.getName());
//            paramsMap.put("url", registerForm.getUrl());
//            paramsMap.put("ip", registerForm.getIp());
//
//            // 请求API
//            // 这是正式的
//            // String response = HttpUtils.post(ApiConstant.API_REGISTER, paramsMap);
//            // 这是测试
//            String response = "{\"description\":\"d\",\"result\":-1}";
//
//            RegisterResult registerResult = JSONUtils.toObject(response, RegisterResult.class);
//            if (registerResult.getResult() == 1) {  // 注册成功
//                result.setResult(1);
//            } else {    // 注册失败
//                result.setResult(-1);
//                result.setDescription(registerResult.getDescription());
//            }
//        } catch (Exception e) {
//            log.error(this, e);
//            result.setResult(-1);
//            result.setDescription("服务器错误");
//        }
//        return this.renderJson(result);
//    }
}
