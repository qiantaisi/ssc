package project38.api.result;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/15.
 */
public class UserInboxResult extends PageResult {

    private List<UserInbox> userInboxList;

    private int totalNum;

    private int totalHasReadNum;

    private int totalUnReadNum;

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public int getTotalHasReadNum() {
        return totalHasReadNum;
    }

    public void setTotalHasReadNum(int totalHasReadNum) {
        this.totalHasReadNum = totalHasReadNum;
    }

    public int getTotalUnReadNum() {
        return totalUnReadNum;
    }

    public void setTotalUnReadNum(int totalUnReadNum) {
        this.totalUnReadNum = totalUnReadNum;
    }

    public List<UserInbox> getUserInboxList() {
        return userInboxList;
    }

    public void setUserInboxList(List<UserInbox> userInboxList) {
        this.userInboxList = userInboxList;
    }

    public static class UserInbox {
        /**
         * 编码
         */
        private Long id;

        /**
         * 内容
         */
        private String content;

        /**
         * 创建时间
         */
        private Date createTime;

        /**
         * 是否已读
         */
        private Boolean hasRead;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public Boolean getHasRead() {
            return hasRead;
        }

        public void setHasRead(Boolean hasRead) {
            this.hasRead = hasRead;
        }
    }
}
