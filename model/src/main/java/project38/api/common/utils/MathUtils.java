package project38.api.common.utils;

import org.apache.commons.lang3.StringUtils;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/**
 * Created by Administrator on 2016/5/12.
 */
public class MathUtils {
    public static boolean isNum(String str) {
        if (StringUtils.isBlank(str)) {
            return false;
        }

        return str.matches("^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$");
    }

    public static Double get3Double(Double value) {
        if (null == value) {
            return null;
        }
        DecimalFormat df = new DecimalFormat("0.00");
        return new Double(df.format(value.doubleValue()).toString());
    }

    public static Double get2Double(Double value) {
        if (null == value) {
            return null;
        }
        DecimalFormat df = new DecimalFormat("0.000");
        return new Double(df.format(value.doubleValue()).toString());
    }

    public static void main(String[] args) {
        double o = new Double(500000047.67);
        System.out.println(o);
    }
}
