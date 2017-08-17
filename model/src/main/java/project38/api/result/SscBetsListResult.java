package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/19.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class SscBetsListResult extends PageResult {
    private BigDecimal totalMoney;

    private BigDecimal pageMoney;

    private BigDecimal totalWinOrLoseMoney;

    private BigDecimal pageWinOrLoseMoney;

    private List<SscBets> sscBetsList;

    public List<SscBets> getSscBetsList() {
        return sscBetsList;
    }

    public void setSscBetsList(List<SscBets> sscBetsList) {
        this.sscBetsList = sscBetsList;
    }

    public BigDecimal getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(BigDecimal totalMoney) {
        this.totalMoney = totalMoney;
    }

    public BigDecimal getPageMoney() {
        return pageMoney;
    }

    public void setPageMoney(BigDecimal pageMoney) {
        this.pageMoney = pageMoney;
    }

    public BigDecimal getTotalWinOrLoseMoney() {
        return totalWinOrLoseMoney;
    }

    public void setTotalWinOrLoseMoney(BigDecimal totalWinOrLoseMoney) {
        this.totalWinOrLoseMoney = totalWinOrLoseMoney;
    }

    public BigDecimal getPageWinOrLoseMoney() {
        return pageWinOrLoseMoney;
    }

    public void setPageWinOrLoseMoney(BigDecimal pageWinOrLoseMoney) {
        this.pageWinOrLoseMoney = pageWinOrLoseMoney;
    }

    public static class SscBets extends CommonResult {
        private String openCode;
        /**
         * 编码
         */
        private String pk;
        /**
         * 玩法编码
         */
        private Long playId;
        /**
         * 创建时间
         */
        private Date createTime;
        /**
         * 玩法赔率
         */
        private BigDecimal playPl;
        /**
         * 投注金额
         */
        private BigDecimal totalMoney;
        /**
         * 状态
         */
        private Integer status;
        /**
         * 注数
         */
        private Long zhushu;
        /**
         * 单注金额
         */
        private BigDecimal perMoney;
        /**
         * 输赢
         */
        private BigDecimal winOrLose;
        /**
         * 下注内容
         */
        private String content;
        /**
         * 期号
         */
        private String number;
        /**
         * 彩种
         */
        private Long playGroupId;
        /**
         * 注单号
         */
        private String orderNumber;
        /**
         * 中奖金额
         */
        private BigDecimal zjMoney;
        /**
         * 彩种名称
         */
        private String playGroupName;
        /**
         * 玩法名称
         */
        private String playName;
        /**
         * 有效投注
         */
        private BigDecimal effectiveMoney;

        public Long getPlayId() {
            return playId;
        }

        public void setPlayId(Long playId) {
            this.playId = playId;
        }

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public BigDecimal getPlayPl() {
            return playPl;
        }

        public void setPlayPl(BigDecimal playPl) {
            this.playPl = playPl;
        }

        public BigDecimal getTotalMoney() {
            return totalMoney;
        }

        public void setTotalMoney(BigDecimal totalMoney) {
            this.totalMoney = totalMoney;
        }

        public Integer getStatus() {
            return status;
        }

        public void setStatus(Integer status) {
            this.status = status;
        }

        public Long getZhushu() {
            return zhushu;
        }

        public void setZhushu(Long zhushu) {
            this.zhushu = zhushu;
        }

        public BigDecimal getPerMoney() {
            return perMoney;
        }

        public void setPerMoney(BigDecimal perMoney) {
            this.perMoney = perMoney;
        }

        public BigDecimal getWinOrLose() {
            return winOrLose;
        }

        public void setWinOrLose(BigDecimal winOrLose) {
            this.winOrLose = winOrLose;
        }

        public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public String getNumber() {
            return number;
        }

        public void setNumber(String number) {
            this.number = number;
        }

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
        }

        public String getOrderNumber() {
            return orderNumber;
        }

        public void setOrderNumber(String orderNumber) {
            this.orderNumber = orderNumber;
        }

        public BigDecimal getZjMoney() {
            return zjMoney;
        }

        public void setZjMoney(BigDecimal zjMoney) {
            this.zjMoney = zjMoney;
        }

        public String getPk() {
            return pk;
        }

        public void setPk(String pk) {
            this.pk = pk;
        }

        public String getPlayGroupName() {
            return playGroupName;
        }

        public void setPlayGroupName(String playGroupName) {
            this.playGroupName = playGroupName;
        }

        public String getPlayName() {
            return playName;
        }

        public void setPlayName(String playName) {
            this.playName = playName;
        }

        public BigDecimal getEffectiveMoney() {
            return effectiveMoney;
        }

        public void setEffectiveMoney(BigDecimal effectiveMoney) {
            this.effectiveMoney = effectiveMoney;
        }

        public String getOpenCode() {
            return openCode;
        }

        public void setOpenCode(String openCode) {
            this.openCode = openCode;
        }
    }
}
