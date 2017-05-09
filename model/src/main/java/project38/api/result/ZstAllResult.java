package project38.api.result;


import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2017/5/7.
 */
public class ZstAllResult extends CommonResult {
    private List<ZstUrl> zstList;

    public List<ZstUrl> getZstList() {
        return zstList;
    }

    public void setZstList(List<ZstUrl> zstList) {
        this.zstList = zstList;
    }

    public static class ZstUrl {
        /**
         * 链接
         */
        private String url;

        /**
         * 彩种编码
         */
        private Long playGroupId;

        /**
         * 彩种名称
         */
        private String playGroupName;

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
        }

        public String getPlayGroupName() {
            return playGroupName;
        }

        public void setPlayGroupName(String playGroupName) {
            this.playGroupName = playGroupName;
        }
    }
}
