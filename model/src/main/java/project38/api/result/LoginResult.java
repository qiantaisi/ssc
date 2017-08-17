package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2016/11/13.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class LoginResult extends CommonResult {
    /**
     * 用户ID
     */
    private Long userId;
    /**
     * 用户token
     */
    private String token;
    /**
     * 登录后获取公告
     */
    private List<WebNoticeResult.WebNotice> webNoticeList;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public List<WebNoticeResult.WebNotice> getWebNoticeList() {
        return webNoticeList;
    }

    public void setWebNoticeList(List<WebNoticeResult.WebNotice> webNoticeList) {
        this.webNoticeList = webNoticeList;
    }
}
