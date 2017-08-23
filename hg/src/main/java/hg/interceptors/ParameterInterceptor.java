package hg.interceptors;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 参数拦截器
 * Created by Administrator on 2016/4/10.
 */

public class ParameterInterceptor extends HandlerInterceptorAdapter {
    private Log log = LogFactory.getLog(getClass());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        String paramsJsonStr = JSONUtils.toJSONStr(request.getParameterMap());
//        String ip = IPHelper.getIpAddr(request);
//
//        if (request.getRequestURI().indexOf("checkOnline.json") >= 0) {
//            return true;
//        }
//
//        StringBuilder builder = new StringBuilder();
//        builder.append("url:");
//        builder.append(request.getRequestURI());
//        builder.append(" |params:");
//        builder.append(paramsJsonStr);
//        builder.append(" |ip:");
//        builder.append(ip);
//
//        log.info(builder.toString());
        return true;
    }
}
