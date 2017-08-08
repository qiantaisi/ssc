package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2016/11/18.
 */
public class PageResult extends CommonResult {
    //当前页
    private Integer pageNum;
    //每页的数量
    private Integer pageSize;
    //当前页的数量
    private Integer size;
    //总数量
    private Long total;

    //第一页
    private Integer firstPage;
    //前一页
    private Integer prePage;
    //下一页
    private Integer nextPage;
    //最后一页
    private Integer lastPage;

    //是否为第一页
    private Boolean isFirstPage;
    //是否为最后一页
    private Boolean isLastPage;
    //是否有前一页
    private Boolean hasPreviousPage;
    //是否有下一页
    private Boolean hasNextPage;
    //导航页码数
    private Integer navigatePages;
    //所有导航页号
    private int[] navigatepageNums;

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public Integer getFirstPage() {
        return firstPage;
    }

    public void setFirstPage(Boolean firstPage) {
        isFirstPage = firstPage;
    }

    public void setFirstPage(Integer firstPage) {
        this.firstPage = firstPage;
    }

    public Integer getPrePage() {
        return prePage;
    }

    public void setPrePage(Integer prePage) {
        this.prePage = prePage;
    }

    public Integer getNextPage() {
        return nextPage;
    }

    public void setNextPage(Integer nextPage) {
        this.nextPage = nextPage;
    }

    public Integer getLastPage() {
        return lastPage;
    }

    public void setLastPage(Boolean lastPage) {
        isLastPage = lastPage;
    }

    public Boolean getHasPreviousPage() {
        return hasPreviousPage;
    }

    public void setHasPreviousPage(Boolean hasPreviousPage) {
        this.hasPreviousPage = hasPreviousPage;
    }

    public Boolean getHasNextPage() {
        return hasNextPage;
    }

    public void setHasNextPage(Boolean hasNextPage) {
        this.hasNextPage = hasNextPage;
    }

    public Integer getNavigatePages() {
        return navigatePages;
    }

    public void setNavigatePages(Integer navigatePages) {
        this.navigatePages = navigatePages;
    }

    public int[] getNavigatepageNums() {
        return navigatepageNums;
    }

    public void setNavigatepageNums(int[] navigatepageNums) {
        this.navigatepageNums = navigatepageNums;
    }

    public void setLastPage(Integer lastPage) {
        this.lastPage = lastPage;
    }
}
