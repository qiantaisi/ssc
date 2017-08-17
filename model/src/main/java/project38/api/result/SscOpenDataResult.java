package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/3/21.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
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
