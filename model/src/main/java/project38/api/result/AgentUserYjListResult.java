package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/12/17.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class AgentUserYjListResult extends PageResult {
    private List<AgentUserYj> agentUserYjList;

    private BigDecimal pageEffectiveBetMoney;

    private BigDecimal totalEffectiveBetMoney;

    private BigDecimal pageYjMoney;

    private BigDecimal totalYjMoney;

    public List<AgentUserYj> getAgentUserYjList() {
        return agentUserYjList;
    }

    public void setAgentUserYjList(List<AgentUserYj> agentUserYjList) {
        this.agentUserYjList = agentUserYjList;
    }

    public BigDecimal getPageEffectiveBetMoney() {
        return pageEffectiveBetMoney;
    }

    public void setPageEffectiveBetMoney(BigDecimal pageEffectiveBetMoney) {
        this.pageEffectiveBetMoney = pageEffectiveBetMoney;
    }

    public BigDecimal getTotalEffectiveBetMoney() {
        return totalEffectiveBetMoney;
    }

    public void setTotalEffectiveBetMoney(BigDecimal totalEffectiveBetMoney) {
        this.totalEffectiveBetMoney = totalEffectiveBetMoney;
    }

    public BigDecimal getPageYjMoney() {
        return pageYjMoney;
    }

    public void setPageYjMoney(BigDecimal pageYjMoney) {
        this.pageYjMoney = pageYjMoney;
    }

    public BigDecimal getTotalYjMoney() {
        return totalYjMoney;
    }

    public void setTotalYjMoney(BigDecimal totalYjMoney) {
        this.totalYjMoney = totalYjMoney;
    }

    public static class AgentUserYj {
        private BigDecimal fandian;

        private BigDecimal betMoney;

        private Long userId;

        private BigDecimal yjMoney;

        private Date createTime;

        private String userAccount;

        private Integer type;

        private String orderNo;

        public BigDecimal getFandian() {
            return fandian;
        }

        public void setFandian(BigDecimal fandian) {
            this.fandian = fandian;
        }

        public BigDecimal getBetMoney() {
            return betMoney;
        }

        public void setBetMoney(BigDecimal betMoney) {
            this.betMoney = betMoney;
        }

        public Long getUserId() {
            return userId;
        }

        public void setUserId(Long userId) {
            this.userId = userId;
        }

        public BigDecimal getYjMoney() {
            return yjMoney;
        }

        public void setYjMoney(BigDecimal yjMoney) {
            this.yjMoney = yjMoney;
        }

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public String getUserAccount() {
            return userAccount;
        }

        public void setUserAccount(String userAccount) {
            this.userAccount = userAccount;
        }

        public Integer getType() {
            return type;
        }

        public void setType(Integer type) {
            this.type = type;
        }

        public String getOrderNo() {
            return orderNo;
        }

        public void setOrderNo(String orderNo) {
            this.orderNo = orderNo;
        }
    }
}
