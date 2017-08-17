package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;
import java.util.Date;

/**
 * Created by Administrator on 2016/11/15.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class ServerTimeResult extends CommonResult {
    private Date serverTime;

    public Date getServerTime() {
        return serverTime;
    }

    public void setServerTime(Date serverTime) {
        this.serverTime = serverTime;
    }
}
