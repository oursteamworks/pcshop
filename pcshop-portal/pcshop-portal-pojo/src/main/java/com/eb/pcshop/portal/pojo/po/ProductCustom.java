package com.eb.pcshop.portal.pojo.po;

/**
 * Created by ¿×Ôóçù on 2018/4/18.
 */
public class ProductCustom extends Product {
    private String cname;
    private String pflagName;
    private Integer num;

    public String getPflagName() {
        return pflagName;
    }

    public void setPflagName(String pflagName) {

        this.pflagName = pflagName;
    }

    public String getCname() {

        return cname;
    }

    public void setCname(String cname) {

        this.cname = cname;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }
}
