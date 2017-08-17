package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/1/17.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SscLeftTimeResult extends CommonResult {
    /**
     * 当前期数
     */
    private String number;
    /**
     * 剩余封盘时间
     */
    private Long leftTime;
    /**
     * 剩余开奖时间
     */
    private Long leftOpenTime;
    /**
     * 是否开盘中
     */
    private Boolean isOpening;

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Long getLeftTime() {
        return leftTime;
    }

    public void setLeftTime(Long leftTime) {
        this.leftTime = leftTime;
    }

    public Long getLeftOpenTime() {
        return leftOpenTime;
    }

    public void setLeftOpenTime(Long leftOpenTime) {
        this.leftOpenTime = leftOpenTime;
    }

    public Boolean getOpening() {
        return isOpening;
    }

    public void setOpening(Boolean opening) {
        isOpening = opening;
    }
}
