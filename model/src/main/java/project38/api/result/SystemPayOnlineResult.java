package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2016/11/18.
 */
public class SystemPayOnlineResult extends CommonResult {
    private List<SystemPayOnline> systemPayOnlineList;

    public List<SystemPayOnline> getSystemPayOnlineList() {
        return systemPayOnlineList;
    }

    public void setSystemPayOnlineList(List<SystemPayOnline> systemPayOnlineList) {
        this.systemPayOnlineList = systemPayOnlineList;
    }

    public static class SystemPayOnline {
        /**
         * 编码
         */
        private Long id;
        /**
         * 支付网关
         */
        private String payUrl;
        /**
         * 最小金额
         */
        private BigDecimal minMoney;
        /**
         * 最大金额
         */
        private BigDecimal maxMoney;
        /**
         * 支付名称
         */
        private String name;

        /**
         * 支付描述
         */
        private String description;

        /**
         * 图片编码
         */
        private Long imageId;

        public String getPayUrl() {
            return payUrl;
        }

        public void setPayUrl(String payUrl) {
            this.payUrl = payUrl;
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

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getDescription() {
            return description;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public Long getImageId() {
            return imageId;
        }

        public void setImageId(Long imageId) {
            this.imageId = imageId;
        }
    }
}
