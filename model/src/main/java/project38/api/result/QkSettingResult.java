package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;

/**
 * Created by Administrator on 2017/1/15.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class QkSettingResult extends CommonResult {
    private BigDecimal minMoney;

    private BigDecimal maxMoney;

    public BigDecimal getMinMoney() {
        return minMoney;
    }

    public void setMinMoney(BigDecimal minMoney) {
        this.minMoney = minMoney;
    }

    public BigDecimal getMaxMoney() {
        return maxMoney;
    }

    public void setMaxMoney(BigDecimal maxMoney) {
        this.maxMoney = maxMoney;
    }
}
