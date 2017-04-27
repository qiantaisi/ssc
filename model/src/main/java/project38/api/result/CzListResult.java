package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2017/4/27 0027.
 */
public class CzListResult extends CommonResult {
    private List<Cz> czList;

    public List<Cz> getCzList() {
        return czList;
    }

    public void setCzList(List<Cz> czList) {
        this.czList = czList;
    }

    public static class Cz {
        /**
         * 1-转账，2-在线支付
         */
        private Integer type;

        /**
         * LOGO数据
         */
        private String imageData;

        /**
         * 名称
         */
        private String name;

        /**
         * 备注
         */
        private String remarks;

        /**
         * 最低金额
         */
        private BigDecimal minMoney;

        /**
         * 最大金额
         */
        private BigDecimal maxMoney;

        /**
         * 在线支付编码
         */
        private Long payOnlineId;

        /**
         * 支付网址
         */
        private String url;

        public Integer getType() {
            return type;
        }

        public void setType(Integer type) {
            this.type = type;
        }

        public String getImageData() {
            return imageData;
        }

        public void setImageData(String imageData) {
            this.imageData = imageData;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getRemarks() {
            return remarks;
        }

        public void setRemarks(String remarks) {
            this.remarks = remarks;
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

        public Long getPayOnlineId() {
            return payOnlineId;
        }

        public void setPayOnlineId(Long payOnlineId) {
            this.payOnlineId = payOnlineId;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }
    }
}