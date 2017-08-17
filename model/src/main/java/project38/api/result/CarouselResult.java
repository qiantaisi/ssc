package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/12/2.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class CarouselResult extends CommonResult {
    private List<Carousel> carouselList;

    public List<Carousel> getCarouselList() {
        return carouselList;
    }

    public void setCarouselList(List<Carousel> carouselList) {
        this.carouselList = carouselList;
    }

    public static class Carousel {
        /**
         * 轮播编码
         */
        private Long id;
        /**
         * 标题
         */
        private String title;
        /**
         * 类型
         */
        private Integer type;
        /**
         * 权重
         */
        private Integer weight;
        /**
         * 图片编码
         */
        private Long imageId;
        /**
         * 链接
         */
        private String url;
        /**
         * 创建日期
         */
        private Date createTime;
        /**
         * 修改日期
         */
        private Date updateTime;
        /**
         * 是否启用
         */
        private Boolean isEnable;
        /**
         * 数据
         */
        private String imageData;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public Integer getType() {
            return type;
        }

        public void setType(Integer type) {
            this.type = type;
        }

        public Integer getWeight() {
            return weight;
        }

        public void setWeight(Integer weight) {
            this.weight = weight;
        }

        public Long getImageId() {
            return imageId;
        }

        public void setImageId(Long imageId) {
            this.imageId = imageId;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
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

        public String getImageData() {
            return imageData;
        }

        public void setImageData(String imageData) {
            this.imageData = imageData;
        }
    }
}
