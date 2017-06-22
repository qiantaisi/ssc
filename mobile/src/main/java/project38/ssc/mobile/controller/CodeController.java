package project38.ssc.mobile.controller;


/**
 * Created by Administrator on 2017/6/22.
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;


@Controller
@RequestMapping("/code")
public class CodeController {
    private int width = 3;//定义图片的width
    private int height = 10;//定义图片的height
    private int codeCount = 4;//定义图片上显示验证码的个数
    private int fontHeight = 17;
    private int codeY = 20;     //y坐标绘图
    private int codeX = 0;     //x坐标绘图
    char[] codeSequence = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'}; //定义随机生成验证码的数组。

    @RequestMapping(value = "/yzm", method = {RequestMethod.GET})
    public void getCode(HttpServletRequest req, HttpServletResponse resp, Integer imgWidth, Integer imgHeight, Integer imgFontHeight, Integer imgCodeY, Integer imgCodeX)
            throws IOException {
        if (null != imgWidth) {
            this.width = imgWidth;
        }
        if (null != imgHeight) {
            this.height = imgHeight;
        }
        if (null != imgFontHeight) {
            this.fontHeight = imgFontHeight;
        }
        if (null != imgCodeY) {
            this.codeY = imgCodeY;
        }
        if (null != imgCodeX) {
            this.codeX = imgCodeX;
        }

        // 定义图像buffer
        BufferedImage buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
//		Graphics2D gd = buffImg.createGraphics();
        //Graphics2D gd = (Graphics2D) buffImg.getGraphics();
        Graphics gd = buffImg.getGraphics();
        // 创建一个随机数生成器类
        Random random = new Random();
        // 将图像填充为白色
        gd.setColor(Color.WHITE);
        gd.fillRect(0, 0, width, height);

        // 创建字体，字体的大小应该根据图片的高度来定。
        Font font = new Font("宋体", Font.BOLD, fontHeight);
        // 设置字体。
        gd.setFont(font);

        // 画边框。
        gd.setColor(Color.BLACK);
        gd.drawRect(0, 0, width - 1, height - 1);

        // 随机产生40条干扰线，使图象中的认证码不易被其它程序探测到。
        gd.setColor(Color.BLACK);
        for (int i = 0; i < 1; i++) {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int xl = random.nextInt(2);
            int yl = random.nextInt(2);
            gd.drawLine(x, y, x + xl, y + yl);
        }

        // randomCode用于保存随机产生的验证码，以便用户登录后进行验证。
        StringBuffer randomCode = new StringBuffer();
        int red = 0, green = 0, blue = 0;

        // 随机产生codeCount数字的验证码。
        for (int i = 0; i < codeCount; i++) {
            // 得到随机产生的验证码数字。
            String code = String.valueOf(codeSequence[random.nextInt(codeSequence.length)]);
            // 产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同。
            red = random.nextInt(255);
            green = random.nextInt(255);
            blue = random.nextInt(255);

            // 用随机产生的颜色将验证码绘制到图像中。
            gd.setColor(new Color(red, green, blue));
            gd.drawString(code, i * ((width - 3) / codeCount) + codeX, codeY);

            // 将产生的四个随机数组合在一起。
            randomCode.append(code);
        }
        // 将四位数字的验证码保存到Session中。
        HttpSession session = req.getSession();
        session.setAttribute("yzmCode", randomCode.toString());

        // 禁止图像缓存。
        resp.setHeader("Pragma", "no-cache");
        resp.setHeader("Cache-Control", "no-cache");
        resp.setDateHeader("Expires", 0);

        resp.setContentType("image/jpeg");

        // 将图像输出到Servlet输出流中。
        ServletOutputStream sos = resp.getOutputStream();
        ImageIO.write(buffImg, "jpeg", sos);
        sos.close();
    }
}
