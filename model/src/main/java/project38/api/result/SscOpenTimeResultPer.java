package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/1/15.
 */
public class SscOpenTimeResultPer extends CommonResult {
    private Long leftTime;
    private Boolean isOpening;

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
}
