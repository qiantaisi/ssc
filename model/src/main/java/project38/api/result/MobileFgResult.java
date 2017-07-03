package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by java1 on 2017/7/3.
 */
public class MobileFgResult extends CommonResult {

    //手机模板风格
    public MobileFg mobileFg;

    public static class MobileFg{

        private String dingbu;

        private String dibu;

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
    }
}
