package project38.api.result;

import project38.api.common.result.CommonResult;

public class GetCodeResult extends CommonResult {
    private String code;

    private String pk;

    public String getPk() {
        return pk;
    }

    public void setPk(String pk) {
        this.pk = pk;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
