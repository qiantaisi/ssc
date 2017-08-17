package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/7/27.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class RegisterResult extends CommonResult {
    /**
     * 是否需要qq必填
     */
    private Boolean needRequiredQq;
    /**
     * 是否需要email必填
     */
    private Boolean needRequiredEmail;
    /**
     * 是否需要电话必填
     */
    private Boolean needRequredPhone;

    /**
     * qq校验
     */
    private Boolean checkQq;

    /**
     * email校验
     */
    private Boolean checkEmail;

    /**
     * 手机号校验
     */
    private Boolean checkPhone;

    public Boolean getCheckQq() {
        return checkQq;
    }

    public void setCheckQq(Boolean checkQq) {
        this.checkQq = checkQq;
    }

    public Boolean getCheckEmail() {
        return checkEmail;
    }

    public void setCheckEmail(Boolean checkEmail) {
        this.checkEmail = checkEmail;
    }

    public Boolean getCheckPhone() {
        return checkPhone;
    }

    public void setCheckPhone(Boolean checkPhone) {
        this.checkPhone = checkPhone;
    }

    public Boolean getNeedRequiredQq() {
        return needRequiredQq;
    }

    public Boolean getNeedRequredPhone() {
        return needRequredPhone;
    }

    public void setNeedRequredPhone(Boolean needRequredPhone) {
        this.needRequredPhone = needRequredPhone;
    }

    public void setNeedRequiredQq(Boolean needRequiredQq) {
        this.needRequiredQq = needRequiredQq;
    }

    public Boolean getNeedRequiredEmail() {
        return needRequiredEmail;
    }

    public void setNeedRequiredEmail(Boolean needRequiredEmail) {
        this.needRequiredEmail = needRequiredEmail;
    }
}
