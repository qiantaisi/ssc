package project38.api.common.utils;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.*;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;

import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/4/21.
 */
public class HttpUtils {
    private static Log log = LogFactory.getLog(HttpUtils.class);

    private static PoolingHttpClientConnectionManager poolingHttpClientConnectionManager;
    private static RequestConfig requestConfig;
    private static final int MAX_TIMEOUT = 30000;
    private static final String userAgent = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36";
    private static HttpRequestRetryHandler httpRequestRetryHandler;

    static {
        // 重试机制初始化
        httpRequestRetryHandler = new HttpRequestRetryHandler() {
            @Override
            public boolean retryRequest(IOException e, int i, HttpContext httpContext) {
                if (i >= 5) {// 如果已经重试了5次，就放弃
                    return false;
                }
                if (e instanceof NoHttpResponseException) {// 如果服务器丢掉了连接，那么就重试
                    return true;
                }
                if (e instanceof SSLHandshakeException) {// 不要重试SSL握手异常
                    return false;
                }
                if (e instanceof InterruptedIOException) {// 超时
                    return false;
                }
                if (e instanceof UnknownHostException) {// 目标服务器不可达
                    return false;
                }
                if (e instanceof ConnectTimeoutException) {// 连接被拒绝
                    return false;
                }
                if (e instanceof SSLException) {// ssl握手异常
                    return false;
                }

                HttpClientContext clientContext = HttpClientContext.adapt(httpContext);
                HttpRequest request = clientContext.getRequest();
                // 如果请求是幂等的，就再次尝试
                if (!(request instanceof HttpEntityEnclosingRequest)) {
                    return true;
                }
                return false;
            }
        };
        // 设置连接池
        poolingHttpClientConnectionManager = new PoolingHttpClientConnectionManager();
        // 设置连接池大小
        poolingHttpClientConnectionManager.setMaxTotal(10240);
        poolingHttpClientConnectionManager.setDefaultMaxPerRoute(poolingHttpClientConnectionManager.getMaxTotal());
//        poolingHttpClientConnectionManager.setValidateAfterInactivity(100000);

        RequestConfig.Builder configBuilder = RequestConfig.custom();
        // 设置连接超时
        configBuilder.setConnectTimeout(MAX_TIMEOUT);
        // 设置读取超时
        configBuilder.setSocketTimeout(MAX_TIMEOUT);
        // 设置从连接池获取连接实例的超时
        configBuilder.setConnectionRequestTimeout(MAX_TIMEOUT);
        requestConfig = configBuilder.build();
    }

    /**
     * 发送 GET 请求（HTTP），不带输入数据
     *
     * @param url
     * @return
     */
    public static String get(String url, String userAgent) {
        return get(url, new HashMap<String, Object>(), userAgent);
    }

    /**
     * 发送 GET 请求（HTTP），不带输入数据
     *
     * @param url
     * @return
     */
    public static String get(String url) {
        return get(url, userAgent);
    }

    /**
     * 发送 GET 请求（HTTP），不带输入数据
     *
     * @param url
     * @return
     */
    public static String get(String url, Map<String, String> headerMap) {
        StringBuffer apiUrl = new StringBuffer(url);

        String result = null;
        CloseableHttpClient httpclient = getHttpClient(userAgent);
        CloseableHttpResponse response = null;
        try {
            System.out.println("request: " + apiUrl.toString());

            HttpGet httpGet = new HttpGet(apiUrl.toString());
            for (Map.Entry<String, String> entry : headerMap.entrySet()) {
                httpGet.setHeader(entry.getKey(), entry.getValue());
            }
            response = httpclient.execute(httpGet);
            result = getResponseContent(httpGet, response);
//            System.out.println("result: " + result);
        } catch (IOException e) {
            e.printStackTrace();
            log.error(HttpUtils.class, e);
        } finally {
            releaseResponse(response);
        }
        return result;
    }

    /**
     * 发送 GET 请求（HTTP），K-V形式
     *
     * @param url
     * @param params
     * @return
     */
    public static String get(String url, Map<String, Object> params, String userAgent) {
        StringBuffer apiUrl = new StringBuffer(url);
        int i = 0;
        for (Map.Entry<String, Object> entry : params.entrySet()) {
            if (i == 0)
                apiUrl.append("?");
            else
                apiUrl.append("&");
            apiUrl.append(entry.getKey()).append("=").append(params.get(entry.getValue()));
            i++;
        }

        String result = null;
        CloseableHttpClient httpclient = getHttpClient(userAgent);
        CloseableHttpResponse response = null;
        try {
            log.debug("request: " + apiUrl.toString());
            HttpGet httpGet = new HttpGet(apiUrl.toString());
            response = httpclient.execute(httpGet);
            result = getResponseContent(httpGet, response);
            log.debug("result: " + result);
        } catch (IOException e) {
            log.error(HttpUtils.class, e);
        } finally {
            releaseResponse(response);
        }
        return result;
    }

