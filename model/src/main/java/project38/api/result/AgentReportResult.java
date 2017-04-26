package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;

/**
 * Created by Administrator on 2016/12/18.
 */
public class AgentReportResult extends CommonResult {
    @Deprecated
    private Integer registerUserCount;

    /**
     * 下属会员数
     */
    private Integer userCount;

    private Integer depositCount;

    private Integer withdrawCount;

    private BigDecimal sscYjTotalMoney;

    private BigDecimal depositMoney;

    private BigDecimal withdrawMoney;

    /**
     * 有效投注
     */
    private BigDecimal effectiveMoney;
    /**
     * 有效会员
     */
    private Integer effectiveUserCount;

    public Integer getEffectiveUserCount() {
        return effectiveUserCount;
    }

    public void setEffectiveUserCount(Integer effectiveUserCount) {
        this.effectiveUserCount = effectiveUserCount;
    }

    public Integer getUserCount() {
        return userCount;
    }

    public void setUserCount(Integer userCount) {
        this.userCount = userCount;
    }

    public Integer getRegisterUserCount() {
        return registerUserCount;
    }

    public void setRegisterUserCount(Integer registerUserCount) {
        this.registerUserCount = registerUserCount;
    }

    public Integer getDepositCount() {
        return depositCount;
    }

    public void setDepositCount(Integer depositCount) {
        this.depositCount = depositCount;
    }

    public Integer getWithdrawCount() {
        return withdrawCount;
    }

    public void setWithdrawCount(Integer withdrawCount) {
        this.withdrawCount = withdrawCount;
    }

    public BigDecimal getSscYjTotalMoney() {
        return sscYjTotalMoney;
    }

    public void setSscYjTotalMoney(BigDecimal sscYjTotalMoney) {
        this.sscYjTotalMoney = sscYjTotalMoney;
    }

    public BigDecimal getDepositMoney() {
        return depositMoney;
    }

    public void setDepositMoney(BigDecimal depositMoney) {
        this.depositMoney = depositMoney;
    }

    public BigDecimal getWithdrawMoney() {
        return withdrawMoney;
    }

    public void setWithdrawMoney(BigDecimal withdrawMoney) {
        this.withdrawMoney = withdrawMoney;
    }

    public BigDecimal getEffectiveMoney() {
        return effectiveMoney;
    }

    public void setEffectiveMoney(BigDecimal effectiveMoney) {
        this.effectiveMoney = effectiveMoney;
    }
}
