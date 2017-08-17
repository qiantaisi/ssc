package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2017/4/27 0027.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class CzTypeListResult extends CommonResult {
    private List<CzType> czTypeList;

    public List<CzType> getCzTypeList() {
        return czTypeList;
    }

    public void setCzTypeList(List<CzType> czTypeList) {
        this.czTypeList = czTypeList;
    }

    public static class CzType {
        private Integer type;

        private String name;

        public Integer getType() {
            return type;
        }

        public void setType(Integer type) {
            this.type = type;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
}
