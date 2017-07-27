package project38.api.result;

import project38.api.common.result.CommonResult;

import java.util.Date;

/**
 * Created by java1 on 2017/7/20.
 */
public class CouletResult extends CommonResult {

    private Coulet coulet;

    public Coulet getCoulet() { return coulet; }

    public void setCoulet(Coulet coulet) { this.coulet = coulet; }

    public static  class  Coulet {
        /**
         * 主键
         */
        private Long id;
        /**
         * 左边图片
         */
        private Long leftImg;
        /**
         * 左边宽度
         */
        private Double leftWidth;
        /**
         * 左边高度
         */
        private Double leftHeight;
        /**
         * 左边链接
         */
        private String leftLink;
        /**
         * 右边图片
         */
        private Long rightImg;
        /**
         * 右边宽度
         */
        private Double rightWidth;
        /**
         * 右边高度
         */
        private Double rightHeight;
        /**
         * 右边链接
         */
        private String rightLink;
        /**
         * 过期时间
         */
        private Date overTime;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }
        public Long getLeftImg() { return leftImg; }

        public void setLeftImg(Long leftImg) {
            this.leftImg = leftImg;
        }
        public Double getLeftWidth() {
            return leftWidth;
        }

        public void setLeftWidth(Double leftWidth) {
            this.leftWidth = leftWidth;
        }
        public Double getLeftHeight() {
            return leftHeight;
        }

        public void setLeftHeight(Double leftHeight) {
            this.leftHeight = leftHeight;
        }
        public String getLeftLink() {
            return leftLink;
        }

        public void setLeftLink(String leftLink) {
            this.leftLink = leftLink;
        }
        public Long getRightImg() {
            return rightImg;
        }

        public void setRightImg(Long rightImg) {
            this.rightImg = rightImg;
        }
        public Double getRightWidth() {
            return rightWidth;
        }

        public void setRightWidth(Double rightWidth) {
            this.rightWidth = rightWidth;
        }
        public Double getRightHeight() {
            return rightHeight;
        }

        public void setRightHeight(Double rightHeight) {
            this.rightHeight = rightHeight;
        }
        public String getRightLink() {
            return rightLink;
        }

        public void setRightLink(String rightLink) {
            this.rightLink = rightLink;
        }
        public Date getOverTime() {
            return overTime;
        }

        public void setOverTime(Date overTime) {
            this.overTime = overTime;
        }
    }
}
