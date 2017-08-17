package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * 团队报表
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class AgentUserReportResult extends PageResult {
    private List<AgentUserReport> agentUserReportList;

    public List<AgentUserReport> getAgentUserReportList() {
        return agentUserReportList;
    }

    public void setAgentUserReportList(List<AgentUserReport> agentUserReportList) {
        this.agentUserReportList = agentUserReportList;
    }

    public static class AgentUserReport {
        /**
         * 会员账号
         */
        private String account;

        /**
         * 充值金额
         */
        private BigDecimal totalDepositMoney;

        /**
         * 提现金额
         */
        private BigDecimal totalWithdrawMoney;

        /**
         * 游戏盈利金额
         */
        private BigDecimal totalGameProfitMoney;

        /**
         * 活动金额
         */
        private BigDecimal totalActivityMoney;

        /**
         * 彩票返水金额
         */
        private BigDecimal totalSscFanshuiMoney;

        /**
         * 佣金
         */
        private BigDecimal totalYjMoney;

        public String getAccount() {
            return account;
        }

        public void setAccount(String account) {
            this.account = account;
        }

        public BigDecimal getTotalDepositMoney() {
            return totalDepositMoney;
        }

        public void setTotalDepositMoney(BigDecimal totalDepositMoney) {
            this.totalDepositMoney = totalDepositMoney;
        }

        public BigDecimal getTotalWithdrawMoney() {
            return totalWithdrawMoney;
        }

        public void setTotalWithdrawMoney(BigDecimal totalWithdrawMoney) {
            this.totalWithdrawMoney = totalWithdrawMoney;
        }

        public BigDecimal getTotalGameProfitMoney() {
            return totalGameProfitMoney;
        }

        public void setTotalGameProfitMoney(BigDecimal totalGameProfitMoney) {
            this.totalGameProfitMoney = totalGameProfitMoney;
        }

        public BigDecimal getTotalActivityMoney() {
            return totalActivityMoney;
        }

        public void setTotalActivityMoney(BigDecimal totalActivityMoney) {
            this.totalActivityMoney = totalActivityMoney;
        }

        public BigDecimal getTotalSscFanshuiMoney() {
            return totalSscFanshuiMoney;
        }

        public void setTotalSscFanshuiMoney(BigDecimal totalSscFanshuiMoney) {
            this.totalSscFanshuiMoney = totalSscFanshuiMoney;
        }

        public BigDecimal getTotalYjMoney() {
            return totalYjMoney;
        }

        public void setTotalYjMoney(BigDecimal totalYjMoney) {
            this.totalYjMoney = totalYjMoney;
        }
    }
}
