package project38.api.utils;

import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * 请求工具类
 */
public final class RequestUtils {
    private RequestUtils() {}

    /**
     * 默认HTTPS端口
     */
    private static final Integer HTTPS_DEFORT_PORT = 443;

    /**
     * 默认HTTPS协议
     */
    private static final String HTTPS_DEFAULT_SCHEME = "https";

    /**
     * 默认HTTP端口
     */
    private static final Integer HTTP_DEFORT_PORT = 80;

    /**
     * 默认HTTP协议
     */
    private static final String HTTP_DEFAULT_SCHEME = "http";

    /**
     * 获取basePath
     * @param httpServletRequest request请求
     * @return
     */
    public static String getBasePath(HttpServletRequest httpServletRequest) {
        Integer port = getServerPort(httpServletRequest);
        String scheme = getScheme(httpServletRequest);
        String serverName = httpServletRequest.getServerName();
        String path = httpServletRequest.getContextPath();

        StringBuilder builder = new StringBuilder();
//        builder.append(scheme).append("://");
//        builder.append(serverName);

//        // 如果不是默认HTTP,80或HTTPS，443
//        if (!(port.equals(HTTP_DEFORT_PORT) && StringUtils.equals(scheme, HTTP_DEFAULT_SCHEME)) && !(port.equals(HTTPS_DEFORT_PORT) && StringUtils.equals(scheme, HTTPS_DEFAULT_SCHEME))) {
//            builder.append(":").append(port);
//        }

        builder.append(path).append("/");
        return builder.toString();
    }

    /**
     * 获取请求协议
     * @param httpServletRequest request请求
     * @return
     */
    public static String getScheme(HttpServletRequest httpServletRequest) {
        Integer port = getServerPort(httpServletRequest);


        if (port.equals(HTTPS_DEFORT_PORT)) {
            return HTTPS_DEFAULT_SCHEME;
        }

        return HTTP_DEFAULT_SCHEME;
    }

    /**
     * 获取请求端口
     * @param httpServletRequest request请求
     * @return
     */
    public static Integer getServerPort(HttpServletRequest httpServletRequest) {
        return httpServletRequest.getServerPort();
    }
}
