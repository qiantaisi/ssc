package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/5/9 0009.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
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
