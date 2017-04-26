package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2017/4/14.
 */
public class EnumsResult extends CommonResult {
    /**
     * 充值类型
     */
    private List<Type> czlxList;

    public List<Type> getCzlxList() {
        return czlxList;
    }

    public void setCzlxList(List<Type> czlxList) {
        this.czlxList = czlxList;
    }

    public static class Type {
        private Integer id;

        private String name;

        public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
}
