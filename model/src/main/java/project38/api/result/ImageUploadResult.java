package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2017/6/4 0004.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class ImageUploadResult extends CommonResult {
    private List<Long> imageIdList;

    public List<Long> getImageIdList() {
        return imageIdList;
    }

    public void setImageIdList(List<Long> imageIdList) {
        this.imageIdList = imageIdList;
    }
}
