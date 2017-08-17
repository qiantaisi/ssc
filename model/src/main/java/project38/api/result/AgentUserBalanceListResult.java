package project38.api.result;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/12/17.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class AgentUserBalanceListResult extends PageResult {
    private List<AgentUser> agentUserList;

    private BigDecimal pageBalance;

    private BigDecimal totalBalance;

    private BigDecimal pagePoints;

    private BigDecimal totalPoints;

    public BigDecimal getPageBalance() {
        return pageBalance;
    }

    public void setPageBalance(BigDecimal pageBalance) {
        this.pageBalance = pageBalance;
    }

    public BigDecimal getTotalBalance() {
        return totalBalance;
    }

    public void setTotalBalance(BigDecimal totalBalance) {
        this.totalBalance = totalBalance;
    }

    public BigDecimal getPagePoints() {
        return pagePoints;
    }

    public void setPagePoints(BigDecimal pagePoints) {
        this.pagePoints = pagePoints;
    }

    public BigDecimal getTotalPoints() {
        return totalPoints;
    }

    public void setTotalPoints(BigDecimal totalPoints) {
        this.totalPoints = totalPoints;
    }

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

        public BigDecimal getPoints() {
            return points;
        }

        public void setPoints(BigDecimal points) {
            this.points = points;
        }
    }
}
