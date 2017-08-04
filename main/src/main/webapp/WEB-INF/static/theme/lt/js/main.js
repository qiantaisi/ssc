// Text闪烁
function toggleColor(id, arr, s) {
    var self = this;
    self._i = 0;
    self._timer = null;

    self.run = function () {
        if (arr[self._i]) {
            $(id).css('color', arr[self._i]);
        }
        self._i == 0 ? self._i++ : self._i = 0;
        self._timer = setTimeout(function () {
            self.run(id, arr, s);
        }, s);
    }
    self.run();
}
$(function () {
    $('.js-article-color').each(function () {
        var color_arr = $(this).data('color');
        if ('undefined' == typeof color_arr) return;
        color_arr = color_arr.split('|');
        // 確認顏色數量  2=>閃爍   1=>單一色  0=>跳過
        if (color_arr.length == 2) {
            new toggleColor(this, [color_arr[0], color_arr[1]], 300);
        } else if (color_arr.length == 1 && color_arr[0] != '') {
            $(this).css('color', color_arr[0]);
        }
    });
});

$('.index_main_rt1_2t a').click(function () {
    var index = $(this).index();
    $(this).addClass('ahover').siblings().removeClass('ahover');
    $(".index_main_rt1_2b").eq(index).show().addClass('active').siblings().removeClass('active').hide();
});

$('.touzhu_t_qht a').click(function () {
    var index = $(this).index();
    $(this).addClass('ahover').siblings().removeClass('ahover');
    $(".touzhu_b_main").eq(index).show().addClass('active').siblings().removeClass('active').hide();
});
//加减
$(function () {
    $(".add").click(function () {
        var t = $(this).parent().find('input[class*=text_box]');
        t.val(parseInt(t.val()) + 1)
        setTotal();
    })
    $(".min").click(function () {
        var t = $(this).parent().find('input[class*=text_box]');
        t.val(parseInt(t.val()) - 1)
        if (parseInt(t.val()) < 0) {
            t.val(0);
        }
        setTotal();
    })
    function setTotal() {
        var s = 0;
        $("#tab td").each(function () {
            s += parseInt($(this).find('input[class*=text_box]').val()) * parseFloat($(this).find('span[class*=price]').text());
        });
        $("#total").html(s.toFixed(2));
    }

    setTotal();

})


$(".shuaxin").click(function () {

    var eedd = $(this).parents(".touzhu_b_main").index();

    $(this).parents(".touzhu_b_main").find(".qiu").each(function (index) {

        index = setInterval(function () {
            $(".touzhu_b_main:eq(" + eedd + ") .qiu").text(parseInt(99 * Math.random()))
            setTimeout(function () {
                clearInterval(index);
                $(".touzhu_b_main:eq(" + eedd + ") .qiu").parents(".touzhu_b_main").find(".qiu").each(function (index) {
                    $(this).text(parseInt(99 * Math.random()));
                });
            }, 300)
        }, 10)

    });
    $(this).parents(".touzhu_b_main").find(".biaoqian").each(function (index1) {
        var arr = ['鼠', '虎', '兔', '小', '双', '狗', '蛇', '猪']
        index1 = setInterval(function () {
            $(".touzhu_b_main:eq(" + eedd + ") .biaoqian span").text(arr[Math.floor(Math.random() * arr.length)])
            setTimeout(function () {
                clearInterval(index1);
                $(".touzhu_b_main:eq(" + eedd + ") .biaoqian").parents(".touzhu_b_main").find(".biaoqian span").each(function (index) {
                    $(this).text(arr[Math.floor(Math.random() * arr.length)]);
                });
            }, 300)
        }, 10)

    });


})


$('.loginbtn').click(function () {


    $(".bg").show();
    $(".login_alert").show();
});
$('.bg').click(function () {
    $(".bg").hide();
    $(".login_alert").hide();
});
$('.cha').click(function () {
    $(".bg").hide();
    $(".login_alert").hide();
});

$(function() {
    //cache the ticker
    var ticker = $("#view_apply");

    //wrap dt:dd pairs in divs
    ticker.children().filter("li").each(function() {

        var dt = $(this),
            container = $("<div>");

        dt.next().appendTo(container);
        dt.prependTo(container);

        container.appendTo(ticker);
    });

    //hide the scrollbar
    ticker.css("overflow", "hidden");

    //animator function
    function animator(currentItem) {

        //work out new anim duration
        var distance = currentItem.height();
        duration = (distance + parseInt(currentItem.css("marginTop"))) / 0.025;

        //animate the first child of the ticker
        currentItem.animate({
            marginTop: -distance
        }, duration, "linear", function() {

            //move current item to the bottom
            currentItem.appendTo(currentItem.parent()).css("marginTop", 0);

            //recurse
            animator(currentItem.parent().children(":first"));
        });
    };

    //start the ticker
    animator(ticker.children(":first"));

    //set mouseenter
    ticker.mouseenter(function() {

        //stop current animation
        ticker.children().stop();

    });

    //set mouseleave
    ticker.mouseleave(function() {

        //resume animation
        animator(ticker.children(":first"));

    });
});