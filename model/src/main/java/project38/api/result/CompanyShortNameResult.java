package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/5/9 0009.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class CompanyShortNameResult extends CommonResult {
    /**
     * 公司标志
     */
    private String companyShortName;

    public String getCompanyShortName() {
        return companyShortName;
    }

    public void setCompanyShortName(String companyShortName) {
        this.companyShortName = companyShortName;
    }
}
