package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2017/1/17.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class SscPlayPlResult2 extends CommonResult {
    private List<SscPlayPlGroup> sscPlayPlGroupList;

    public List<SscPlayPlGroup> getSscPlayPlGroupList() {
        return sscPlayPlGroupList;
    }

    public void setSscPlayPlGroupList(List<SscPlayPlGroup> sscPlayPlGroupList) {
        this.sscPlayPlGroupList = sscPlayPlGroupList;
    }

    public static class SscPlayPlGroup {
        private String name;

        private Integer dataType;

        public Integer getDataType() {
            return dataType;
        }

        public void setDataType(Integer dataType) {
            this.dataType = dataType;
        }

        private List<SscPlayPl> sscPlayPlList;

        public List<SscPlayPl> getSscPlayPlList() {
            return sscPlayPlList;
        }

        public void setSscPlayPlList(List<SscPlayPl> sscPlayPlList) {
            this.sscPlayPlList = sscPlayPlList;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
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

        /**
         * 名称
         */
        private String name;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
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
