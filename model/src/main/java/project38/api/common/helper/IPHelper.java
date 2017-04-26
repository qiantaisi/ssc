package com.petsathall.project.common.helper;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2016/4/10.
 */
public class IPHelper {
    private static Log log = LogFactory.getLog(IPHelper.class);

    /**
     * isInnerIP:判断内网IP
     *
     * @param ipAddress
     * @return
     * @创建时间 2016-3-26 下午5:15:32
     * @作者 ciano
     */
    public static boolean isInnerIP(String ipAddress) {
        boolean isInnerIp = false;
        try {
            long ipNum = getIpNum(ipAddress);
            /**
             * 私有IP：A类 10.0.0.0-10.255.255.255 B类 172.16.0.0-172.31.255.255 C类
             * 192.168.0.0-192.168.255.255 当然，还有127这个网段是环回地址
             **/
            long aBegin = getIpNum("10.0.0.0");
            long aEnd = getIpNum("10.255.255.255");
            long bBegin = getIpNum("172.16.0.0");
            long bEnd = getIpNum("172.31.255.255");
            long cBegin = getIpNum("192.168.0.0");
            long cEnd = getIpNum("192.168.255.255");
            isInnerIp = isInner(ipNum, aBegin, aEnd)
                    || isInner(ipNum, bBegin, bEnd)
                    || isInner(ipNum, cBegin, cEnd)
                    || ipAddress.equals("127.0.0.1");
        } catch (Exception e) {
            log.error(IPHelper.class, e);
        }
        return isInnerIp;
    }

    private static long getIpNum(String ipAddress) {
        String[] ip = ipAddress.split("\\.");
        long a = Integer.parseInt(ip[0]);
        long b = Integer.parseInt(ip[1]);
        long c = Integer.parseInt(ip[2]);
        long d = Integer.parseInt(ip[3]);

        long ipNum = a * 256 * 256 * 256 + b * 256 * 256 + c * 256 + d;
        return ipNum;
    }

    private static boolean isInner(long userIp, long begin, long end) {
        return (userIp >= begin) && (userIp <= end);
    }

    /**
     * getIpAddr:获取当前网络ip
     *
     * @param request
     * @return
     * @创建时间 2016-3-26 下午5:15:23
     * @作者 ciano
     */
    public static String getIpAddr(HttpServletRequest request) {
        try {
            String ipAddress = request.getHeader("x-forwarded-for");
            if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getHeader("Proxy-Client-IP");
            }
            if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getHeader("WL-Proxy-Client-IP");
            }
            if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getRemoteAddr();
                if (ipAddress.equals("127.0.0.1") || ipAddress.equals("0:0:0:0:0:0:0:1")) {
                    // 根据网卡取本机配置的IP
                    InetAddress inet = null;
                    try {
                        inet = InetAddress.getLocalHost();
                    } catch (UnknownHostException e) {
                        log.error(IPHelper.class, e);
                    }
                    ipAddress = inet.getHostAddress();
                }
            }
            // 对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
            if (ipAddress != null && ipAddress.length() > 15) { // "***.***.***.***".length()=
                // 15
                if (ipAddress.indexOf(",") > 0) {
                    ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));
                }
            }
            return ipAddress;
        } catch (Exception e) {
            log.error(IPHelper.class, e);
        }
        return null;
    }

    public static boolean isInRange(String ip, String beginIp, String endIp) {
        long ipValue = getIp2long(ip);
        long beginIpValue = getIp2long(beginIp);
        long endIpValue = getIp2long(endIp);
        return beginIpValue <= ipValue && ipValue <= endIpValue;
    }

    public static long getIp2long(String ip) {
        if (StringUtils.isBlank(ip)) {
            return 0;
        }

        ip = ip.trim();

        String[] ips = ip.split("\\.");
        long result = 0L;
        for (int i = 0; i < 4; ++i) {
            result = result << 8 | Integer.parseInt(ips[i]);
        }

        return result;
    }

    public static boolean isValidIp(String str) {
        Pattern pattern = Pattern.compile("^((\\d|[1-9]\\d|1\\d\\d|2[0-4]\\d|25[0-5]|[*])\\.){3}(\\d|[1-9]\\d|1\\d\\d|2[0-4]\\d|25[0-5]|[*])$");
        return pattern.matcher(str).matches();
    }
}
