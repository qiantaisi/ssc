package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/3/21.
 */
public class SscOpenDataResult extends CommonResult {
    /**
     * 开奖号码
     */
    private String openCode;

    public String getOpenCode() {
        return openCode;
    }

    public void setOpenCode(String openCode) {
        this.openCode = openCode;
    }
}
