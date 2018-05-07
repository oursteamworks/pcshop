var webtrekkConfig = {
	trackId : "816219350208316",
	trackDomain : "shopletv01.wt-cn01.net",
	domain : "",
	cookie : "3",
	mediaCode : "cps_id",
	contentId : ""
};
var webtrekkUnloadObjects = [];
var webtrekkLinktrackObjects = [];
var webtrekkHeatmapObjects = [];
function webtrekkV3($a) {
	var webtrekkUnload = function ($b, $c) {
		if ($d.cookie == "1" && !$d.optOut && !$d.deactivatePixel) {
			$d.firstParty()
		}
		var $e = ($c) ? $c : ($d.formObject && $b != "noForm") ? "form" : "link";
		if ($d.beforeUnloadPixel != false) {
			$d.beforeUnloadPixel()
		} else {
			if ($e == "form") {
				$d.executePlugin($d.getPluginConfig("form", "before"))
			}
		}
		var p = "";
		if ($d.config.linkId) {
			p += "&ct=" + $d.wtEscape($d.maxlen($d.config.linkId, 255));
			if (p) {
				if ($d.linktrackOut) {
					p += "&ctx=1"
				}
				var $f = $d.ccParams;
				if (typeof($f) == "string" && $f != "") {
					p += $f
				}
			}
		}
		if ($d.wtEp) {
			if ($d.wtEpEncoded) {
				p += $d.wtEp
			} else {
				var $g = $d.wtEp;
				if (typeof($g) == "string" && $g != "") {
					$g = $g.split(/;/);
					for (var z = 0; z < $g.length; z++) {
						if ($d.wtTypeof($g[z])) {
							var $h = $g[z].split(/=/);
							if ($d.checkSC("custom")) {
								$h[1] = $d.decrypt($h[1])
							}
							$h[1] = $d.wtEscape($h[1]);
							p += "&" + $h[0] + "=" + $h[1]
						}
					}
				}
			}
		}
		if ($d.formObject && $b != "noForm") {
			var gatherFormsP = $d.gatherForm();
			if (gatherFormsP) {
				p += "&fn=" + ($d.formName ? $d.formName : $d.contentId.split(";")[0]) + "|" + ($d.formSubmit ? "1" : "0");
				p += "&ft=" + $d.wtEscape(gatherFormsP)
			}
		}
		if (p != "") {
			if (($d.isChrome || $d.isFirefox) && $e != "click") {
				$d.quicksend($d.wtEscape($d.contentId.split(";")[0]) + ",1," + $d.baseparams(), p, false, "saveRequest")
			} else {
				$d.quicksend($d.wtEscape($d.contentId.split(";")[0]) + ",1," + $d.baseparams(), p, false, "sendRequest")
			}
			$d.config.linkId = "";
			$d.ccParams = "";
			$d.wtEp = ""
		}
		if ($d.afterUnloadPixel != false) {
			$d.afterUnloadPixel()
		} else {
			if ($e == "form") {
				$d.executePlugin($d.getPluginConfig("form", "after"))
			}
		}
	};
	var webtrekkLinktrack = function (e) {
		if ((e.which && e.which == 1) || (e.button && e.button == 1)) {
			var a = ((document.all && window.event !== null) ? window.event.srcElement : this);
			for (var i = 0; i < 4; i++) {
				if (a.tagName && a.tagName.toLowerCase() != "a" && a.tagName.toLowerCase() != "area") {
					a = a.parentElement
				}
			}
			$d.config = $d.getConfig(true);
			$d.config.customClickParameter = $d.customClickParameter;
			a.lname = $d.getAttribute(a, $d.linkTrackAttribute);
			a.lpos = 0;
			$d.getCCParams(a);
			if (!$d.wtLength(a.lpos) && a.tagName) {
				var c = document.links;
				for (var d = 0; d < $d.wtLength(c); d++) {
					if (a == c[d]) {
						a.lpos = d + 1;
						break
					}
				}
			}
			if (a.lpos) {
				if ($d.getJSON(a.lname) != null) {
					$d.parseJSON($d.getJSON(a.lname));
					a.lname = $d.config.linkId
				}
				if ($d.linkTrack == "link") {
					var y = a.href.indexOf("//");
					y = (y >= 0 ? a.href.substr(y + 2) : a.href);
					if ($d.linkTrackPattern) {
						if (!$d.linkTrackReplace) {
							$d.linkTrackReplace = ""
						}
						y = y.replace($d.linkTrackPattern, $d.linkTrackReplace)
					}
					$d.config.linkId = (a.lname ? (a.lname + ".") : "") + y.split("?")[0].replace(/\//g, ".");
					var p = "";
					if ($d.linkTrackParams) {
						p = $d.linkTrackParams.replace(/;/g, ",").split(",")
					}
					for (var i = 0; i < p.length; i++) {
						var v = $d.urlParam(y, p[i], "");
						if (v) {
							$d.config.linkId += "." + p[i] + "." + v
						}
					}
				} else {
					if ($d.linkTrack == "standard" && a.lname) {
						$d.config.linkId = a.lname
					}
				}
				var $i = false;
				if ($d.linkTrackDownloads) {
					var $j = a.href.split(".");
					$j = $j.pop();
					var $k = $d.linkTrackDownloads.split(";");
					for (i = 0; i < $k.length; i++) {
						if ($k[i] == $j) {
							$i = true;
							break
						}
					}
				}
				if ($d.config.linkId) {
					if ($d.domain && !$d.isOwnDomain(a.href)) {
						$d.linktrackOut = true
					}
				}
				if ($i || ($d.config.linkId && a.target != "" && a.target != "_self")) {
					$d.sendinfo($d.config, $d.config.linkId, "click")
				} else {
					$d.config.sendOnUnload = true;
					$d.sendinfo($d.config, $d.config.linkId, "link")
				}
			}
		}
	};
	var webtrekkHeatmapClick = function (e) {
		var $l = document.getElementById($d.heatmapRefpoint),
		$m;
		if ($l && $l !== null) {
			$m = {
				left : 0,
				top : 0
			}
		} else {
			$m = {
				left : -1,
				top : -1
			}
		}
		if ($l && $l !== null) {
			if ($d.wtTypeof($l.offsetLeft)) {
				while ($l) {
					$m.left += (($l.offsetLeft >= 0) ? $l.offsetLeft : 0);
					$m.top += (($l.offsetTop >= 0) ? $l.offsetTop : 0);
					$l = $l.offsetParent
				}
			}
		}
		var $n = 0;
		var $o = 0;
		if (!e) {
			var e = window.event
		}
		if (e.pageX || e.pageY) {
			$n = e.pageX;
			$o = e.pageY
		} else {
			if (e.clientX || e.clientY) {
				$n = e.clientX;
				$o = e.clientY;
				if ($d.isIE) {
					if (document.body.scrollLeft > 0 || document.body.scrollTop > 0) {
						$n += document.body.scrollLeft;
						$o += document.body.scrollTop
					} else {
						if (document.documentElement.scrollLeft > 0 || document.documentElement.scrollTop > 0) {
							$n += document.documentElement.scrollLeft;
							$o += document.documentElement.scrollTop
						}
					}
				}
			}
		}
		var $p = 0;
		if ($d.isIE) {
			$p = document.body.clientWidth
		} else {
			$p = self.innerWidth - 16
		}
		var $q = true;
		if ($n >= $p || !$d.sentFullPixel) {
			$q = false
		}
		if (($m.top >= 0 || $m.left >= 0) && $n > $m.left && $o > $m.top) {
			$n = "-" + ($n - $m.left);
			$o = "-" + ($o - $m.top)
		}
		if ($q && $d.heatmap == "1") {
			$d.executePlugin($d.getPluginConfig("heatmap", "before"));
			$d.quicksend($d.wtEscape($d.contentId.split(";")[0]) + "," + $n + "," + $o, "", "hm", "sendRequest");
			$d.executePlugin($d.getPluginConfig("heatmap", "after"))
		}
	};
	var webtrekkStartHeatmap = function () {
		if (typeof(wt_heatmap) != "undefined") {
			window.setTimeout("wt_heatmap()", 1000)
		} else {
			if (typeof($r) == "undefined") {
				$r = 0
			}
			$r++;
			if ($r < 60) {
				window.setTimeout(function () {
					webtrekkStartHeatmap()
				}, 1000)
			}
		}
	};
	var webtrekkStartOverlay = function () {
		if (typeof(wt_overlay) != "undefined") {
			wt_overlay()
		} else {
			if (typeof($s) == "undefined") {
				$s = 0
			}
			$s++;
			if ($s < 60) {
				window.setTimeout(function () {
					webtrekkStartOverlay()
				}, 1000)
			}
		}
	};
	var webtrekkFormTrackInstall = function () {
		$d.findForm();
		if (!$d.formObject) {
			return
		}
		for (var j = 0; j < $d.formObject.elements.length; j++) {
			var e = $d.formObject.elements[j];
			$d.registerEvent(e, "focus", webtrekkFormFocus)
		}
		$d.registerEvent($d.formObject, "submit", webtrekkFormSubmit);
		$d.registerEvent(window, (($d.wtTypeof(window.onbeforeunload)) ? "beforeunload" : "unload"), webtrekkUnload)
	};
	var webtrekkFormSubmit = function (e) {
		if (!$d.form) {
			return
		}
		if (e.target == $d.formObject || e.srcElement == $d.formObject) {
			$d.formSubmit = true
		}
	};
	var webtrekkFormFocus = function (e) {
		var a = ((document.all && window.event !== null) ? window.event.srcElement : e.target);
		if (!a.name || a.type == "submit" || a.type == "image") {
			return
		}
		if ($d.formObject) {
			$d.formFocus = a.name
		}
	};
	var c = webtrekkConfig,
	$d = this;
	if (!$a) {
		var $a = c
	}
	this.defaultAttribute = ["contentId", "linkId", "trackId", "trackDomain", "domain", "linkTrack", "linkTrackParams", "linkTrackPattern", "linkTrackReplace", "linkTrackDownloads", "linkTrackIgnorePattern", "customParameter", "crmCategory", "customClickParameter", "customSessionParameter", "customTimeParameter", "customCampaignParameter", "customEcommerceParameter", "orderValue", "currency", "orderId", "product", "productCost", "productQuantity", "productCategory", "productStatus", "customerId", "crmCategory", "contentGroup", "mediaCode", "mediaCodeValue", "mediaCodeCookie", "campaignId", "campaignAction", "internalSearch", "customSid", "customEid", "cookieDomain", "cookieEidTimeout", "cookieSidTimeout", "forceNewSession", "xwtip", "xwtua", "xwtrq", "mediaCodeFrames", "framesetReferrer", "forceHTTPS", "secureConfig", "heatmap", "pixelSampling", "form", "formFullContent", "formAnonymous", "disableOverlayView", "beforeSendinfoPixel", "afterSendinfoPixel", "beforeUnloadPixel", "afterUnloadPixel", "executePluginFunction", "sendOnUnload", "xlc", "xlct", "xlcv", "ignorePrerendering", "isIE", "isOpera", "isSafari", "isChrome", "isFirefox"];
	this.cookie = ($a.cookie) ? $a.cookie : (c.cookie) ? c.cookie : "3";
	this.optoutName = ($a.optoutName) ? $a.optoutName : (c.optoutName) ? c.optoutName : "webtrekkOptOut";
	this.saveRequest = ($a.saveRequest) ? $a.saveRequest : (c.saveRequest) ? c.saveRequest : true;
	this.paramFirst = ($a.paramFirst) ? $a.paramFirst : (c.paramFirst) ? c.paramFirst : "";
	this.plugins = ($a.plugins && $a.plugins != "") ? $a.plugins : (c.plugins && c.plugins != "") ? c.plugins : ["Adobe Acrobat", "Windows Media Player", "Shockwave Flash", "RealPlayer", "QuickTime", "Java", "Silverlight"];
	if (typeof(this.plugins) == "string") {
		this.plugins = this.plugins.split(";")
	}
	this.heatmapRefpoint = ($a.heatmapRefpoint) ? $a.heatmapRefpoint : (c.heatmapRefpoint) ? c.heatmapRefpoint : "wt_refpoint";
	this.linkTrackAttribute = ($a.linkTrackAttribute) ? $a.linkTrackAttribute : (c.linkTrackAttribute) ? c.linkTrackAttribute : "name";
	this.formAttribute = ($a.formAttribute) ? $a.formAttribute : (c.formAttribute) ? c.formAttribute : "name";
	this.formFieldAttribute = ($a.formFieldAttribute) ? $a.formFieldAttribute : (c.formFieldAttribute) ? c.formFieldAttribute : "name";
	this.formValueAttribute = ($a.formValueAttribute) ? $a.formValueAttribute : (c.formValueAttribute) ? c.formValueAttribute : "value";
	this.reporturl = ($a.reporturl) ? $a.reporturl : (c.reporturl) ? c.reporturl : "report2.webtrekk.de/cgi-bin/wt";
	this.updateCookie = ($a.updateCookie) ? $a.updateCookie : (c.updateCookie) ? c.updateCookie : true;
	this.version = 323;
	this.deactivatePixel = false;
	this.deactivateRequest = false;
	this.optOut = false;
	this.eid = false;
	this.firstVisitContact = false;
	this.lastVisitContact = false;
	this.sampleCookieString = false;
	this.cookieOne = false;
	this.linktrackOut = false;
	this.linktrackNamedlinksOnly = true;
	this.ccParams = false;
	this.sentFullPixel = false;
	this.sentCampaignIds = {};
	this.wtEp = false;
	this.wtEpEncoded = false;
	this.trackingSwitchMediaCode = false;
	this.trackingSwitchMediaCodeValue = false;
	this.trackingSwitchMediaCodeTimestamp = false;
	this.heatmapOn = false;
	this.overlayOn = false;
	this.gatherFormsP = false;
	this.formObject = false;
	this.formName = false;
	this.formFocus = false;
	this.formSubmit = false;
	this.browserLang = false;
	this.config = false;
	this.unloadInstance = webtrekkUnloadObjects.length;
	this.plugin = {};
	this.pageCounter = 0;
	this.clickCounter = 0;
	this.linkCounter = 0;
	this.formCounter = 0;
	this.heatmapCounter = 0;
	this.browserLang = false;
	if (typeof(navigator.language) == "string") {
		this.browserLang = navigator.language.substring(0, 2)
	} else {
		if (typeof(navigator.userLanguage) == "string") {
			this.browserLang = navigator.userLanguage.substring(0, 2)
		}
	}
	this.jsonPara = {
		ck : ["customClickParameter", {}

		],
		cp : ["customParameter", {}

		],
		cs : ["customSessionParameter", {}

		],
		ce : ["customTimeParameter", {}

		],
		cb : ["customEcommerceParameter", {}

		],
		vc : ["crmCategory", {}

		],
		ca : ["productCategory", {}

		],
		cc : ["customCampaignParameter", {}

		],
		cg : ["contentGroup", {}

		],
		ct : ["linkId", ""],
		ov : ["orderValue", ""],
		cr : ["currency", ""],
		oi : ["orderId", ""],
		ba : ["product", ""],
		co : ["productCost", ""],
		qn : ["productQuantity", ""],
		st : ["productStatus", ""],
		cd : ["customerId", ""],
		is : ["internalSearch", ""],
		mc : ["campaignId", ""],
		mca : ["campaignAction", ""],
		sou : ["sendOnUnload", false]
	};
	this.generateDefaultConfig = function ($t, $u) {
		for (var i = 0; i < this.defaultAttribute.length; i++) {
			var a = this.defaultAttribute[i];
			this[a] = ($t[a]) ? $t[a] : ($u[a]) ? $u[a] : false
		}
	};
	this.generateDefaultConfig($a, c);
	this.campaignAction = ($a.campaignAction) ? $a.campaignAction : (c.campaignAction) ? c.campaignAction : "click";
	this.getJSON = function (s) {
		if (s && s.charAt(0) == "{" && s.charAt(s.length - 1) == "}") {
			try {
				return eval("(" + s + ")")
			} catch (e) {
				return null
			}
		}
		return null
	};
	this.parseJSON = function (o, n) {
		for (var $v in o) {
			if (typeof(o[$v]) == "object") {
				if (typeof(this.jsonPara[$v]) != "undefined" && typeof(this.config[this.jsonPara[$v][0]]) != "object") {
					this.config[this.jsonPara[$v][0]] = this.jsonPara[$v][1]
				}
				this.parseJSON(o[$v], $v);
				continue
			}
			if (n) {
				if (isNaN(parseInt($v)) || parseInt($v) < 500) {
					this.config[this.jsonPara[n][0]][$v] = o[$v]
				}
			} else {
				if (typeof(this.jsonPara[$v]) != "undefined") {
					this.config[this.jsonPara[$v][0]] = o[$v]
				}
			}
		}
	};
	this.getMappingParam = function (np) {
		var p = np.split(""),
		i,
		$w,
		$x,
		$y;
		for (i = 0; i < p.length; i++) {
			if (!isNaN(parseInt(p[i]))) {
				$w = i;
				break
			}
		}
		if ($w) {
			$x = np.substr(0, $w);
			$y = np.substr($w, np.length - 1)
		} else {
			$x = np
		}
		return {
			mapping : ((typeof(this.jsonPara[$x]) != "undefined") ? this.jsonPara[$x][0] : false),
			index : (($y) ? $y : false)
		}
	};
	this.getConfig = function (d) {
		var c = {};
		for (var i = 0; i < this.defaultAttribute.length; i++) {
			var a = this.defaultAttribute[i];
			c[a] = ((d) ? false : this[a])
		}
		return c
	};
	this.getRequestCounter = function ($c, $z) {
		var c = 0;
		if ($z == "before") {
			c++
		}
		if ($c == "link") {
			this.linkCounter += c;
			return this.linkCounter
		} else {
			if ($c == "click") {
				this.clickCounter += c;
				return this.clickCounter
			} else {
				if ($c == "page") {
					this.pageCounter += c;
					return this.pageCounter
				} else {
					if ($c == "heatmap") {
						this.heatmapCounter += c;
						return this.heatmapCounter
					} else {
						if ($c == "form") {
							this.formCounter += c;
							return this.formCounter
						}
					}
				}
			}
		}
	};
	this.getPluginConfig = function ($c, $z) {
		return {
			instance : this,
			mode : $c,
			type : $z,
			requestCounter : this.getRequestCounter($c, $z)
		}
	};
	this.checkAsynchron = function ($A, $B, $C, $D) {
		if (typeof(window[$A]) != "undefined") {
			if ($B) {
				$B(true, $C)
			}
			return
		} else {
			if ($D <= 0) {
				if ($B) {
					$B(false, $C)
				}
				return
			}
		}
		window.setTimeout(function () {
			$C.checkAsynchron($A, $B, $C, ($D - 100))
		}, 100)
	};
	this.loadAsynchron = function ($E, $A, $B, $D) {
		if (this.include($E)) {
			$B = ($B) ? $B : false;
			$D = ($D) ? $D : 2000;
			this.checkAsynchron($A, $B, this, $D)
		}
	};
	this.include = function (s) {
		if (!document.createElement) {
			return false
		}
		var $F = document.getElementsByTagName("head").item(0);
		var js = document.createElement("script");
		js.setAttribute("language", "javascript");
		js.setAttribute("type", "text/javascript");
		js.setAttribute("src", s);
		$F.appendChild(js);
		return true
	};
	this.executePlugin = function ($G) {
		if (!this.executePluginFunction || typeof(this.executePluginFunction) != "string") {
			return
		}
		this.epf = false;
		var $H = this.executePluginFunction.split(";");
		for (var z = 0; z < $H.length; z++) {
			if (typeof(window[$H[z]]) == "function") {
				this.epf = window[$H[z]];
				this.epf($G)
			}
		}
	};
	this.indexOf = function (a, b, c) {
		return a.indexOf(b, c ? c : 0)
	};
	this.wtTypeof = function (v) {
		return ((typeof(v) != "undefined") ? 1 : 0)
	};
	this.wtLength = function (a) {
		return ((a != "undefined") ? a.length : 0)
	};
	this.getAttribute = function (o, a) {
		if (typeof(o.getAttribute(a)) == "string") {
			return o.getAttribute(a)
		}
		if (typeof(o.getAttribute(a)) == "object" && typeof(o.attributes[a]) == "object") {
			if (o.attributes[a] != null) {
				return o.attributes[a].nodeValue
			}
		}
		return ""
	};
	this.getTimezone = function () {
		return Math.round((new Date().getTimezoneOffset() / 60) * (-1))
	};
	this.wtHref = function () {
		return this.wtLocation().href
	};
	this.wtLocation = function () {
		var $I = document.location;
		if (!document.layers && document.getElementById) {
			try {
				$I = top.document.location
			} catch (e) {
				$I = document.location
			}
		} else {
			$I = top.document.location
		}
		return $I
	};
	this.getWebtrekkPath = function () {
		if (!document.layers && document.getElementById) {
			var $J = document.getElementsByTagName("script");
			for (var i = 0; i < $J.length; i++) {
				if ($J[i].src.match(/webtrekk[a-z|A-Z|0-9|_]*\.js/g)) {
					return $J[i].src.replace(/webtrekk[a-z|A-Z|0-9|_]*\.js/g, "")
				}
			}
		}
		return ""
	};
	this.isIE = this.indexOf(navigator.appName, "Microsoft") ? false : true;
	if (!this.isIE) {
		this.isOpera = this.indexOf(navigator.appName, "Opera") ? false : true;
		if (!this.isOpera) {
			this.isSafari = (navigator.vendor.toLowerCase().indexOf("apple") != -1) ? true : false;
			this.isChrome = (navigator.vendor.toLowerCase().indexOf("google") != -1) ? true : false;
			if (!this.isSafari && !this.isChrome) {
				this.isFirefox = (navigator.userAgent.toLowerCase().indexOf("firefox") != -1) ? true : false
			}
		}
	}
	this.url2contentId = function ($I) {
		if (!$I) {
			return "no_content"
		}
		var tmp = new RegExp("//(.*)").exec($I);
		if (tmp.length < 1) {
			return "no_content"
		}
		var $K = tmp[1].split("?")[0].replace(/\./g, "_").replace(/\//g, ".").replace(/\.{2,}/g, ".").toLowerCase();
		return $K.split(";")[0]
	};
	this.contentId = ($a.contentId) ? $a.contentId : this.url2contentId(document.location.href);
	this.registerEvent = function ($L, e, f) {
		if ($L.addEventListener) {
			if (e == "webkitvisibilitychange") {
				this.unregisterEvent($L, e, f)
			}
			$L.addEventListener(e, f, false)
		} else {
			if ($L.attachEvent) {
				if (e == "beforeunload" || e == "webkitvisibilitychange") {
					this.unregisterEvent($L, e, f)
				}
				$L.attachEvent("on" + e, f)
			}
		}
	};
	this.unregisterEvent = function ($L, e, f) {
		if ($L.removeEventListener) {
			$L.removeEventListener(e, f, false)
		} else {
			if ($L.detachEvent) {
				$L.detachEvent("on" + e, f)
			}
		}
	};
	this.maxlen = function (v, l) {
		if (v && v.length > l) {
			return v.substring(0, l - 1)
		}
		return v
	};
	this.wtEscape = function (u) {
		try {
			return encodeURIComponent(u)
		} catch (e) {
			return escape(u)
		}
	};
	this.wtUnescape = function (u) {
		try {
			return decodeURIComponent(u)
		} catch (e) {
			return unescape(u)
		}
	};
	this.decrypt = function (x) {
		var $M = "";
		if (x) {
			try {
				$M = this.wtUnescape(x.replace(/([0-9a-fA-F][0-9a-fA-F])/g, "%$1"))
			} catch (e) {}

		}
		return $M
	};
	this.checkSC = function (x) {
		if (typeof(this.secureConfig) != "string") {
			return false
		}
		var sc = this.secureConfig.split(";");
		for (var i = 0; i < sc.length; i++) {
			if (sc[i] == x) {
				return true
			}
		}
		return false
	};
	this.zeroPad = function (n, $N) {
		var $O = "000000000000" + n;
		return $O.substring(($O.length - $N), $O.length)
	};
	this.generateEid = function () {
		return "2" + this.zeroPad(Math.floor(new Date().getTime() / 1000), 10) + this.zeroPad(Math.floor(Math.random() * 1000000), 8)
	};
	this.getexpirydate = function ($P) {
		var $Q;
		var $R = new Date();
		var $S = Date.parse($R);
		$R.setTime($S + $P * 60 * 1000);
		$Q = $R.toUTCString();
		return $Q
	};
	this.setCookie = function (name, $T, $U) {
		var d = location.hostname;
		var $V = "^[0-9]{1,3" + String.fromCharCode(125) + ".[0-9]{1,3" + String.fromCharCode(125) + ".[0-9]{1,3" + String.fromCharCode(125) + ".[0-9]{1,3" + String.fromCharCode(125) + "$";
		if (d.search($V) == -1) {
			d = location.hostname.split(".");
			d = d[d.length - 2] + "." + d[d.length - 1]
		}
		var c,
		f = false;
		if (this.cookieDomain) {
			var cd = this.cookieDomain.split(";");
			for (var i = 0; i < cd.length; i++) {
				if (location.hostname.indexOf(cd[i]) != -1) {
					d = cd[i];
					f = true;
					break
				}
			}
		}
		if (f && typeof($U) != "undefined" && $U) {
			c = name + "=" + escape($T) + ";domain=" + d + ";path=/;expires=" + this.getexpirydate($U)
		} else {
			if (f) {
				c = name + "=" + escape($T) + ";path=/;domain=" + d
			} else {
				if (d.split(".")[0].length < 3 && typeof($U) != "undefined" && $U) {
					c = name + "=" + escape($T) + ";path=/;expires=" + this.getexpirydate($U)
				} else {
					if (d.split(".")[0].length < 3) {
						c = name + "=" + escape($T) + ";path=/"
					} else {
						if (typeof($U) != "undefined" && $U) {
							c = name + "=" + escape($T) + ";domain=" + d + ";path=/;expires=" + this.getexpirydate($U)
						} else {
							c = name + "=" + escape($T) + ";path=/;domain=" + d
						}
					}
				}
			}
		}
		document.cookie = c
	};
	this.getCookie = function ($W) {
		var $X = document.cookie.split(";");
		for (var i = 0; i < $X.length; i++) {
			var $Y = $X[i].substr(0, $X[i].indexOf("="));
			var $Z = $X[i].substr($X[i].indexOf("=") + 1);
			$Y = $Y.replace(/^\s+|\s+$/g, "");
			if ($Y == $W) {
				return unescape($Z)
			}
		}
		return ""
	};
	this.optOut = (this.getCookie(this.optoutName)) ? true : false;
	if (this.optOut) {
		this.deactivatePixel = true
	}
	this.urlParam = function ($I, $00, $01) {
		if (!$I || $I == null) {
			return $01
		}
		var p = new Array();
		if ($I.indexOf("?") > 0) {
			p = $I.split("?")[1].replace(/&/g, "&").split("#")[0].split("&")
		}
		for (var i = 0; i < p.length; i++) {
			if (p[i].indexOf($00 + "=") == 0) {
				return this.wtUnescape(p[i].substring($00.length + 1).replace(/\+/g, "%20"))
			}
		}
		return $01
	};
	this.allUrlParam = function ($00, $01) {
		if (this.mediaCodeFrames && this.mediaCodeFrames != "") {
			var lf = this.mediaCodeFrames.split(";");
			for (var i = 0; i < lf.length; i++) {
				var $02 = false;
				eval("try { lFrame = eval(lf[i]) }catch(e){};");
				if ($02 && $02 != top && $02.location) {
					var $03 = this.urlParam($02.location.href, $00, $01);
					if ($03 != $01) {
						return $03
					}
				}
			}
			return $01
		} else {
			var topLocation = "";
			try {
				topLocation = top.location.href
			} catch (e) {
				topLocation = document.location.href
			}
			return this.urlParam(topLocation, $00, $01)
		}
	};
	this.linkTrackInit = function () {
		var $04 = false;
		for (var i = 0; i < webtrekkLinktrackObjects.length; i++) {
			if (this == webtrekkLinktrackObjects[i]) {
				$04 = true
			}
		}
		if (!$04) {
			webtrekkLinktrackObjects.push(this)
		}
		if (this.linkTrack && this.linkTrack == "link") {
			this.linktrackNamedlinksOnly = false
		}
		for (var c = 0; c < document.links.length; c++) {
			var name = this.getAttribute(document.links[c], this.linkTrackAttribute);
			var $05 = this.getAttribute(document.links[c], "href");
			if ((this.linkTrackIgnorePattern && $05.search(this.linkTrackIgnorePattern) == -1) || !this.linkTrackIgnorePattern) {
				if ((name || !this.linktrackNamedlinksOnly) && typeof(document.links[c].wt_marked) == "undefined") {
					document.links[c].wt_marked = true;
					this.registerEvent(document.links[c], "mousedown", webtrekkLinktrack)
				}
			}
		}
	};
	if (this.linkTrack) {
		this.linkTrackInit()
	}
	this.getCCParams = function (a) {
		var p = "";
		if (this.config.customClickParameter) {
			var $06 = (this.config.customClickParameter[this.getAttribute(a, "name")]) ? this.config.customClickParameter[this.getAttribute(a, "name")] : this.config.customClickParameter[a.id];
			if (!$06) {
				$06 = this.config.customClickParameter
			}
			for (var z in $06) {
				if (!isNaN(z) && this.wtTypeof($06[z]) && typeof($06[z]) == "string" && $06[z] != "") {
					if (this.checkSC("custom")) {
						$06[z] = this.decrypt($06[z])
					}
					p += "&ck" + z + "=" + this.wtEscape($06[z])
				}
			}
		}
		this.ccParams = p;
		return
	};
	this.plugInArray = function ($07, $08) {
		if (typeof($07) != "object") {
			return false
		}
		for (var i = 0; i < $07.length; i++) {
			var $09 = new RegExp($07[i].toLowerCase(), "g");
			if ($08.toLowerCase().search($09) != -1) {
				return $07[i]
			}
		}
		return false
	};
	this.quicksend = function ($0a, $0b, $0c, $0d) {
		if (!this.trackDomain || !this.trackId || this.deactivatePixel || this.deactivateRequest) {
			this.deactivateRequest = false;
			return
		}
		if (!$0c) {
			$0c = "wt"
		}
		if (typeof(this.requestTimeout) == "undefined") {
			this.requestTimeout = 5
		}
		if (this.cookie == "1") {
			$0b = "&eid=" + this.eid + "&one=" + (this.cookieOne ? "1" : "0") + "&fns=" + (this.forceNewSession ? "1" : "0") + $0b
		}
		if (this.cookie != "1" && (this.wtTypeof(this.cookieEidTimeout) || this.wtTypeof(this.cookieSidTimeout))) {
			if (this.wtTypeof(this.cookieEidTimeout) && this.cookieEidTimeout != "") {
				$0b = "&cet=" + this.cookieEidTimeout + $0b
			}
			if (this.wtTypeof(this.cookieSidTimeout) && this.cookieSidTimeout != "") {
				$0b = "&cst=" + this.cookieSidTimeout + $0b
			}
		}
		if (this.pixelSampling > 0) {
			$0b += "&ps=" + this.pixelSampling
		}
		$0b = "&tz=" + this.getTimezone() + $0b;
		var $0e = "//" + this.trackDomain + "/" + this.trackId + "/" + $0c + "?p=" + this.version + "," + $0a + $0b + "&eor=1";
		if (!this.ignorePrerendering && this.isChrome && typeof(document.webkitHidden) != "undefined") {
			if (typeof(this.prerendering) != "object") {
				this.prerendering = new Array()
			}
			if (document.webkitHidden) {
				this.prerendering.push($0e);
				var pi = this;
				this.registerEvent(document, "webkitvisibilitychange", function () {
					pi.sendPrerendering()
				});
				return
			}
		}
		if (this.saveRequest && $0d == "saveRequest") {
			if (this.getCookie("saveRequestV3")) {
				this.setCookie("saveRequestV3", this.getCookie("saveRequestV3") + "<<>>" + $0e, this.requestTimeout)
			} else {
				this.setCookie("saveRequestV3", $0e, this.requestTimeout)
			}
		} else {
			this.sendPixel($0e, $0c)
		}
		if ($0c != "hm") {
			this.cookieOne = false;
			this.forceNewSession = false;
			this.sentFullPixel = 1
		}
	};
	this.sendPrerendering = function () {
		if (!document.webkitHidden) {
			for (var i = 0; i < this.prerendering.length; i++) {
				this.sendPixel(this.prerendering[i])
			}
			this.prerendering = new Array()
		}
	};
	this.sendPixel = function ($I, $0c) {
		var $0f = (document.location.protocol == "https:" ? "https:" : "http:");
		if (this.forceHTTPS) {
			$0f = "https:"
		}
		$I = $0f + $I;
		if ($0c == "hm") {
			$I += "&hm_ts=" + new Date().getTime()
		}
		if (!this.wtTypeof($0g)) {
			var $0g = new Array()
		}
		var ii = $0g.length;
		$0g[ii] = new Image();
		$0g[ii].onload = function () {
			return
		};
		$0g[ii].src = $I
	};
	this.checkCustomParameter = function (cp, np) {
		var p = "";
		if (typeof(cp) == "object") {
			for (var z in cp) {
				if (!isNaN(z) && this.wtTypeof(cp[z]) && typeof(cp[z]) == "string" && cp[z] != "") {
					if (this.checkSC("custom")) {
						cp[z] = this.decrypt(cp[z])
					}
					if (this.paramFirst.indexOf(np + z + ";") == -1) {
						p += "&" + np + z + "=" + this.wtEscape(cp[z])
					}
				}
			}
		}
		return p
	};
	this.send = function (p, $c, ep) {
		if ($c == "link" || $c == "click") {
			this.config.linkId = p
		}
		this.config.contentId = (this.config.contentId) ? this.config.contentId : this.contentId;
		var $0h = ($c && ($c == "link" || $c == "click")) ? this.config.contentId : (p) ? p : this.config.contentId;
		if (!$0h) {
			$0h = "no_content"
		}
		var $0i = "";
		var $0j = this.wtEscape($0h) + ",1,";
		$0j += this.baseparams();
		var $0k = navigator.plugins.length;
		var $0l = "";
		if ($0k > 0) {
			var $0m = Array();
			for (var i = 0; i < $0k; i++) {
				if (navigator.plugins && navigator.appName != "Microsoft Internet Explorer") {
					if (navigator.plugins[i].name == "Shockwave Flash") {
						$0l = navigator.plugins[i].description
					} else {
						$0l = navigator.plugins[i].name
					}
					var $0n = this.plugInArray(this.plugins, $0l);
					if ($0n && !this.plugInArray($0m, $0n)) {
						$0m.push($0n)
					}
				}
			}
			$0l = $0m.join("|")
		}
		if (this.paramFirst) {
			var $0o = this.paramFirst.split(";");
			for (var i = 0; i < $0o.length; i++) {
				var $00 = this.getMappingParam($0o[i]);
				var $0p = $00.mapping;
				var $y = $00.index;
				if ($0p) {
					if ($y) {
						if (this.config[$0p] && typeof(this.config[$0p][$y]) != "undefined" && this.config[$0p][$y]) {
							$0i += "&" + $0o[i] + "=" + this.wtEscape(this.config[$0p][$y])
						}
					} else {
						if (this.config[$0p]) {
							$0i += "&" + $0o[i] + "=" + this.wtEscape(this.config[$0p])
						}
					}
				}
			}
		}
		if (typeof(ep) == "string" && ep != "") {
			ep = ep.split(/;/);
			for (var z = 0; z < ep.length; z++) {
				if (this.wtTypeof(ep[z])) {
					$h = ep[z].split(/=/);
					if (this.checkSC("custom")) {
						$h[1] = this.decrypt($h[1])
					}
					$h[1] = this.wtEscape($h[1]);
					$0i += "&" + $h[0] + "=" + $h[1]
				}
			}
		} else {
			this.wtEpEncoded = false;
			var $0q = this.checkCustomParameter(this.config.customParameter, "cp");
			var $0r = this.checkCustomParameter(this.config.customSessionParameter, "cs");
			var $0s = this.checkCustomParameter(this.config.customTimeParameter, "ce");
			var $0t = this.checkCustomParameter(this.config.customEcommerceParameter, "cb");
			if (this.config.orderValue) {
				if (this.paramFirst.indexOf("ov;") == -1) {
					if (this.checkSC("order")) {
						$0i += "&ov=" + this.wtEscape(this.decrypt(this.config.orderValue))
					} else {
						$0i += "&ov=" + this.wtEscape(this.config.orderValue)
					}
				}
			}
			if (this.config.currency) {
				if (this.paramFirst.indexOf("cr;") == -1) {
					if (this.checkSC("order")) {
						$0i += "&cr=" + this.wtEscape(this.decrypt(this.config.currency))
					} else {
						$0i += "&cr=" + this.wtEscape(this.config.currency)
					}
				}
			}
			if (this.config.orderId) {
				if (this.paramFirst.indexOf("oi;") == -1) {
					$0i += "&oi=" + this.wtEscape(this.config.orderId)
				}
			}
			if (this.config.product) {
				if (this.paramFirst.indexOf("ba;") == -1) {
					$0i += "&ba=" + this.wtEscape(this.config.product)
				}
				if (this.config.productCost) {
					if (this.paramFirst.indexOf("co;") == -1) {
						$0i += "&co=" + this.wtEscape(this.config.productCost)
					}
				}
				if (this.config.productQuantity) {
					if (this.paramFirst.indexOf("qn;") == -1) {
						$0i += "&qn=" + this.wtEscape(this.config.productQuantity)
					}
				}
				$0i += this.checkCustomParameter(this.config.productCategory, "ca");
				if (this.config.productStatus) {
					if (this.paramFirst.indexOf("st;") == -1) {
						$0i += "&st=" + this.wtEscape(this.config.productStatus)
					}
				}
			}
			var customerId = $0u("wt_cd", "(.*)");
			if (!this.config.customerId) {
				this.config.customerId = customerId
			}
			if (this.config.customerId) {
				if (this.paramFirst.indexOf("cd;") == -1) {
					$0i += "&cd=" + this.wtEscape(this.config.customerId)
				}
			}
			$0i += this.checkCustomParameter(this.config.crmCategory, "vc");
			if (this.browserLang) {
				$0i += "&la=" + this.wtEscape(this.browserLang)
			}
			$0i += this.checkCustomParameter(this.config.contentGroup, "cg");
			var $0v = "";
			if (this.config.campaignId) {
				if (!(this.config.campaignId in this.sentCampaignIds)) {
					if (this.paramFirst.indexOf("mc;") == -1) {
						$0i += "&mc=" + this.wtEscape(this.config.campaignId)
					}
				} else {
					if (this.paramFirst.indexOf("mc;") == -1) {
						$0i += "&mc=" + this.wtEscape("ignore%3Dignore")
					}
				}
				if (this.paramFirst.indexOf("mca;") == -1) {
					$0i += "&mca=" + ((this.config.campaignAction) ? this.config.campaignAction.substring(0, 1) : "c")
				}
				this.sentCampaignIds[this.config.campaignId] = true;
				$0v += this.checkCustomParameter(this.config.customCampaignParameter, "cc")
			}
			if (this.trackingSwitchMediaCode) {
				$0i += "&tmc=" + this.wtEscape(this.trackingSwitchMediaCode)
			}
			if (this.trackingSwitchMediaCodeValue) {
				$0i += "&tmcv=" + this.wtEscape(this.trackingSwitchMediaCodeValue)
			}
			if (this.trackingSwitchMediaCodeTimestamp) {
				$0i += "&tmct=" + this.wtEscape(this.trackingSwitchMediaCodeTimestamp)
			}
			if (typeof($0w) == "object" && typeof($0w.trackingSwitchMediaCode) != "undefined") {
				$0i += "&tmc=" + this.wtEscape($0w.trackingSwitchMediaCode)
			}
			if (typeof($0w) == "object" && typeof($0w.trackingSwitchMediaCodeValue) != "undefined") {
				$0i += "&tmcv=" + this.wtEscape($0w.trackingSwitchMediaCodeValue)
			}
			if (typeof($0w) == "object" && typeof($0w.trackingSwitchMediaCodeTimestamp) != "undefined") {
				$0i += "&tmct=" + this.wtEscape($0w.trackingSwitchMediaCodeTimestamp)
			}
			var $0x = "";
			var $0y;
			if (typeof(wt_vt) != "undefined") {
				$0y = wt_vt
			}
			if (!this.wtTypeof($0y)) {
				$0y = this.urlParam(location.href, "wt_vt", false)
			}
			if ($0y) {
				var $0z = this.getCookie("wt_vt").split(";");
				for (var i = 0; i < $0z.length; i++) {
					if ($0z[i].indexOf($0y + "v") != -1) {
						$0x = "&wt_vt=" + $0z[i].split("t")[0].split("v")[1]
					}
				}
			}
			if ($0x) {
				$0i += $0x
			}
			if (this.config.internalSearch) {
				if (this.paramFirst.indexOf("is;") == -1) {
					$0i += "&is=" + this.wtEscape(this.maxlen(this.config.internalSearch, 255))
				}
			}
			if ($0q) {
				$0i += $0q
			}
			if ($0v) {
				$0i += $0v
			}
			if ($0s) {
				$0i += $0s
			}
			if ($0t) {
				$0i += $0t
			}
			if ($0r) {
				$0i += $0r
			}
			if (this.wtTypeof(this.config.customSid) && this.config.customSid != "") {
				$0i += "&csid=" + this.config.customSid
			}
			if (this.wtTypeof(this.config.customEid) && this.config.customEid != "") {
				$0i += "&ceid=" + this.config.customEid
			}
			if (this.wtTypeof(this.config.xwtip) && this.config.xwtip != "") {
				$0i += "&X-WT-IP=" + this.wtEscape(this.config.xwtip)
			}
			if (this.wtTypeof(this.config.xwtua) && this.config.xwtua != "") {
				$0i += "&X-WT-UA=" + this.wtEscape(this.config.xwtua)
			}
			if (this.wtTypeof(this.config.xwtrq) && this.config.xwtrq != "") {
				$0i += "&X-WT-RQ=" + this.wtEscape(this.config.xwtrq)
			}
			if (!this.sentFullPixel && this.firstVisitContact) {
				$0i += "&fvc=" + this.firstVisitContact
			}
			if (!this.sentFullPixel && this.lastVisitContact) {
				$0i += "&lvc=" + this.lastVisitContact
			}
		}
		if (this.config.linkId && this.config.customClickParameter) {
			var $06 = (this.config.customClickParameter[this.config.linkId]) ? this.config.customClickParameter[this.config.linkId] : this.config.customClickParameter;
			$0i += this.checkCustomParameter($06, "ck");
			this.ccParams = false
		}
		if (this.config.xlc && this.config.xlct) {
			if (this.config.xlc != "" || this.config.xlct != "") {
				if (this.config.xlcv) {
					var $0A = this.getExtLifeCycles(this.config.xlc, this.config.xlct, this.config.xlcv)
				} else {
					var $0A = this.getExtLifeCycles(this.config.xlc, this.config.xlct)
				}
				$0i += $0A
			}
		}
		if (this.config.linkId && this.config.sendOnUnload) {
			this.wtEp = $0i;
			this.wtEpEncoded = true;
			if (this.isChrome || this.isOpera || this.isSafari || this.isFirefox) {
				webtrekkUnload("noForm", "link")
			} else {
				this.registerEvent(window, (this.isIE && this.wtTypeof(window.onbeforeunload)) ? "beforeunload" : "unload", webtrekkUnload)
			}
			return
		} else {
			if (this.config.linkId) {
				this.wtEp = $0i;
				this.wtEpEncoded = true;
				webtrekkUnload("noForm", "click");
				return
			} else {
				if (!this.config.contentId && !this.config.linkId) {
					this.config.contentId = this.contentId;
					this.config.linkId = "wt_ignore";
					this.wtEp = $0i;
					this.wtEpEncoded = true;
					webtrekkUnload("noForm", "click");
					return
				} else {
					if (this.config.sendOnUnload) {
						this.wtEp = $0i;
						this.wtEpEncoded = true;
						if (this.isChrome || this.isOpera || this.isSafari || this.isFirefox) {
							webtrekkUnload("noForm", "link")
						} else {
							this.registerEvent(window, (this.isIE && this.wtTypeof(window.onbeforeunload)) ? "beforeunload" : "unload", webtrekkUnload)
						}
						return
					}
				}
			}
		}
		if (this.cookie == "1") {
			if (this.cookieOne) {
				$0i += "&np=" + this.wtEscape($0l)
			}
		} else {
			$0i += "&np=" + this.wtEscape($0l)
		}
		this.quicksend($0j, $0i, false, "sendRequest")
	};
	this.sendinfo = function (c, p, $c, ep) {
		if (this.cookie == "1" && !this.optOut && !this.deactivatePixel) {
			this.firstParty()
		}
		if (location.href.indexOf("fb_xd_fragment") != -1) {
			return
		}
		if (typeof(c) == "object") {
			this.config = c
		} else {
			this.config = this.getConfig()
		}
		if (!this.config.campaignId && this.mediaCode) {
			this.getMediaCode()
		}
		if (this.getCookie("saveRequestV3")) {
			var $0B = this.getCookie("saveRequestV3").split("<<>>");
			for (var i = 0; i < $0B.length; i++) {
				this.sendPixel($0B[i], "wt")
			}
			this.setCookie("saveRequestV3", "", -3600)
		}
		if (this.beforeSendinfoPixel != false) {
			this.beforeSendinfoPixel()
		} else {
			this.executePlugin(this.getPluginConfig(($c) ? $c : "page", "before"))
		}
		if (this.contentId != "" || p != "" || document.layers) {
			this.send(p, $c, ep)
		}
		if (this.afterSendinfoPixel != false) {
			this.afterSendinfoPixel()
		} else {
			this.executePlugin(this.getPluginConfig(($c) ? $c : "page", "after"))
		}
	};
	this.sendinfo_media = function ($0C, mk, $0D, $0E, mg, bw, $0F, $0G) {
		if (this.wtTypeof($0H)) {
			$0H($0C, mk, $0D, $0E, mg, bw, $0F, $0G, this.unloadInstance)
		}
	};
	this.getExtLifeCycles = function (xlc, xlct, xlcv) {
		var $0I = "";
		var $0J = new Object();
		var $0K = xlc.split("|");
		for (var i = 0; i < $0K.length; i++) {
			var $0L = $0K[i].split(";");
			for (var j = 0; j < $0L.length; j++) {
				if (j == 0) {
					$0I += this.wtEscape($0L[j])
				} else {
					$0I += $0L[j]
				}
				$0I += ";"
			}
			$0I = $0I.substr(0, $0I.length - 1);
			$0I += "|"
		}
		$0I = $0I.substr(0, $0I.length - 1);
		$0J.xlcl = this.wtEscape(xlc.split("|").length);
		$0J.xlct = this.wtEscape(xlct);
		if (typeof(xlcv) != "undefined") {
			$0J.xlcv = this.wtEscape(xlcv)
		}
		$0J.xlc = this.wtEscape($0I);
		var $0b = "";
		for (i in $0J) {
			$0b += "&" + i + "=" + $0J[i]
		}
		return $0b
	};
	this.isOwnDomain = function (l) {
		var pt = "";
		if (this.domain) {
			if (this.domain.toUpperCase().indexOf("REGEXP:") == 0) {
				pt = new RegExp(this.domain.substring(7), "i");
				if (pt.test(this.getDomain(l))) {
					return true
				}
			} else {
				var $0M = this.domain.split(";");
				var $0N = this.getDomain(l);
				for (var i = 0; i < $0M.length; i++) {
					if ($0N == $0M[i]) {
						return true
					}
				}
			}
		} else {
			return false
		}
		return false
	};
	this.getDomain = function (l) {
		if (typeof(l) != "string") {
			return ""
		}
		l = this.wtUnescape(l);
		l = l.split("://")[1];
		var rx = new RegExp("^(?:[^/]+://)?([^/:]+)", "g");
		if (typeof(l) != "undefined") {
			l = l.match(rx);
			if (l[0]) {
				return l[0].toLowerCase()
			}
		}
		return ""
	};
	var $0O = function () {
		var $0P = 0,
		$0Q = $0u("wt_ref", "(.*)");
		if ($d.framesetReferrer) {
			$0P = $d.wtEscape($d.framesetReferrer)
		} else {
			if ($d.getCookie("wt_ref") != "") {
				$0P = $d.wtEscape($d.getCookie("wt_ref"));
				$d.setCookie("wt_ref", "", -3600)
			} else {
				if ($0Q) {
					$0P = $d.wtEscape($0Q)
				} else {
					if (document.referrer.length > 0) {
						$0P = $d.wtEscape(document.referrer)
					}
				}
			}
		}
		if ($d.sentFullPixel) {
			$0P = "2"
		} else {
			if ($d.isOwnDomain($0P)) {
				$0P = "1"
			}
		}
		return $0P
	};
	var $0R = function () {
		var $0S = 0;
		if (!document.layers && document.getElementById) {
			try {
				$0S = top.window.innerHeight
			} catch (e) {}

		} else {
			$0S = top.window.innerHeight
		}
		if (!$0S) {
			try {
				$0S = top.document.documentElement.clientHeight
			} catch (e) {}

		}
		if (!$0S) {
			try {
				$0S = top.document.body.clientHeight
			} catch (e) {}

		}
		if (typeof($0S) == "undefined") {
			$0S = -1
		}
		return $0S
	};
	var $0T = function () {
		var $0U = 0;
		if (!document.layers && document.getElementById) {
			try {
				$0U = top.window.innerWidth
			} catch (e) {}

		} else {
			$0U = top.window.innerWidth
		}
		if (!$0U) {
			try {
				$0U = top.document.documentElement.clientWidth
			} catch (e) {}

		}
		if (!$0U) {
			try {
				$0U = top.document.body.clientWidth
			} catch (e) {}

		}
		if (typeof($0U) == "undefined") {
			$0U = -1
		}
		return $0U
	};
	this.baseparams = function () {
		var $0V = screen.width + "x" + screen.height + "," + (navigator.appName != "Netscape" ? screen.colorDepth : screen.pixelDepth) + ",";
		$0V += ((navigator.cookieEnabled == true) ? "1," : ((navigator.cookieEnabled == false) ? "0," : ((document.cookie.indexOf("=") != -1) ? "1," : "0,")));
		$0V += new Date().getTime() + ",";
		$0V += $0O();
		var $0S = $0R();
		var $0U = $0T();
		if ($0S && $0S > screen.height) {
			$0S = screen.height
		}
		if ($0U && $0U > screen.width) {
			$0U = screen.width
		}
		$0V += "," + $0U + "x" + $0S;
		$0V += "," + (navigator.javaEnabled() ? "1" : "0");
		return $0V
	};
	this.getMediaCode = function (mc) {
		if (!mc) {
			if (!this.mediaCode) {
				return false
			}
			mc = this.mediaCode
		}
		var v;
		if (this.mediaCodeValue) {
			v = this.mediaCodeValue.split(";")
		}
		var m = mc.split(";");
		this.config.campaignId = "";
		for (var i = 0; i < m.length; i++) {
			if (this.config.campaignId != "") {
				this.config.campaignId += ";"
			}
			if (this.mediaCodeCookie) {
				if (this.getCookie("wt_" + m[i].toLowerCase() + this.allUrlParam(m[i], "").toLowerCase()) == "") {
					this.config.campaignId += m[i] + this.wtEscape("=" + this.allUrlParam(m[i], ""))
				} else {
					this.config.campaignId += "ignore%3Dignore"
				}
				var $0W = "";
				if (this.mediaCodeCookie == "eid") {
					$0W = 60 * 30 * 24 * 60
				}
				this.setCookie("wt_" + m[i].toLowerCase() + this.allUrlParam(m[i], "").toLowerCase(), 1, $0W)
			} else {
				if (typeof(v) != "undefined" && typeof(v[i]) != "undefined" && v[i] != "") {
					this.config.campaignId += m[i] + this.wtEscape("=" + v[i])
				} else {
					if (this.allUrlParam(m[i], "") != "") {
						this.config.campaignId += m[i] + this.wtEscape("=" + this.allUrlParam(m[i], ""))
					}
				}
			}
		}
	};
	this.searchContentIds = function () {
		var $0X = 0;
		var $04 = 0;
		this.contentIds = this.wtEscape(this.contentId.split(";")[0]);
		do {
			$0X++;
			var $0Y = this.urlParam(location.href, "wt_contentId" + $0X, false);
			if ($0Y) {
				this.contentIds += "&wt_contentId" + $0X + "=" + this.wtEscape($0Y);
				$04++
			}
		} while ($04 >= $0X)
	};
	this.startHeatmapOrOverlay = function ($0f, $B) {
		this.searchContentIds();
		if (this.contentIds) {
			if (this.include(location.protocol + "//" + this.reporturl + "/" + $0f + ".pl?wt_contentId=" + this.contentIds + "&x=" + new Date().getTime())) {
				if ($0f == "heatmap" && navigator.userAgent.indexOf("MSIE 6") != -1 && navigator.userAgent.indexOf("Windows NT 5.0") != -1) {
					myAlert("Click OK to start heatmap.")
				}
				if (document.readyState != "interactive" && document.readyState != "complete") {
					this.registerEvent(window, "load", $B)
				} else {
					$B()
				}
			}
		}
	};
	this.heatmapOn = (this.wtHref().indexOf("wt_heatmap=1") >= 0);
	this.overlayOn = (this.wtHref().indexOf("wt_overlay=1") >= 0 || document.cookie.indexOf("wt_overlay=1") >= 0);
	if (this.wtHref().indexOf("wt_overlay=0") >= 0) {
		this.overlayOn = false;
		this.setCookie("wt_overlay", "", -1)
	}
	var $0Z = false;
	for (i = 0; i < webtrekkHeatmapObjects.length; i++) {
		if (this == webtrekkHeatmapObjects[i]) {
			$0Z = true
		}
	}
	if (!$0Z && this.heatmap && this.heatmap == "1") {
		webtrekkHeatmapObjects.push(this);
		this.registerEvent(document, "mousedown", webtrekkHeatmapClick)
	}
	if (this.heatmapOn && !this.disableOverlayView) {
		this.searchContentIds();
		this.startHeatmapOrOverlay("heatmap", webtrekkStartHeatmap)
	}
	if (this.overlayOn && !this.disableOverlayView) {
		this.searchContentIds();
		this.setCookie("wt_overlay", "1");
		this.startHeatmapOrOverlay("overlay", webtrekkStartOverlay)
	}
	this.setPixelSampling = function ($10) {
		if (!$10) {
			var $10 = this.pixelSampling
		}
		var trackId = this.trackId.split(",")[0];
		var $11 = this.getCookie("wt3_sample").split(";");
		var $12 = false;
		for (var i = 0; i < $11.length; i++) {
			if (this.indexOf($11[i], trackId + "|" + $10) != -1) {
				$12 = true
			} else {
				if (this.indexOf($11[i], trackId + "|") != -1) {
					$11[i] = ""
				}
			}
		}
		var $13 = 6;
		if (this.cookieEidTimeout) {
			$13 = this.cookieEidTimeout
		}
		if (!$12) {
			if (Math && Math.random && parseInt(Math.random() * $10) == 0) {
				$11.push(trackId + "|" + $10 + "|1")
			} else {
				$11.push(trackId + "|" + $10 + "|0")
			}
			this.setCookie("wt3_sample", $11.join(";"), $13 * 30 * 24 * 60);
			$11 = this.getCookie("wt3_sample")
		} else {
			$11 = $11.join(";");
			this.setCookie("wt3_sample", $11, $13 * 30 * 24 * 60)
		}
		if (this.indexOf($11, trackId + "|" + $10 + "|1") == -1) {
			this.deactivatePixel = true
		}
	};
	if (this.pixelSampling && !this.optOut) {
		this.setPixelSampling()
	}
	var $0u = function ($00, $14) {
		var $15 = $d.urlParam(location.href, $00, false);
		var $16 = $d.urlParam(location.href, "wt_t", false);
		var $17 = new Date().getTime();
		var $18 = new RegExp($14);
		if ($16) {
			$16 = parseInt($16) + (15 * 60 * 1000)
		} else {
			$16 = $17 - (15 * 60 * 1000)
		}
		if ($15 && $18.test($15) && $16 > $17) {
			return $15
		}
		return false
	};
	var $19 = function ($1a) {
		if ($1a && $1a.substring(0, 1) == "2") {
			var $1b = parseInt($1a.substring(1, 11) + "000");
			var $1c = new Date($1b);
			var $1d = $1c.getFullYear();
			$1d += (($1c.getMonth() < 9) ? "0" : "");
			$1d += ($1c.getMonth() + 1);
			$1d += (($1c.getDate() < 9) ? "0" : "");
			$1d += $1c.getDate();
			$1d += (($1c.getHours() < 9) ? "0" : "");
			$1d += $1c.getHours();
			$1d += (($1c.getMinutes() < 9) ? "0" : "");
			$1d += $1c.getMinutes();
			return $1d
		}
		return ""
	};
	this.firstParty = function () {
		var $1e = this.getCookie("wt3_sid").split(";");
		var $1f = this.getCookie("wt3_eid").split(";");
		var $13 = ((this.cookieEidTimeout === 0) ? this.cookieEidTimeout : ((this.cookieEidTimeout) ? this.cookieEidTimeout : 6));
		var trackId = this.trackId.split(",")[0];
		var $1g = false;
		var $1h = false;
		var $1i = false;
		var $1c = this.generateEid();
		for (var i = 0; i < $1e.length; i++) {
			if ($1e[i].indexOf(trackId) != -1) {
				$1g = i;
				break
			}
		}
		for (var i = 0; i < $1f.length; i++) {
			if ($1f[i].indexOf(trackId + "|") != -1) {
				$1h = i;
				break
			}
		}
		this.eid = $0u("wt_eid", "^[0-9]{19}$");
		if (!$1g) {
			$1e.push(trackId);
			if ($1h && !this.eid) {
				this.forceNewSession = true
			}
		}
		if (!$1h) {
			if (!this.eid) {
				this.eid = this.generateEid();
				this.cookieOne = true
			}
			$1f.push(trackId + "|" + this.eid + "#" + $1c);
			if ($13) {
				this.setCookie("wt3_eid", $1f.join(";"), $13 * 30 * 24 * 60)
			} else {
				this.setCookie("wt3_eid", $1f.join(";"))
			}
		} else {
			if (this.eid) {
				$1f[$1h] = trackId + "|" + this.eid;
				this.updateCookie = true
			}
			if ($1f[$1h].indexOf("#") == -1) {
				$1f[$1h] += "#" + $1c
			}
			$1i = $1f[$1h].replace(trackId + "|", "").split("#")[1];
			this.eid = $1f[$1h].replace(trackId + "|", "").split("#")[0];
			$1f[$1h] = $1f[$1h].replace(/\#[0-9]{19}/g, "#" + $1c);
			if (this.updateCookie) {
				if ($13) {
					this.setCookie("wt3_eid", $1f.join(";"), $13 * 30 * 24 * 60)
				} else {
					this.setCookie("wt3_eid", $1f.join(";"))
				}
			}
		}
		this.setCookie("wt3_sid", $1e.join(";"));
		if (!$1g) {
			this.firstVisitContact = $19(this.eid);
			if (this.updateCookie) {
				$1i = (($1i) ? $1i : $1c);
				this.lastVisitContact = $19($1i)
			}
		}
	};
	var $1k = false;
	for (i = 0; i < webtrekkUnloadObjects.length; i++) {
		if (this == webtrekkUnloadObjects[i]) {
			$1k = true
		}
	}
	if (!$1k) {
		webtrekkUnloadObjects.push(this)
	}
	this.findForm = function () {
		if (!this.form || this.formObject) {
			return
		}
		var f = document.forms;
		for (var i = 0; i < f.length; i++) {
			var cf = f[i];
			if (this.wtTypeof(cf.elements.wt_form)) {
				this.formObject = cf;
				return
			}
		}
	};
	this.checkFormFocus = function ($1l) {
		if ($1l == this.formFocus) {
			return 1
		}
		return 0
	};
	this.getFormFieldValue = function (ff) {
		var p = ff.name;
		if (this.formFieldAttribute) {
			p = "";
			var tmp = this.getAttribute(ff, this.formFieldAttribute);
			if (tmp || tmp !== null) {
				p = tmp
			}
		}
		return p
	};
	this.isFormFieldAnonym = function (ff) {
		var $1m = [];
		if (this.formFullContent) {
			$1m = this.formFullContent.split(";")
		}
		if (this.formAnonymous || (ff.type != "select-multiple" && ff.type != "select-one" && ff.type != "checkbox" && ff.type != "radio")) {
			for (var k = 0; k < $1m.length; k++) {
				if ($1m[k] == this.getFormFieldValue(ff)) {
					return false
				}
			}
			return true
		}
		return false
	};
	this.getFieldValue = function (ff, e) {
		var $T = this.getAttribute(e, this.formValueAttribute).replace(/[\.|\;|\|]/g, "_");
		if (ff.type != "select-multiple" && ff.type != "select-one" && ff.type != "checkbox" && ff.type != "radio") {
			return this.maxlen(e.value, 30)
		}
		if (!this.isFormFieldAnonym(ff)) {
			return this.maxlen($T, 30)
		}
		return "anon"
	};
	this.gatherForm = function () {
		var $1n = ";";
		if (!this.formObject) {
			return
		}
		var f = this.formObject;
		this.formName = this.getAttribute(f, this.formAttribute) ? this.getAttribute(f, this.formAttribute) : this.contentId.split(";")[0];
		var fl = "";
		if (this.wtTypeof(f.elements.wt_fields)) {
			fl = f.elements.wt_fields.value
		}
		if (!fl) {
			for (var i = 0; i < f.elements.length; i++) {
				var e = f.elements[i];
				if (this.getFormFieldValue(e)) {
					fl += this.getFormFieldValue(e) + $1n
				}
			}
			fl = fl.substring(0, fl.lastIndexOf($1n))
		}
		var $1o = fl.split($1n);
		var $1p = $1o.length;
		var pa = "";
		var $1q = {},
		$1r = false;
		for (var i = 0; i < f.elements.length; i++) {
			var e = f.elements[i],
			$T,
			$1s,
			$1t,
			$1u = false;
			if (fl) {
				for (var j = 0; j < $1p; j++) {
					if (this.getFormFieldValue(e) == $1o[j]) {
						$1u = true
					}
				}
			} else {
				if (this.getFormFieldValue(e)) {
					$1u = true
				}
			}
			if ($1u) {
				$T = null;
				if (e.type == "select-multiple") {
					for (var j = 0; j < e.options.length; j++) {
						var $04 = false;
						if (e.options[j].selected) {
							$04 = true;
							pa += ";" + this.getFormFieldValue(e).replace(/[\.|\;|\|]/g, "_") + "." + e.type + "|" + this.getFieldValue(e, e.options[j]) + "|" + this.checkFormFocus(e.name)
						}
						if (!$04) {
							$T = "empty"
						}
					}
				} else {
					if (e.type == "select-one") {
						if (e.selectedIndex != -1) {
							$T = this.getFieldValue(e, e.options[e.selectedIndex]);
							if (!$T) {
								$T = "empty"
							}
						}
					} else {
						if (e.type == "checkbox" || e.type == "radio") {
							if (!e.checked) {
								$T = "empty"
							} else {
								$T = this.getFieldValue(e, e)
							}
						} else {
							if (e.type != "hidden" && e.type != "button" && e.type != "image" && e.type != "reset" && e.type != "submit") {
								$T = (this.getFieldValue(e, e) ? "filled_out" : "empty");
								if (!this.isFormFieldAnonym(e)) {
									$T = this.getFieldValue(e, e)
								}
								if (!$T) {
									$T = "empty"
								}
							}
						}
					}
				}
				if ($T) {
					name = this.getFormFieldValue(e).replace(/[\.|\;|\|]/g, "_");
					$1s = ";" + name + "." + e.type + "|";
					$1t = ((this.isFormFieldAnonym(e) && $T != "empty" && $T != "filled_out") ? "anon" : $T) + "|" + this.checkFormFocus(e.name);
					if (e.type == "radio") {
						$1r = true;
						if (($1s in $1q)) {
							if ($1q[$1s].indexOf("empty") == 0) {
								$1q[$1s] = $1t
							}
							continue
						}
						$1q[$1s] = $1t
					} else {
						if (pa.indexOf($1s) == -1) {
							pa += $1s + $1t
						}
					}
				}
			}
		}
		if ($1r) {
			for (var $1v in $1q) {
				pa += $1v + $1q[$1v]
			}
		}
		if (pa) {
			pa = pa.substring(1)
		}
		return pa
	};
	this.formTrackInstall = function (f) {
		if (f) {
			this.formObject = f
		} else {
			this.formObject = (document.forms[0]) ? document.forms[0] : false
		}
		if (this.formObject) {
			this.form = "1";
			webtrekkFormTrackInstall()
		}
	};
	if (this.form) {
		webtrekkFormTrackInstall()
	}
	this.cookieManager = function (name, $1w, $1x) {
		var i,
		j;
		this.name = name;
		this.keySeperator = "~";
		this.fieldSeparator = "#";
		this.durationSeperator = "|";
		this.found = false;
		this.expires = $1w;
		this.accessPath = $1x;
		this.rawValue = "";
		this.fields = [];
		this.fieldsDuration = [];
		this.fieldnames = [];
		this.read = function () {
			var $A = this.name + "=";
			var $1y = document.cookie;
			this.rawValue = null;
			this.found = false;
			if ($1y.length > 0) {
				$1z = $1y.indexOf($A);
				if ($1z != -1) {
					$1z += $A.length;
					end = $1y.indexOf(";", $1z);
					if (end == -1) {
						end = $1y.length
					}
					this.rawValue = $1y.substring($1z, end);
					this.found = true
				}
			}
			if (this.rawValue != null) {
				var sl = this.rawValue.length;
				var $1A = 0;
				var $1B = 0;
				var i = 0;
				do {
					$1B = this.rawValue.indexOf(this.fieldSeparator, $1A);
					if ($1B != -1) {
						var $1C = this.rawValue.substring($1A, $1B).split(this.durationSeperator);
						var rV = $1C[0].split(this.keySeperator);
						this.fields[rV[0]] = unescape(rV[1]);
						this.fieldsDuration[rV[0]] = parseInt(unescape($1C[1]));
						i++;
						$1A = $1B + 1
					}
				} while ($1B != -1 & $1B != (this.rawValue.length - 1))
			}
			return this.found
		};
		this.getSize = function () {
			var $1D = new Date().getTime();
			var $1E = "";
			for (i in this.fields) {
				if (this.fieldsDuration[i] >= $1D) {
					$1E += escape(i) + this.keySeperator + escape(this.fields[i]) + this.durationSeperator + escape(this.fieldsDuration[i]) + this.fieldSeparator
				}
			}
			return $1E.length
		};
		this.write = function () {
			var $1D = new Date().getTime();
			var $1F = true;
			var $1E = this.name + "=";
			for (i in this.fields) {
				if (this.fieldsDuration[i] >= $1D) {
					$1E += escape(i) + this.keySeperator + escape(this.fields[i]) + this.durationSeperator + escape(this.fieldsDuration[i]) + this.fieldSeparator;
					$1F = false
				}
			}
			var $1G = ($1F) ? -99999 : this.expires;
			if ($1G != "") {
				if (typeof($1G) == "number") {
					var $1H = new Date();
					var $1I = new Date();
					$1I.setTime($1H.getTime() + 1000 * 60 * 60 * 24 * $1G);
					$1E += "; expires=" + $1I.toGMTString()
				} else {
					$1E += "; expires=" + $1G.toGMTString()
				}
			}
			if (this.accessPath != null) {
				$1E += "; PATH=" + this.accessPath
			}
			var d = location.hostname;
			var $V = "^[0-9]{1,3" + String.fromCharCode(125) + ".[0-9]{1,3" + String.fromCharCode(125) + ".[0-9]{1,3" + String.fromCharCode(125) + ".[0-9]{1,3" + String.fromCharCode(125) + "$";
			if (d.search($V) == -1) {
				d = location.hostname.split(".");
				d = d[d.length - 2] + "." + d[d.length - 1]
			}
			$1E += "; DOMAIN=" + d;
			document.cookie = $1E;
			return null
		};
		this.remove = function () {
			this.expires = -10;
			this.write();
			return this.read()
		};
		this.get = function ($1J) {
			var $1D = new Date().getTime();
			if (this.fieldsDuration[$1J] >= $1D) {
				return this.fields[$1J]
			}
			return ""
		};
		this.set = function ($1J, $1K, $U, $c, $1L) {
			if (!$U) {
				$U = 31536000
			}
			if (!$c) {
				$c = ""
			}
			var $1D = new Date().getTime();
			if ($c == "first" && this.fields[$1J] != "" && this.fields[$1J] != null && this.fieldsDuration[$1J] >= $1D) {
				return this.fields[$1J]
			}
			this.fields[$1J] = $1K;
			this.fieldsDuration[$1J] = $1D + (parseInt($U) * 1000);
			if (!$1L) {
				this.write()
			}
			return $1K
		};
		this.prepare = function ($1J, $1K, $U, $c) {
			this.set($1J, $1K, $U, $c, true)
		};
		this.read()
	}
}
var webtrekkPixel = false;
function wt_sendinfo(c, d, a) {
	if (webtrekkPixel) {
		for (var b in webtrekk) {
			if (b !== "plugins" && b !== "sendinfo") {
				webtrekkPixel[b] = webtrekk[b]
			}
		}
		if (arguments.length === 0) {
			webtrekkPixel.sendinfo()
		} else {
			webtrekkPixel.sendinfo({}, c, d, a)
		}
	}
}
if (typeof(webtrekk) == "object") {
	webtrekkConfig = webtrekk;
	webtrekkPixel = new webtrekkV3();
	if (typeof(wt_updatePixel) == "function") {
		wt_updatePixel()
	}
	if (webtrekk.sendinfo && webtrekk.sendinfo == "1") {
		webtrekkPixel.sendinfo()
	}
}
var webTrekkCount = 0;
var timeOutForWebTrekk;
if (timeOutForWebTrekk) {
	clearTimeout(timeOutForWebTrekk)
}
var pageConfig = {
	linkTrack : "standard",
	linkTrackAttribute : "webtrekkparam",
	heatmap : "",
	form : ""
};
var wt = new webtrekkV3(pageConfig);
setWebTrekkParam();
function setWebTrekkParam() {
	var c = "";
	var f = "";
	var b = "";
	var e = "";
	var a = "";
	if (typeof(webtrekk_params) != "undefined") {
		if (webtrekk_params.contentId) {
			pageConfig.contentId = webtrekk_params.contentId;
			wt = new webtrekkV3(pageConfig)
		}
		if (webtrekk_params.product) {
			c = webtrekk_params.product
		}
		if (webtrekk_params.productQuantity) {
			f = webtrekk_params.productQuantity
		}
		if (webtrekk_params.productStatus) {
			b = webtrekk_params.productStatus
		}
		if (webtrekk_params.orderValue) {
			e = webtrekk_params.orderValue
		}
		if (webtrekk_params.orderId) {
			a = webtrekk_params.orderId
		}
	}
	if (c) {
		wt.product = c
	}
	if (f) {
		wt.productQuantity = f
	}
	if (b) {
		wt.productStatus = b
	}
	if (e) {
		wt.orderValue = e
	}
	if (a) {
		wt.orderId = a
	}
	var d = getCookie("webtrekk_cookie_record");
	if (Js.login.getAuth()) {
		if (!d || (d == "0")) {
			if (getCookie("COOKIE_USER_ID")) {
				wt.customerId = getCookie("COOKIE_USER_ID");
				addCookie("webtrekk_cookie_record", "1")
			}
		}
	}
	wtSendInfo()
}
function wtSendInfo() {
	if (webTrekkCount < 3) {
		if (wt.product && wt.productQuantity && wt.productStatus && wt.orderValue && wt.orderId) {
			wt.sendinfo();
			return
		} else {
			webTrekkCount++;
			timeOutForWebTrekk = setTimeout(setWebTrekkParam, 500)
		}
	} else {
		wt.sendinfo()
	}
};