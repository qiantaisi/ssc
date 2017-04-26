package com.petsathall.project.common.utils;

import org.apache.commons.lang3.StringUtils;

/**
 * Created by Administrator on 2016/4/10.
 */
public class PasswordUtils {
    public static String passwordEncode(String password) {
        if (StringUtils.isBlank(password)) {
            return "";
        }

        // 一次加密
        String tmpStr = MD5Utils.encrypt(password);

        // 反转拼接
        StringBuilder builder = new StringBuilder();
        builder.append(StringUtils.reverse(tmpStr.substring(0, tmpStr.length() / 2)));
        builder.append(StringUtils.reverse(tmpStr.substring(tmpStr.length() / 2)));

        // 取前三位作为校验码
        builder.append(builder.substring(0, 3));

        // 二次加密
        String result = MD5Utils.encrypt(builder.toString());

        return result;
    }
}
