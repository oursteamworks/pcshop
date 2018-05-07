/**
 * 向下继承zxlib的validator
 */
(function(e) {
    e.Js = e.Js || {};
    /**
     * 现在有N多文件在使用老zxlib.js中自己写的vilidator验证，推荐使用le.jq.validate.js
     * 备注：与le.jq.validate.js先并行使用，慢慢迭代后废弃使用
     *  file:
     *  用户中心地址管理     /htmlResource/js/usercenterAddr.js
        抢购地址逻辑          /htmlResource/js/zxRushAddr.js
        抢购信息逻辑          /htmlResource/js/rushInfo.js
        商品评价js              /htmlResource/js/pingjia.js
        新版结算逻辑js            /htmlResource/js/newOrderInfo.js
        订单详情地址操作        /htmlResource/html/order_address.html
        乐码专区js              /htmlResource/js/bu/lema.js
        晒单操作                /htmlResource/js/shaidan.js
        评价晒单信息回复js      /htmlResource/js/pjsd_reply.js
        分享邀请地址操作        /htmlResource/html/cps_address.html
        新版结算逻辑js_jnbt   /htmlResource/js/newOrderInfo_jn.js
        优惠券js           /htmlResource/js/discount.js
        新商品结算页js        /htmlResource/js/orderInfoMain.js
        评价晒单信息回复js222   /htmlResource/js/pjsd_reply222.js
        评价详情页222            /comment/comm222.html
        晒单详情页222            /share/share222.html
        新商品结算页非购物车  /htmlResource/js/orderInfoMain2.js
        结算页-预付定金（付定金）   /htmlResource/js/payDepositHead.js
        异步工具类                   /htmlResource/js/utils.js
        付定金（Y）                  /htmlResource/js/payDepositHead_t.js
        结算页-地址模块js          /htmlResource/js/orderInfo_addr.js
        结算页-地址模块（Y）     /htmlResource/js/orderInfo_addr_t.js

        page:
        预约信息    /appointUser.html
        大客户首页   /dkh.html
        深度定制    /dkh/sddz.html
        VIP礼品卡  /dkh/VIPcard.html
        我的提货卡   /user/center/vipcard.html
        预约信息2(备用)   /appointUser2.html
        修改配送地址  /user/center/order/address.html
        安装/维修   /user/center/fixAndMaintain.html
        意见提交    /help/tiyan/fayan.html
        商业合作咨询  /dkh/Business.html
        大客户采购   /dkh/Purchase.html
        预约一键购地址 /appointAddress.html
        晒单详情页   /share/share.html
        评价详情页   /comment/comm.html
        预约信息编辑页 /appointInfo.html
        快速预约    /appointFast.html
        我的免邮券   /user/center/freeFreight.html
        选座  /ticket/seat.html
        预约信息编辑页（v2.0）   /appointInfo2.html
        快速预约（v2.0）  /appointFast2.html
     */
    Js.validator = {
        _instance: null ,
        init: function(a) {
            _instance = this;
            if (typeof $("#" + a.el[0].id).attr("wjValid" + a.id) == "undefined") {
                for (var b = 0; b < a.el.length; b++) {
                    (function(b) {
                        var c = a.el[b];
                        c.errorId = c.errorId ? $("#" + c.errorId) : $("#" + c.id + "Error");
                        c.emptyId = c.emptyId ? $("#" + c.emptyId) : $("#" + c.id + "EmptyError");
                        c.submitErrorId = c.submitErrorId ? $("#" + c.submitErrorId) : $("#" + c.id + "SubmitError");
                        c.idEle = $("#" + c.id);
                        c.labelId = $("#" + c.id + "Label");
                        c.borderColor = c.idEle.css("border-color");
                        c.errorId.hide();
                        c.emptyId.hide();
                        c.submitErrorId.hide();
                        c.idEle.attr("maxlength") || c.idEle.attr("maxlength", 30);
                        if (c.emptyText) {
                            if ("placeholder" in document.createElement("input")) {
                                c.idEle.attr("placeholder", c.emptyText);
                                b == 0 && c.idEle.focus()
                            } else {
                                c.idEle.css("color", "#C9C9C9");
                                c.idEle.val(c.emptyText);
                                c.idEle.bind("click focus", function() {
                                    c.idEle.val() == c.emptyText && c.idEle.val("")
                                });
                                c.idEle.blur(function() {
                                    if (c.idEle.val().length == 0) {
                                        c.idEle.css("color", "#C9C9C9");
                                        c.idEle.val(c.emptyText)
                                    }
                                });
                                c.idEle.bind("propertychange", function() {
                                    c.idEle.val() == c.emptyText ? c.idEle.css("color", "#C9C9C9") : c.idEle.css("color", "black")
                                })
                            }
                        }
                        if ($.type(c.rule) == "string") {
                            c.rule = {
                                r: [c.rule]
                            };
                            if (c.param) {
                                c.param = [c.param]
                            }
                        } else {
                            if (typeof c.rule == "undefined") {
                                c.rule = {
                                    r: ["empty"]
                                }
                            }
                        }
                        typeof c.type == "undefined" || c.type == "input" ? c.idEle.blur(function(b, d) {
                            a.noHighlight || $(this).css("border-color", c.borderColor);
                            var h = false
                              , g = $(this).val() == c.emptyText ? "" : Js.Tools.trim($(this).val(), "g")
                              , e = "";
                            $(this).val(g);
                            if (Js.validator.rules.basic(g)) {
                                for (h = 0; h < c.rule.r.length; h++) {
                                    e = Js.validator.rules[c.rule.r[h]](g, c.param ? c.param[h] || "" : "") ? e + "1" : e + "0"
                                }
                                c.rule.regular = c.rule.regular || "|";
                                h = c.rule.regular == "&" ? e.indexOf("0") == -1 ? true : false : e.indexOf("1") != -1 ? true : false
                            }
                            if (h) {
                                c.errorId.hide();
                                c.emptyId.hide();
                                g.length === 0 && c.labelId.show()
                            } else {
                                a.noHighlight || $(this).css("border-color", "red");
                                if (g.length === 0) {
                                    c.labelId.show();
                                    c.emptyId.show();
                                    c.emptyId.length === 0 ? c.errorId.show() : c.errorId.hide();
                                    d && c.emptyId.length === 0 && c.submitErrorId.show()
                                } else {
                                    c.errorId.show();
                                    c.emptyId.hide();
                                    c.submitErrorId.hide()
                                }
                            }
                            if (c.callback) {
                                c.setValidState = function(b) {
                                    $("#" + this.id).attr("wjValid" + a.id, b)
                                }
                                ;
                                g = c.callback.call(c, h, g);
                                $(this).attr("wjValid" + a.id, typeof g != "undefined" ? g : h)
                            } else {
                                $(this).attr("wjValid" + a.id, h)
                            }
                        }).keyup(function(b) {
                            a.allKeyUp && a.allKeyUp(b);
                            c.keyUp && c.keyUp(b)
                        }).attr("wjValid" + a.id, "false").bind("keydown focus", function() {
                            a.noHighlight || $(this).css("border-color", "#BFAE4E");
                            c.labelId.hide()
                        }) : c.type == "select" && c.idEle.blur(function() {
                            if ($(this).val() == c.errorValue) {
                                c.errorId.show();
                                $(this).attr("wjValid" + a.id, false)
                            } else {
                                c.errorId.hide();
                                $(this).attr("wjValid" + a.id, true)
                            }
                        }).attr("wjValid" + a.id, "false");
                        c.keydown === true && a.submit && c.idEle.keydown(function(b) {
                            b.keyCode == 13 && $("#" + a.submit.id).trigger("click")
                        })
                    })(b)
                }
                a.submit && $("#" + a.submit.id).unbind("click").click(function() {
                    _instance.checkAllEle(a.id, typeof a.uriEncode == "undefined" ? true : a.uriEncode, a.submit.callback, a.focusError)
                });
                if (a.addNewRule) {
                    _instance.rules[a.addNewRule.name] = a.addNewRule.fn
                }
            }
        },
        checkAllEle: function(a, b, d, c) {
            $("*[wjValid" + a + "='false']").trigger("blur", [true]);
            if ($("*[wjValid" + a + "='false']").length === 0) {
                if (d) {
                    var f = []
                      , e = {};
                    $("*[wjValid" + a + "='true']").each(function() {
                        var a = $(this).attr("name") || $(this).attr("id")
                          , c = $(this).val();
                        e[a] = b ? encodeURIComponent(c) : c;
                        f.push(a + "=" + e[a])
                    });
                    d(f.join("&"), e)
                } else {
                    return true
                }
            } else {
                c && $("*[wjValid" + a + "='false']:first").focus();
                return false
            }
        },
        rules: {
            email: function(a) {
                return /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/i.test(a)
            },
            mobile: function(a) {
                return /^1[3|4|5|7|8][0-9]\d{8}$/.test(a)
            },
            telphone: function(a) {
                return /^(\d{1,4}-\d{6,10})$/.test(a)
            },
            range: function(a, b) {
                return a >= b[0] && a <= b[1]
            },
            min: function(a, b) {
                return a >= b
            },
            max: function(a, b) {
                return a <= b
            },
            rangelength: function(a, b) {
                return a.length >= b[0] && a.length <= b[1]
            },
            minLength: function(a, b) {
                return a.length >= b
            },
            maxLength: function(a, b) {
                return a.length <= b
            },
            equalTo: function(a, b) {
                return a.length > 0 && a == $("#" + b).val()
            },
            digits: function(a) {
                return /^\d+$/.test(a)
            },
            post: function(a) {
                return /^[0-9]{6}$/.test(a)
            },
            noSymbol: function(a) {
                return /^[\w|\u4e00-\u9fa5]*$/.test(a)
            },
            url: function(a) {
                return /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(a)
            },
            empty: function() {
                return true
            },
            basic: function(a) {
                return !/select|update|delete|truncate|join|union|exec|insert|drop|count|'|"|;|>|<|%/i.test(a)
            }
        }
    };

})(window);