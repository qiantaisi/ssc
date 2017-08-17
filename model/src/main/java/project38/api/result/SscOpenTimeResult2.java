package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/25.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SscOpenTimeResult2 extends CommonResult {
    /**
     * 彩种编码
     */
    private Long playGroupId;

    /**
     * 彩种名称
     */
    private String playGroupName;

    /**
     * 剩余时间
     */
    private Long leftTime;

    /**
     * 本期期数
     */
    private String number;
    /**
     * 彩种是否启用
     */
    private Boolean isEnable;

    /**
     * 开奖历史列表
     */
    private List<LastOpenData> sscHistoryList;

    public Long getPlayGroupId() {
        return playGroupId;
    }

    public void setPlayGroupId(Long playGroupId) {
        this.playGroupId = playGroupId;
    }

    public String getPlayGroupName() {
        return playGroupName;
    }

    public void setPlayGroupName(String playGroupName) {
        this.playGroupName = playGroupName;
    }

    public Long getLeftTime() {
        return leftTime;
    }

    public void setLeftTime(Long leftTime) {
        this.leftTime = leftTime;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Boolean getEnable() {
        return isEnable;
    }

    public void setEnable(Boolean enable) {
        isEnable = enable;
    }

    public List<LastOpenData> getSscHistoryList() {
        return sscHistoryList;
    }

    public void setSscHistoryList(List<LastOpenData> sscHistoryList) {
        this.sscHistoryList = sscHistoryList;
    }

    public static class LastOpenData {
        /**
         * 期数
         */
        private String number;

        /**
         * 开奖时间
         */
        private Date openTime;

        /**
         * 开奖数据
         */
        private String openCode;

        /**
         * 彩种ID
         */
        private Long playGroupId;

        /**
         * 开奖日期
         */
        private String date;

        public String getNumber() {
            return number;
        }

        public void setNumber(String number) {
            this.number = number;
        }

        public Date getOpenTime() {
            return openTime;
        }

        public void setOpenTime(Date openTime) {
            this.openTime = openTime;
        }

        public String getOpenCode() {
            return openCode;
        }

        public void setOpenCode(String openCode) {
            this.openCode = openCode;
        }

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
        }

        public String getDate() {
            return date;
        }

        public void setDate(String date) {
            this.date = date;
        }
    }
}
