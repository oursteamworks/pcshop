package com.eb.pcshop.commons.dto;

/**
 * 封装从后台往前台的数据传输对象
 * User: XHJ
 * Date: 2018/5/7
 * Time: 17:22
 * Version:V1.0
 */
public class MessageObject {

    //判断是否成功 true false
    private Boolean success;
    //传递的消息
    private String msg;
    //传递对象
    private Object data;

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
