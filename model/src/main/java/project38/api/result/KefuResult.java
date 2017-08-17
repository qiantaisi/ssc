package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/11/25.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class KefuResult extends CommonResult {
    private String kefuUrl;

    public String getKefuUrl() {
        return kefuUrl;
    }

    public void setKefuUrl(String kefuUrl) {
        this.kefuUrl = kefuUrl;
    }
}
