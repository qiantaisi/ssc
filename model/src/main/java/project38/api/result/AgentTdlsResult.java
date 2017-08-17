package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 团队流水
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class AgentTdlsResult extends PageResult {
    private List<AgentTdls> agentTdlsList;

    public List<AgentTdls> getAgentTdlsList() {
        return agentTdlsList;
    }

    public void setAgentTdlsList(List<AgentTdls> agentTdlsList) {
        this.agentTdlsList = agentTdlsList;
    }

    public static class AgentTdls {
        /**
         * 编码
         */
        private String pk;
        /**
         * 用户编码
         */
        private Long userId;
        /**
         * 资金操作类型
         */
        private Integer coinOperType;
        /**
         * 创建时间
         */
        private Date createTime;
        /**
         * 操作金额
         */
        private BigDecimal money;
        /**
         * 操作后余额
         */
        private BigDecimal leftCoin;
        /**
         *
         */
        private String remarks;
        /**
         *
         */
        private String orderNo;
        /**
         * 会员账号
         */
        private String account;

        public String getPk() {
            return pk;
        }

        public void setPk(String pk) {
            this.pk = pk;
        }

        public Long getUserId() {
            return userId;
        }

        public void setUserId(Long userId) {
            this.userId = userId;
        }

        public Integer getCoinOperType() {
            return coinOperType;
        }

        public void setCoinOperType(Integer coinOperType) {
            this.coinOperType = coinOperType;
        }

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public BigDecimal getMoney() {
            return money;
        }

        public void setMoney(BigDecimal money) {
            this.money = money;
        }

        public BigDecimal getLeftCoin() {
            return leftCoin;
        }

        public void setLeftCoin(BigDecimal leftCoin) {
            this.leftCoin = leftCoin;
        }

        public String getRemarks() {
            return remarks;
        }

        public void setRemarks(String remarks) {
            this.remarks = remarks;
        }

        public String getOrderNo() {
            return orderNo;
        }

        public void setOrderNo(String orderNo) {
            this.orderNo = orderNo;
        }

        public String getAccount() {
            return account;
        }

        public void setAccount(String account) {
            this.account = account;
        }
    }
}
