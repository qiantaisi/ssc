package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/3/24.
 */
public class SscAllTimeResult extends CommonResult
{
    private List<SscTime> SscTimeList;

    public List<SscTime> getSscTimeList() {
        return SscTimeList;
    }

    public void setSscTimeList(List<SscTime> sscTimeList) {
        SscTimeList = sscTimeList;
    }

    public static class SscTime{
        private Long playGroupId; //彩种编码
        private Long leftTime; //剩余时间
        private String number; //当前期数
        private String lastOpenNumber; //上期期数
        private Date lastOpenTime; //上期开奖时间
        private String lastOpenData; //上期开奖号码

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
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
