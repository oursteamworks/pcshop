package com.eb.pcshop.manager.pojo.po;

public class Category {
    private Integer cid;

    private String cname;

    private Integer aid;

    private int cstatus;

    @Override
    public String toString() {
        return "Category{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", aid=" + aid +
                ", cstatus=" + cstatus +
                '}';
    }

    public int getCstatus() {
        return cstatus;
    }

    public void setCstatus(int cstatus) {
        this.cstatus = cstatus;
    }

    public Category(Integer cid, String cname, Integer aid) {
        this.cid = cid;
        this.cname = cname;
        this.aid = aid;
    }

    public Category() {
        super();
    }

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
}