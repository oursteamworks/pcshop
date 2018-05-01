package com.eb.pcshop.manager.pojo.dto;

import java.util.List;

/**
 * Created by xhj on 2018/4/22/022.
 */
public class UserResult<T> {
    private int code;
    private String msg;
    private long count;
    private List<T> data;

    public UserResult() {
        super();
    }

    @Override
    public String toString() {
        return "UserResult{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", count=" + count +
                ", data=" + data +
                '}';
    }

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
