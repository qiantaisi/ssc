package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/16.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class SscHotOpenDataResult extends CommonResult {
    private List<SscTime> sscTimeList;

    public List<SscTime> getSscTimeList() {
        return sscTimeList;
    }

    public void setSscTimeList(List<SscTime> sscTimeList) {
        this.sscTimeList = sscTimeList;
    }

    public static class SscTime {
        /**
         * 彩种编码
         */
        private Long playGroupId;

        /**
         * 上期期数
         */
        private String lastOpenNumber;

        /**
         * 上期开奖时间
         */
        private Date lastOpenTime;

        /**
         * 上期开奖号码
         */
        private String lastOpenData;

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
        }

        public String getLastOpenNumber() {
            return lastOpenNumber;
        }

        public void setLastOpenNumber(String lastOpenNumber) {
            this.lastOpenNumber = lastOpenNumber;
        }

        public Date getLastOpenTime() {
            return lastOpenTime;
        }

        public void setLastOpenTime(Date lastOpenTime) {
            this.lastOpenTime = lastOpenTime;
        }

        public String getLastOpenData() {
            return lastOpenData;
        }

        public void setLastOpenData(String lastOpenData) {
            this.lastOpenData = lastOpenData;
        }
    }
}
