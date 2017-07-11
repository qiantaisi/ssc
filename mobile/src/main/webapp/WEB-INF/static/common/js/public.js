// 框架自定义函数合集
var PUBLIC_JS = {
    /**
     * 返回上一页
     */
    back: function() {
        // history.back();
        window.history.back = function () {
            return;
        }

        if (/(iPhone|iPad|iPod)/i.test(navigator.userAgent)) {
            window.location.href = window.document.referrer;
        } else {
            window.history.go(-1);
        }
        // history.go(-1);
    }
};