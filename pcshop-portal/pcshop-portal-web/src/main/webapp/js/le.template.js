/*artTemplate - Template Engine*/
var template = function(d, f) {
	return template["object" === typeof f ? "render" : "compile"].apply(template, arguments)
};
(function(d, f) {
	d.version = "1.0";
	d.openTag = "<%";
	d.closeTag = "%>";
	d.parser = null;
	d.render = function(a, c) {
		var b;
		b = k[a];
		void 0 === b && !q && ((b = document.getElementById(a)) && d.compile(a, b.value || b.innerHTML), b = k[a]);
		return void 0 === b ? h({
			id: a,
			name: "Render Error",
			message: "Not Cache"
		}) : b(c)
	};
	d.compile = function(a, c, b) {
		function l(b) {
			try {
				return f.call(n, b)
			} catch (e) {
				if (!r) return d.compile(a, c, !0)(b);
				e.id = a || c;
				e.name = "Render Error";
				e.source = c;
				return h(e)
			}
		}
		var r = b;
		"string" !== typeof c && (r = c, c = a, a = null);
		try {
			var f = v(c, r)
		} catch (i) {
			return i.id = a || c, i.name = "Syntax Error", h(i)
		}
		l.toString = function() {
			return f.toString()
		};
		a && (k[a] = l);
		return l
	};
	d.helper = function(a, c) {
		if (void 0 === c) return n[a];
		n[a] = c
	};
	var k = {}, n = {}, o = "".trim,
		q = o && !f.document,
		v = function(a, c) {
			function b(a) {
				m += a.split(/\n/).length - 1;
				a = a.replace(/('|"|\\)/g, "\\$1").replace(/\r/g, "\\r").replace(/\n/g, "\\n");
				a = j[1] + "'" + a + "'" + j[2];
				return a + "\n"
			}
			function l(a) {
				var b = m;
				i ? a = i(a) : c && (a = a.replace(/\n/g, function() {
					m++;
					return "$line=" + m + ";"
				}));
				0 === a.indexOf("=") && (a = j[1] + (o ? "$getValue(" : "") + a.substring(1).replace(/[\s;]*$/, "") + (o ? ")" : "") + j[2]);
				c && (a = "$line=" + b + ";" + a);
				f(a);
				return a + "\n"
			}
			function f(a) {
				a = a.replace(/\/\*.*?\*\/|'[^']*'|"[^"]*"|\.[\$\w]+/g, "");
				p.call(a.split(/[^\$\w\d]+/), function(a) {
					if (/^(this|\$helpers)$/.test(a)) throw {
						message: 'Prohibit the use of the "' + a + '"'
					};
					a && !t[a] && !/^\d/.test(a) && !h[a] && (s += a + "=" + ("include" === a ? q : n[a] ? "$helpers." + a : "$data." + a) + ",", h[a] = !0)
				})
			}
			var k = d.closeTag,
				i = d.parser,
				g, e = "",
				m = 1,
				h = {
					$out: !0,
					$line: !0
				}, s = "var $helpers=this," + (c ? "$line=0," : ""),
				j = o ? ["$out='';", "$out+=", ";", "$out"] : ["$out=[];", "$out.push(", ");", "$out.join('')"],
				q = "function(id,data){if(data===undefined){data=$data}return $helpers.$render(id,data)}";
			p.call(a.split(d.openTag), function(a) {
				var a = a.split(k),
					c = a[0],
					d = a[1];
				1 === a.length ? e += b(c) : (e += l(c), d && (e += b(d)))
			});
			g = e;
			c && (g = "try{" + g + "}catch(e){e.line=$line;throw e}");
			g = s + j[0] + g + "return " + j[3];
			try {
				return new Function("$data", g)
			} catch (u) {
				throw u.temp = "function anonymous($data) {" + g + "}", u;
			}
		}, h = function(a) {
			function c() {
				return c + ""
			}
			var b = "[template]:\n" + a.id + "\n\n[name]:\n" + a.name;
			a.message && (b += "\n\n[message]:\n" + a.message);
			a.line && (b += "\n\n[line]:\n" + a.line, b += "\n\n[source]:\n" + a.source.split(/\n/)[a.line - 1].replace(/^[\s\t]+/, ""));
			a.temp && (b += "\n\n[temp]:\n" + a.temp);
			f.console && console.error(b);
			c.toString = function() {
				return "{Template Error}"
			};
			return c
		}, p = Array.prototype.forEach || function(a, c) {
			for (var b = this.length >>> 0, d = 0; d < b; d++) d in this && a.call(c, this[d], d, this)
		}, t = {};
	p.call("break,case,catch,continue,debugger,default,delete,do,else,false,finally,for,function,if,in,instanceof,new,null,return,switch,this,throw,true,try,typeof,var,void,while,with,abstract,boolean,byte,char,class,const,double,enum,export,extends,final,float,goto,implements,import,int,interface,long,native,package,private,protected,public,short,static,super,synchronized,throws,transient,volatile,arguments,let,yield".split(","), function(a) {
		t[a] = !0
	});
	d.helper("$forEach", p);
	d.helper("$render", d.render);
	d.helper("$getValue", function(a) {
		return void 0 === a ? "" : a
	})
})(template, this);
if ("undefined" !== typeof module && module.exports) module.exports = template;