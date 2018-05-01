package com.eb.pcshop.manager.pojo.po;

/**
 * Created by 孔泽琦 on 2018/4/18.
 */
public class ProductCustom extends Product {
    private String cname;
    private String pflagName;

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
}
