package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import javax.persistence.Id;
import java.util.Date;
import java.util.List;

/**
 * Created by java1 on 2017/7/3.
 */
@JsonInclude(JsonSerialize.Include.NON_NULL)
public class LatelyGameResult extends CommonResult {

    public  List<LogUserGame> logUserGames;

    public List<LogUserGame> getLogUserGames() { return logUserGames; }

    public void setLogUserGames(List<LogUserGame> logUserGames) { this.logUserGames = logUserGames; }

    public static class LogUserGame{
        /**
         * 主键
         */
        @Id
        private String pk;
        /**
         * 游戏时间
         */
        private Date time;
        /**
         * 注单号
         */
        private String orderno;
        /**
         * 会员编码
         */
        private Long userId;
        /**
         * 游戏平台编码
         */
        private Long gameId;
        /**
         * 游戏玩法编码
         */
        private Long playId;
        /**
         * 注单号
         */
        private String orderNo;
        /**
         *
         */
        private String companyShortName;

        public String getPk() {
            return pk;
        }

        public void setPk(String pk) {
            this.pk = pk;
        }
        public Date getTime() {
            return time;
        }

        public void setTime(Date time) {
            this.time = time;
        }
        public String getOrderno() {
            return orderno;
        }

        public void setOrderno(String orderno) {
            this.orderno = orderno;
        }
        public Long getUserId() {
            return userId;
        }

        public void setUserId(Long userId) {
            this.userId = userId;
        }
        public Long getGameId() {
            return gameId;
        }

        public void setGameId(Long gameId) {
            this.gameId = gameId;
        }
        public Long getPlayId() {
            return playId;
        }

        public void setPlayId(Long playId) {
            this.playId = playId;
        }
        public String getOrderNo() {
            return orderNo;
        }

        public void setOrderNo(String orderNo) {
            this.orderNo = orderNo;
        }
        public String getCompanyShortName() {
            return companyShortName;
        }

        public void setCompanyShortName(String companyShortName) {
            this.companyShortName = companyShortName;
        }
    }
}
