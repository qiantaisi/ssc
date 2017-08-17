package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2017/1/17.
 */@JsonSeriali
 ze(include = JsonSerialize.Inclusion.NON_NULL)
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
        private BigDecimal minPl;
        /**
         *
         */
        private BigDecimal maxFdBl;

        /**
         * 玩法ID
         */
        private Long playId;

        public Long getPlayId() {
            return playId;
        }

        public void setPlayId(Long playId) {
            this.playId = playId;
        }

        public BigDecimal getMinPl() {
            return minPl;
        }

        public void setMinPl(BigDecimal minPl) {
            this.minPl = minPl;
        }

        public BigDecimal getMaxFdBl() {
            return maxFdBl;
        }

        public void setMaxFdBl(BigDecimal maxFdBl) {
            this.maxFdBl = maxFdBl;
        }

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
