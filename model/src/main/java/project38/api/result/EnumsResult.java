package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2017/4/14.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class EnumsResult extends CommonResult {
    /**
     * 充值类型
     */
    private List<Type> czlxList;

    /**
     * 银行列表
     */
    private List<Type> bankList;

    public List<Type> getBankList() {
        return bankList;
    }

    public void setBankList(List<Type> bankList) {
        this.bankList = bankList;
    }

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
