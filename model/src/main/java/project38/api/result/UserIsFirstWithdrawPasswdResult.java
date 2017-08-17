package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

/**
 * 查询用户是否是第一次设置取款密码，（TRUE为第一次）
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class UserIsFirstWithdrawPasswdResult extends CommonResult{
    public Boolean userIsFirstWithdrawPasswd;

    public Boolean getUserIsFirstWithdrawPasswd() {
        return userIsFirstWithdrawPasswd;
    }

    public void setUserIsFirstWithdrawPasswd(Boolean userIsFirstWithdrawPasswd) {
        this.userIsFirstWithdrawPasswd = userIsFirstWithdrawPasswd;
    }
}
