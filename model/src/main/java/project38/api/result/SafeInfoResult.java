package project38.api.result;

import project38.api.common.result.CommonResult;
import java.util.Date;

/**
 * Created by Administrator on 2016/11/19.
 */
public class SafeInfoResult extends CommonResult {
    /**
     * 最后登录时间
     */
    private Date thisLoginTime;
    /**
     * 上一次登录时间
     */
    private Date lastLoginTime;

    /**
     * 最后登录IP
     */
    private String thisLoginIp;
    /**
     * 上次登录IP
     */
    private String lastLoginIp;

    /**
     * 最后登录地点
     */
    private String thisLoginCity;
    /**
     * 上次登录地点
     */
    private String lastLoginCity;

    /**
     * 注册时间
     */
    private Date registerTime;
    /**
     * 注册IP
     */
    private String registerIp;

    public Date getThisLoginTime() {
        return thisLoginTime;
    }

    public void setThisLoginTime(Date thisLoginTime) {
        this.thisLoginTime = thisLoginTime;
    }

    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    public String getThisLoginIp() {
        return thisLoginIp;
    }

    public void setThisLoginIp(String thisLoginIp) {
        this.thisLoginIp = thisLoginIp;
    }

    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }

    public String getThisLoginCity() {
        return thisLoginCity;
    }

    public void setThisLoginCity(String thisLoginCity) {
        this.thisLoginCity = thisLoginCity;
    }

    public String getLastLoginCity() {
        return lastLoginCity;
    }

    public void setLastLoginCity(String lastLoginCity) {
        this.lastLoginCity = lastLoginCity;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public String getRegisterIp() {
        return registerIp;
    }

    public void setRegisterIp(String registerIp) {
        this.registerIp = registerIp;
    }
}
