package com.eb.pcshop.manager.pojo.dto;

/**
 * Created by 孔泽琦 on 2018/5/7.
 */
public class MessageObject {
    private String msg;
    private Boolean success;
    private Object data;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
