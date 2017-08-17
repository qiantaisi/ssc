package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2016/11/20.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class SscPlayGroupListResult extends CommonResult {
    private List<SscPlayGroup> sscPlayGroupList;
    private List<SscPlay> sscPlayList;

    public List<SscPlayGroup> getSscPlayGroupList() {
        return sscPlayGroupList;
    }

    public void setSscPlayGroupList(List<SscPlayGroup> sscPlayGroupList) {
        this.sscPlayGroupList = sscPlayGroupList;
    }

    public List<SscPlay> getSscPlayList() {
        return sscPlayList;
    }

    public void setSscPlayList(List<SscPlay> sscPlayList) {
        this.sscPlayList = sscPlayList;
    }

    public static class SscPlay {
        private Long id;
        private String name;
        private Long playGroupId;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
        }
    }

    public static class SscPlayGroup {
        /**
         * 彩种编码
         */
        private Long id;

        /**
         * 彩种名字
         */
        private String name;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
}
