package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/12/4.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class WebNoticeResult extends CommonResult {
    private List<WebNotice> webNoticeList;

    public List<WebNotice> getWebNoticeList() {
        return webNoticeList;
    }

    public void setWebNoticeList(List<WebNotice> webNoticeList) {
        this.webNoticeList = webNoticeList;
    }

    public static class WebNotice {
        /**
         * 编码
         */
        private String pk;
        /**
         * 标题
         */
        private String title;
        /**
         * 内容
         */
        private String content;
        /**
         * 创建时间
         */
        private Date createTime;

        public String getPk() {
            return pk;
        }

        public void setPk(String pk) {
            this.pk = pk;
        }

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
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
    }
}
