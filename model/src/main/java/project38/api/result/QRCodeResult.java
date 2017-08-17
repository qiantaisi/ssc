package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/8/7.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class QRCodeResult extends CommonResult {
    private String codeId;
    private String codeData;

    public String getCodeId() {
        return codeId;
    }

    public void setCodeId(String codeId) {
        this.codeId = codeId;
    }

    public String getCodeData() {
        return codeData;
    }

    public void setCodeData(String codeData) {
        this.codeData = codeData;
    }
}
