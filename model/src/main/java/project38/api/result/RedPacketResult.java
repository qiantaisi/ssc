package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/2/9.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class RedPacketResult extends CommonResult {
    private Integer type;

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
