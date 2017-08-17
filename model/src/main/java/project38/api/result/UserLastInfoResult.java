package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by Administrator on 2016/11/15.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class UserLastInfoResult extends CommonResult {
    /**
     * 游戏平台编码
     */
    private Long lastGameId;
    /**
     * 游戏玩法编码
     */
    private Long lastPlayId;

    /**
     * 上次登录时间
     */
    private Date lastLoginTime;

    /**
     * 上周有效投注
     */
    private BigDecimal lastWeekValidBetMoney;

    /**
     * 本周有效投注
     */
    private BigDecimal thisWeekValidBetMoney;

    /**
     * 上次存款时间
     */
    private Date lastDepositTime;

    /**
     * 上次取款时间
     */
    private Date lastWithdrawTime;

    /**
     * 上次登录IP
     */
    private String lastLoginIp;

    public Long getLastGameId() {
        return lastGameId;
    }

    public void setLastGameId(Long lastGameId) {
        this.lastGameId = lastGameId;
    }

    public Long getLastPlayId() {
        return lastPlayId;
    }

    public void setLastPlayId(Long lastPlayId) {
        this.lastPlayId = lastPlayId;
    }

    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    public BigDecimal getLastWeekValidBetMoney() {
        return lastWeekValidBetMoney;
    }

    public void setLastWeekValidBetMoney(BigDecimal lastWeekValidBetMoney) {
        this.lastWeekValidBetMoney = lastWeekValidBetMoney;
    }

    public BigDecimal getThisWeekValidBetMoney() {
        return thisWeekValidBetMoney;
    }

    public void setThisWeekValidBetMoney(BigDecimal thisWeekValidBetMoney) {
        this.thisWeekValidBetMoney = thisWeekValidBetMoney;
    }

    public Date getLastDepositTime() {
        return lastDepositTime;
    }

    public void setLastDepositTime(Date lastDepositTime) {
        this.lastDepositTime = lastDepositTime;
    }

    public Date getLastWithdrawTime() {
        return lastWithdrawTime;
    }

    public void setLastWithdrawTime(Date lastWithdrawTime) {
        this.lastWithdrawTime = lastWithdrawTime;
    }

    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }
}
