package project38.api.common.result;

/**
 * Created by Administrator on 2016/4/9.
 */
public class CommonResult {
    /**
     * 状态
     */
    private int result;

    /**
     * 描述
     */
    private String description;

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
