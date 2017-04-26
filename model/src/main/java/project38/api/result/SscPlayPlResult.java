package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2017/1/17.
 */
public class SscPlayPlResult extends CommonResult {
    private List<SscPlayPl> sscPlayPlList;

    public List<SscPlayPl> getSscPlayPlList() {
        return sscPlayPlList;
    }

    public void setSscPlayPlList(List<SscPlayPl> sscPlayPlList) {
        this.sscPlayPlList = sscPlayPlList;
    }

    public static class SscPlayPl {
        /**
         * 赔率编码
         */
        private Long playPlId;
        /**
         * 赔率
         */
        private BigDecimal playPl;

        public Long getPlayPlId() {
            return playPlId;
        }

        public void setPlayPlId(Long playPlId) {
            this.playPlId = playPlId;
        }

        public BigDecimal getPlayPl() {
            return playPl;
        }

        public void setPlayPl(BigDecimal playPl) {
            this.playPl = playPl;
        }
    }
}
