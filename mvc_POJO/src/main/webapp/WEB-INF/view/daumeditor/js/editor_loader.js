(function() {
	var v = document, g = window, C = v.documentElement, H = false, s = true, t = null, k;
	var E = "", j = "tx_", f = "uninitialized", J = "loading", a = "complete", w = "production", I = "development", p = 1000, r = 5;
	var z = /\/([6-9][a-z.]?\.[a-z0-9\-]+\.[\-\w]+)\//;
	var c = {
		environment : w,
		service : "core",
		version : "",
		host : ""
	};
	function e(K) {
		return K.replace(/[^\/]+\/?$/, "")
	}
	function b(L) {
		var K = v.getElementsByTagName("script");
		for (var M = 0; M < K.length; M++) {
			if (K[M].src.indexOf(L) >= 0) {
				return K[M]
			}
		}
		throw "cannot find '" + L + "' script element"
	}
	function h(L) {
		var K = b(L);
		var M = K.src;
		return M.substring(M.indexOf("?") + 1)
	}
	function q(L) {
		var K = b(L);
		var M = K.src.match(z);
		if (M && M.length == 2) {
			return M[1]
		}
		return ""
	}
	function D(K) {
		return c[K] || E
	}
	function i(K) {
		var L = n.parse(h(F.NAME), "&");
		return L.findByName(K)
	}
	function B(K) {
		var M = n.parse(v.cookie, /;[ ]*/);
		var L = M.findByName(j + K);
		return L ? decodeURIComponent(L) : L
	}
	var n = function() {
		this.data = []
	};
	n.prototype = {
		add : function(K, L) {
			this.data.push({
				name : K,
				value : L
			})
		},
		findByName : function(K) {
			var M;
			for (var L = 0; L < this.data.length; L++) {
				if (this.data[L] && this.data[L].name === K) {
					M = this.data[L].value;
					break
				}
			}
			return M
		}
	};
	n.parse = function(M, O) {
		var K = new n();
		var P = M.split(O);
		for (var L = 0; L < P.length; L++) {
			var N = P[L].split("=");
			K.add(N[0], N[1])
		}
		return K
	};
	function m(L) {
		var K = v.createElement("script");
		K.type = "text/javascript";
		K.src = L;
		return K
	}
	function l(M) {
		var K = document.location;
		if (M.match(/^(https?|file):\/\//)) {
		} else {
			if (M.indexOf("/") === 0) {
				M = "http://" + K.host + M
			} else {
				var L = K.href;
				var N = L.lastIndexOf("/");
				M = L.substring(0, N + 1) + M
			}
		}
		return M
	}
	function o(M, N) {
		var K = m(M);
		var L = v.getElementsByTagName("head")[0] || C;
		x(K, L, N);
		L.insertBefore(K, L.firstChild);
		return K
	}
	function x(K, L, M) {
		if (M) {
			K.onload = K.onreadystatechange = function() {
				if (!this.readyState || this.readyState === "loaded"
						|| this.readyState === "complete") {
					M();
					if (/MSIE/i.test(navigator.userAgent)) {
						K.onload = K.onreadystatechange = t;
						if (L && K.parentNode) {
							L.removeChild(K)
						}
					}
				}
			}
		}
	}
	function G(K) {
		if (typeof K === "function") {
			K(Editor)
		}
	}
	var u = function(K) {
		this.TIMEOUT = r * p;
		this.readyState = f;
		this.url = K.url;
		this.callback = K.callback || function() {
		};
		this.id = K.id;
		this.load()
	};
	u.prototype = {
		load : function() {
			var M = this.url;
			var L = this;
			try {
				b(M)
			} catch (N) {
				L.readyState = J;
				var K = o(M, function() {
					L.callback();
					L.readyState = a
				});
				if (L.id) {
					K.id = L.id
				}
			}
			return this
		},
		startErrorTimer : function() {
			var K = this;
			setTimeout(function() {
				if (K.readyState !== a) {
					K.onTimeout()
				}
			}, K.TIMEOUT)
		},
		onTimeout : function() {
		},
		onLoadComplete : function() {
		}
	};
	var A = [], y;
	var F = {
		NAME : "editor_loader.js",
		TIMEOUT : r * p,
		readyState : f,
		loadModule : function(L) {
			function M(N) {
				return !N.match(/^((https?|file):\/\/|\.\.\/|\/)/)
			}
			var K = M(L) ? this.getJSBasePath() + L : L;
			if (c.environment === I) {
				K = K + "?dummy=" + new Date().getTime()
			}
			v.write('<script type="text/javascript" src="' + K
					+ '" charset="utf-8"><\/script>')
		},
		asyncLoadModule : function(K) {
			return new u(K)
		},
		ready : function(K) {
			if (this.readyState === a) {
				G(K)
			} else {
				A.push(K)
			}
		},
		finish : function() {
			for (var K = 0; K < A.length; K++) {
				G(A[K])
			}
			A = []
		},
		getBasePath : function(L) {
			var M = B("base_path");
			if (!M) {
				var K = b(L || F.NAME);
				M = e(e(K.src))
			}
			return l(M)
		},
		getJSBasePath : function(K) {
			console.log(this.getBasePath());
			return this.getBasePath() + ""
		},
		getCSSBasePath : function() {
			return this.getBasePath() + ""
		},
		getPageBasePath : function() {
			return this.getBasePath() + ""
		},
		getOption : function(K) {
			return B(K) || i(K) || D(K)
		}
	};
	window.EditorJSLoader = F;
	function d() {
		var L = "editor.js";
		c.version = q(F.NAME);
		var K = i("environment");
		if (K) {
			c.environment = K
		}
		F.loadModule(L)
	}
	d()
})();