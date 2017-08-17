package project38.api.result;


import project38.api.common.result.CommonResult;

import java.util.List;

/**
 * Created by Administrator on 2016/11/18.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class DepositChannelResult extends CommonResult {
    private List<DepositChannel> depositChannelList;

    public List<DepositChannel> getDepositChannelList() {
        return depositChannelList;
    }

    public void setDepositChannelList(List<DepositChannel> depositChannelList) {
        this.depositChannelList = depositChannelList;
    }

    public static class DepositChannel {
        private Integer id;

        private String name;

        public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
}
