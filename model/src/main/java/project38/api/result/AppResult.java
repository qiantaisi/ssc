package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2017/3/21.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class AppResult extends CommonResult {
    /**
     * 热门彩种/走势切换（0-不显示，1-热门彩种，2-走势图（原生），3-走势图链接）
     */
    private Integer hotOrZstType;

    // APP顶部菜单显示参数
    /**
     * 充值/提现（0-不显示，1-显示）
     */
    private Integer headerDepositWithdrawStatus;

    /**
     * 开奖结果（0-不显示，1-显示）
     */
    private Integer headerOpenResultStatus;

    /**
     * 投注记录（0-不显示，1-显示）
     */
    private Integer headerBetHistoryStatus;

    /**
     * 优惠活动（0-不显示，1-显示）
     */
    private Integer headerPromotionStatus;

    /**
     * 在线客服（0-不显示，1-显示）
     */
    private Integer headerKefuStatus;

    // APP底部菜单显示参数
    /**
     * 首页（0-不显示，1-显示）
     */
    private Integer footerIndexStatus;

    /**
     * 购彩（0-不显示，1-显示）
     */
    private Integer footerBetStatus;

    /**
     * 开奖（0-不显示，1-显示）
     */
    private Integer footerOpenCodeStatus;

    /**
     * 走势（0-不显示，1-显示）
     */
    private Integer footerZstStatus;

    /**
     * 会员中心（0-不显示，1-显示）
     */
    private Integer footerMemberCenterStatus;

    /**
     * 彩种显示列表
     */
    private List<SscStatus> sscStatusList;

    public Integer getHotOrZstType() {
        return hotOrZstType;
    }

    public void setHotOrZstType(Integer hotOrZstType) {
        this.hotOrZstType = hotOrZstType;
    }

    public Integer getHeaderDepositWithdrawStatus() {
        return headerDepositWithdrawStatus;
    }

    public void setHeaderDepositWithdrawStatus(Integer headerDepositWithdrawStatus) {
        this.headerDepositWithdrawStatus = headerDepositWithdrawStatus;
    }

    public Integer getHeaderOpenResultStatus() {
        return headerOpenResultStatus;
    }

    public void setHeaderOpenResultStatus(Integer headerOpenResultStatus) {
        this.headerOpenResultStatus = headerOpenResultStatus;
    }

    public Integer getHeaderBetHistoryStatus() {
        return headerBetHistoryStatus;
    }

    public void setHeaderBetHistoryStatus(Integer headerBetHistoryStatus) {
        this.headerBetHistoryStatus = headerBetHistoryStatus;
    }

    public Integer getHeaderPromotionStatus() {
        return headerPromotionStatus;
    }

    public void setHeaderPromotionStatus(Integer headerPromotionStatus) {
        this.headerPromotionStatus = headerPromotionStatus;
    }

    public Integer getHeaderKefuStatus() {
        return headerKefuStatus;
    }

    public void setHeaderKefuStatus(Integer headerKefuStatus) {
        this.headerKefuStatus = headerKefuStatus;
    }

    public Integer getFooterIndexStatus() {
        return footerIndexStatus;
    }

    public void setFooterIndexStatus(Integer footerIndexStatus) {
        this.footerIndexStatus = footerIndexStatus;
    }

    public Integer getFooterBetStatus() {
        return footerBetStatus;
    }

    public void setFooterBetStatus(Integer footerBetStatus) {
        this.footerBetStatus = footerBetStatus;
    }

    public Integer getFooterOpenCodeStatus() {
        return footerOpenCodeStatus;
    }

    public void setFooterOpenCodeStatus(Integer footerOpenCodeStatus) {
        this.footerOpenCodeStatus = footerOpenCodeStatus;
    }

    public Integer getFooterZstStatus() {
        return footerZstStatus;
    }

    public void setFooterZstStatus(Integer footerZstStatus) {
        this.footerZstStatus = footerZstStatus;
    }

    public Integer getFooterMemberCenterStatus() {
        return footerMemberCenterStatus;
    }

    public void setFooterMemberCenterStatus(Integer footerMemberCenterStatus) {
        this.footerMemberCenterStatus = footerMemberCenterStatus;
    }

    public List<SscStatus> getSscStatusList() {
        return sscStatusList;
    }

    public void setSscStatusList(List<SscStatus> sscStatusList) {
        this.sscStatusList = sscStatusList;
    }

    public static class SscStatus {
        /**
         * 彩种编码
         */
        private Long playGroupId;

        /**
         * 彩种显示（0-不显示，1-显示）
         */
        private Integer status;

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
        }

        public Integer getStatus() {
            return status;
        }

        public void setStatus(Integer status) {
            this.status = status;
        }
    }
}
