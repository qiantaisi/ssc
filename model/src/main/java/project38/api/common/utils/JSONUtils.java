package project38.api.common.utils;

import com.alibaba.fastjson.JSON;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.util.List;

/**
 * Created by Administrator on 2016/4/9.
 */
public class JSONUtils {
    private static Log log = LogFactory.getLog(JSONUtils.class);

    /**
     * toJSONStr:对象序列化成json串
     *
     * @param object
     * @return
     */
    public static String toJSONStr(Object object) {
        if (object != null) {
            try {
                String s = JSON.toJSONString(object);
                return s;
            } catch (Exception e) {
                log.error(JSONUtils.class, e);
            }
        }
        return null;
    }

    /**
     * json串序列化成对象
     *
     * @param string
     * @param objClass
     * @param <T>
     * @return
     */
    public static <T> T toObject(String string, Class<T> objClass) {
        if (StringUtils.isNotBlank(string)) {
            try {
                String tmp = string.trim();
                return JSON.parseObject(tmp, objClass);
            } catch (Exception e) {
                log.error(JSONUtils.class, e);
            }
        }
        return null;
    }

    /**
     * json串序列化成对象集合
     *
     * @param string
     * @param objClass
     * @param <T>
     * @return
     */
    public static <T> List<T> toArray(String string, Class<T> objClass) {

        if (StringUtils.isNotBlank(string)) {
            try {
                return JSON.parseArray(string, objClass);
            } catch (Exception e) {
                log.error(JSONUtils.class, e);
            }
        }
        return null;
    }
}
