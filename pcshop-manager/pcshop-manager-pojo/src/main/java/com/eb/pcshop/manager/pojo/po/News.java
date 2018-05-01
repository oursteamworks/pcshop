package com.eb.pcshop.manager.pojo.po;

public class News {
    private Integer nid;

    private String nname;

    private Integer nflag;

    private String ndesc;

    public News(Integer nid, String nname, Integer nflag, String ndesc) {
        this.nid = nid;
        this.nname = nname;
        this.nflag = nflag;
        this.ndesc = ndesc;
    }

    public News() {
        super();
    }

    public Integer getNid() {
        return nid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public String getNname() {
        return nname;
    }

    public void setNname(String nname) {
        this.nname = nname == null ? null : nname.trim();
    }

    public Integer getNflag() {
        return nflag;
    }

    public void setNflag(Integer nflag) {
        this.nflag = nflag;
    }

    public String getNdesc() {
        return ndesc;
    }

    public void setNdesc(String ndesc) {
        this.ndesc = ndesc == null ? null : ndesc.trim();
    }
}