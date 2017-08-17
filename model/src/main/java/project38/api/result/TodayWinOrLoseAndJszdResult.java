package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;

/**
 * 今日输赢+即时注单金额
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class TodayWinOrLoseAndJszdResult extends CommonResult {
    /**
     * 今日输赢
     */
    private BigDecimal todayWinOrLose;

    /**
     * 即时注单金额
     */
    private BigDecimal jszdMoney;

    public BigDecimal getTodayWinOrLose() {
        return todayWinOrLose;
    }

    public void setTodayWinOrLose(BigDecimal todayWinOrLose) {
        this.todayWinOrLose = todayWinOrLose;
    }

    public BigDecimal getJszdMoney() {
        return jszdMoney;
    }

    public void setJszdMoney(BigDecimal jszdMoney) {
        this.jszdMoney = jszdMoney;
    }
}
