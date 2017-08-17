package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/12/6.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class SscHistoryResult extends CommonResult {
    private List<SscHistory> sscHistoryList;

    public List<SscHistory> getSscHistoryList() {
        return sscHistoryList;
    }

    public void setSscHistoryList(List<SscHistory> sscHistoryList) {
        this.sscHistoryList = sscHistoryList;
    }

    public static class SscHistory {
        /**
         * 彩种名称
         */
        private String playGroupName;
        /**
         * 彩种编码
         */
        private Long playGroupId;

        /**
         * 期号
         */

        private String number;

        /**
         * 开奖结果
         */

        private String openCode;

        /**
         * 开奖时间
         */

        private Date openTime;

        /**
         * 开奖日期
         */

        private String date;

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

        public String getNumber() {
            return number;
        }

        public void setNumber(String number) {
            this.number = number;
        }

        public String getOpenCode() {
            return openCode;
        }

        public void setOpenCode(String openCode) {
            this.openCode = openCode;
        }

        public Date getOpenTime() {
            return openTime;
        }

        public void setOpenTime(Date openTime) {
            this.openTime = openTime;
        }

        public String getDate() {
            return date;
        }

        public void setDate(String date) {
            this.date = date;
        }
    }

}
