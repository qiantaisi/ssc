package project38.api.result;

import project38.api.common.result.CommonResult;
import java.util.Date;

import java.math.BigDecimal;

/**
 * Created by Administrator on 2016/11/15.
 */
public class UserSessionResult extends CommonResult {
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
     * 取款密码
     */
    private String drawPassword;

    /**
     * 是否允许存款
     */
    private Boolean canDeposit;

    /**
     * 是否允许提款
     */
    private Boolean canWithdraw;
    /**
     * 是否可以修改资料
     */
    private Boolean canEditInfo;

    /**
     * 是否允许修改银行卡
     */
    private Boolean canEditUserBank;

    /**
     * 是否允许修密码
     */
    private Boolean canEditPassword;

    /**
     * 是否允许代理
     */
    private Boolean canAgent;

    /**
     * 是否允许修改安全信息
     */
    private Boolean canSafeinfo;

    public Boolean getCanDeposit() {
        return canDeposit;
    }

    public void setCanDeposit(Boolean canDeposit) {
        this.canDeposit = canDeposit;
    }

    public Boolean getCanWithdraw() {
        return canWithdraw;
    }

    public void setCanWithdraw(Boolean canWithdraw) {
        this.canWithdraw = canWithdraw;
    }

    public Boolean getCanEditInfo() {
        return canEditInfo;
    }

    public void setCanEditInfo(Boolean canEditInfo) {
        this.canEditInfo = canEditInfo;
    }

    public Boolean getCanEditUserBank() {
        return canEditUserBank;
    }

    public void setCanEditUserBank(Boolean canEditUserBank) {
        this.canEditUserBank = canEditUserBank;
    }

    public Boolean getCanEditPassword() {
        return canEditPassword;
    }

    public void setCanEditPassword(Boolean canEditPassword) {
        this.canEditPassword = canEditPassword;
    }

    public Boolean getCanAgent() {
        return canAgent;
    }

    public void setCanAgent(Boolean canAgent) {
        this.canAgent = canAgent;
    }

    public Boolean getCanSafeinfo() {
        return canSafeinfo;
    }

    public void setCanSafeinfo(Boolean canSafeinfo) {
        this.canSafeinfo = canSafeinfo;
    }

    public String getDrawPassword() {
        return drawPassword;
    }

    public void setDrawPassword(String drawPassword) {
        this.drawPassword = drawPassword;
    }

    public String getAgentDomain() {
        return agentDomain;
    }

    public void setAgentDomain(String agentDomain) {
        this.agentDomain = agentDomain;
    }

    public BigDecimal getSubUserTotalFandianMoney() {
        return subUserTotalFandianMoney;
    }

    public void setSubUserTotalFandianMoney(BigDecimal subUserTotalFandianMoney) {
        this.subUserTotalFandianMoney = subUserTotalFandianMoney;
    }

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
}
