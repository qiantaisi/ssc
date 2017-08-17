package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Administrator on 2017/3/9.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class SscPlayGroupPlResult extends CommonResult {
    private List<SscPlayGroupPlResult.SscPlayPlGroup> sscPlayPlGroupList;

    public List<SscPlayPlGroup> getSscPlayPlGroupList() {
        return sscPlayPlGroupList;
    }

    public void setSscPlayPlGroupList(List<SscPlayPlGroup> sscPlayPlGroupList) {
        this.sscPlayPlGroupList = sscPlayPlGroupList;
    }

    public static class SscPlayPlGroup {
        private List<SscPlayPl> sscPlayPlList;

        private String groupName;

        private Long id;

        public List<SscPlayPl> getSscPlayPlList() {
            return sscPlayPlList;
        }

        public void setSscPlayPlList(List<SscPlayPl> sscPlayPlList) {
            this.sscPlayPlList = sscPlayPlList;
        }

        public String getGroupName() {
            return groupName;
        }

        public void setGroupName(String groupName) {
            this.groupName = groupName;
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }
    }

    public static class SscPlayPl {
        /**
         * 赔率编码
         */
        private Long id;
        /**
         * 号码
         */
        private String name;
        /**
         * 赔率
         */
        private BigDecimal pl;

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

        public BigDecimal getPl() {
            return pl;
        }

        public void setPl(BigDecimal pl) {
            this.pl = pl;
        }
    }
}
