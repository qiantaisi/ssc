package project38.api.common.exception;

/**
 * Created by Administrator on 2016/8/18.
 */
public class UserException extends Exception {
    /**
     * 错误代码
     */
    private int code;

    /**
     * 错误信息
     */
    private String message;

    public UserException(int code, String message) {
        super(message);
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
