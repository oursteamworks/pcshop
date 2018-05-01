package com.eb.pcshop.potal.pojo.po;

public class Picture {
    private Integer picid;

    private String picname;

    private String url;

    private Integer cid;

    private Integer picflag;

    public Picture(Integer picid, String picname, String url, Integer cid, Integer picflag) {
        this.picid = picid;
        this.picname = picname;
        this.url = url;
        this.cid = cid;
        this.picflag = picflag;
    }

    public Picture() {
        super();
    }

    public Integer getPicid() {
        return picid;
    }

    public void setPicid(Integer picid) {
        this.picid = picid;
    }

    public String getPicname() {
        return picname;
    }

    public void setPicname(String picname) {
        this.picname = picname == null ? null : picname.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getPicflag() {
        return picflag;
    }

    public void setPicflag(Integer picflag) {
        this.picflag = picflag;
    }
}