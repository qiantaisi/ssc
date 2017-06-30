package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by java1 on 2017/6/30.
 */
public class AppGenxinResult extends CommonResult {

    public AppVersion appVersion;

    public static class AppVersion{
        private String version;

        private String type;

        private boolean isForce;

        public String getVersion() { return version; }

        public void setVersion(String version) { this.version = version; }

        public String getType() { return type; }

        public void setType(String type) { this.type = type; }

        public boolean isForce() { return isForce; }

        public void setIsForce(boolean isForce) { isForce = isForce; }
    }

}
