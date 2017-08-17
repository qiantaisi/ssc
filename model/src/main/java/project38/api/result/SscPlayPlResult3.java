package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2017/1/17.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
public class SscPlayPlResult3 extends CommonResult {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private List<SscPlayPlResult2.SscPlayPlGroup> sscPlayPlGroupList;

    public List<SscPlayPlResult2.SscPlayPlGroup> getSscPlayPlGroupList() {
        return sscPlayPlGroupList;
    }

    public void setSscPlayPlGroupList(List<SscPlayPlResult2.SscPlayPlGroup> sscPlayPlGroupList) {
        this.sscPlayPlGroupList = sscPlayPlGroupList;
    }
}
