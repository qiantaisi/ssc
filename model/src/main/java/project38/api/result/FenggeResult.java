package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;
@JsonInclude(JsonInclude.Include.NON_NULL)
public class FenggeResult extends CommonResult {
    private String fengge_1;

    private String fengge_2;

    public String getFengge_1() {
        return fengge_1;
    }

    public void setFengge_1(String fengge_1) {
        this.fengge_1 = fengge_1;
    }

    public String getFengge_2() {
        return fengge_2;
    }

    public void setFengge_2(String fengge_2) {
        this.fengge_2 = fengge_2;
    }
}
