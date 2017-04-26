package com.petsathall.project.common.utils;

import java.util.UUID;

/**
 * Created by Administrator on 2016/11/29.
 */
public class UUIDUtils {
    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }
}
