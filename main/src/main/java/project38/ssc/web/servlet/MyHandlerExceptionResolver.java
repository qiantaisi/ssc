package project38.ssc.web.servlet;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import project38.api.result.CompanyShortNameResult;
import project38.api.utils.ApiUtils;
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

        String kefuUrl = null;
        try {
            // 公司标志
            Boolean sessionIsExist = false;

            String companyShortName = (String) httpServletRequest.getSession().getAttribute("COMPANY_SHORT_NAME");
            if (StringUtils.isBlank(companyShortName)) {
                CompanyShortNameResult companyShortNameResult = ApiUtils.getCompanyShortName(httpServletRequest.getServerName());
                if (companyShortNameResult.getResult() == 1) {
                    companyShortName = companyShortNameResult.getCompanyShortName();
                }
            } else {
                sessionIsExist = true;
            }

            if (!sessionIsExist) {
                httpServletRequest.getSession().setAttribute("COMPANY_SHORT_NAME", companyShortName);
            }

            if (StringUtils.isNotBlank(companyShortName)) {
                kefuUrl = ApiUtils.getKefu(companyShortName).getKefuUrl();
                paramsMap.put("kefuUrl", kefuUrl);
            }
        } catch (Exception e1) {

        }

        return new ModelAndView("public/error/404/index", paramsMap);
    }
}
