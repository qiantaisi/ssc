package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/2/9.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class RedPacketResult extends CommonResult {
    private Integer type;

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
