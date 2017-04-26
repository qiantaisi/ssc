package project38.ssc.mobile.servlet;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.util.UrlPathHelper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2016/12/9.
 */
@Component
public class MyDispatchServlet extends DispatcherServlet {

    private static final long serialVersionUID = 1L;

    private static final UrlPathHelper urlPathHelper = new UrlPathHelper();

    private String fileNotFondUrl = "/error/404.html";

    public void noHandlerFound(HttpServletRequest request, HttpServletResponse response) throws Exception {
        if (pageNotFoundLogger.isWarnEnabled()) {
            String requestUri = urlPathHelper.getRequestUri(request);
            pageNotFoundLogger.warn("No mapping found for HTTP request with URI [" + requestUri +
                    "] in DispatcherServlet with name '" + getServletName() + "'");
            if (requestUri.indexOf("html") > 0) {
//                response.sendRedirect(request.getContextPath() + fileNotFondUrl);
//                return;
            }
        }
        super.noHandlerFound(request, response);
    }

    public String getFileNotFondUrl() {
        return fileNotFondUrl;
    }

    public void setFileNotFondUrl(String fileNotFondUrl) {
        this.fileNotFondUrl = fileNotFondUrl;
    }




}