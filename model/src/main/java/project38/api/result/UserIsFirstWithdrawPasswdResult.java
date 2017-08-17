package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * 查询用户是否是第一次设置取款密码，（TRUE为第一次）
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class UserIsFirstWithdrawPasswdResult extends CommonResult{
    public Boolean userIsFirstWithdrawPasswd;

    public Boolean getUserIsFirstWithdrawPasswd() {
        return userIsFirstWithdrawPasswd;
    }

    public void setUserIsFirstWithdrawPasswd(Boolean userIsFirstWithdrawPasswd) {
        this.userIsFirstWithdrawPasswd = userIsFirstWithdrawPasswd;
    }
}
