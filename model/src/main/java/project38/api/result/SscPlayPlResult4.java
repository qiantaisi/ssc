package project38.api.result;

import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2017/1/17.
 */
public class SscPlayPlResult4 extends CommonResult {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private List<SscPlayPlGroup> sscPlayPlGroupList;

    public List<SscPlayPlGroup> getSscPlayPlGroupList() {
        return sscPlayPlGroupList;
    }

    public void setSscPlayPlGroupList(List<SscPlayPlGroup> sscPlayPlGroupList) {
        this.sscPlayPlGroupList = sscPlayPlGroupList;
    }

    public static class SscPlayPlGroup {
        private String name;

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
        private String playPlId;
        /**
         * 赔率
         */
        private String playPl;

        /**
         * 名称
         */
        private String name;

        public String getPlayPlId() {
            return playPlId;
        }

        public void setPlayPlId(String playPlId) {
            this.playPlId = playPlId;
        }

        public String getPlayPl() {
            return playPl;
        }

        public void setPlayPl(String playPl) {
            this.playPl = playPl;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
}
