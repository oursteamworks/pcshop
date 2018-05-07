package com.eb.pcshop.manager.pojo.dto;

import java.util.List;

/**
 * 结果集传输对象
 * User: DHC
 * Date: 2018/4/17
 * Time: 14:09
 * Version:V1.0
 */
public class MessageResult<T> {
    private int code;
    private String msg;
    private long count;
    private List<T> data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
