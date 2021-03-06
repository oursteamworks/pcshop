package com.eb.pcshop.search.pojo.vo;

/**
 * Created by 孔泽琦 on 2018/5/7.
 */
public class ProductIndex {
    private int pid;
    private String pname;
    private double shopPrice;
    private String pdesc;
    private String cname;

    @Override
    public String toString() {
        return "ProductIndex{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", shopPrice=" + shopPrice +
                ", pdesc='" + pdesc + '\'' +
                ", cname='" + cname + '\'' +
                '}';
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getShopPrice() {
        return shopPrice;
    }

    public void setShopPrice(double shopPrice) {
        this.shopPrice = shopPrice;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

}
