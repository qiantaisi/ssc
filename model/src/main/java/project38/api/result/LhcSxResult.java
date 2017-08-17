package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2016/12/18.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class LhcSxResult extends CommonResult {
    private List<LhcSx> lhcSxList;

    public List<LhcSx> getLhcSxList() {
        return lhcSxList;
    }

    public void setLhcSxList(List<LhcSx> lhcSxList) {
        this.lhcSxList = lhcSxList;
    }

    public static class LhcSx {
        /**
         * 生肖名字
         */
        private String name;
        /**
         * 生肖数字
         */
        private List<Integer> numList;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public List<Integer> getNumList() {
            return numList;
        }

        public void setNumList(List<Integer> numList) {
            this.numList = numList;
        }
    }
}
