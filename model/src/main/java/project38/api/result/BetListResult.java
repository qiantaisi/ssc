package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/25.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class BetListResult extends PageResult {
    private List<Bet> betList;

    public List<Bet> getBetList() {
        return betList;
    }

    public void setBetList(List<Bet> betList) {
        this.betList = betList;
    }

    public static class Bet {
        /**
         * pk
         */
        private String pk;
        /**
         * 彩种名称
         */
        private String playGroupName;
        /**
         * 彩种编码
         */
        private Long playGroupId;
        /**
         * 创建时间
         */
        private Date createTime;
        /**
         * 玩法
         */
        private String playName;
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
         * 注单号
         */
        private String orderNumber;
        /**
         * 中奖金额
         */
        private BigDecimal zjMoney;
        /**
         * 账号
         */
        private String account;
        /**
         * 玩法编码
         */
        private Long playId;
        /**
         * 用户编码
         */
        private Long userId;
        /**
         * 有效投注
         */
        private BigDecimal effectiveMoney;
        /**
         * 开奖结果
         */
        private String openCode;

        public String getOpenCode() {
            return openCode;
        }

        public void setOpenCode(String openCode) {
            this.openCode = openCode;
        }

        public Long getUserId() {
            return userId;
        }

        public void setUserId(Long userId) {
            this.userId = userId;
        }

        public BigDecimal getEffectiveMoney() {
            return effectiveMoney;
        }

        public void setEffectiveMoney(BigDecimal effectiveMoney) {
            this.effectiveMoney = effectiveMoney;
        }

        public String getPlayName() {
            return playName;
        }

        public void setPlayName(String playName) {
            this.playName = playName;
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

        public String getPlayGroupName() {
            return playGroupName;
        }

        public void setPlayGroupName(String playGroupName) {
            this.playGroupName = playGroupName;
        }

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
        }

        public String getAccount() {
            return account;
        }

        public void setAccount(String account) {
            this.account = account;
        }

        public Long getPlayId() {
            return playId;
        }

        public void setPlayId(Long playId) {
            this.playId = playId;
        }

        public String getPk() {
            return pk;
        }

        public void setPk(String pk) {
            this.pk = pk;
        }
    }
}
