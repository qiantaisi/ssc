package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * 取款密码模型
 */
public class NeedWithdrawPasswdResult extends CommonResult {
    /**
     * 是否需要取款密码
     */
    private Boolean needWithdrawPasswd;

    public Boolean getNeedWithdrawPasswd() {
        return needWithdrawPasswd;
    }

    public void setNeedWithdrawPasswd(Boolean needWithdrawPasswd) {
        this.needWithdrawPasswd = needWithdrawPasswd;
    }
}
