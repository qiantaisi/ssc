package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.Date;

/**
 * Created by Administrator on 2017/3/24.
 */
public class SscCurrentTimeResult extends CommonResult{
    private Boolean enable; //彩种是否有效
    private Long leftOpenTime;  //剩余开奖时间（秒）
    private Long leftTime; //剩余封盘时间（秒）
    private String number; //当前期号
    private Date openDataTime; //开奖时间
    private Boolean opening; //是否开盘中（开盘时，leftTime > 0，封盘时leftTime <= 0）

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
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

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Date getOpenDataTime() {
        return openDataTime;
    }

    public void setOpenDataTime(Date openDataTime) {
        this.openDataTime = openDataTime;
    }

    public Boolean getOpening() {
        return opening;
    }

    public void setOpening(Boolean opening) {
        this.opening = opening;
    }
}
