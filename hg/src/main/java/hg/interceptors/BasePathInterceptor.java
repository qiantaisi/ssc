package hg.interceptors;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 基路径拦截
 * Created by Administrator on 2016/4/9.
 */
public class BasePathInterceptor extends HandlerInterceptorAdapter {


    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String uri = request.getRequestURI();

//        if (uri.indexOf(".json") >= 0) {
//            return true;
//        }

//        if (uri.indexOf(".html") >= 0 || (uri.lastIndexOf("/") + 1) == uri.length()) {
//            User user = SessionHelper.getUserSession(request);
//            if (null != user) {
//                tmpUserOnlineService.updateRecord(user.getId(), request.getRequestURL().toString());
//            }
//        }
//
//        if ((uri.indexOf(".html") > 0 && uri.indexOf("member") < 0) || ((uri.lastIndexOf("/") + 1) == uri.length())) {
//            request.setAttribute("commonTitle", webSettingService.getWzbt());   // 网站标题
//            request.setAttribute("commonDescription", webSettingService.getWzms()); // 网站描述
//            request.setAttribute("systemNoticeList", systemNoticeService.getAll()); // 系统通知
//            request.setAttribute("carouselList", viewCarouselService.getList());
//            request.setAttribute("logoImageId", webSettingService.getLogoImageId());
//            request.setAttribute("commonWeibujs", webSettingService.getWeibujs());
//        }

        return true;
    }
}
