package com.petsathall.project.common.utils;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;

/**
 * Created by Administrator on 2016/5/19.
 */
public class Base64Utils {
    public static String encode(String source) {
        return encode(source, "UTF-8");
    }

    public static String encode(String source, String charset) {
        String result = null;
        try {
            if (StringUtils.isNotBlank(source)) {
                result = new String(Base64.encodeBase64(source.getBytes()), charset);
            }
        } catch (Exception e) {
        }
        return result;
    }

    public static String decode(String source) {
        return decode(source, "UTF-8");
    }

    public static String decode(String source, String charset) {
        String result = null;
        try {
            if (StringUtils.isNotBlank(source)) {
                result = new String(Base64.decodeBase64(source.getBytes(charset)));
            }
        } catch (Exception e) {
        }

        return result;
    }
}
