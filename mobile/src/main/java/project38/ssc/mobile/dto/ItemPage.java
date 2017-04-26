package project38.ssc.mobile.dto;

import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * Created by Administrator on 2016/11/15.
 */
public class ItemPage<T> {
    /**
     * data:数据
     */
    private List<T> data;
    /**
     * pageInfo:分页信息
     */
    private PageInfo<T> pageInfo;
    /**
     * 其他信息
     */
    private Object otherInfo;

    /**
     * data.
     * @return the data
     */
    public List<T> getData() {
        return data;
    }

    /**
     * data.
     * @param data the data to set
     */
    public void setData(List<T> data) {
        this.data = data;
    }

    /**
     * pageInfo.
     * @return the pageInfo
     */
    public PageInfo<T> getPageInfo() {
        return pageInfo;
    }

    /**
     * pageInfo.
     * @param pageInfo the pageInfo to set
     */

    public void setPageInfo(PageInfo<T> pageInfo) {
        this.pageInfo = pageInfo;
    }

    public Object getOtherInfo() {
        return otherInfo;
    }

    public void setOtherInfo(Object otherInfo) {
        this.otherInfo = otherInfo;
    }
}