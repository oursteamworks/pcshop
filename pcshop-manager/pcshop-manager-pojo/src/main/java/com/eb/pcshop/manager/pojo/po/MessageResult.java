package com.eb.pcshop.manager.pojo.po;

import java.util.List;

/**
 * Created by 孔泽琦 on 2018/4/18.
 */
public class MessageResult<T> {
    private int code;
    private String msg;
    private Long count;
    private List<T> data;

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
