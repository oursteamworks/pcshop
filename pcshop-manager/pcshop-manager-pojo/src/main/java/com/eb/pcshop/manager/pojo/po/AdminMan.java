package com.eb.pcshop.manager.pojo.po;

public class AdminMan {
    private Integer aid;

    private String aname;

    private String apwd;

    private Integer aflag;

    private String amail;

    private String phone;

    public AdminMan(Integer aid, String aname, String apwd, Integer aflag, String amail, String phone) {
        this.aid = aid;
        this.aname = aname;
        this.apwd = apwd;
        this.aflag = aflag;
        this.amail = amail;
        this.phone = phone;
    }

    public AdminMan() {
        super();
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname == null ? null : aname.trim();
    }

    public String getApwd() {
        return apwd;
    }

    public void setApwd(String apwd) {
        this.apwd = apwd == null ? null : apwd.trim();
    }

    public Integer getAflag() {
        return aflag;
    }

    public void setAflag(Integer aflag) {
        this.aflag = aflag;
    }

    public String getAmail() {
        return amail;
    }

    public void setAmail(String amail) {
        this.amail = amail == null ? null : amail.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }
}