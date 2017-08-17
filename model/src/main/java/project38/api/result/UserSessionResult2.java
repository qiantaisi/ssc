package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by Administrator on 2017/3/18.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class UserSessionResult2 extends CommonResult {
    /**
     * 编码
     */
    private Long id;
    /**
     * 注册IP
     */
    private String registerIp;
    /**
     * 性别
     */
    private Integer sex;
    /**
     * 生日
     */
    private Date birthday;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 会员账号
     */
    private String account;
    /**
     * 姓名
     */
    private String name;
    /**
     * 手机
     */
    private String telephone;
    /**
     * QQ
     */
    private String qq;
    /**
     * SKYPE
     */
    private String skype;
    /**
     * MSN
     */
    private String msn;
    /**
     * 是否启用
     */
    private Boolean isEnable;
    /**
     * 是否冻结
     */
    private Boolean isFrozen;
    /**
     * 余额
     */
    private BigDecimal balance;
    /**
     * 冻结额度
     */
    private BigDecimal freezingAmount;
    /**
     * 注册时间
     */
    private Date registerTime;
    /**
     * 分层id
     */
    private Long layerId;
    /**
     * 分层名称
     */
    private String layerName;
    /**
     * 贵宾网址
     */
    private String privateUrl;
    /**
     * 返点
     */
    private BigDecimal fandian;

    /**
     * 下属会员返点累计
     */
    private BigDecimal totalFandianMoney;
    /**
     *
     */
    private BigDecimal subUserTotalFandianMoney;
    /**
     * 代理域名
     */
    private String agentDomain;
    /**
     * 游戏平台编码
     */
    private Long lastGameId;
    /**
     * 游戏玩法编码
     */
    private Long lastPlayId;

    /**
     * 上次登录时间
     */
    private Date lastLoginTime;

    /**
     * 上周有效投注
     */
    private BigDecimal lastWeekValidBetMoney;

    /**
     * 本周有效投注
     */
    private BigDecimal thisWeekValidBetMoney;

    /**
     * 上次存款时间
     */
    private Date lastDepositTime;

    /**
     * 上次取款时间
     */
    private Date lastWithdrawTime;

    /**
     * 上次登录IP
     */
    private String lastLoginIp;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRegisterIp() {
        return registerIp;
    }

    public void setRegisterIp(String registerIp) {
        this.registerIp = registerIp;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getSkype() {
        return skype;
    }

    public void setSkype(String skype) {
        this.skype = skype;
    }

    public String getMsn() {
        return msn;
    }

    public void setMsn(String msn) {
        this.msn = msn;
    }

    public Boolean getEnable() {
        return isEnable;
    }

    public void setEnable(Boolean enable) {
        isEnable = enable;
    }

    public Boolean getFrozen() {
        return isFrozen;
    }

    public void setFrozen(Boolean frozen) {
        isFrozen = frozen;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public BigDecimal getFreezingAmount() {
        return freezingAmount;
    }

    public void setFreezingAmount(BigDecimal freezingAmount) {
        this.freezingAmount = freezingAmount;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public Long getLayerId() {
        return layerId;
    }

    public void setLayerId(Long layerId) {
        this.layerId = layerId;
    }

    public String getLayerName() {
        return layerName;
    }

    public void setLayerName(String layerName) {
        this.layerName = layerName;
    }

    public String getPrivateUrl() {
        return privateUrl;
    }

    public void setPrivateUrl(String privateUrl) {
        this.privateUrl = privateUrl;
    }

    public BigDecimal getFandian() {
        return fandian;
    }

    public void setFandian(BigDecimal fandian) {
        this.fandian = fandian;
    }

    public BigDecimal getTotalFandianMoney() {
        return totalFandianMoney;
    }

    public void setTotalFandianMoney(BigDecimal totalFandianMoney) {
        this.totalFandianMoney = totalFandianMoney;
    }

    public BigDecimal getSubUserTotalFandianMoney() {
        return subUserTotalFandianMoney;
    }

    public void setSubUserTotalFandianMoney(BigDecimal subUserTotalFandianMoney) {
        this.subUserTotalFandianMoney = subUserTotalFandianMoney;
    }

    public String getAgentDomain() {
        return agentDomain;
    }

    public void setAgentDomain(String agentDomain) {
        this.agentDomain = agentDomain;
    }

    public Long getLastGameId() {
        return lastGameId;
    }

    public void setLastGameId(Long lastGameId) {
        this.lastGameId = lastGameId;
    }

    public Long getLastPlayId() {
        return lastPlayId;
    }

    public void setLastPlayId(Long lastPlayId) {
        this.lastPlayId = lastPlayId;
    }

    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    public BigDecimal getLastWeekValidBetMoney() {
        return lastWeekValidBetMoney;
    }

    public void setLastWeekValidBetMoney(BigDecimal lastWeekValidBetMoney) {
        this.lastWeekValidBetMoney = lastWeekValidBetMoney;
    }

    public BigDecimal getThisWeekValidBetMoney() {
        return thisWeekValidBetMoney;
    }

    public void setThisWeekValidBetMoney(BigDecimal thisWeekValidBetMoney) {
        this.thisWeekValidBetMoney = thisWeekValidBetMoney;
    }

    public Date getLastDepositTime() {
        return lastDepositTime;
    }

    public void setLastDepositTime(Date lastDepositTime) {
        this.lastDepositTime = lastDepositTime;
    }

    public Date getLastWithdrawTime() {
        return lastWithdrawTime;
    }

    public void setLastWithdrawTime(Date lastWithdrawTime) {
        this.lastWithdrawTime = lastWithdrawTime;
    }

    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }
}
