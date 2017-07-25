package project38.ssc.web.servlet;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.CompanyShortNameResult;
import project38.api.utils.ApiUtils;
import project38.api.utils.SessionUtils;
import project38.ssc.web.controller.BaseController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * 异常处理
 */
@Component
public class MyHandlerExceptionResolver implements HandlerExceptionResolver {
    private static final Log log = LogFactory.getLog(MyHandlerExceptionResolver.class);

    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        log.error(this, e);

        Map<String, Object> paramsMap = new HashMap<String, Object>();

        // 公司标志
        String companyShortName = null;
        try {
            CompanyShortNameResult companyShortNameResult = ApiUtils.getCompanyShortName(httpServletRequest.getServerName());
            if (companyShortNameResult.getResult() == 1) {
                companyShortName = companyShortNameResult.getCompanyShortName();
            }

            if (StringUtils.isNotBlank(companyShortName)) {
                paramsMap.put("kefuUrl", ApiUtils.getKefu(companyShortName).getKefuUrl());
                paramsMap.put("logo", ApiUtils.getLogo(2, companyShortName));
            }
        } catch (Exception e1) {

        }
        SessionUtils.setSessionCompanyShortName(httpServletRequest, companyShortName);

        return new ModelAndView("public/error/404/index", paramsMap);
    }
}
