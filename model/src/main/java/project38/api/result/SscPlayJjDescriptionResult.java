package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/12/13.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class SscPlayJjDescriptionResult extends CommonResult {
    private String jjDescription;

    public String getJjDescription() {
        return jjDescription;
    }

    public void setJjDescription(String jjDescription) {
        this.jjDescription = jjDescription;
    }
}
