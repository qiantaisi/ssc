package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/19.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class UserWithdrawListResult extends PageResult {
    private BigDecimal pageMoney;

    private BigDecimal totalMoney;

    private List<UserWithdraw> userWithdrawList;

    public BigDecimal getPageMoney() {
        return pageMoney;
    }

    public void setPageMoney(BigDecimal pageMoney) {
        this.pageMoney = pageMoney;
    }

    public BigDecimal getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(BigDecimal totalMoney) {
        this.totalMoney = totalMoney;
    }

    public List<UserWithdraw> getUserWithdrawList() {
        return userWithdrawList;
    }

    public void setUserWithdrawList(List<UserWithdraw> userWithdrawList) {
        this.userWithdrawList = userWithdrawList;
    }

    public static class UserWithdraw {
        private String pk;
        /**
         * 存款编码
         */
        private String orderNo;

        /**
         * 时间
         */
        private Date time;

        /**
         * 存款渠道编码
         */
        private Integer type;

        /**
         * 存款金额
         */
        private BigDecimal money;

        /**
         * 备注
         */
        private String remarks;

        /**
         * 状态编码
         */
        private Integer status;

        public String getOrderNo() {
            return orderNo;
        }

        public void setOrderNo(String orderNo) {
            this.orderNo = orderNo;
        }

        public Date getTime() {
            return time;
        }

        public void setTime(Date time) {
            this.time = time;
        }

        public Integer getType() {
            return type;
        }

        public void setType(Integer type) {
            this.type = type;
        }

        public BigDecimal getMoney() {
            return money;
        }

        public void setMoney(BigDecimal money) {
            this.money = money;
        }

        public String getRemarks() {
            return remarks;
        }

        public void setRemarks(String remarks) {
            this.remarks = remarks;
        }

        public Integer getStatus() {
            return status;
        }

        public void setStatus(Integer status) {
            this.status = status;
        }

        public String getPk() {
            return pk;
        }

        public void setPk(String pk) {
            this.pk = pk;
        }
    }
}
