package project38.ssc.web.form;

import java.util.List;

/**
 * Created by Administrator on 2016/11/26.
 */
public class SscBetForm {
    /**
     * 投注金额
     */
    private Double totalMoney;

    private List<SscBet> sscBetList;

    private Integer totalZhushu;

    public Integer getTotalZhushu() {
        return totalZhushu;
    }

    public void setTotalZhushu(Integer totalZhushu) {
        this.totalZhushu = totalZhushu;
    }

    public static class SscBet {
        /**
         * 彩种
         */
        private Long playGroupId;
        /**
         * 期号
         */
        private String number;
        /**
         * 玩法编码
         */
        private Long playId;
        /**
         * 注数
         */
        private Long zhushu;
        /**
         * 单注金额
         */
        private Double perMoney;
        /**
         * 下注内容
         */
        private String content;
        /**
         * 赔率编码
         */
        private Long playPlId;
        /**
         * 玩法赔率
         */
        private Double playPl;

        public Long getZhushu() {
            return zhushu;
        }

        public void setZhushu(Long zhushu) {
            this.zhushu = zhushu;
        }

        public Double getPerMoney() {
            return perMoney;
        }

        public void setPerMoney(Double perMoney) {
            this.perMoney = perMoney;
        }

        public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public Long getPlayPlId() {
            return playPlId;
        }

        public void setPlayPlId(Long playPlId) {
            this.playPlId = playPlId;
        }

        public Double getPlayPl() {
            return playPl;
        }

        public void setPlayPl(Double playPl) {
            this.playPl = playPl;
        }

        public Long getPlayId() {
            return playId;
        }

        public void setPlayId(Long playId) {
            this.playId = playId;
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
    }

    public Double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(Double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public List<SscBet> getSscBetList() {
        return sscBetList;
    }

    public void setSscBetList(List<SscBet> sscBetList) {
        this.sscBetList = sscBetList;
    }
}
