package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * APP更新数据
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class AppGenxinResult extends CommonResult {
    /**
     * 版本号
     */
    private String version;

    /**
     * 类型
     */
    private String type;

    /**
     * 是否强制
     */
    private boolean isForce;

    /**
     * 备注
     */
    private String remarks;

    /**
     * 下载URL
     */
    private String url;

    public String getVersion() { return version; }

    public void setVersion(String version) { this.version = version; }

    public String getType() { return type; }

    public void setType(String type) { this.type = type; }

    public boolean isForce() { return isForce; }

    public void setIsForce(boolean isForce) { isForce = isForce; }

    public String getRemarks() { return remarks; }

    public void setRemarks(String remarks) { this.remarks = remarks; }

    public String getUrl() { return url; }

    public void setUrl(String url) { this.url = url; }

}
