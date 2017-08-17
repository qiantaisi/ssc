package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/12/13.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SscPlayJjDescriptionResult extends CommonResult {
    private String jjDescription;

    public String getJjDescription() {
        return jjDescription;
    }

    public void setJjDescription(String jjDescription) {
        this.jjDescription = jjDescription;
    }
}
