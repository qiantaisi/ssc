package project38.api.result;


import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/8/11.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class DownloadManagementResult extends CommonResult {

    /**
     * 网站标题
     */
    private String webTitle;

    /**
     * 网站关键词
     */
    private String webKeyword;

    /**
     * 网站描述
     */
    private String webDscp;

    /**
     * 标语
     */
    private String webSlogan;

    /**
     * 活动语
     */
    private String webMessage;

    /**
     * 底部信息
     */
    private String webBottom;

    /**
     * app名称
     */
    private String appName;

    /**
     * IOS地址
     */
    private String iosURL;

    /**
     * IOS版本
     */
    private String iosVersion;

    /**
     * 安卓地址
     */
    private String androidURL;

    /**
     * 安卓版本
     */
    private String androidVersion;

    /**
     * logo
     */
    private String logoImageId;

    private String logoImageData;

    /**
     * 手机图标
     */
    private String phoneIconId;

    private String phoneIconData;

    /**
     * 启动图标
     */
    private String startIconId;

    private String startIconData;

    /**
     * ios二维码
     */
    private String iosQRCodeImageId;

    private String iosQRCodeImageData;

    /**
     * android二维码
     */
    private String androidQRCodeImageId;

    private String androidQRCodeImageData;

    public String getWebTitle() {
        return webTitle;
    }

    public void setWebTitle(String webTitle) {
        this.webTitle = webTitle;
    }

    public String getWebKeyword() {
        return webKeyword;
    }

    public void setWebKeyword(String webKeyword) {
        this.webKeyword = webKeyword;
    }

    public String getWebDscp() {
        return webDscp;
    }

    public void setWebDscp(String webDscp) {
        this.webDscp = webDscp;
    }

    public String getWebSlogan() {
        return webSlogan;
    }

    public void setWebSlogan(String webSlogan) {
        this.webSlogan = webSlogan;
    }

    public String getWebMessage() {
        return webMessage;
    }

    public void setWebMessage(String webMessage) {
        this.webMessage = webMessage;
    }

    public String getWebBottom() {
        return webBottom;
    }

    public void setWebBottom(String webBottom) {
        this.webBottom = webBottom;
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getIosURL() {
        return iosURL;
    }

    public void setIosURL(String iosURL) {
        this.iosURL = iosURL;
    }

    public String getIosVersion() {
        return iosVersion;
    }

    public void setIosVersion(String iosVersion) {
        this.iosVersion = iosVersion;
    }

    public String getAndroidURL() {
        return androidURL;
    }

    public void setAndroidURL(String androidURL) {
        this.androidURL = androidURL;
    }

    public String getAndroidVersion() {
        return androidVersion;
    }

    public void setAndroidVersion(String androidVersion) {
        this.androidVersion = androidVersion;
    }

    public String getLogoImageId() {
        return logoImageId;
    }

    public void setLogoImageId(String logoImageId) {
        this.logoImageId = logoImageId;
    }

    public String getLogoImageData() {
        return logoImageData;
    }

    public void setLogoImageData(String logoImageData) {
        this.logoImageData = logoImageData;
    }

    public String getPhoneIconId() {
        return phoneIconId;
    }

    public void setPhoneIconId(String phoneIconId) {
        this.phoneIconId = phoneIconId;
    }

    public String getPhoneIconData() {
        return phoneIconData;
    }

    public void setPhoneIconData(String phoneIconData) {
        this.phoneIconData = phoneIconData;
    }

    public String getStartIconId() {
        return startIconId;
    }

    public void setStartIconId(String startIconId) {
        this.startIconId = startIconId;
    }

    public String getStartIconData() {
        return startIconData;
    }

    public void setStartIconData(String startIconData) {
        this.startIconData = startIconData;
    }

    public String getIosQRCodeImageId() {
        return iosQRCodeImageId;
    }

    public void setIosQRCodeImageId(String iosQRCodeImageId) {
        this.iosQRCodeImageId = iosQRCodeImageId;
    }

    public String getIosQRCodeImageData() {
        return iosQRCodeImageData;
    }

    public void setIosQRCodeImageData(String iosQRCodeImageData) {
        this.iosQRCodeImageData = iosQRCodeImageData;
    }

    public String getAndroidQRCodeImageId() {
        return androidQRCodeImageId;
    }

    public void setAndroidQRCodeImageId(String androidQRCodeImageId) {
        this.androidQRCodeImageId = androidQRCodeImageId;
    }

    public String getAndroidQRCodeImageData() {
        return androidQRCodeImageData;
    }

    public void setAndroidQRCodeImageData(String androidQRCodeImageData) {
        this.androidQRCodeImageData = androidQRCodeImageData;
    }
}
