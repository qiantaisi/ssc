package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * 收款信息
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class SkInfoResult extends CommonResult {

    private List<SkInfo> skInfoList;

    public List<SkInfo> getSkInfoList() {
        return skInfoList;
    }

    public void setSkInfoList(List<SkInfo> skInfoList) {
        this.skInfoList = skInfoList;
    }

    public static class SkInfo {
        /**
         * 编码
         */
        private Long id;
        /**
         * 收款人姓名
         */
        private String username;
        /**
         * 收款账号
         */
        private String account;
        /**
         * 二维码编码
         */
        private Long imageId;
        /**
         * 最低金额
         */
        private BigDecimal minMoney;
        /**
         * 最高金额
         */
        private BigDecimal maxMoney;

        /**
         * 描述
         */
        private String description;

        /**
         * 二维码图片BASE64数据
         */
        private String imageData;

        public String getImageData() {
            return imageData;
        }

        public void setImageData(String imageData) {
            this.imageData = imageData;
        }

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getAccount() {
            return account;
        }

        public void setAccount(String account) {
            this.account = account;
        }

        public Long getImageId() {
            return imageId;
        }

        public void setImageId(Long imageId) {
            this.imageId = imageId;
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public BigDecimal getMinMoney() {
            return minMoney;
        }

        public void setMinMoney(BigDecimal minMoney) {
            this.minMoney = minMoney;
        }

        public BigDecimal getMaxMoney() {
            return maxMoney;
        }

        public void setMaxMoney(BigDecimal maxMoney) {
            this.maxMoney = maxMoney;
        }

        public String getDescription() {
            return description;
        }

        public void setDescription(String description) {
            this.description = description;
        }
    }
}
