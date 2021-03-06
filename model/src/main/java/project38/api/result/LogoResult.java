package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;
/**
 * Created by Administrator on 2016/11/16.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class LogoResult extends CommonResult {
    /**
     * LOGO的编码
     */
    private Long imageId;

    public Long getImageId() {
        return imageId;
    }

    public void setImageId(Long imageId) {
        this.imageId = imageId;
    }
}
