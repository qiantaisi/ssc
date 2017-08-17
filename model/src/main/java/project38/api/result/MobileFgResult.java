package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by java1 on 2017/7/3.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class MobileFgResult extends CommonResult {

    //手机模板风格
    public MobileFg mobileFg;

    public static class MobileFg{

        //d顶部
        private String dingbu;

        //底部
        private String dibu;

        //注册页面
        private String rgPage;

        //登录页面
        private String loginPage;

        //购彩大厅
        private String gcdt;

        public String getDingbu() {
            return dingbu;
        } 

        public void setDingbu(String dingbu) {
            this.dingbu = dingbu;
        }

        public String getDibu() {
            return dibu;
        }

        public void setDibu(String dibu) {
            this.dibu = dibu;
        }

        public String getRgPage() { return rgPage; }

        public void setRgPage(String rgPage) { this.rgPage = rgPage; }

        public String getLoginPage() { return loginPage; }

        public void setLoginPage(String loginPage) { this.loginPage = loginPage; }

        public String getGcdt() { return gcdt; }

        public void setGcdt(String gcdt) { this.gcdt = gcdt; }
    }
}
