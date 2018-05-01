package com.eb.pcshop.manager.pojo.po;

import org.springframework.format.annotation.DateTimeFormat;


public class User {
    private Integer uid;

    private String uname;

    private String sex;

    private Integer age;

    private String birthday;

    private String vip;

    private Double money;

    private String tellphone;

    private String pflag;

    private String address;

    private Integer aid;

    private String registertime;

    private String statue;

    private String upwd;

    public User(Integer uid, String uname, String sex, Integer age, String birthday, String vip, Double money, String tellphone, String pflag, String address, Integer aid, String registertime, String statue, String upwd) {
        this.uid = uid;
        this.uname = uname;
        this.sex = sex;
        this.age = age;
        this.birthday = birthday;
        this.vip = vip;
        this.money = money;
        this.tellphone = tellphone;
        this.pflag = pflag;
        this.address = address;
        this.aid = aid;
        this.registertime = registertime;
        this.statue = statue;
        this.upwd = upwd;
    }

    public User() {
        super();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getVip() {
        return vip;
    }

    public void setVip(String vip) {
        this.vip = vip == null ? null : vip.trim();
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getTellphone() {
        return tellphone;
    }

    public void setTellphone(String tellphone) {
        this.tellphone = tellphone == null ? null : tellphone.trim();
    }

    public String getPflag() {
        return pflag;
    }

    public void setPflag(String pflag) {
        this.pflag = pflag == null ? null : pflag.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime;
    }

    public String getStatue() {
        return statue;
    }

    public void setStatue(String statue) {
        this.statue = statue == null ? null : statue.trim();
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd == null ? null : upwd.trim();
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", birthday='" + birthday + '\'' +
                ", vip='" + vip + '\'' +
                ", money=" + money +
                ", tellphone='" + tellphone + '\'' +
                ", pflag='" + pflag + '\'' +
                ", address='" + address + '\'' +
                ", aid=" + aid +
                ", registertime='" + registertime + '\'' +
                ", statue='" + statue + '\'' +
                ", upwd='" + upwd + '\'' +
                '}';
    }
}