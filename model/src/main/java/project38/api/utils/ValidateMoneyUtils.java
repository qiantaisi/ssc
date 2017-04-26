package project38.api.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2016/11/22.
 */
public class ValidateMoneyUtils {

    //金额验证
    public static boolean isNumber(String str){
        Pattern pattern=Pattern.compile("^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){2})?$"); // 判断小数点后2位的数字的正则表达式
        //Pattern patternTwo=Pattern.compile("^\\+?(\\d*\\.\\d{2})$");
        Matcher match=pattern.matcher(str);
        return match.matches() == true;
    }
}
