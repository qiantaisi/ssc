package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/12/19.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class ImageResult extends CommonResult {
    private String imageData;

    public String getImageData() {
        return imageData;
    }

    public void setImageData(String imageData) {
        this.imageData = imageData;
    }
}
