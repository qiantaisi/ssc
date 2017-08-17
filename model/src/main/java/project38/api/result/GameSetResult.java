package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

/**
 * Created by java1 on 2017/7/5.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class GameSetResult extends CommonResult {

    //游戏模式  0官方  1快钱
    public String type;

    public String getType() { return type; }

    public void setType(String type) { this.type = type; }
}
