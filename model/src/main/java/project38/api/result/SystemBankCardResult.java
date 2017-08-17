package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/18.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class SystemBankCardResult extends CommonResult {
    private List<Bankcard> bankcardList;

    public List<Bankcard> getBankcardList() {
        return bankcardList;
    }

    public void setBankcardList(List<Bankcard> bankcardList) {
        this.bankcardList = bankcardList;
    }

    public static class Bankcard {
        /**
         * 编码
         */
        private Long id;
        /**
         * 银行账号
         */
        private String bankAccount;
        /**
         * 银行名称
         */
        private String bankName;
        /**
         * 开户姓名
         */
        private String userName;
        /**
         * 支行名称
         */
        private String subBankName;
        /**
         * 是否启用
         */
        private Boolean isEnable;
        /**
         * 修改时间
         */
        private Date updateTime;
        /**
         * 创建时间
         */
        private Date createTime;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }
        public String getBankAccount() {
            return bankAccount;
        }

        public void setBankAccount(String bankAccount) {
            this.bankAccount = bankAccount;
        }
        public String getBankName() {
            return bankName;
        }

        public void setBankName(String bankName) {
            this.bankName = bankName;
        }
        public String getUserName() {
            return userName;
        }

        public void setUserName(String userName) {
            this.userName = userName;
        }
        public String getSubBankName() {
            return subBankName;
        }

        public void setSubBankName(String subBankName) {
            this.subBankName = subBankName;
        }
        public Boolean getIsEnable() {
            return isEnable;
        }

        public void setIsEnable(Boolean isEnable) {
            this.isEnable = isEnable;
        }
        public Date getUpdateTime() {
            return updateTime;
        }

        public void setUpdateTime(Date updateTime) {
            this.updateTime = updateTime;
        }
        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }
    }
}
