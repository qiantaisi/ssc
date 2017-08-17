package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/12/31.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class LayerInfoResult extends CommonResult {
    /**
     *
     */
    private Boolean canDeposit;
    /**
     *
     */
    private Boolean canWithdraw;
    /**
     * 是否可以修改资料
     */
    private Boolean canEditInfo;
    /**
     *
     */
    private Boolean canEditUserBank;
    /**
     *
     */
    private Boolean canEditPassword;
    /**
     *
     */
    private Boolean canAgent;
    /**
     *
     */
    private Boolean canSafeinfo;

    public Boolean getCanDeposit() {
        return canDeposit;
    }

    public void setCanDeposit(Boolean canDeposit) {
        this.canDeposit = canDeposit;
    }

    public Boolean getCanWithdraw() {
        return canWithdraw;
    }

    public void setCanWithdraw(Boolean canWithdraw) {
        this.canWithdraw = canWithdraw;
    }

    public Boolean getCanEditInfo() {
        return canEditInfo;
    }

    public void setCanEditInfo(Boolean canEditInfo) {
        this.canEditInfo = canEditInfo;
    }

    public Boolean getCanEditUserBank() {
        return canEditUserBank;
    }

    public void setCanEditUserBank(Boolean canEditUserBank) {
        this.canEditUserBank = canEditUserBank;
    }

    public Boolean getCanEditPassword() {
        return canEditPassword;
    }

    public void setCanEditPassword(Boolean canEditPassword) {
        this.canEditPassword = canEditPassword;
    }

    public Boolean getCanAgent() {
        return canAgent;
    }

    public void setCanAgent(Boolean canAgent) {
        this.canAgent = canAgent;
    }

    public Boolean getCanSafeinfo() {
        return canSafeinfo;
    }

    public void setCanSafeinfo(Boolean canSafeinfo) {
        this.canSafeinfo = canSafeinfo;
    }
}
