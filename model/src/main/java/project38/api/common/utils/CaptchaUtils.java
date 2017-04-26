package com.petsathall.project.common.utils;

import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.Random;

/**
 * Created by Administrator on 2016/6/11.
 */
public class CaptchaUtils {
    private static Log log = LogFactory.getLog(CaptchaUtils.class);

    // 图片的宽度。
    private int width = 120;
    // 图片的高度。
    private int height = 40;
    // 验证码字符个数
    private int codeCount = 4;
    // 验证码干扰线数
    private int lineCount = 50;
    // 验证码
    private String code = null;
    // 验证码图片Buffer
    private BufferedImage buffImg = null;

    private char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
            'I', 'J', 'K', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
            'X', 'Y', 'Z', '2', '3', '4', '5', '6', '7', '8', '9' };

    // 生成随机数
    private Random random = new Random();

    public CaptchaUtils() {
        this.createCode();
    }

    /**
     *
     * @param width
     *            图片宽
     * @param height
     *            图片高
     */
    public CaptchaUtils(int width, int height) {
        this.width = width;
        this.height = height;
        this.createCode();
    }

    /**
     *
     * @param width
     *            图片宽
     * @param height
     *            图片高
     * @param codeCount
     *            字符个数
     * @param lineCount
     *            干扰线条数
     */
    public CaptchaUtils(int width, int height, int codeCount, int lineCount) {
        this.width = width;
        this.height = height;
        this.codeCount = codeCount;
        this.lineCount = lineCount;
        this.createCode();
    }

    public void createCode() {
        int codeX = 0;
        int fontHeight = 0;
        fontHeight = height - 5;// 字体的高度
        codeX = width / (codeCount+3);// 每个字符的宽度

        // 图像buffer
        buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = buffImg.createGraphics();

        // 将图像填充为白色
        g.setColor(Color.WHITE);
        g.fillRect(0, 0, width, height);

        // 创建字体
        ImgFontByte imgFont = new ImgFontByte();
        Font font = imgFont.getFont(fontHeight);
        g.setFont(font);

        // 绘制干扰线
        for (int i = 0; i < lineCount; i++) {
            int xs = getRandomNumber(width);
            int ys = getRandomNumber(height);
            int xe = xs + getRandomNumber(width / 8);
            int ye = ys + getRandomNumber(height / 8);
            g.setColor(getRandomColor());
            g.drawLine(xs, ys, xe, ye);
        }

        StringBuffer randomCode = new StringBuffer();
        // 随机产生验证码字符
        for (int i = 0; i < codeCount; i++) {
            String strRand = String.valueOf(codeSequence[random.nextInt(codeSequence.length)]);
            // 设置字体颜色
            g.setColor(getRandomColor());
            // 设置字体位置
            g.drawString(strRand, (i + 1) * codeX, height / 2 + fontHeight / 2);
            randomCode.append(strRand);
        }
        code = randomCode.toString();
    }

    /** 获取随机颜色 */
    private Color getRandomColor() {
        int r = RandomUtils.nextInt(1, 150);
        int g = RandomUtils.nextInt(1, 150);
        int b = RandomUtils.nextInt(1, 150);
        return new Color(r, g, b);
    }

    /** 获取随机数 */
    private int getRandomNumber(int number) {
        return random.nextInt(number);
    }

    public void write(String path) throws IOException {
        OutputStream sos = new FileOutputStream(path);
        this.write(sos);
    }

    public void write(OutputStream sos) throws IOException {
        ImageIO.write(buffImg, "png", sos);
        sos.close();
    }

    public BufferedImage getBuffImg() {
        return buffImg;
    }

    public String getCode() {
        return code;
    }

    /** 字体样式类 */
    class ImgFontByte {
        public Font getFont(int fontHeight) {
            try {
                File file = new File("font/HoneyLight.ttf");
                Font baseFont = Font.createFont(Font.TRUETYPE_FONT, new FileInputStream(file));
                return baseFont.deriveFont(Font.PLAIN, fontHeight);
            } catch (Exception e) {
                return new Font("Arial", Font.PLAIN, fontHeight);
            }
        }

        private byte[] hex2byte(String str) {
            if (str == null)
                return null;
            str = str.trim();
            int len = str.length();
            if (len == 0 || len % 2 == 1)
                return null;

            byte[] b = new byte[len / 2];
            try {
                for (int i = 0; i < str.length(); i += 2) {
                    b[i / 2] = (byte) Integer.decode(
                            "0x" + str.substring(i, i + 2)).intValue();
                }
                return b;
            } catch (Exception e) {
                return null;
            }
        }

    }

    public static void setSessionCode(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, String code) {
        httpServletRequest.getSession().setAttribute("CAPTCHA_CODE", code);

        // 设置响应的类型格式为图片格式
        httpServletResponse.setContentType("image/jpeg");
        // 禁止图像缓存。
        httpServletResponse.setHeader("Pragma", "no-cache");
        httpServletResponse.setHeader("Cache-Control", "no-cache");
        httpServletResponse.setDateHeader("Expires", 0);
    }

    public static boolean checkSessionCode(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, String code) {
        try {
            String sessionCode = (String) httpServletRequest.getSession().getAttribute("CAPTCHA_CODE");
            httpServletRequest.getSession().removeAttribute("CAPTCHA_CODE");
            log.info("检验验证码：" + sessionCode + "和" + code);
            return StringUtils.equalsIgnoreCase(sessionCode.toLowerCase(), code.toLowerCase());
        } catch (Exception e) {
            log.error(CaptchaUtils.class, e);
        }
        return false;
    }
}
