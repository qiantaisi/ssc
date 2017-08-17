package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2016/11/18.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class UserBankCardResult extends CommonResult {
    private List<UserBankCard> userBankCardList;

    public List<UserBankCard> getUserBankCardList() {
        return userBankCardList;
    }

    public void setUserBankCardList(List<UserBankCard> userBankCardList) {
        this.userBankCardList = userBankCardList;
    }

    public static class UserBankCard {
        /**
         * 编码
         */
        private Long id;
        /**
         * 银行名称
         */
        private String bankName;
        /**
         * 支行名称
         */
        private String subBankName;
        /**
         * 用户名
         */
        private String userName;
        /**
         * 银行账号
         */
        private String bankAccount;
        /**
         * 是否默认
         */
        private Boolean isDefault;
        /**
         * 开户地
         */
        private String location;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getBankName() {
            return bankName;
        }

        public void setBankName(String bankName) {
            this.bankName = bankName;
        }

        public String getSubBankName() {
            return subBankName;
        }

        public void setSubBankName(String subBankName) {
            this.subBankName = subBankName;
        }

        public String getUserName() {
            return userName;
        }

        public void setUserName(String userName) {
            this.userName = userName;
        }

        public String getBankAccount() {
            return bankAccount;
        }

        public void setBankAccount(String bankAccount) {
            this.bankAccount = bankAccount;
        }

        public Boolean getDefault() {
            return isDefault;
        }

        public void setDefault(Boolean aDefault) {
            isDefault = aDefault;
        }

        public String getLocation() {
            return location;
        }

        public void setLocation(String location) {
            this.location = location;
        }
    }
}
