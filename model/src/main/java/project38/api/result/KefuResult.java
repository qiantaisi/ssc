package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/11/25.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class KefuResult extends CommonResult {
    private String kefuUrl;

    public String getKefuUrl() {
        return kefuUrl;
    }

    public void setKefuUrl(String kefuUrl) {
        this.kefuUrl = kefuUrl;
    }
}
