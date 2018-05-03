package com.eb.pcshop.manager.pojo.dto;

/**
 * Created by Administrator on 2018/4/26.
 */
public class VipAndTurnover {

    private Integer vipCount;
    private Integer turnover;

    public Integer getVipCount() {
        return vipCount;
    }

    public void setVipCount(Integer vipCount) {
        this.vipCount = vipCount;
    }

    public Integer getTurnover() {
        return turnover;
    }

    public void setTurnover(Integer turnover) {
        this.turnover = turnover;
    }

    @Override
    public String toString() {
        return "VipAndTurnover{" +
                "vipCount=" + vipCount +
                ", turnover=" + turnover +
                '}';
    }
}
