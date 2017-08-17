package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;
import java.util.Date;

import java.util.List;

/**
 * Created by Administrator on 2016/11/16.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SscTimeResult extends CommonResult {
    /**
     * APP头部菜单是否显示
     */
    private Boolean headIsOpen;

    /**
     * APP会员中心是否显示
     */
    private Boolean memberIsOpen;

    /**
     * 是否开启投注
     */
    private Boolean canBet;

    /**
     * APP开启的彩种
     */
    private List<SscTime> sscPlayGroupList;

    public List<SscTime> getSscPlayGroupList() {
        return sscPlayGroupList;
    }

    public void setSscPlayGroupList(List<SscTime> sscPlayGroupList) {
        this.sscPlayGroupList = sscPlayGroupList;
    }

    public Boolean getMemberIsOpen() {
        return memberIsOpen;
    }

    public void setMemberIsOpen(Boolean memberIsOpen) {
        this.memberIsOpen = memberIsOpen;
    }

    public Boolean getCanBet() {
        return canBet;
    }

    public void setCanBet(Boolean canBet) {
        this.canBet = canBet;
    }

    private List<SscTime> sscTimeList;

    public Boolean getHeadIsOpen() {
        return headIsOpen;
    }

    public void setHeadIsOpen(Boolean headIsOpen) {
        this.headIsOpen = headIsOpen;
    }

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
         * 彩种名称
         */
        private String playGroupName;

        /**
         * 剩余封盘时间
         */
        private Long leftTime;

        /**
         * 是否开盘中
         */
        private Boolean isOpening;

        /**
         * 本期期数
         */
        private String number;

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

        /**
         * 剩余开奖时间
         */
        private Long leftOpenTime;
        /**
         * 彩种是否关闭
         */
        private Boolean isEnable;

        public Boolean getEnable() {
            return isEnable;
        }

        public void setEnable(Boolean enable) {
            isEnable = enable;
        }

        public Long getLeftOpenTime() {
            return leftOpenTime;
        }

        public void setLeftOpenTime(Long leftOpenTime) {
            this.leftOpenTime = leftOpenTime;
        }

        public Long getLeftTime() {
            return leftTime;
        }

        public void setLeftTime(Long leftTime) {
            this.leftTime = leftTime;
        }

        public Boolean getOpening() {
            return isOpening;
        }

        public void setOpening(Boolean opening) {
            isOpening = opening;
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
    }
}
