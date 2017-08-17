package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/12/4.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class WebInfoResult extends CommonResult {
    /**
     * 网站标题
     */
    private String webTitle;

    /**
     * 网站关键词
     */
    private String webKeywords;

    /**
     * 网站描述
     */
    private String webDescription;

    /**
     * 统计代码
     */
    private String webTjjs;

    /**
     * 底部信息
     */
    private String webDbxx;
    /**
     * 网站名称
     */
    private String webName;

    /**
     * 公司名称
     */
    private String companyShortName;

    public String getWebName() {
        return webName;
    }

    public void setWebName(String webName) {
        this.webName = webName;
    }

    public String getWebDbxx() {
        return webDbxx;
    }

    public void setWebDbxx(String webDbxx) {
        this.webDbxx = webDbxx;
    }

    public String getWebTitle() {
        return webTitle;
    }

    public void setWebTitle(String webTitle) {
        this.webTitle = webTitle;
    }

    public String getWebKeywords() {
        return webKeywords;
    }

    public void setWebKeywords(String webKeywords) {
        this.webKeywords = webKeywords;
    }

    public String getWebDescription() {
        return webDescription;
    }

    public void setWebDescription(String webDescription) {
        this.webDescription = webDescription;
    }

    public String getWebTjjs() {
        return webTjjs;
    }

    public void setWebTjjs(String webTjjs) {
        this.webTjjs = webTjjs;
    }

    public String getCompanyShortName() {
        return companyShortName;
    }

    public void setCompanyShortName(String companyShortName) {
        this.companyShortName = companyShortName;
    }
}
