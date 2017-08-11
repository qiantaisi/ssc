package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * APP配置，用于启动时加载
 */
public class AppConfigResult extends CommonResult {
    /**
     * 公司是否需要取款密码
     */
    private Boolean needWithdrawPasswd;

    /**
     * APP头部菜单是否显示
     */
    private Boolean headIsOpen;

    /**
     * APP会员中心是否显示
     */
    private Boolean memberIsOpen;

    /**
     * 是否开启投注
     */
    private Boolean canBet;

    /**
     * 六合彩生肖与号码对应
     */
    private List<LhcSxResult.LhcSx> lhcSxList;

    /**
     * 热门开奖彩种ID
     */
    private List<Long> hotSscPlayGroupIdList;

    /**
     * 取款下限金额
     */
    private BigDecimal qkMinMoney;

    /**
     * 取款上限金额
     */
    private BigDecimal qkMaxMoney;

    public BigDecimal getQkMinMoney() {
        return qkMinMoney;
    }

    public void setQkMinMoney(BigDecimal qkMinMoney) {
        this.qkMinMoney = qkMinMoney;
    }

    public BigDecimal getQkMaxMoney() {
        return qkMaxMoney;
    }

    public void setQkMaxMoney(BigDecimal qkMaxMoney) {
        this.qkMaxMoney = qkMaxMoney;
    }

    public List<Long> getHotSscPlayGroupIdList() {
        return hotSscPlayGroupIdList;
    }

    public void setHotSscPlayGroupIdList(List<Long> hotSscPlayGroupIdList) {
        this.hotSscPlayGroupIdList = hotSscPlayGroupIdList;
    }

    public Boolean getNeedWithdrawPasswd() {
        return needWithdrawPasswd;
    }

    public void setNeedWithdrawPasswd(Boolean needWithdrawPasswd) {
        this.needWithdrawPasswd = needWithdrawPasswd;
    }

    public Boolean getHeadIsOpen() {
        return headIsOpen;
    }

    public void setHeadIsOpen(Boolean headIsOpen) {
        this.headIsOpen = headIsOpen;
    }

    public Boolean getMemberIsOpen() {
        return memberIsOpen;
    }

    public void setMemberIsOpen(Boolean memberIsOpen) {
        this.memberIsOpen = memberIsOpen;
    }

    public Boolean getCanBet() {
        return canBet;
    }

    public void setCanBet(Boolean canBet) {
        this.canBet = canBet;
    }

    public List<LhcSxResult.LhcSx> getLhcSxList() {
        return lhcSxList;
    }

    public void setLhcSxList(List<LhcSxResult.LhcSx> lhcSxList) {
        this.lhcSxList = lhcSxList;
    }

    public static class LhcSx {
        /**
         * 生肖名字
         */
        private String name;

        /**
         * 生肖数字
         */
        private List<Integer> numList;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public List<Integer> getNumList() {
            return numList;
        }

        public void setNumList(List<Integer> numList) {
            this.numList = numList;
        }
    }
}
