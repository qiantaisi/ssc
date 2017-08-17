package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.math.BigDecimal;

/**
 * Created by Administrator on 2016/12/18.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class AgentReportResult extends CommonResult {
    @Deprecated
    private Integer registerUserCount;

    /**
     * 下属会员数
     */
    private Long userCount;

    private Long depositCount;

    private Long withdrawCount;

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
    private Long effectiveUserCount;

    public Integer getRegisterUserCount() {
        return registerUserCount;
    }

    public void setRegisterUserCount(Integer registerUserCount) {
        this.registerUserCount = registerUserCount;
    }

    public Long getUserCount() {
        return userCount;
    }

    public void setUserCount(Long userCount) {
        this.userCount = userCount;
    }

    public Long getDepositCount() {
        return depositCount;
    }

    public void setDepositCount(Long depositCount) {
        this.depositCount = depositCount;
    }

    public Long getWithdrawCount() {
        return withdrawCount;
    }

    public void setWithdrawCount(Long withdrawCount) {
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

    public Long getEffectiveUserCount() {
        return effectiveUserCount;
    }

    public void setEffectiveUserCount(Long effectiveUserCount) {
        this.effectiveUserCount = effectiveUserCount;
    }
}
