package com.eb.pcshop.manager.pojo.po;

import java.util.Date;

public class Order {
    private String oid;

    private String oname;

    private Date otime;

    private String pname;

    private String pcount;

    private Double privce;

    private String oaddress;

    private Integer uid;

    private String oflag;

    private String odesc;

    private String aid;

    public Order(String oid, String oname, Date otime, String pname, String pcount, Double privce, String oaddress, Integer uid, String oflag, String odesc, String aid) {
        this.oid = oid;
        this.oname = oname;
        this.otime = otime;
        this.pname = pname;
        this.pcount = pcount;
        this.privce = privce;
        this.oaddress = oaddress;
        this.uid = uid;
        this.oflag = oflag;
        this.odesc = odesc;
        this.aid = aid;
    }

    public Order() {
        super();
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid == null ? null : oid.trim();
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname == null ? null : oname.trim();
    }

    public Date getOtime() {
        return otime;
    }

    public void setOtime(Date otime) {
        this.otime = otime;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getPcount() {
        return pcount;
    }

    public void setPcount(String pcount) {
        this.pcount = pcount == null ? null : pcount.trim();
    }

    public Double getPrivce() {
        return privce;
    }

    public void setPrivce(Double privce) {
        this.privce = privce;
    }

    public String getOaddress() {
        return oaddress;
    }

    public void setOaddress(String oaddress) {
        this.oaddress = oaddress == null ? null : oaddress.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getOflag() {
        return oflag;
    }

    public void setOflag(String oflag) {
        this.oflag = oflag == null ? null : oflag.trim();
    }

    public String getOdesc() {
        return odesc;
    }

    public void setOdesc(String odesc) {
        this.odesc = odesc == null ? null : odesc.trim();
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid == null ? null : aid.trim();
    }
}