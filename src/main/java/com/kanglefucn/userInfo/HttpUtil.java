package com.kanglefucn.userInfo;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.MultiThreadedHttpConnectionManager;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.IOException;
import java.util.Map;

public class HttpUtil {

    private static Log log = LogFactory.getLog(HttpUtil.class);

    /**
     * 定义编码格式 UTF-8
     */
    public static final String URL_PARAM_DECODECHARSET_UTF8 = "utf-8";

    /**
     * 定义编码格式 GBK
     */
    public static final String URL_PARAM_DECODECHARSET_GBK = "GBK";

    private static final String URL_PARAM_CONNECT_FLAG = "&";

    private static final String EMPTY = "";

    private static MultiThreadedHttpConnectionManager connectionManager = null;

    private static int connectionTimeOut = 250000;

    private static int socketTimeOut = 250000;

    private static int maxConnectionPerHost = 20;

    private static int maxTotalConnections = 20;

    private static HttpClient client;

    static {
        connectionManager = new MultiThreadedHttpConnectionManager();
        connectionManager.getParams().setConnectionTimeout(connectionTimeOut);
        connectionManager.getParams().setSoTimeout(socketTimeOut);
        connectionManager.getParams().setDefaultMaxConnectionsPerHost(maxConnectionPerHost);
        connectionManager.getParams().setMaxTotalConnections(maxTotalConnections);
        client = new HttpClient(connectionManager);
    }

    /**
     * POST方式提交数据
     *
     * @param url    待请求的URL
     * @param params 要提交的数据
     * @param enc    编码
     * @return 响应结果
     */
    public static String URLPost(String url, Map<String, String> params, String enc) {
        String response = EMPTY;
        PostMethod postMethod = null;
        try {
            postMethod = new PostMethod(url);
            postMethod.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=" + enc);
            //将表表单的值放入postMethod中
            String value = params.get("fileName");
            postMethod.addParameter("fileName", value);
            String fileByte = params.get("fileByte");
            postMethod.addParameter("fileByte", fileByte);
            //执行postMethod
            int statusCode = client.executeMethod(postMethod);
            System.out.print(statusCode + ".............");
            if (statusCode == HttpStatus.SC_OK) {
                response = postMethod.getResponseBodyAsString();
            } else {
                log.error("响应状态码 = " + postMethod.getStatusCode());
                response = postMethod.getResponseBodyAsString();
            }
        } catch (HttpException e) {
            log.error("发生致命的异常，可能是协议不对或者返回的内容有问题", e);
            e.printStackTrace();
        } catch (IOException e) {
            log.error("发生网络异常", e);
            e.printStackTrace();
        } finally {
            if (postMethod != null) {
                postMethod.releaseConnection();
                postMethod = null;
            }
        }
        return response;
    }
}