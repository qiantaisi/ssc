package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/12/24.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class LogUserCoinResult extends PageResult {
    private List<LogUserCoin> logUserCoinList;

    public List<LogUserCoin> getLogUserCoinList() {
        return logUserCoinList;
    }

    public void setLogUserCoinList(List<LogUserCoin> logUserCoinList) {
        this.logUserCoinList = logUserCoinList;
    }

    public static class LogUserCoin {
        /**
         * 编码
         */
        private String pk;
        /**
         * 时间
         */
        private Date createTime;

        /**
         * 资金类型
         */
        private Integer coinOperType;

        /**
         * 金额
         */
        private BigDecimal money;

        /**
         * 余额
         */
        private BigDecimal leftCoin;
        /**
         * 备注
         */
        private String remarks;

        public String getRemarks() {
            return remarks;
        }

        public void setRemarks(String remarks) {
            this.remarks = remarks;
        }

        public String getPk() {
            return pk;
        }

        public void setPk(String pk) {
            this.pk = pk;
        }

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public Integer getCoinOperType() {
            return coinOperType;
        }

        public void setCoinOperType(Integer coinOperType) {
            this.coinOperType = coinOperType;
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
    }
}
