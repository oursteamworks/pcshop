package com.eb.pcshop.manager.pojo.dto;

/**
 * Created by 孔泽琦 on 2018/4/17.
 */
public class PageDto {
    private  int page;
    private  int limit;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getOffset() {
        return (page-1)*limit;
    }

    @Override
    public String toString() {
        return "PageDto{" +
                "page=" + page +
                ", limit=" + limit +
                '}';
    }
}
