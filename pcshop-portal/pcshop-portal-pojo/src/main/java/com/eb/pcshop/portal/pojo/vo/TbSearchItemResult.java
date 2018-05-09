package com.eb.pcshop.portal.pojo.vo;

import com.eb.pcshop.portal.pojo.po.ProductIndex;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/5/8.
 */
public class TbSearchItemResult {
    private long recordCount;
    private int totalPages;
    private List<ProductIndex> itemList;

    public long getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(long recordCount) {
        this.recordCount = recordCount;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public List<ProductIndex> getItemList() {
        return itemList;
    }

    public void setItemList(List<ProductIndex> itemList) {
        this.itemList = itemList;
    }

    @Override
    public String toString() {
        return "TbSearchItemResult{" +
                "recordCount=" + recordCount +
                ", totalPages=" + totalPages +
                ", itemList=" + itemList +
                '}';
    }
}
