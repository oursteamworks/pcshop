package com.eb.pcshop.portal.pojo.po;

public class TabCategory {
    private Integer cid;

    private String cname;

    private Integer aid;

    private Integer cstatus;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public Integer getCstatus() {
        return cstatus;
    }

    public void setCstatus(Integer cstatus) {
        this.cstatus = cstatus;
    }

    @Override
    public String toString() {
        return "TabCategory{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", aid=" + aid +
                ", cstatus=" + cstatus +
                '}';
    }
}