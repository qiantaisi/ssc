package project38.api.result;

import project38.api.common.result.CommonResult;
import java.util.Date;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2016/11/25.
 */
public class SscOpenTimeResult extends CommonResult {
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
     * 开奖时间
     */
    private Date openDataTime;

    /**
     * 剩余开奖时间
     */
    private Long leftOpenTime;

    /**
     * 玩法奖金说明
     */
    private String jjDescription;

    /**
     * 奖池
     */
    private BigDecimal jiangchi;
    /**
     * 彩种是否启用
     */
    private Boolean isEnable;
    /**
     * 0-无封盘彩种，1-封盘彩种
     */
    private Integer isFengpan;

    public Integer getIsFengpan() {
        return isFengpan;
    }

    public void setIsFengpan(Integer isFengpan) {
        this.isFengpan = isFengpan;
    }

    public Boolean getEnable() {
        return isEnable;
    }

    public void setEnable(Boolean enable) {
        isEnable = enable;
    }

    public BigDecimal getJiangchi() {
        return jiangchi;
    }

    public void setJiangchi(BigDecimal jiangchi) {
        this.jiangchi = jiangchi;
    }

    public String getJjDescription() {
        return jjDescription;
    }

    public void setJjDescription(String jjDescription) {
        this.jjDescription = jjDescription;
    }

    private List<SscPlayPlGroup> sscPlayPlGroupList;

    private List<LastOpenData> lastOpenDataList;

    public Date getOpenDataTime() {
        return openDataTime;
    }

    public void setOpenDataTime(Date openDataTime) {
        this.openDataTime = openDataTime;
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

    public Long getLeftOpenTime() {
        return leftOpenTime;
    }

    public void setLeftOpenTime(Long leftOpenTime) {
        this.leftOpenTime = leftOpenTime;
    }

    public List<LastOpenData> getLastOpenDataList() {
        return lastOpenDataList;
    }

    public void setLastOpenDataList(List<LastOpenData> lastOpenDataList) {
        this.lastOpenDataList = lastOpenDataList;
    }

    public List<SscPlayPlGroup> getSscPlayPlGroupList() {
        return sscPlayPlGroupList;
    }

    public void setSscPlayPlGroupList(List<SscPlayPlGroup> sscPlayPlGroupList) {
        this.sscPlayPlGroupList = sscPlayPlGroupList;
    }

    public static class LastOpenData {
        private String number;
        private Date time;
        private String openData;

        public String getNumber() {
            return number;
        }

        public void setNumber(String number) {
            this.number = number;
        }

        public Date getTime() {
            return time;
        }

        public void setTime(Date time) {
            this.time = time;
        }

        public String getOpenData() {
            return openData;
        }

        public void setOpenData(String openData) {
            this.openData = openData;
        }
    }

    public static class SscPlayPlGroup {
        private List<SscPlayPl> sscPlayPlList;

        private String groupName;

        private Long id;

        private Integer dataType;

        public Integer getDataType() {
            return dataType;
        }

        public void setDataType(Integer dataType) {
            this.dataType = dataType;
        }

        public List<SscPlayPl> getSscPlayPlList() {
            return sscPlayPlList;
        }

        public void setSscPlayPlList(List<SscPlayPl> sscPlayPlList) {
            this.sscPlayPlList = sscPlayPlList;
        }

        public String getGroupName() {
            return groupName;
        }

        public void setGroupName(String groupName) {
            this.groupName = groupName;
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }
    }

    public static class SscPlayPl {
        /**
         * 赔率编码
         */
        private Long id;
        /**
         * 号码
         */
        private String name;
        /**
         * 赔率
         */
        private BigDecimal pl;
        private BigDecimal minPl;
        /**
         *
         */
        private BigDecimal maxFdBl;

        public BigDecimal getMinPl() {
            return minPl;
        }

        public void setMinPl(BigDecimal minPl) {
            this.minPl = minPl;
        }

        public BigDecimal getMaxFdBl() {
            return maxFdBl;
        }

        public void setMaxFdBl(BigDecimal maxFdBl) {
            this.maxFdBl = maxFdBl;
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public BigDecimal getPl() {
            return pl;
        }

        public void setPl(BigDecimal pl) {
            this.pl = pl;
        }
    }
}
