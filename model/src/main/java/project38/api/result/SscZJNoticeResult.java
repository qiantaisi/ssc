package project38.api.result;

import com.google.common.collect.Lists;
import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by java1 on 2017/7/4. 中奖公告
 */
public class SscZJNoticeResult extends CommonResult {

    public List<Notice> noticeList;

    public List<Notice> getNoticeList() { return noticeList; }

    public void setNoticeList(List<Notice> noticeList) { this.noticeList = noticeList; }

    public static class Notice{
        //用户名
        private String userName;

        //彩种类型
        private String type;

        //中奖金额
        private BigDecimal amount ;

        public String getUserName() { return userName; }

        public void setUserName(String userName) { this.userName = userName; }

        public String getType() { return type; }

        public void setType(String type) { this.type = type; }

        public BigDecimal getAmount() { return amount; }

        public void setAmount(BigDecimal amount) { this.amount = amount; }
    }
}
