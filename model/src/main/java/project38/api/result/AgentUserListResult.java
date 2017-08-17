package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/12/17.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class AgentUserListResult extends PageResult {
    private List<AgentUser> agentUserList;

    public List<AgentUser> getAgentUserList() {
        return agentUserList;
    }

    public void setAgentUserList(List<AgentUser> agentUserList) {
        this.agentUserList = agentUserList;
    }

    public static class AgentUser {
        private Long id;

        private String account;

        private BigDecimal balance;

        private Date registerTime;

        private BigDecimal winOrLose;

        private Boolean isEnable;

        private BigDecimal points;

        /**
         * 返点总额
         */
        private BigDecimal totalFandianMoney;

        /**
         * 有效投注
         */
        private BigDecimal totalEffectiveBetMoney;

        public BigDecimal getPoints() {
            return points;
        }

        public void setPoints(BigDecimal points) {
            this.points = points;
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getAccount() {
            return account;
        }

        public void setAccount(String account) {
            this.account = account;
        }

        public BigDecimal getBalance() {
            return balance;
        }

        public void setBalance(BigDecimal balance) {
            this.balance = balance;
        }

        public Date getRegisterTime() {
            return registerTime;
        }

        public void setRegisterTime(Date registerTime) {
            this.registerTime = registerTime;
        }

        public BigDecimal getWinOrLose() {
            return winOrLose;
        }

        public void setWinOrLose(BigDecimal winOrLose) {
            this.winOrLose = winOrLose;
        }

        public Boolean getEnable() {
            return isEnable;
        }

        public void setEnable(Boolean enable) {
            isEnable = enable;
        }


        public BigDecimal getTotalFandianMoney() {
            return totalFandianMoney;
        }

        public void setTotalFandianMoney(BigDecimal totalFandianMoney) {
            this.totalFandianMoney = totalFandianMoney;
        }

        public BigDecimal getTotalEffectiveBetMoney() {
            return totalEffectiveBetMoney;
        }

        public void setTotalEffectiveBetMoney(BigDecimal totalEffectiveBetMoney) {
            this.totalEffectiveBetMoney = totalEffectiveBetMoney;
        }
    }
}
