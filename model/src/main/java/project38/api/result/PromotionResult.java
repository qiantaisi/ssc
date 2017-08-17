package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/15.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class PromotionResult extends CommonResult {
    /**
     * 站内信列表
     */
    private List<Promotion> promotionList;

    public List<Promotion> getPromotionList() {
        return promotionList;
    }

    public void setPromotionList(List<Promotion> promotionList) {
        this.promotionList = promotionList;
    }

    public static class Promotion {
        /**
         * 优惠活动编码
         */
        private Long id;
        /**
         * 内容
         */
        private String content;
        /**
         * 名称
         */
        private String name;
        /**
         * 大图编码
         */
        private Long bigImageId;
        /**
         * 小图编码
         */
        private Long smallImageId;
        /**
         * 创建时间
         */
        private Date createTime;
        /**
         * 修改时间
         */
        private Date updateTime;
        /**
         * 是否启用
         */
        private Boolean isEnable;
        /**
         * 权重
         */
        private Integer weight;
        /**
         * 数据
         */
        private String bigImageData;
        /**
         * 数据
         */
        private String smallImageData;
        private Date startTime;
        private Date endTime;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Long getBigImageId() {
            return bigImageId;
        }

        public void setBigImageId(Long bigImageId) {
            this.bigImageId = bigImageId;
        }

        public Long getSmallImageId() {
            return smallImageId;
        }

        public void setSmallImageId(Long smallImageId) {
            this.smallImageId = smallImageId;
        }

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public Date getUpdateTime() {
            return updateTime;
        }

        public void setUpdateTime(Date updateTime) {
            this.updateTime = updateTime;
        }

        public Boolean getEnable() {
            return isEnable;
        }

        public void setEnable(Boolean enable) {
            isEnable = enable;
        }

        public Integer getWeight() {
            return weight;
        }

        public void setWeight(Integer weight) {
            this.weight = weight;
        }

        public String getBigImageData() {
            return bigImageData;
        }

        public void setBigImageData(String bigImageData) {
            this.bigImageData = bigImageData;
        }

        public String getSmallImageData() {
            return smallImageData;
        }

        public void setSmallImageData(String smallImageData) {
            this.smallImageData = smallImageData;
        }

        public Date getStartTime() {
            return startTime;
        }

        public void setStartTime(Date startTime) {
            this.startTime = startTime;
        }

        public Date getEndTime() {
            return endTime;
        }

        public void setEndTime(Date endTime) {
            this.endTime = endTime;
        }
    }
}
