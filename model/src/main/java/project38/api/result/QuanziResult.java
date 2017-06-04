package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/6/4 0004.
 */
public class QuanziResult extends PageResult {
    private List<Quanzi> dataList;

    public List<Quanzi> getDataList() {
        return dataList;
    }

    public void setDataList(List<Quanzi> dataList) {
        this.dataList = dataList;
    }

    public static class Quanzi {
        private String account;

        private Date createTime;

        private String content;

        private List<Long> imageIdList;

        public String getAccount() {
            return account;
        }

        public void setAccount(String account) {
            this.account = account;
        }

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public List<Long> getImageIdList() {
            return imageIdList;
        }

        public void setImageIdList(List<Long> imageIdList) {
            this.imageIdList = imageIdList;
        }
    }
}
