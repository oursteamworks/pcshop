(function(c) {
	//检查数据是否存在
	function createUrl(url){
		if(typeof url != "undefined" && url.length > 0){
			if(url.indexOf("http") >= 0){
				return url;
			}else{
				return url.indexOf("/") == 0 ? ("http://" + window.location.host + url ) : ("http://" + window.location.host + "/" +url);
			}
		}
		return url;
	}
    c.fn.wjAd = function(b) {
        var a = this,
        d = this.attr("data-info").split("|");
        return this.each(function() {
            if (b) c.fn.wjAd["adType" + d[1]](a, b, d);
            else Js.sendData(sendLink.front+"adspace/getAdSpaceInfoAPI.action", "ad_space_id=" + d[0],
            function(b) {
                c.fn.wjAd["adType" + d[1]](a, b, d)
            })
        })
    };
    c.fn.wjAd.adType1 = function(b, a, d) {
        function k() { - 1 != f || m || (clearTimeout(f), f = -1, f = setTimeout(e, 6E3))
        }
        function e() {
            g[i].hide();
            i++;
            i > a.result.length - 1 && (i = 0);
            n(i);
            f = setTimeout(e, 6E3)
        }
        function n(a) {
            c("#adType1-tipText", b).text(g[a].attr("title")).attr("href", g[a].attr("href"));
            o && c("#adType1-tipDesc", b).text(Js.Tools.textEllipsis(g[a].attr("desc"))).attr("title", g[a].attr("desc"));
            c(".on", b).removeClass("on");
            c("#adType1-tipNum li", b).eq(a).addClass("on");
            var d;
            d = c("img", g[a]).attr("src");
            var e = function() {
                c("#adLoading", b).hide();
                g[a].fadeIn(400);
                k();
                c("#adType1-tipTextContain,#adType1-tipText,#adType1-tipNum", b).show()
            };
            if (c.browser.msie && "6.0" == c.browser.version) e(),
            d = !0;
            else {
                var h = new Image;
                h.src = d;
                h.complete ? e(h.width, h.height) : h.onload = function() {
                    e(h.width, h.height);
                    h.onload = null
                };
                d = h.complete
            }
            d || (clearTimeout(f), f = -1, c("#adLoading", b).show(), c("#adType1-tipTextContain,#adType1-tipText,#adType1-tipNum", b).hide())
        }
        if (0 != a.result.length) {
            var g = [],
            i = 0,
            m = !1,
            p = "",
            f = timeoutId = -1,
            q = "undefined" != typeof b.attr("data-noTip"),
            o = "true" == b.attr("data-showDesc"),
            r = 400 > d[2];
            b.css({
                width: d[2],
                height: d[3],
                overflow: "hidden"
            });
            b.append("<div id='adLoading' style='width:" + d[2] + "px;height:" + d[3] + "px'></div>");
            for (var j = 0; j < a.result.length; j++) {
                var l = c("<a target='_blank' href='" + a.result[j].AD_SOURCE_URL + "'><img src='" + _imagePath + "/" + a.result[j].AD_SOURCE_IMGPATH + "' style='width:" + d[2] + "px;height:" + d[3] + "px'/></a>");
                l.css({
                    display: "inline-block",
                    "*display": "inline",
                    "*zoom": "1"
                });
                l.attr("title", a.result[j].AD_SOURCE_TITLE);
                o && l.attr("desc", a.result[j].AD_SOURCE_DESCRIPTION);
                g.push(l);
                p += "<li class='" + (0 < j ? "on": "") + "on'>" + (j + 1) + "</li>";
                l.hide().appendTo(b)
            }
            b.append("<div id='adType1-tipTextContain'></div><a  id='adType1-tipText' target='_blank' href='" + a.result[0].AD_SOURCE_URL + "'>" + a.result[0].AD_SOURCE_TITLE + "</a><ul id='adType1-tipNum'>" + p + "</ul>");
            q && (c("#adType1-tipTextContain,#adType1-tipText", b).remove(), c("#adType1-tipNum", b).css("top", "-13%"));
            r && c("#adType1-tipTextContain,#adType1-tipText,#adType1-tipNum,#adType1-tipNum li", b).addClass("small");
            o && (c("#adType1-tipNum", b).css("top", "-190px"), c("#adType1-tipText", b).after("<div id='adType1-tipDesc' title='" + a.result[0].AD_SOURCE_DESCRIPTION + "'>" + Js.Tools.textEllipsis(a.result[0].AD_SOURCE_DESCRIPTION, 50) + "</div>"));
            n(0);
            b.mouseenter(function() {
                m = true;
                clearTimeout(f);
                f = -1
            }).mouseleave(function() {
                m = false;
                k()
            });
            c("#adType1-tipNum", b).delegate("li", "mouseenter",
            function() {
                var a = this;
                clearTimeout(timeoutId);
                timeoutId = setTimeout(function() {
                    var b = parseInt(c(a).text()) - 1;
                    if (i != b) {
                        g[i].hide();
                        n(b);
                        i = b
                    }
                },
                200)
            }).delegate("li", "mouseleave",
            function() {
                clearTimeout(timeoutId)
            })
        }
    };
    c.fn.wjAd.adType8 = function(b, a, d) {
		function createUrl(url){
			if(typeof url != "undefined" && url.length > 0){
				if(url.indexOf("http") >= 0){
					return url;
				}else{
					return url.indexOf("/") == 0 ? ("http://" + window.location.host + url ) : ("http://" + window.location.host + "/" +url);
				}
			}
			return url;
		}
        0 != a.result.length && (a = a.result[0], c("#adImg", b).html("<div class='ad-Loading'><img width='" + d[2] + "px' height='" + d[3] + "px' src='" + _imagePath + "/" + a.AD_SOURCE_IMGPATH + "' alt=''/></div>").attr("href", createUrl(a.AD_SOURCE_URL)), c("#adTitle", b).text(a.AD_SOURCE_TITLE).attr("href", createUrl(a.AD_SOURCE_URL)), c("#adDesc", b).text(a.AD_SOURCE_DESCRIPTION).attr("title", a.AD_SOURCE_DESCRIPTION))
    };
    c.fn.wjAd.adType10 = function(b, a, d) {
        if (0 == a.result.length) b.remove();
        else {
            var k = a.result[0];
            b.css({
                background: "url(" + _imagePath + "/" + k.AD_SOURCE_IMGPATH + ") center 0 no-repeat",
                height: "0px",
                overflow: "hidden"
            });
            d[4] = parseInt(d[4]);
            Js.Tools.imgLoad(_imagePath + "/" + k.AD_SOURCE_IMGPATH,
            function(a, d) {
                b.delay(5E3).animate({
                    height: d
                },
                1E3,
                function() {
					function createUrl(url){
						if(typeof url != "undefined" && url.length > 0){
							if(url.indexOf("http") >= 0){
								return url;
							}else{
								return url.indexOf("/") == 0 ? ("http://" + window.location.host + url ) : ("http://" + window.location.host + "/" +url);
							}
						}
						return url;
					}
                    c("#adTopImg", b).attr("href", createUrl(k.AD_SOURCE_URL)).attr("webtrekkparam", "{ct:'H_lamu'}").css({
                        display: "block",
                        width: "100%",
                        height: d
                    })
                });
                b.delay(6E3).animate({
                    height: 0
                },
                1E3,
                function() {
                    b.remove();
                    postPVdata(2, 5, null, null);
                })
            })
        }
    };
    c.fn.wjAd.adType11 = function(b, a, d) {
		function createUrl(url){
			if(typeof url != "undefined" && url.length > 0){
				if(url.indexOf("http") >= 0){
					return url;
				}else{
					return url.indexOf("/") == 0 ? ("http://" + window.location.host + url ) : ("http://" + window.location.host + "/" +url);
				}
			}
			return url;
		}
        if (0 != a.result.length) {
            for (var c = "<ul>",
            e = 0; e < a.result.length; e++) c += "<li class='ad-Loading' style='height:" + d[3] + "px;width:" + d[2] + "px'><a target='_blank' href='" + createUrl(a.result[e].AD_SOURCE_URL) + "'><img src='" + _imagePath + "/" + a.result[e].AD_SOURCE_IMGPATH + "' style='height:" + d[3] + "px;width:" + d[2] + "px' alt=''/></a></li>";
            b.append(c + "</ul>")
        }
    }
})(jQuery);
function Advertisement(a, h, g, b, d, e, c) {
    this.globalData = null;
    this.currentImage = 0;
    this.advertId = "#advertId" + a;
    this.advertLinkId = a;
    this._instance = null;
    this.type = h;
    this.spaceTime = g;
    this.refresh = parseInt(b);
    this.width = d;
    this.height = e;
    this.dontFlash = !1;
    this.slide = c
}
Advertisement.prototype = {
    init: function() {
		function createUrl(url){
			if(typeof url != "undefined" && url.length > 0){
				if(url.indexOf("http") >= 0){
					return url;
				}else{
					return url.indexOf("/") == 0 ? ("http://" + window.location.host + url ) : ("http://" + window.location.host + "/" +url);
				}
			}
			return url;
		}
        var a = this._instance = this;
        $.ajax({
            url: sendLink.front+"adspace/getAdSpaceInfoAPI.action?ad_space_id=" + a.advertLinkId,
            type: "get",
            dataType: "jsonp",
            success: function(h) { (2 == a.advertLinkId || 54 == a.advertLinkId) && postPVdata(2, 1, null, null);
                a.globalData = h;
                if (1 == a.type) {
                    a.globalData.maxnum = 0;
                    for (var g = $('<div class="sld-sel-bd"><div class="sld-sel"></div></div>'), b = "", d = 0; d < h.result.length; d++) {
                        var e = d,
                        c = a,
                        f = h.result[d];
                        if (! (f.P_AD_SOURCE_ID && 0 != f.P_AD_SOURCE_ID)) {
                            c.globalData.maxnum += 1;
                            var k = "";
                            f.AD_BG && (k = /^#/.test(f.AD_BG) ? "background:" + f.AD_BG: /\./.test(f.AD_BG) ? "background:url(/htmlResource/images/" + f.AD_BG.replace("ad", "ag") + ") top center": "background:url(//img2-lemall.letvimg.com/" + f.AD_BG.replace("ad", "ag") + ") top center");
                            $(c.advertId).append('<div style="' + k + '"><div id="sld' + e + '" data-source="' + f.AD_SOURCE_ID + '" class="sld-ad-img" style="display:' + (0 == e ? "block": "none") + ";height:" + c.height + "px;" + (f.AD_SOURCE_IMGPATH ? "background:url(//img2-lemall.letvimg.com/" + f.AD_SOURCE_IMGPATH.replace("ad", "ag") + ") center center no-repeat;": "") + '"><div class="banner-ad"><a target="_blank" style="width:' + c.width + "px;height:" + c.height + 'px" class="a" webtrekkparam="{ct:\'lunbo_' + a.advertLinkId + '_' + (d + 1) + '\'}" href="' + createUrl(f.AD_SOURCE_URL) + '"></a></div></div>');
                            b += '<a id="adId' + e + '" dataId="' + e + '" class="focus ' + (0 == e ? "seld": "") + '"></a></div>'
                        }
                    }
                    a.slide && $(a.advertId).append('<div class="slide_control hidden"><div id="slpre" class="pre"><img src="//img3-lemall.letvimg.com/file/20130929/default/16854913894225834"></div><div id="slnext" class="next"><img src="//img1-lemall.letvimg.com/file/20130929/default/16854957674668092"></div></div>');
                    g.children().html(b);
                    $(a.advertId).height(a.height).append(g);
                    $(a.advertId + " .focus").mouseenter(function() {
                        a.setCurrentImage($(this).attr("dataId"));
                        a.resetTimeout();
                        a.dontFlash = !0
                    }).mouseleave(function() {
                        a.dontFlash = !1
                    });
                    for (d = 0; d < h.result.length; d++) g = d,
                    b = h.result[g],
                    b.P_AD_SOURCE_ID && 0 != b.P_AD_SOURCE_ID && (e = $(".sld-ad-img[data-source='" + b.P_AD_SOURCE_ID + "']").find(".banner-ad"), 0 == $(".min-ad", e).length && e.append('<div class="min-ad"></div>'), c = "onclick='" + b.AD_SOURCE_URL + "'", /^http/.test(b.AD_SOURCE_URL) && (c = "href='" + createUrl(b.AD_SOURCE_URL) + "'"), e.find(".min-ad").append("<div class='ad'><a id='adSubImg" + g + "' " + c + " data-source='" + b.AD_SOURCE_ID + "'  target='_blank'><img width='" + b.AD_SOURCE_WIDTH + "px' height='" + b.AD_SOURCE_HIGH + "px' src='//img2-lemall.letvimg.com/" + b.AD_SOURCE_IMGPATH + "'/></a></div>"));
                    a.slide && $(a.advertId).find("#slpre").click(function() {
                        0 < a.currentImage ? a.currentImage--:a.currentImage = a.globalData.maxnum - 1;
                        a.setCurrentImage(a.currentImage);
                        a.resetTimeout()
                    });
                    $(a.advertId).find("#slnext").click(function() {
                        a.currentImage < a.globalData.maxnum - 1 ? a.currentImage++:a.currentImage = 0;
                        a.setCurrentImage(a.currentImage);
                        a.resetTimeout()
                    });
                    $(a.advertId).unbind("mouseover").mouseenter(function() {
                        a.dontFlash = !0;
                        a.slide && $(a.advertId).find(".slide_control").show()
                    }).unbind("mouseleave").mouseleave(function() {
                        a.dontFlash = !1;
                        a.slide && $(a.advertId).find(".slide_control").hide()
                    });
                    a.resetTimeout()
                }
            }
        })
    },
    imgLoad: function(a, h, g, b) {
        var d = new Image;
        d.src = a;
        $.browser.msie ? d.onreadystatechange = function() {
            "complete" == d.readyState && b(h, g)
        }: d.onload = function() { ! 0 == d.complete && b(h, g)
        }
    },
    resetTimeout: function() {
        window.clearTimeout(this._instance.timeoutId);
        var a = this._instance;
        a.timeoutId = window.setTimeout(function() {
            a.switchImage()
        },
        a.spaceTime)
    },
    setCurrentImage: function(a) { - 1 != this._instance.currentImage && $(this._instance.advertId + " #adCurrentImage > a").hide();
        $(this._instance.advertId).find("#sld" + this._instance.currentImage).stop();
        $(this._instance.advertId).find(".sld-ad-img").hide();
        this._instance.currentImage = a;
        $(this._instance.advertId).find("#sld" + a).fadeIn(this._instance.refresh);
        $(this._instance.advertId).find(".seld").removeClass("seld");
        $(this._instance.advertId).find("#adId" + a).attr("class", "seld")
    },
    switchImage: function() {
        var a = this;
        this.timeoutId = window.setTimeout(function() {
            a.switchImage()
        },
        a.spaceTime);
        this.dontFlash || (this.currentImage < this.globalData.maxnum - 1 ? this.currentImage++:this.currentImage = 0, this.setCurrentImage(this.currentImage))
    }
};
function ASlide(a, h, g, b, d, wt) {
    this.advertId = "#aId" + a;
    this.advertLinkId = a;
    this._instance = null;
    this.spaceTime = g;
    this.width = b;
    this.height = d;
    this.wt = wt
}
ASlide.prototype = {
    init: function() {
		function createUrl(url){
			if(typeof url != "undefined" && url.length > 0){
				if(url.indexOf("http") >= 0){
					return url;
				}else{
					return url.indexOf("/") == 0 ? ("http://" + window.location.host + url ) : ("http://" + window.location.host + "/" +url);
				}
			}
			return url;
		}
        var a = this._instance = this;
        $.ajax({
            url: sendLink.front+"adspace/getAdSpaceInfoAPI.action?ad_space_id=" + a.advertLinkId,
            type: "get",
            dataType: "jsonp",
            success: function(h) { (2 == a.advertLinkId || 54 == a.advertLinkId) && postPVdata(2, 1, null, null);
                var g = $('<div class="slide" style="height:' + a.height + 'px"><ul style="height:' + a.height + 'px"></ul><div class="slide_cotrl2"><div class="pre" id="prevBtn"></div><div class="next" id="nextBtn"></div></div><div class="slide_cotrl slide_cotrl_point"></div></div>');
                $(a.advertId).append(g);
                for (var b = 0; b < h.result.length; b++) {
                    var d = b,
                    e = a,
                    c = h.result[b];
                    if (! (c.P_AD_SOURCE_ID && 0 != c.P_AD_SOURCE_ID)) {
                        var f = "";
                        c.AD_BG && (f = /^#/.test(c.AD_BG) ? "background:" + c.AD_BG: /\./.test(c.AD_BG) ? "background-image:url(/htmlResource/images/" + c.AD_BG.replace("ad", "ag") + ") ": "background-image:url(//img2-lemall.letvimg.com/" + c.AD_BG.replace("ad", "ag") + ") ");
                        g.find("ul").append('<li style="height:' + e.height + 'px" ><a  ref="cn:lunbo_' + a.advertLinkId + '_' + (b + 1) + '\"  href="' + createUrl(c.AD_SOURCE_URL) + '"  href="' + createUrl(c.AD_SOURCE_URL) + '?ref=lunbo_'+ a.advertLinkId + '_' + (b + 1) +'" target="_blank"><div  class="slide_con" style="' + f + '"></div></a></li>');
                        g.find(".slide_cotrl").append('<a class="' + (0 == d ? "cur": "") + '" ></a>')
                    }
                }
                g.slide({
                    time: a.spaceTime,
                    width: a.width
                })
            }
        })
    }
};
function ASlideAd(a, h, g, b, d, wt) {
    this.advertId = "#aId" + a;
    this.advertLinkId = a;
    this._instance = null;
    this.spaceTime = g;
    this.width = b;
    this.height = d;
    this.wt = wt
}
ASlideAd.prototype = {
    init: function() {
		function createUrl(url){
			if(typeof url != "undefined" && url.length > 0){
				if(url.indexOf("http") >= 0){
					return url;
				}else{
					return url.indexOf("/") == 0 ? ("http://" + window.location.host + url ) : ("http://" + window.location.host + "/" +url);
				}
			}
			return url;
		}
        var a = this._instance = this;
        $.ajax({
            url: sendLink.front+"adspace/getAdSpaceInfoAPI.action?ad_space_id=" + a.advertLinkId,
            type: "get",
            dataType: "jsonp",
            success: function(h) { (2 == a.advertLinkId || 54 == a.advertLinkId) && postPVdata(2, 1, null, null);
                var g = $('<div class="slide" style="height:' + a.height + 'px"><ul style="height:' + a.height + 'px"></ul><div class="slide_cotrl2"><div class="pre" id="prevBtn"><div class="pre_jiantou jiantou"></div></div><div class="next" id="nextBtn"><div class="next_jiantou jiantou"></div></div></div><div class="center relative"><div class="slide_cotrl slide_cotrl_point"></div></div></div>');
                $(a.advertId).append(g);
                for (var b = 0; b < h.result.length; b++) {
                    var d = b,
                    e = a,
                    c = h.result[b];
                    if (! (c.P_AD_SOURCE_ID && 0 != c.P_AD_SOURCE_ID)) {
                        var color = c.AD_BG;
                        var img = c.AD_SOURCE_IMGPATH;
g.find("ul").append('<li style="height:' + e.height + 'px;background-color:' + color + '" ><a href="' + createUrl(c.AD_SOURCE_URL) + '?ref=cn:lunbo_' + a.advertLinkId + '_' + (b + 1) + '" target="_blank"><div  class="slide_con"><img src="//img2-lemall.letvimg.com/' + img + '"></div></a></li>');
                        g.find(".slide_cotrl").append('<a class="' + (0 == d ? "cur": "") + '" ></a>')
                    }
                }
                g.slide({
                    time: a.spaceTime,
                    width: a.width
                })
            }
        })
    }
};
$.fn.slide = function(a) {
    a = $.extend({
        speed: 600,
        time: 2500,
        shift: 0
    },
    a);
    return this.each(function() {
        function h(b) {
            f = !1;
            c = b;
            d.animate({
                "margin-left": -b * i + "px"
            },
            {
                queue: !1,
                duration: a.speed,
                complete: g
            })
        }
        function g() {
            f = !0;
            0 == c && (d.css("marginLeft", -(e - 2) * i), c = e - 2);
            c == e - 1 && (d.css("marginLeft", -1 * i), c = 1);
            b.find(".slide_cotrl a").removeClass("cur").eq(c - 1).addClass("cur");
            window.clearTimeout(j);
            j = setTimeout(function() {
                b.find(".next").trigger("click")
            },
            a.time)
        }
        var b = $(this),
        d = b.find("ul"),
        e = d.find("li").length + 2,
        c = 1,
        f = !0,
        k,
        j,
        i = a.width;
        i ? b.css("width", i) : (i = $(window).width() - a.shift, (i = (i <= 1200) ? 1200 : i), $(window).resize(function() {
            window.clearTimeout(j);
            j = setTimeout(function() {
                b.find(".next").trigger("click")
            },
            a.time);
            window.clearTimeout(k);
            k = setTimeout(function() {
                i = $(window).width() - a.shift;
                if (i <= 1200) i = 1200;
                d.css("width", e * i);
                d.css("marginLeft", -c * i);
                d.find("li").css("width", i)
            },
            100)
        }));
        d.find("li").css("width", i);
        d.css("width", e * i).css("marginLeft", -c * i);
        d.prepend(d.find("li:last-child").clone());
        d.append(d.find("li:nth-child(2)").clone());
        b.find(".slide_cotrl").delegate("a", "click",
        function() {
            h($(this).prevAll().length + 1)
        });
        b.find(".pre").click(function() {
            if (f) {
                c > 0 && (c = c - 1);
                h(c)
            }
        });
        b.find(".next").click(function() {
            if (f) {
                c < e - 1 && (c = c + 1);
                h(c)
            }
        });
        j = setTimeout(function() {
            b.find(".next").trigger("click")
        },
        a.time);
        b.mouseover(function() {
            b.find(".slide_cotrl2").show()
        }).mouseleave(function() {
            b.find(".slide_cotrl2").hide()
        }).find(".slide_cotrl").mouseover(function() {
            window.clearTimeout(j)
        }).mouseleave(function() {
            j = setTimeout(function() {
                b.find(".next").trigger("click")
            },
            a.time)
        })
    })
};