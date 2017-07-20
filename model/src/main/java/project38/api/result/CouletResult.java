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
        private String leftImg;
        /**
         * 左边宽度
         */
        private String leftWidth;
        /**
         * 左边高度
         */
        private String leftHeight;
        /**
         * 左边链接
         */
        private String leftLink;
        /**
         * 右边图片
         */
        private String rightImg;
        /**
         * 右边宽度
         */
        private String rightWidth;
        /**
         * 右边高度
         */
        private String rightHeight;
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
        public String getLeftImg() {
            return leftImg;
        }

        public void setLeftImg(String leftImg) {
            this.leftImg = leftImg;
        }
        public String getLeftWidth() {
            return leftWidth;
        }

        public void setLeftWidth(String leftWidth) {
            this.leftWidth = leftWidth;
        }
        public String getLeftHeight() {
            return leftHeight;
        }

        public void setLeftHeight(String leftHeight) {
            this.leftHeight = leftHeight;
        }
        public String getLeftLink() {
            return leftLink;
        }

        public void setLeftLink(String leftLink) {
            this.leftLink = leftLink;
        }
        public String getRightImg() {
            return rightImg;
        }

        public void setRightImg(String rightImg) {
            this.rightImg = rightImg;
        }
        public String getRightWidth() {
            return rightWidth;
        }

        public void setRightWidth(String rightWidth) {
            this.rightWidth = rightWidth;
        }
        public String getRightHeight() {
            return rightHeight;
        }

        public void setRightHeight(String rightHeight) {
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
