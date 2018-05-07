/*aes*/
var Aes = {
	cipher: function(b, e) {
		for (var a = e.length / 4 - 1, d = [
			[],
			[],
			[],
			[]
		], c = 0; 16 > c; c++) d[c % 4][Math.floor(c / 4)] = b[c];
		d = Aes.addRoundKey(d, e, 0, 4);
		for (c = 1; c < a; c++) d = Aes.subBytes(d, 4), d = Aes.shiftRows(d, 4), d = Aes.mixColumns(d, 4), d = Aes.addRoundKey(d, e, c, 4);
		d = Aes.subBytes(d, 4);
		d = Aes.shiftRows(d, 4);
		d = Aes.addRoundKey(d, e, a, 4);
		a = Array(16);
		for (c = 0; 16 > c; c++) a[c] = d[c % 4][Math.floor(c / 4)];
		return a
	},
	keyExpansion: function(b) {
		for (var e = b.length / 4, a = e + 6, d = Array(4 * (a + 1)), c = Array(4), f = 0; f < e; f++) d[f] = [b[4 * f], b[4 * f + 1], b[4 * f + 2],
		b[4 * f + 3]];
		for (f = e; f < 4 * (a + 1); f++) {
			d[f] = Array(4);
			for (b = 0; 4 > b; b++) c[b] = d[f - 1][b];
			if (0 == f % e) {
				c = Aes.subWord(Aes.rotWord(c));
				for (b = 0; 4 > b; b++) c[b] ^= Aes.rCon[f / e][b]
			} else 6 < e && 4 == f % e && (c = Aes.subWord(c));
			for (b = 0; 4 > b; b++) d[f][b] = d[f - e][b] ^ c[b]
		}
		return d
	},
	subBytes: function(b, e) {
		for (var a = 0; 4 > a; a++) for (var d = 0; d < e; d++) b[a][d] = Aes.sBox[b[a][d]];
		return b
	},
	shiftRows: function(b, e) {
		for (var a = Array(4), d = 1; 4 > d; d++) {
			for (var c = 0; 4 > c; c++) a[c] = b[d][(c + d) % e];
			for (c = 0; 4 > c; c++) b[d][c] = a[c]
		}
		return b
	},
	mixColumns: function(b) {
		for (var e = 0; 4 > e; e++) {
			for (var a = Array(4), d = Array(4), c = 0; 4 > c; c++) a[c] = b[c][e], d[c] = b[c][e] & 128 ? b[c][e] << 1 ^ 283 : b[c][e] << 1;
			b[0][e] = d[0] ^ a[1] ^ d[1] ^ a[2] ^ a[3];
			b[1][e] = a[0] ^ d[1] ^ a[2] ^ d[2] ^ a[3];
			b[2][e] = a[0] ^ a[1] ^ d[2] ^ a[3] ^ d[3];
			b[3][e] = a[0] ^ d[0] ^ a[1] ^ a[2] ^ d[3]
		}
		return b
	},
	addRoundKey: function(b, e, a, d) {
		for (var c = 0; 4 > c; c++) for (var f = 0; f < d; f++) b[c][f] ^= e[4 * a + f][c];
		return b
	},
	subWord: function(b) {
		for (var e = 0; 4 > e; e++) b[e] = Aes.sBox[b[e]];
		return b
	},
	rotWord: function(b) {
		for (var e = b[0], a = 0; 3 > a; a++) b[a] = b[a + 1];
		b[3] = e;
		return b
	},
	sBox: [99,
	124, 119, 123, 242, 107, 111, 197, 48, 1, 103, 43, 254, 215, 171, 118, 202, 130, 201, 125, 250, 89, 71, 240, 173, 212, 162, 175, 156, 164, 114, 192, 183, 253, 147, 38, 54, 63, 247, 204, 52, 165, 229, 241, 113, 216, 49, 21, 4, 199, 35, 195, 24, 150, 5, 154, 7, 18, 128, 226, 235, 39, 178, 117, 9, 131, 44, 26, 27, 110, 90, 160, 82, 59, 214, 179, 41, 227, 47, 132, 83, 209, 0, 237, 32, 252, 177, 91, 106, 203, 190, 57, 74, 76, 88, 207, 208, 239, 170, 251, 67, 77, 51, 133, 69, 249, 2, 127, 80, 60, 159, 168, 81, 163, 64, 143, 146, 157, 56, 245, 188, 182, 218, 33, 16, 255, 243, 210, 205, 12, 19, 236, 95, 151, 68, 23, 196, 167, 126, 61, 100, 93,
	25, 115, 96, 129, 79, 220, 34, 42, 144, 136, 70, 238, 184, 20, 222, 94, 11, 219, 224, 50, 58, 10, 73, 6, 36, 92, 194, 211, 172, 98, 145, 149, 228, 121, 231, 200, 55, 109, 141, 213, 78, 169, 108, 86, 244, 234, 101, 122, 174, 8, 186, 120, 37, 46, 28, 166, 180, 198, 232, 221, 116, 31, 75, 189, 139, 138, 112, 62, 181, 102, 72, 3, 246, 14, 97, 53, 87, 185, 134, 193, 29, 158, 225, 248, 152, 17, 105, 217, 142, 148, 155, 30, 135, 233, 206, 85, 40, 223, 140, 161, 137, 13, 191, 230, 66, 104, 65, 153, 45, 15, 176, 84, 187, 22],
	rCon: [
		[0, 0, 0, 0],
		[1, 0, 0, 0],
		[2, 0, 0, 0],
		[4, 0, 0, 0],
		[8, 0, 0, 0],
		[16, 0, 0, 0],
		[32, 0, 0, 0],
		[64, 0, 0, 0],
		[128,
		0, 0, 0],
		[27, 0, 0, 0],
		[54, 0, 0, 0]
	],
	Ctr: {}
};
Aes.Ctr.encrypt = function(b, e, a) {
	if (!(128 == a || 192 == a || 256 == a)) return "";
	for (var b = Utf8.encode(b), e = Utf8.encode(e), d = a / 8, c = Array(d), a = 0; a < d; a++) c[a] = isNaN(e.charCodeAt(a)) ? 0 : e.charCodeAt(a);
	for (var c = Aes.cipher(c, Aes.keyExpansion(c)), c = c.concat(c.slice(0, d - 16)), e = Array(16), a = (new Date).getTime(), d = a % 1E3, f = Math.floor(a / 1E3), j = Math.floor(65535 * Math.random()), a = 0; 2 > a; a++) e[a] = d >>> 8 * a & 255;
	for (a = 0; 2 > a; a++) e[a + 2] = j >>> 8 * a & 255;
	for (a = 0; 4 > a; a++) e[a + 4] = f >>> 8 * a & 255;
	d = "";
	for (a = 0; 8 > a; a++) d += String.fromCharCode(e[a]);
	for (var c = Aes.keyExpansion(c), f = Math.ceil(b.length / 16), j = Array(f), i = 0; i < f; i++) {
		for (a = 0; 4 > a; a++) e[15 - a] = i >>> 8 * a & 255;
		for (a = 0; 4 > a; a++) e[15 - a - 4] = i / 4294967296 >>> 8 * a;
		for (var g = Aes.cipher(e, c), k = i < f - 1 ? 16 : (b.length - 1) % 16 + 1, h = Array(k), a = 0; a < k; a++) h[a] = g[a] ^ b.charCodeAt(16 * i + a), h[a] = String.fromCharCode(h[a]);
		j[i] = h.join("")
	}
	b = d + j.join("");
	return b = Base64.encode(b)
};
Aes.Ctr.decrypt = function(b, e, a) {
	if (!(128 == a || 192 == a || 256 == a)) return "";
	for (var b = Base64.decode(b), e = Utf8.encode(e), d = a / 8, c = Array(d), a = 0; a < d; a++) c[a] = isNaN(e.charCodeAt(a)) ? 0 : e.charCodeAt(a);
	c = Aes.cipher(c, Aes.keyExpansion(c));
	c = c.concat(c.slice(0, d - 16));
	e = Array(8);
	ctrTxt = b.slice(0, 8);
	for (a = 0; 8 > a; a++) e[a] = ctrTxt.charCodeAt(a);
	for (var d = Aes.keyExpansion(c), c = Math.ceil((b.length - 8) / 16), a = Array(c), f = 0; f < c; f++) a[f] = b.slice(8 + 16 * f, 16 * f + 24);
	for (var b = a, j = Array(b.length), f = 0; f < c; f++) {
		for (a = 0; 4 > a; a++) e[15 - a] = f >>> 8 * a & 255;
		for (a = 0; 4 > a; a++) e[15 - a - 4] = (f + 1) / 4294967296 - 1 >>> 8 * a & 255;
		for (var i = Aes.cipher(e, d), g = Array(b[f].length), a = 0; a < b[f].length; a++) g[a] = i[a] ^ b[f].charCodeAt(a), g[a] = String.fromCharCode(g[a]);
		j[f] = g.join("")
	}
	b = j.join("");
	return b = Utf8.decode(b)
};
var Base64 = {
	code: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
	encode: function(b, e) {
		var a, d, c, f, j = [],
			i = "",
			g, k, h = Base64.code;
		k = ("undefined" == typeof e ? 0 : e) ? b.encodeUTF8() : b;
		g = k.length % 3;
		if (0 < g) for (; 3 > g++;) i += "=", k += "\x00";
		for (g = 0; g < k.length; g += 3) a = k.charCodeAt(g), d = k.charCodeAt(g + 1), c = k.charCodeAt(g + 2), f = a << 16 | d << 8 | c, a = f >> 18 & 63, d = f >> 12 & 63, c = f >> 6 & 63, f &= 63, j[g / 3] = h.charAt(a) + h.charAt(d) + h.charAt(c) + h.charAt(f);
		j = j.join("");
		return j = j.slice(0, j.length - i.length) + i
	},
	decode: function(b,
	e) {
		var e = "undefined" == typeof e ? !1 : e,
			a, d, c, f, j, i = [],
			g, k = Base64.code;
		g = e ? b.decodeUTF8() : b;
		for (var h = 0; h < g.length; h += 4) a = k.indexOf(g.charAt(h)), d = k.indexOf(g.charAt(h + 1)), f = k.indexOf(g.charAt(h + 2)), j = k.indexOf(g.charAt(h + 3)), c = a << 18 | d << 12 | f << 6 | j, a = c >>> 16 & 255, d = c >>> 8 & 255, c &= 255, i[h / 4] = String.fromCharCode(a, d, c), 64 == j && (i[h / 4] = String.fromCharCode(a, d)), 64 == f && (i[h / 4] = String.fromCharCode(a));
		f = i.join("");
		return e ? f.decodeUTF8() : f
	}
}, Utf8 = {
	encode: function(b) {
		b = b.replace(/[\u0080-\u07ff]/g, function(b) {
			b = b.charCodeAt(0);
			return String.fromCharCode(192 | b >> 6, 128 | b & 63)
		});
		return b = b.replace(/[\u0800-\uffff]/g, function(b) {
			b = b.charCodeAt(0);
			return String.fromCharCode(224 | b >> 12, 128 | b >> 6 & 63, 128 | b & 63)
		})
	},
	decode: function(b) {
		b = b.replace(/[\u00e0-\u00ef][\u0080-\u00bf][\u0080-\u00bf]/g, function(b) {
			b = (b.charCodeAt(0) & 15) << 12 | (b.charCodeAt(1) & 63) << 6 | b.charCodeAt(2) & 63;
			return String.fromCharCode(b)
		});
		return b = b.replace(/[\u00c0-\u00df][\u0080-\u00bf]/g, function(b) {
			b = (b.charCodeAt(0) & 31) << 6 | b.charCodeAt(1) & 63;
			return String.fromCharCode(b)
		})
	}
};