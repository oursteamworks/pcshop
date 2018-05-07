/**
 * 为了兼容zxlib以前版本的代码，所以页面加载时就需要引用，后面所有组都要慢慢清理这个类下的调用
 */
;(function(){
	var Tools = {
        /**
           select * from file t where  t.file_content like  '%getParameterByName%' and t.status=1;
           select * from page t where  t.page_content like  '%getParameterByName%' and t.status=1;
         */
        getParameterByName: function(a) {
            return (a = RegExp("[?&]" + a + "=([^&]*)").exec(window.location.search)) && decodeURIComponent(a[1].replace(/\+/g, " "))
        },
        template: function(a, b) {
            return this.trim(window.template(a, b || {}), "")
        },
        /**
         * 1、处理两端空白字符 var a = " abcd " trim(a,"") ==> "abcd" 注:le.string.js中也有trim函数
         * 2、处理所有空白字符 var a = " ab  cd " trim(a,"g") ==> "abcd"  注:le.string.js中也有trimAll函数
         */
        trim: function(a, b) {
            var d;
            d = a.replace(/(^\s+)|(\s+$)/g, "");
            b.toLowerCase() == "g" && (d = d.replace(/\s/g, ""));
            return d
        },
        // {b:123,c:"fa"} ==> b=123&c=fa 同版本在le.object.js下也存在
        jsonToString: function(a, b) {
            var d = "", c;
            for (c in a) {
                d = d + (c + "=" + (b ? encodeURIComponent(a[c]) : a[c]) + "&")
            }
            return d.slice(0, -1)
        },
        // b=123&c=fa ==> {b:123,c:"fa"} 同版本在le.object.js下也存在
        stringToJson: function(a) {
            for (var a = a.split("&"), b = "", d = 0; d < a.length; d++) {
                var c = a[d].split("=")
                  , b = b + ("'" + c[0] + "':'" + c[1] + "',")
            }
            return eval("({" + b.substring(0, b.length - 1) + "})")
        },
        /**
         * 字串截取返回带...的串 
         * "abcdefg" ==> "abc..."
         * 同版本在le.string.js下也存在
         */
        textEllipsis: function(a, b) {
            return a.length <= b ? a : a.substring(0, b) + "...";
        },
        /**
         * 其他职能工具，都在tools下承载
         * desc:获取可视区宽度
         */
        winWidth: function() {
            var win={w:-1,h:-1};
            win.w=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth;
            return win.w;
        },
        /**
         * 其他职能工具，都在tools下承载
         * desc:获取可视区高度
         */
        winHeight: function() {
            var win={w:-1,h:-1};
            win.h=window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight;
            return win.h;
        },
         /**
         * 同版本在le.object.js下也存在作用相关的函数calculateMapEffective
         */
        isEmptyObject: function(a) {
            for (var b in a) {
                return false
            }
            return true
        },
        getShadeLayer: function(a, b) {
            var d = document.documentElement.scrollWidth || $("body").outerWidth()
              , c = $("body").outerHeight() > Js.Tools.winHeight() ? $("body").outerHeight() : Js.Tools.winHeight();
            return '<div id="shadeLayer" class="' + a + '" style="width:' + d + "px;height:" + c + "px;*background: #000000;" + (b || "") + '"></div>'
        },
        /**
         * /htmlResource/js/newag.js 在用
         * /htmlResource/js/xyad.js 在用
         */
        imgLoad: function(a, b) {
            var d = new Image;
            d.src = a;
            d.readyState ? d.onreadystatechange = function() {
                if (d.readyState == "loaded" || d.readyState == "complete") {
                    d.onreadystatechange = null ;
                    b(d.width, d.height)
                }
            }
             : d.onload = function() {
                d.complete && b(d.width, d.height)
            }
        },
        setEleToCenter: function(a, b) {
            var b = b || {}
              , d = $(a)
              , c = d.outerWidth()
              , f = d.outerHeight();
            d.css("left", b.x || Js.Tools.winWidth() / 2 - c / 2 + (b.offsetX || 0));
            if (Js.Tools.mobileDev().iPad) {
                d.css("left", b.x || 600 - c / 2 + (b.offsetX || 0))
            }
            c = b.offsetY || 0;
            if (Js.Tools.mobileDev().mobile) {
                c = c + ((document.body.scrollTop || document.documentElement.scrollTop) + Js.Tools.winHeight() / 2 - f / 2);
                Js.Tools.mobileDev().iPhone || d.css("position", "absolute")
            } else {
                c = c + (Js.Tools.winHeight() / 2 - f / 2);
                b.scrollFollow ? d.css("position", "absolute") : d.css("position", "fixed")
            }
            c = c - 30;
            d.css("top", b.y || c < 0 ? 10 : c)
        },
        urlCode: function(a) {
            return encodeURIComponent(Aes.Ctr.encrypt(a, getCookie("COOKIE_USER_ID") || "letv", 256))
        },
        urlDecode: function(a) {
            return Aes.Ctr.decrypt(decodeURIComponent(a), getCookie("COOKIE_USER_ID") || "letv", 256)
        },
        mobileDev: function() {
            var a = navigator.userAgent;
            return {
                mobile: !!a.match(/AppleWebKit.*Mobile.*/),
                ios: !!a.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),
                android: -1 < a.indexOf("Android") || -1 < a.indexOf("Linux"),
                iPhone: -1 < a.indexOf("iPhone"),
                iPad: -1 < a.indexOf("iPad"),
                webApp: -1 == a.indexOf("Safari")
            }
        },
        showCountDown: function(a, b, d, c) {
            function f(a, b) {
                var a = a / 1000
                  , c = Math.floor(a / 86400)
                  , f = Math.floor((a - c * 86400) / 3600)
                  , e = Math.floor((a - c * 86400 - f * 3600) / 60)
                  , h = Math.floor(a - c * 86400 - f * 3600 - e * 60)
                  , f = f < 10 ? "0" + f : f
                  , e = e < 10 ? "0" + e : e
                  , h = h < 10 ? "0" + h : h
                  ,c = c < 10 ? "0" + c : c;
                b && d && d(c, f, e, h);
                return [c, f, e, h]
            }
            (new Date).getTime();
            var e;
            f(a, 1);
            var h = (new Date).getTime();
            e = setInterval(function() {
                var g = (new Date).getTime() - h;
                h = (new Date).getTime();
                a = g > 1200 || g < 900 ? a - 1000 : a - g;
                g = f(a, 0);
                if (a <= 0) {
                    clearInterval(e);
                    typeof c != "undefined" && c(b)
                } else {
                    d && d(g[0], g[1], g[2], g[3])
                }
            }, 1000);
            return {
                stop: function(a) {
                    clearInterval(e);
                    typeof a != "undefined" && a()
                }
            }
        }
    };
	window.__eco__(this,"Js","Tools",Tools);
})();