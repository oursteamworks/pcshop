package com.eb.pcshop.manager.pojo.vo;

/**
 * Created by xhj on 2018/4/22/022.
 */
public class UserQuery {
    private Integer uid;
    private String uname;
    private String tellphone;
    private String pflag;

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
        this.uname = uname;
    }

    public String getTellphone() {
        return tellphone;
    }

    public void setTellphone(String tellphone) {
        this.tellphone = tellphone;
    }

    public String getPflag() {
        return pflag;
    }

    public void setPflag(String pflag) {
        this.pflag = pflag;
    }

    public UserQuery() {
        super();
    }

    @Override
    public String toString() {
        return "UserQuery{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", tellphone='" + tellphone + '\'' +
                ", pflag='" + pflag + '\'' +
                '}';
    }
}
