package com.eb.pcshop.manager.pojo.po;

public class Product {
    private Integer pid;

    private String pname;

    private String pimage;

    private Double shopprice;

    private String ishot;

    private String pflag;

    private Integer repertory;

    private Integer pcount;

    private String pdesc;

    private Integer cid;

    private Double cost;

    private Integer aid;

    public Product(Integer pid, String pname, String pimage, Double shopprice, String ishot, String pflag, Integer repertory, Integer pcount, String pdesc, Integer cid, Double cost, Integer aid) {
        this.pid = pid;
        this.pname = pname;
        this.pimage = pimage;
        this.shopprice = shopprice;
        this.ishot = ishot;
        this.pflag = pflag;
        this.repertory = repertory;
        this.pcount = pcount;
        this.pdesc = pdesc;
        this.cid = cid;
        this.cost = cost;
        this.aid = aid;
    }

    public Product() {
        super();
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage == null ? null : pimage.trim();
    }

    public Double getShopprice() {
        return shopprice;
    }

    public void setShopprice(Double shopprice) {
        this.shopprice = shopprice;
    }

    public String getIshot() {
        return ishot;
    }

    public void setIshot(String ishot) {
        this.ishot = ishot == null ? null : ishot.trim();
    }

    public String getPflag() {
        return pflag;
    }

    public void setPflag(String pflag) {
        this.pflag = pflag == null ? null : pflag.trim();
    }

    public Integer getRepertory() {
        return repertory;
    }

    public void setRepertory(Integer repertory) {
        this.repertory = repertory;
    }

    public Integer getPcount() {
        return pcount;
    }

    public void setPcount(Integer pcount) {
        this.pcount = pcount;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc == null ? null : pdesc.trim();
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", pimage='" + pimage + '\'' +
                ", shopprice=" + shopprice +
                ", ishot='" + ishot + '\'' +
                ", pflag='" + pflag + '\'' +
                ", repertory=" + repertory +
                ", pcount=" + pcount +
                ", pdesc='" + pdesc + '\'' +
                ", cid=" + cid +
                ", cost=" + cost +
                ", aid=" + aid +
                '}';
    }
}