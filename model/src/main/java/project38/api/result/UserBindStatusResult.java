package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/11/15.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class UserBindStatusResult extends CommonResult {
    /**
     * 是否绑定邮箱
     */
    private Boolean isBindEmail;

    /**
     * 是否绑定手机号
     */
    private Boolean isBindTelephone;

    /**
     * 是否绑定银行卡
     */
    private Boolean isBindBankcard;

    public Boolean getIsBindEmail() {
        return isBindEmail;
    }

    public void setIsBindEmail(Boolean bindEmail) {
        isBindEmail = bindEmail;
    }

    public Boolean getIsBindTelephone() {
        return isBindTelephone;
    }

    public void setIsBindTelephone(Boolean bindTelephone) {
        isBindTelephone = bindTelephone;
    }

    public Boolean getIsBindBankcard() {
        return isBindBankcard;
    }

    public void setIsBindBankcard(Boolean bindBankcard) {
        isBindBankcard = bindBankcard;
    }
}
