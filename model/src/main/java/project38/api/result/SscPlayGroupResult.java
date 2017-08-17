package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/3/29.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class SscPlayGroupResult extends CommonResult {
    /**
     * 彩种编码
     */
    private Long id;
    /**
     * 彩种名称
     */
    private String name;
    /**
     * 是否启用
     */
    private Boolean isEnable;
    /**
     * 彩种英文缩写
     */
    private String shortName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getEnable() {
        return isEnable;
    }

    public void setEnable(Boolean enable) {
        isEnable = enable;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }
}
