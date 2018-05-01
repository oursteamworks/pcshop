package com.eb.pcshop.manager.pojo.dto;

/**
 * Created by xhj on 2018/4/22/022.
 */
public class Page {

    private long page;
    private long limit;


    public long getPage() {
        return page;
    }

    public void setPage(long page) {
        this.page = page;
    }

    public long getLimit() {
        return limit;
    }

    public void setLimit(long limit) {
        this.limit = limit;
    }

    public int getOffset() {
        return (int) ((page-1)*limit);
    }
}