    /**
     * 发送 POST 请求（HTTP），不带输入数据
     *
     * @param apiUrl
     * @return
     */
    public static String post(String apiUrl) {
        return post(apiUrl, new HashMap<String, Object>());
    }

    /**
     * 发送 POST 请求（HTTP），K-V形式
     *
     * @param apiUrl API接口URL
     * @param params 参数map
     * @return
     */
    public static String post(String apiUrl, Map<String, Object> params) {
        CloseableHttpClient httpClient = getHttpClient();
        String result = null;
        HttpPost httpPost = new HttpPost(apiUrl);
        CloseableHttpResponse response = null;

        try {
            List<NameValuePair> pairList = new ArrayList<NameValuePair>(params.size());
            for (Map.Entry<String, Object> entry : params.entrySet()) {
                if (entry.getValue() == null) {
                    continue;
                }
                NameValuePair pair = new BasicNameValuePair(entry.getKey(), entry
                        .getValue().toString());
                pairList.add(pair);
            }
            httpPost.setHeader("Connection", "true");
            httpPost.setEntity(new UrlEncodedFormEntity(pairList, Charset.forName("UTF-8")));
            response = httpClient.execute(httpPost);
            result = getResponseContent(httpPost, response);
            log.debug("result: " + result);
        } catch (IOException e) {
            log.error(HttpUtils.class, e);
        } finally {
            releaseResponse(response);
        }
        return result;
    }

    /**
     * 发送 POST 请求（HTTP），JSON形式
     *
     * @param apiUrl
     * @param json   json对象
     * @return
     */
    public static String post(String apiUrl, String json) {
        CloseableHttpClient httpClient = getHttpClient();
        String result = null;
        HttpPost httpPost = new HttpPost(apiUrl);
        CloseableHttpResponse response = null;

        try {
            StringEntity stringEntity = new StringEntity(json, "UTF-8");//解决中文乱码问题
            stringEntity.setContentEncoding("UTF-8");
            stringEntity.setContentType("application/json");
            httpPost.setEntity(stringEntity);
            response = httpClient.execute(httpPost);
            result = getResponseContent(httpPost, response);
            log.debug("result: " + result);
        } catch (IOException e) {
            log.error(HttpUtils.class, e);
            e.printStackTrace();
        } finally {
            releaseResponse(response);
        }
        return result;
    }

    /**
     * 释放响应
     *
     * @param response
     */
    public static void releaseResponse(CloseableHttpResponse response) {
        if (response != null) {
            try {
                EntityUtils.consume(response.getEntity());
            } catch (Exception e) {
                log.error(HttpUtils.class, e);
            }

            try {
                response.close();
            } catch (Exception e) {
                log.error(HttpUtils.class, e);
            }
        }
    }

    /**
     * 获取连接
     *
     * @return
     */
    public static CloseableHttpClient getHttpClient() {
        return getHttpClient(userAgent);
    }

    /**
     * 获取连接
     *
     * @param userAgent
     * @return
     */
    private static CloseableHttpClient getHttpClient(String userAgent) {
        CloseableHttpClient httpclient = HttpClients.custom()
                .setConnectionManager(poolingHttpClientConnectionManager)
                .setDefaultRequestConfig(requestConfig)
                .setUserAgent(userAgent)
                .setRetryHandler(httpRequestRetryHandler)
                .build();
        return httpclient;
    }

    /**
     * 获取响应内容
     *
     * @param method
     * @param response
     * @return
     * @throws ClientProtocolException
     * @throws IOException
     */
    public static String getResponseContent(HttpRequestBase method, CloseableHttpResponse response) throws ClientProtocolException, IOException {
        String result = null;
        // 在返回的状态码不是200时，要主动关闭连接
        int status = response.getStatusLine().getStatusCode();
        if (status >= 200 && status < 300) {
            HttpEntity entity = response.getEntity();
            result = EntityUtils.toString(entity, "UTF-8");
        } else {
            method.abort();
            throw new ClientProtocolException("Unexpected response status: " + status);
        }
        return result;
    }
}
