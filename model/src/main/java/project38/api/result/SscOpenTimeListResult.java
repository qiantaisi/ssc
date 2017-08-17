package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SscOpenTimeListResult extends CommonResult {
    private List<SscOpenTime> sscOpenTimeList;

    public List<SscOpenTime> getSscOpenTimeList() {
        return sscOpenTimeList;
    }

    public void setSscOpenTimeList(List<SscOpenTime> sscOpenTimeList) {
        this.sscOpenTimeList = sscOpenTimeList;
    }

    public static class SscOpenTime {
        /**
         * 期数
         */
        private String number;

        /**
         * 开奖时间
         */
        private Date openTime;

        /**
         * 停止投注时间
         */
        private Date endBetTime;

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

        public Date getEndBetTime() {
            return endBetTime;
        }

        public void setEndBetTime(Date endBetTime) {
            this.endBetTime = endBetTime;
        }
    }
}
