! function (e) {
    var a = {};
    
    function i(n) {
        if (a[n]) return a[n].exports;
        var o = a[n] = {
            i: n
            , l: !1
            , exports: {}
        };
        return e[n].call(o.exports, o, o.exports, i), o.l = !0, o.exports
    }
    i.m = e, i.c = a, i.d = function (e, a, n) {
        i.o(e, a) || Object.defineProperty(e, a, {
            enumerable: !0
            , get: n
        })
    }, i.r = function (e) {
        "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, {
            value: "Module"
        }), Object.defineProperty(e, "__esModule", {
            value: !0
        })
    }, i.t = function (e, a) {
        if (1 & a && (e = i(e)), 8 & a) return e;
        if (4 & a && "object" == typeof e && e && e.__esModule) return e;
        var n = Object.create(null);
        if (i.r(n), Object.defineProperty(n, "default", {
                enumerable: !0
                , value: e
            }), 2 & a && "string" != typeof e)
            for (var o in e) i.d(n, o, function (a) {
                return e[a]
            }.bind(null, o));
        return n
    }, i.n = function (e) {
        var a = e && e.__esModule ? function () {
            return e.default
        } : function () {
            return e
        };
        return i.d(a, "a", a), a
    }, i.o = function (e, a) {
        return Object.prototype.hasOwnProperty.call(e, a)
    }, i.p = "", i(i.s = 34)
}([function (e, a, i) {
    "use strict";
    var n = i(10)
        , o = Object.prototype.toString;
    
    function s(e) {
        return "[object Array]" === o.call(e)
    }
    
    function t(e) {
        return void 0 === e
    }
    
    function r(e) {
        return null !== e && "object" == typeof e
    }
    
    function c(e) {
        if ("[object Object]" !== o.call(e)) return !1;
        var a = Object.getPrototypeOf(e);
        return null === a || a === Object.prototype
    }
    
    function p(e) {
        return "[object Function]" === o.call(e)
    }
    
    function l(e, a) {
        if (null != e)
            if ("object" != typeof e && (e = [e]), s(e))
                for (var i = 0, n = e.length; i < n; i++) a.call(null, e[i], i, e);
            else
                for (var o in e) Object.prototype.hasOwnProperty.call(e, o) && a.call(null, e[o], o, e)
    }
    e.exports = {
        isArray: s
        , isArrayBuffer: function (e) {
            return "[object ArrayBuffer]" === o.call(e)
        }
        , isBuffer: function (e) {
            return null !== e && !t(e) && null !== e.constructor && !t(e.constructor) && "function" == typeof e.constructor.isBuffer && e.constructor.isBuffer(e)
        }
        , isFormData: function (e) {
            return "undefined" != typeof FormData && e instanceof FormData
        }
        , isArrayBufferView: function (e) {
            return "undefined" != typeof ArrayBuffer && ArrayBuffer.isView ? ArrayBuffer.isView(e) : e && e.buffer && e.buffer instanceof ArrayBuffer
        }
        , isString: function (e) {
            return "string" == typeof e
        }
        , isNumber: function (e) {
            return "number" == typeof e
        }
        , isObject: r
        , isPlainObject: c
        , isUndefined: t
        , isDate: function (e) {
            return "[object Date]" === o.call(e)
        }
        , isFile: function (e) {
            return "[object File]" === o.call(e)
        }
        , isBlob: function (e) {
            return "[object Blob]" === o.call(e)
        }
        , isFunction: p
        , isStream: function (e) {
            return r(e) && p(e.pipe)
        }
        , isURLSearchParams: function (e) {
            return "undefined" != typeof URLSearchParams && e instanceof URLSearchParams
        }
        , isStandardBrowserEnv: function () {
            return ("undefined" == typeof navigator || "ReactNative" !== navigator.product && "NativeScript" !== navigator.product && "NS" !== navigator.product) && ("undefined" != typeof window && "undefined" != typeof document)
        }
        , forEach: l
        , merge: function e() {
            var a = {};
            
            function i(i, n) {
                c(a[n]) && c(i) ? a[n] = e(a[n], i) : c(i) ? a[n] = e({}, i) : s(i) ? a[n] = i.slice() : a[n] = i
            }
            for (var n = 0, o = arguments.length; n < o; n++) l(arguments[n], i);
            return a
        }
        , extend: function (e, a, i) {
            return l(a, (function (a, o) {
                e[o] = i && "function" == typeof a ? n(a, i) : a
            })), e
        }
        , trim: function (e) {
            return e.replace(/^\s*/, "")
                .replace(/\s*$/, "")
        }
        , stripBOM: function (e) {
            return 65279 === e.charCodeAt(0) && (e = e.slice(1)), e
        }
    }
}, function (e, a) {
    e.exports = require("util")
}, function (e, a, i) {
    "use strict";
    var n = i(0);
    
    function o(e) {
        return encodeURIComponent(e)
            .replace(/%3A/gi, ":")
            .replace(/%24/g, "$")
            .replace(/%2C/gi, ",")
            .replace(/%20/g, "+")
            .replace(/%5B/gi, "[")
            .replace(/%5D/gi, "]")
    }
    e.exports = function (e, a, i) {
        if (!a) return e;
        var s;
        if (i) s = i(a);
        else if (n.isURLSearchParams(a)) s = a.toString();
        else {
            var t = [];
            n.forEach(a, (function (e, a) {
                null != e && (n.isArray(e) ? a += "[]" : e = [e], n.forEach(e, (function (e) {
                    n.isDate(e) ? e = e.toISOString() : n.isObject(e) && (e = JSON.stringify(e)), t.push(o(a) + "=" + o(e))
                })))
            })), s = t.join("&")
        }
        if (s) {
            var r = e.indexOf("#"); - 1 !== r && (e = e.slice(0, r)), e += (-1 === e.indexOf("?") ? "?" : "&") + s
        }
        return e
    }
}, function (e, a, i) {
    "use strict";
    var n = i(14);
    e.exports = function (e, a, i, o, s) {
        var t = new Error(e);
        return n(t, a, i, o, s)
    }
}, function (e, a) {
    e.exports = require("http")
}, function (e, a) {
    e.exports = require("https")
}, function (e, a) {
    e.exports = require("url")
}, function (e, a) {
    e.exports = require("stream")
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    a.default = class {
        constructor(e, a) {
            this.name = e, this.content = a
        }
    }
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    a.default = class {
        constructor() {
            this._max = 0, this._ids = []
        }
        gen() {
            var e;
            return null !== (e = this._ids.pop()) && void 0 !== e ? e : this._max++
        }
        free(e) {
            this._ids.push(e)
        }
        clear() {
            this._max = 0, this._ids = []
        }
    }
}, function (e, a, i) {
    "use strict";
    e.exports = function (e, a) {
        return function () {
            for (var i = new Array(arguments.length), n = 0; n < i.length; n++) i[n] = arguments[n];
            return e.apply(a, i)
        }
    }
}, function (e, a, i) {
    "use strict";
    e.exports = function (e) {
        return !(!e || !e.__CANCEL__)
    }
}, function (e, a, i) {
    "use strict";
    var n = i(0)
        , o = i(44)
        , s = {
            "Content-Type": "application/x-www-form-urlencoded"
        };
    
    function t(e, a) {
        !n.isUndefined(e) && n.isUndefined(e["Content-Type"]) && (e["Content-Type"] = a)
    }
    var r, c = {
        adapter: ("undefined" != typeof XMLHttpRequest ? r = i(45) : "undefined" != typeof process && "[object process]" === Object.prototype.toString.call(process) && (r = i(51)), r)
        , transformRequest: [function (e, a) {
            return o(a, "Accept"), o(a, "Content-Type"), n.isFormData(e) || n.isArrayBuffer(e) || n.isBuffer(e) || n.isStream(e) || n.isFile(e) || n.isBlob(e) ? e : n.isArrayBufferView(e) ? e.buffer : n.isURLSearchParams(e) ? (t(a, "application/x-www-form-urlencoded;charset=utf-8"), e.toString()) : n.isObject(e) ? (t(a, "application/json;charset=utf-8"), JSON.stringify(e)) : e
        }]
        , transformResponse: [function (e) {
            if ("string" == typeof e) try {
                e = JSON.parse(e)
            } catch (e) {}
            return e
        }]
        , timeout: 0
        , xsrfCookieName: "XSRF-TOKEN"
        , xsrfHeaderName: "X-XSRF-TOKEN"
        , maxContentLength: -1
        , maxBodyLength: -1
        , validateStatus: function (e) {
            return e >= 200 && e < 300
        }
    };
    c.headers = {
        common: {
            Accept: "application/json, text/plain, */*"
        }
    }, n.forEach(["delete", "get", "head"], (function (e) {
        c.headers[e] = {}
    })), n.forEach(["post", "put", "patch"], (function (e) {
        c.headers[e] = n.merge(s)
    })), e.exports = c
}, function (e, a, i) {
    "use strict";
    var n = i(3);
    e.exports = function (e, a, i) {
        var o = i.config.validateStatus;
        i.status && o && !o(i.status) ? a(n("Request failed with status code " + i.status, i.config, null, i.request, i)) : e(i)
    }
}, function (e, a, i) {
    "use strict";
    e.exports = function (e, a, i, n, o) {
        return e.config = a, i && (e.code = i), e.request = n, e.response = o, e.isAxiosError = !0, e.toJSON = function () {
            return {
                message: this.message
                , name: this.name
                , description: this.description
                , number: this.number
                , fileName: this.fileName
                , lineNumber: this.lineNumber
                , columnNumber: this.columnNumber
                , stack: this.stack
                , config: this.config
                , code: this.code
            }
        }, e
    }
}, function (e, a, i) {
    "use strict";
    var n = i(47)
        , o = i(48);
    e.exports = function (e, a) {
        return e && !n(a) ? o(e, a) : a
    }
}, function (e, a, i) {
    var n = i(6)
        , o = n.URL
        , s = i(4)
        , t = i(5)
        , r = i(7)
        .Writable
        , c = i(52)
        , p = i(53)
        , l = Object.create(null);
    ["abort", "aborted", "connect", "error", "socket", "timeout"].forEach((function (e) {
        l[e] = function (a, i, n) {
            this._redirectable.emit(e, a, i, n)
        }
    }));
    var u = w("ERR_FR_REDIRECTION_FAILURE", "")
        , d = w("ERR_FR_TOO_MANY_REDIRECTS", "Maximum number of redirects exceeded")
        , m = w("ERR_FR_MAX_BODY_LENGTH_EXCEEDED", "Request body larger than maxBodyLength limit")
        , x = w("ERR_STREAM_WRITE_AFTER_END", "write after end");
    
    function f(e, a) {
        r.call(this), this._sanitizeOptions(e), this._options = e, this._ended = !1, this._ending = !1, this._redirectCount = 0, this._redirects = [], this._requestBodyLength = 0, this._requestBodyBuffers = [], a && this.on("response", a);
        var i = this;
        this._onNativeResponse = function (e) {
            i._processResponse(e)
        }, this._performRequest()
    }
    
    function v(e, a) {
        clearTimeout(e._timeout), e._timeout = setTimeout((function () {
            e.emit("timeout")
        }), a)
    }
    
    function h() {
        clearTimeout(this._timeout)
    }
    
    function b(e) {
        var a = {
                maxRedirects: 21
                , maxBodyLength: 10485760
            }
            , i = {};
        return Object.keys(e)
            .forEach((function (s) {
                var t = s + ":"
                    , r = i[t] = e[s]
                    , l = a[s] = Object.create(r);
                Object.defineProperties(l, {
                    request: {
                        value: function (e, s, r) {
                            if ("string" == typeof e) {
                                var l = e;
                                try {
                                    e = y(new o(l))
                                } catch (a) {
                                    e = n.parse(l)
                                }
                            } else o && e instanceof o ? e = y(e) : (r = s, s = e, e = {
                                protocol: t
                            });
                            return "function" == typeof s && (r = s, s = null), (s = Object.assign({
                                    maxRedirects: a.maxRedirects
                                    , maxBodyLength: a.maxBodyLength
                                }, e, s))
                                .nativeProtocols = i, c.equal(s.protocol, t, "protocol mismatch"), p("options", s), new f(s, r)
                        }
                        , configurable: !0
                        , enumerable: !0
                        , writable: !0
                    }
                    , get: {
                        value: function (e, a, i) {
                            var n = l.request(e, a, i);
                            return n.end(), n
                        }
                        , configurable: !0
                        , enumerable: !0
                        , writable: !0
                    }
                })
            })), a
    }
    
    function g() {}
    
    function y(e) {
        var a = {
            protocol: e.protocol
            , hostname: e.hostname.startsWith("[") ? e.hostname.slice(1, -1) : e.hostname
            , hash: e.hash
            , search: e.search
            , pathname: e.pathname
            , path: e.pathname + e.search
            , href: e.href
        };
        return "" !== e.port && (a.port = Number(e.port)), a
    }
    
    function E(e, a) {
        var i;
        for (var n in a) e.test(n) && (i = a[n], delete a[n]);
        return i
    }
    
    function w(e, a) {
        function i(e) {
            Error.captureStackTrace(this, this.constructor), this.message = e || a
        }
        return i.prototype = new Error, i.prototype.constructor = i, i.prototype.name = "Error [" + e + "]", i.prototype.code = e, i
    }
    f.prototype = Object.create(r.prototype), f.prototype.write = function (e, a, i) {
        if (this._ending) throw new x;
        if (!("string" == typeof e || "object" == typeof e && "length" in e)) throw new TypeError("data should be a string, Buffer or Uint8Array");
        "function" == typeof a && (i = a, a = null), 0 !== e.length ? this._requestBodyLength + e.length <= this._options.maxBodyLength ? (this._requestBodyLength += e.length, this._requestBodyBuffers.push({
            data: e
            , encoding: a
        }), this._currentRequest.write(e, a, i)) : (this.emit("error", new m), this.abort()) : i && i()
    }, f.prototype.end = function (e, a, i) {
        if ("function" == typeof e ? (i = e, e = a = null) : "function" == typeof a && (i = a, a = null), e) {
            var n = this
                , o = this._currentRequest;
            this.write(e, a, (function () {
                n._ended = !0, o.end(null, null, i)
            })), this._ending = !0
        } else this._ended = this._ending = !0, this._currentRequest.end(null, null, i)
    }, f.prototype.setHeader = function (e, a) {
        this._options.headers[e] = a, this._currentRequest.setHeader(e, a)
    }, f.prototype.removeHeader = function (e) {
        delete this._options.headers[e], this._currentRequest.removeHeader(e)
    }, f.prototype.setTimeout = function (e, a) {
        if (a && this.once("timeout", a), this.socket) v(this, e);
        else {
            var i = this;
            this._currentRequest.once("socket", (function () {
                v(i, e)
            }))
        }
        return this.once("response", h), this.once("error", h), this
    }, ["abort", "flushHeaders", "getHeader", "setNoDelay", "setSocketKeepAlive"].forEach((function (e) {
        f.prototype[e] = function (a, i) {
            return this._currentRequest[e](a, i)
        }
    })), ["aborted", "connection", "socket"].forEach((function (e) {
        Object.defineProperty(f.prototype, e, {
            get: function () {
                return this._currentRequest[e]
            }
        })
    })), f.prototype._sanitizeOptions = function (e) {
        if (e.headers || (e.headers = {}), e.host && (e.hostname || (e.hostname = e.host), delete e.host), !e.pathname && e.path) {
            var a = e.path.indexOf("?");
            a < 0 ? e.pathname = e.path : (e.pathname = e.path.substring(0, a), e.search = e.path.substring(a))
        }
    }, f.prototype._performRequest = function () {
        var e = this._options.protocol
            , a = this._options.nativeProtocols[e];
        if (a) {
            if (this._options.agents) {
                var i = e.substr(0, e.length - 1);
                this._options.agent = this._options.agents[i]
            }
            var o = this._currentRequest = a.request(this._options, this._onNativeResponse);
            for (var s in this._currentUrl = n.format(this._options), o._redirectable = this, l) s && o.on(s, l[s]);
            if (this._isRedirect) {
                var t = 0
                    , r = this
                    , c = this._requestBodyBuffers;
                ! function e(a) {
                    if (o === r._currentRequest)
                        if (a) r.emit("error", a);
                        else if (t < c.length) {
                        var i = c[t++];
                        o.finished || o.write(i.data, i.encoding, e)
                    } else r._ended && o.end()
                }()
            }
        } else this.emit("error", new TypeError("Unsupported protocol " + e))
    }, f.prototype._processResponse = function (e) {
        var a = e.statusCode;
        this._options.trackRedirects && this._redirects.push({
            url: this._currentUrl
            , headers: e.headers
            , statusCode: a
        });
        var i = e.headers.location;
        if (i && !1 !== this._options.followRedirects && a >= 300 && a < 400) {
            if (this._currentRequest.removeAllListeners(), this._currentRequest.on("error", g), this._currentRequest.abort(), e.destroy(), ++this._redirectCount > this._options.maxRedirects) return void this.emit("error", new d);
            ((301 === a || 302 === a) && "POST" === this._options.method || 303 === a && !/^(?:GET|HEAD)$/.test(this._options.method)) && (this._options.method = "GET", this._requestBodyBuffers = [], E(/^content-/i, this._options.headers));
            var o = E(/^host$/i, this._options.headers) || n.parse(this._currentUrl)
                .hostname
                , s = n.resolve(this._currentUrl, i);
            p("redirecting to", s), this._isRedirect = !0;
            var t = n.parse(s);
            if (Object.assign(this._options, t), t.hostname !== o && E(/^authorization$/i, this._options.headers), "function" == typeof this._options.beforeRedirect) {
                var r = {
                    headers: e.headers
                };
                try {
                    this._options.beforeRedirect.call(null, this._options, r)
                } catch (e) {
                    return void this.emit("error", e)
                }
                this._sanitizeOptions(this._options)
            }
            try {
                this._performRequest()
            } catch (e) {
                var c = new u("Redirected request failed: " + e.message);
                c.cause = e, this.emit("error", c)
            }
        } else e.responseUrl = this._currentUrl, e.redirects = this._redirects, this.emit("response", e), this._requestBodyBuffers = []
    }, e.exports = b({
        http: s
        , https: t
    }), e.exports.wrap = b
}, function (e, a, i) {
    var n;
    
    function o(e) {
        function i() {
            if (i.enabled) {
                var e = i
                    , o = +new Date
                    , s = o - (n || o);
                e.diff = s, e.prev = n, e.curr = o, n = o;
                for (var t = new Array(arguments.length), r = 0; r < t.length; r++) t[r] = arguments[r];
                t[0] = a.coerce(t[0]), "string" != typeof t[0] && t.unshift("%O");
                var c = 0;
                t[0] = t[0].replace(/%([a-zA-Z%])/g, (function (i, n) {
                    if ("%%" === i) return i;
                    c++;
                    var o = a.formatters[n];
                    if ("function" == typeof o) {
                        var s = t[c];
                        i = o.call(e, s), t.splice(c, 1), c--
                    }
                    return i
                })), a.formatArgs.call(e, t);
                var p = i.log || a.log || console.log.bind(console);
                p.apply(e, t)
            }
        }
        return i.namespace = e, i.enabled = a.enabled(e), i.useColors = a.useColors(), i.color = function (e) {
            var i, n = 0;
            for (i in e) n = (n << 5) - n + e.charCodeAt(i), n |= 0;
            return a.colors[Math.abs(n) % a.colors.length]
        }(e), "function" == typeof a.init && a.init(i), i
    }(a = e.exports = o.debug = o.default = o)
    .coerce = function (e) {
        return e instanceof Error ? e.stack || e.message : e
    }, a.disable = function () {
        a.enable("")
    }, a.enable = function (e) {
        a.save(e), a.names = [], a.skips = [];
        for (var i = ("string" == typeof e ? e : "")
                .split(/[\s,]+/), n = i.length, o = 0; o < n; o++) i[o] && ("-" === (e = i[o].replace(/\*/g, ".*?"))[0] ? a.skips.push(new RegExp("^" + e.substr(1) + "$")) : a.names.push(new RegExp("^" + e + "$")))
    }, a.enabled = function (e) {
        var i, n;
        for (i = 0, n = a.skips.length; i < n; i++)
            if (a.skips[i].test(e)) return !1;
        for (i = 0, n = a.names.length; i < n; i++)
            if (a.names[i].test(e)) return !0;
        return !1
    }, a.humanize = i(56), a.names = [], a.skips = [], a.formatters = {}
}, function (e, a) {
    e.exports = require("fs")
}, function (e, a, i) {
    "use strict";
    var n = i(0);
    e.exports = function (e, a) {
        a = a || {};
        var i = {}
            , o = ["url", "method", "data"]
            , s = ["headers", "auth", "proxy", "params"]
            , t = ["baseURL", "transformRequest", "transformResponse", "paramsSerializer", "timeout", "timeoutMessage", "withCredentials", "adapter", "responseType", "xsrfCookieName", "xsrfHeaderName", "onUploadProgress", "onDownloadProgress", "decompress", "maxContentLength", "maxBodyLength", "maxRedirects", "transport", "httpAgent", "httpsAgent", "cancelToken", "socketPath", "responseEncoding"]
            , r = ["validateStatus"];
        
        function c(e, a) {
            return n.isPlainObject(e) && n.isPlainObject(a) ? n.merge(e, a) : n.isPlainObject(a) ? n.merge({}, a) : n.isArray(a) ? a.slice() : a
        }
        
        function p(o) {
            n.isUndefined(a[o]) ? n.isUndefined(e[o]) || (i[o] = c(void 0, e[o])) : i[o] = c(e[o], a[o])
        }
        n.forEach(o, (function (e) {
            n.isUndefined(a[e]) || (i[e] = c(void 0, a[e]))
        })), n.forEach(s, p), n.forEach(t, (function (o) {
            n.isUndefined(a[o]) ? n.isUndefined(e[o]) || (i[o] = c(void 0, e[o])) : i[o] = c(void 0, a[o])
        })), n.forEach(r, (function (n) {
            n in a ? i[n] = c(e[n], a[n]) : n in e && (i[n] = c(void 0, e[n]))
        }));
        var l = o.concat(s)
            .concat(t)
            .concat(r)
            , u = Object.keys(e)
            .concat(Object.keys(a))
            .filter((function (e) {
                return -1 === l.indexOf(e)
            }));
        return n.forEach(u, p), i
    }
}, function (e, a, i) {
    "use strict";
    
    function n(e) {
        this.message = e
    }
    n.prototype.toString = function () {
        return "Cancel" + (this.message ? ": " + this.message : "")
    }, n.prototype.__CANCEL__ = !0, e.exports = n
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    a.default = class {
        static delay(e) {
            return new Promise(a => {
                setTimeout(a, e)
            })
        }
        static safeInvoke(e, ...a) {
            "function" == typeof e && setImmediate(e.bind(void 0, ...a))
        }
    }
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = n(i(67))
        , s = n(i(30));
    a.default = class {
        constructor(e) {
            var a, i;
            this.content = null == e ? void 0 : e.content, this.username = null == e ? void 0 : e.username, this.avatarUrl = null == e ? void 0 : e.avatar_url, this.tts = null == e ? void 0 : e.tts, this.embeds = null !== (i = null === (a = null == e ? void 0 : e.embeds) || void 0 === a ? void 0 : a.map(e => new s.default(e))) && void 0 !== i ? i : [], this.files = []
        }
        setContent(e) {
            return this.content = e, this
        }
        setUsername(e) {
            return this.username = e, this
        }
        setAvatar(e) {
            return this.avatarUrl = e, this
        }
        setTts(e) {
            return this.tts = e, this
        }
        addEmbed(e) {
            return this.embeds.push(e), this
        }
        attachFile(e) {
            return this.files.push(e), this
        }
        toJSON() {
            return {
                content: this.content
                , username: this.username
                , avatar_url: this.avatarUrl
                , tts: this.tts
                , embeds: this.embeds.length > 0 ? this.embeds.map(e => e.toJSON()) : void 0
            }
        }
        toFormData() {
            const e = new o.default
                , a = [...this.files];
            for (const e of this.embeds) a.push(...e.files);
            for (const i of a) e.append("file", i.content, {
                filename: i.name
            });
            return e.append("payload_json", JSON.stringify(this.toJSON())), e
        }
    }
}, function (e, a) {
    e.exports = require("path")
}, function (e, a, i) {
    var n = i(25)
        , o = i(26);
    e.exports = function (e, a, i, s) {
        var t = i.keyedList ? i.keyedList[i.index] : i.index;
        i.jobs[t] = function (e, a, i, o) {
            var s;
            s = 2 == e.length ? e(i, n(o)) : e(i, a, n(o));
            return s
        }(a, t, e[t], (function (e, a) {
            t in i.jobs && (delete i.jobs[t], e ? o(i) : i.results[t] = a, s(e, i.results))
        }))
    }
}, function (e, a, i) {
    var n = i(75);
    e.exports = function (e) {
        var a = !1;
        return n((function () {
                a = !0
            }))
            , function (i, o) {
                a ? e(i, o) : n((function () {
                    e(i, o)
                }))
            }
    }
}, function (e, a) {
    function i(e) {
        "function" == typeof this.jobs[e] && this.jobs[e]()
    }
    e.exports = function (e) {
        Object.keys(e.jobs)
            .forEach(i.bind(e)), e.jobs = {}
    }
}, function (e, a) {
    e.exports = function (e, a) {
        var i = !Array.isArray(e)
            , n = {
                index: 0
                , keyedList: i || a ? Object.keys(e) : null
                , jobs: {}
                , results: i ? {} : []
                , size: i ? Object.keys(e)
                    .length : e.length
            };
        a && n.keyedList.sort(i ? a : function (i, n) {
            return a(e[i], e[n])
        });
        return n
    }
}, function (e, a, i) {
    var n = i(26)
        , o = i(25);
    e.exports = function (e) {
        if (!Object.keys(this.jobs)
            .length) return;
        this.index = this.size, n(this), o(e)(null, this.results)
    }
}, function (e, a, i) {
    var n = i(24)
        , o = i(27)
        , s = i(28);
    
    function t(e, a) {
        return e < a ? -1 : e > a ? 1 : 0
    }
    e.exports = function (e, a, i, t) {
        var r = o(e, i);
        return n(e, a, r, (function i(o, s) {
            o ? t(o, s) : (r.index++, r.index < (r.keyedList || e)
                .length ? n(e, a, r, i) : t(null, r.results))
        })), s.bind(r, t)
    }, e.exports.ascending = t, e.exports.descending = function (e, a) {
        return -1 * t(e, a)
    }
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = n(i(8));
    a.default = class {
        constructor(e) {
            var a;
            this.title = null == e ? void 0 : e.title, this.description = null == e ? void 0 : e.description, this.url = null == e ? void 0 : e.url, this.timestamp = null == e ? void 0 : e.timestamp, this.color = null == e ? void 0 : e.color, this.footer = null == e ? void 0 : e.footer, this.image = null == e ? void 0 : e.image, this.thumbnail = null == e ? void 0 : e.thumbnail, this.video = null == e ? void 0 : e.video, this.author = null == e ? void 0 : e.author, this.fields = null !== (a = null == e ? void 0 : e.fields) && void 0 !== a ? a : [], this.files = []
        }
        setTitle(e) {
            return this.title = e, this
        }
        setDescription(e) {
            return this.description = e, this
        }
        setUrl(e) {
            return this.url = e, this
        }
        setTimestamp(e = new Date) {
            return this.timestamp = e.toISOString(), this
        }
        setColor(e) {
            return this.color = e.rgbNumber(), this
        }
        setFooter(e, a) {
            return this.footer = {
                text: e
                , icon_url: a
            }, this
        }
        setImage(e, a, i) {
            return this.image = {
                url: this.resolveMedia(e)
                , width: a
                , height: i
            }, this
        }
        setThumbnail(e, a, i) {
            return this.thumbnail = {
                url: this.resolveMedia(e)
                , width: a
                , height: i
            }, this
        }
        setVideo(e, a, i) {
            return this.video = {
                url: this.resolveMedia(e)
                , width: a
                , height: i
            }, this
        }
        setAuthor(e, a, i) {
            return this.author = {
                name: e
                , url: a
                , icon_url: i
            }, this
        }
        addField(e, a, i = !1) {
            return this.fields.push({
                name: e
                , value: a
                , inline: i
            }), this
        }
        attachFile(e) {
            return this.files.push(e), this
        }
        toJSON() {
            return {
                title: this.title
                , description: this.description
                , url: this.url
                , timestamp: this.timestamp
                , color: this.color
                , footer: this.footer
                , image: this.image
                , thumbnail: this.thumbnail
                , video: this.video
                , author: this.author
                , fields: this.fields.length > 0 ? this.fields : void 0
            }
        }
        resolveMedia(e) {
            return e instanceof o.default ? (this.attachFile(e), "attachment://" + e.name) : e
        }
    }
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = n(i(82))
        , s = n(i(90))
        , t = n(i(22))
        , r = n(i(30))
        , c = n(i(8))
        , p = n(i(33));
    class l extends s.default {
        constructor(e, a, i, n, o) {
            super(e), this.permission = a, this.webhookClient = n, this.hiddenIdentifiers = i, this.screenshoter = o
        }
        async requestScreenshotUploadToDiscord(e, a) {
            const i = new t.default;
            try {
                i.addEmbed(this.buildEmbed(e, a, await this.screenshoter.takeScreenshot(a)))
            } catch (n) {
                i.addEmbed(this.buildEmbed(e, a, n))
            } finally {
                await this.webhookClient.send(i)
            }
        }
        requestEveryoneScreenshotUploadToDiscord(e) {
            for (const a of p.default.getPlayers()) this.requestScreenshotUploadToDiscord(e, a)
        }
        buildEmbed(e, a, i) {
            var n, s;
            const t = new r.default;
            t.setAuthor(null !== (n = GetPlayerName(a)) && void 0 !== n ? n : "Unknown", "https://github.com/jaimeadf", "https://discord.com/assets/f78426a064bc9dd24847519259bc42af.png"), t.setTimestamp(), t.setFooter("Requested by " + ("0" !== e ? null !== (s = GetPlayerName(e)) && void 0 !== s ? s : "Unknown" : "Server Console"));
            const l = p.default.getPlayerIdentifiers(a);
            if (l.length > 0) {
                const e = l.filter(e => !this.hiddenIdentifiers.includes(e.substring(0, e.indexOf(":"))))
                    .join("\n");
                t.addField("Identifiers", e)
            }
            return t.addField("Source", a, !0), i instanceof c.default ? (t.setColor(o.default("#00C851")), t.setImage(i)) : (t.setColor(o.default("#FF4444")), t.setTitle(`An error occurred: \`${i.message}\``)), t
        }
    }
    a.default = l
}, function (e, a, i) {
    var n = i(88)
        , o = {};
    for (var s in n) n.hasOwnProperty(s) && (o[n[s]] = s);
    var t = e.exports = {
        rgb: {
            channels: 3
            , labels: "rgb"
        }
        , hsl: {
            channels: 3
            , labels: "hsl"
        }
        , hsv: {
            channels: 3
            , labels: "hsv"
        }
        , hwb: {
            channels: 3
            , labels: "hwb"
        }
        , cmyk: {
            channels: 4
            , labels: "cmyk"
        }
        , xyz: {
            channels: 3
            , labels: "xyz"
        }
        , lab: {
            channels: 3
            , labels: "lab"
        }
        , lch: {
            channels: 3
            , labels: "lch"
        }
        , hex: {
            channels: 1
            , labels: ["hex"]
        }
        , keyword: {
            channels: 1
            , labels: ["keyword"]
        }
        , ansi16: {
            channels: 1
            , labels: ["ansi16"]
        }
        , ansi256: {
            channels: 1
            , labels: ["ansi256"]
        }
        , hcg: {
            channels: 3
            , labels: ["h", "c", "g"]
        }
        , apple: {
            channels: 3
            , labels: ["r16", "g16", "b16"]
        }
        , gray: {
            channels: 1
            , labels: ["gray"]
        }
    };
    for (var r in t)
        if (t.hasOwnProperty(r)) {
            if (!("channels" in t[r])) throw new Error("missing channels property: " + r);
            if (!("labels" in t[r])) throw new Error("missing channel labels property: " + r);
            if (t[r].labels.length !== t[r].channels) throw new Error("channel and label counts mismatch: " + r);
            var c = t[r].channels
                , p = t[r].labels;
            delete t[r].channels, delete t[r].labels, Object.defineProperty(t[r], "channels", {
                value: c
            }), Object.defineProperty(t[r], "labels", {
                value: p
            })
        } t.rgb.hsl = function (e) {
        var a, i, n = e[0] / 255
            , o = e[1] / 255
            , s = e[2] / 255
            , t = Math.min(n, o, s)
            , r = Math.max(n, o, s)
            , c = r - t;
        return r === t ? a = 0 : n === r ? a = (o - s) / c : o === r ? a = 2 + (s - n) / c : s === r && (a = 4 + (n - o) / c), (a = Math.min(60 * a, 360)) < 0 && (a += 360), i = (t + r) / 2, [a, 100 * (r === t ? 0 : i <= .5 ? c / (r + t) : c / (2 - r - t)), 100 * i]
    }, t.rgb.hsv = function (e) {
        var a, i, n, o, s, t = e[0] / 255
            , r = e[1] / 255
            , c = e[2] / 255
            , p = Math.max(t, r, c)
            , l = p - Math.min(t, r, c)
            , u = function (e) {
                return (p - e) / 6 / l + .5
            };
        return 0 === l ? o = s = 0 : (s = l / p, a = u(t), i = u(r), n = u(c), t === p ? o = n - i : r === p ? o = 1 / 3 + a - n : c === p && (o = 2 / 3 + i - a), o < 0 ? o += 1 : o > 1 && (o -= 1)), [360 * o, 100 * s, 100 * p]
    }, t.rgb.hwb = function (e) {
        var a = e[0]
            , i = e[1]
            , n = e[2];
        return [t.rgb.hsl(e)[0], 100 * (1 / 255 * Math.min(a, Math.min(i, n))), 100 * (n = 1 - 1 / 255 * Math.max(a, Math.max(i, n)))]
    }, t.rgb.cmyk = function (e) {
        var a, i = e[0] / 255
            , n = e[1] / 255
            , o = e[2] / 255;
        return [100 * ((1 - i - (a = Math.min(1 - i, 1 - n, 1 - o))) / (1 - a) || 0), 100 * ((1 - n - a) / (1 - a) || 0), 100 * ((1 - o - a) / (1 - a) || 0), 100 * a]
    }, t.rgb.keyword = function (e) {
        var a = o[e];
        if (a) return a;
        var i, s, t, r = 1 / 0;
        for (var c in n)
            if (n.hasOwnProperty(c)) {
                var p = n[c]
                    , l = (s = e, t = p, Math.pow(s[0] - t[0], 2) + Math.pow(s[1] - t[1], 2) + Math.pow(s[2] - t[2], 2));
                l < r && (r = l, i = c)
            } return i
    }, t.keyword.rgb = function (e) {
        return n[e]
    }, t.rgb.xyz = function (e) {
        var a = e[0] / 255
            , i = e[1] / 255
            , n = e[2] / 255;
        return [100 * (.4124 * (a = a > .04045 ? Math.pow((a + .055) / 1.055, 2.4) : a / 12.92) + .3576 * (i = i > .04045 ? Math.pow((i + .055) / 1.055, 2.4) : i / 12.92) + .1805 * (n = n > .04045 ? Math.pow((n + .055) / 1.055, 2.4) : n / 12.92)), 100 * (.2126 * a + .7152 * i + .0722 * n), 100 * (.0193 * a + .1192 * i + .9505 * n)]
    }, t.rgb.lab = function (e) {
        var a = t.rgb.xyz(e)
            , i = a[0]
            , n = a[1]
            , o = a[2];
        return n /= 100, o /= 108.883, i = (i /= 95.047) > .008856 ? Math.pow(i, 1 / 3) : 7.787 * i + 16 / 116, [116 * (n = n > .008856 ? Math.pow(n, 1 / 3) : 7.787 * n + 16 / 116) - 16, 500 * (i - n), 200 * (n - (o = o > .008856 ? Math.pow(o, 1 / 3) : 7.787 * o + 16 / 116))]
    }, t.hsl.rgb = function (e) {
        var a, i, n, o, s, t = e[0] / 360
            , r = e[1] / 100
            , c = e[2] / 100;
        if (0 === r) return [s = 255 * c, s, s];
        a = 2 * c - (i = c < .5 ? c * (1 + r) : c + r - c * r), o = [0, 0, 0];
        for (var p = 0; p < 3; p++)(n = t + 1 / 3 * -(p - 1)) < 0 && n++, n > 1 && n--, s = 6 * n < 1 ? a + 6 * (i - a) * n : 2 * n < 1 ? i : 3 * n < 2 ? a + (i - a) * (2 / 3 - n) * 6 : a, o[p] = 255 * s;
        return o
    }, t.hsl.hsv = function (e) {
        var a = e[0]
            , i = e[1] / 100
            , n = e[2] / 100
            , o = i
            , s = Math.max(n, .01);
        return i *= (n *= 2) <= 1 ? n : 2 - n, o *= s <= 1 ? s : 2 - s, [a, 100 * (0 === n ? 2 * o / (s + o) : 2 * i / (n + i)), 100 * ((n + i) / 2)]
    }, t.hsv.rgb = function (e) {
        var a = e[0] / 60
            , i = e[1] / 100
            , n = e[2] / 100
            , o = Math.floor(a) % 6
            , s = a - Math.floor(a)
            , t = 255 * n * (1 - i)
            , r = 255 * n * (1 - i * s)
            , c = 255 * n * (1 - i * (1 - s));
        switch (n *= 255, o) {
        case 0:
            return [n, c, t];
        case 1:
            return [r, n, t];
        case 2:
            return [t, n, c];
        case 3:
            return [t, r, n];
        case 4:
            return [c, t, n];
        case 5:
            return [n, t, r]
        }
    }, t.hsv.hsl = function (e) {
        var a, i, n, o = e[0]
            , s = e[1] / 100
            , t = e[2] / 100
            , r = Math.max(t, .01);
        return n = (2 - s) * t, i = s * r, [o, 100 * (i = (i /= (a = (2 - s) * r) <= 1 ? a : 2 - a) || 0), 100 * (n /= 2)]
    }, t.hwb.rgb = function (e) {
        var a, i, n, o, s, t, r, c = e[0] / 360
            , p = e[1] / 100
            , l = e[2] / 100
            , u = p + l;
        switch (u > 1 && (p /= u, l /= u), n = 6 * c - (a = Math.floor(6 * c)), 0 != (1 & a) && (n = 1 - n), o = p + n * ((i = 1 - l) - p), a) {
        default:
        case 6:
        case 0:
            s = i, t = o, r = p;
            break;
        case 1:
            s = o, t = i, r = p;
            break;
        case 2:
            s = p, t = i, r = o;
            break;
        case 3:
            s = p, t = o, r = i;
            break;
        case 4:
            s = o, t = p, r = i;
            break;
        case 5:
            s = i, t = p, r = o
        }
        return [255 * s, 255 * t, 255 * r]
    }, t.cmyk.rgb = function (e) {
        var a = e[0] / 100
            , i = e[1] / 100
            , n = e[2] / 100
            , o = e[3] / 100;
        return [255 * (1 - Math.min(1, a * (1 - o) + o)), 255 * (1 - Math.min(1, i * (1 - o) + o)), 255 * (1 - Math.min(1, n * (1 - o) + o))]
    }, t.xyz.rgb = function (e) {
        var a, i, n, o = e[0] / 100
            , s = e[1] / 100
            , t = e[2] / 100;
        return i = -.9689 * o + 1.8758 * s + .0415 * t, n = .0557 * o + -.204 * s + 1.057 * t, a = (a = 3.2406 * o + -1.5372 * s + -.4986 * t) > .0031308 ? 1.055 * Math.pow(a, 1 / 2.4) - .055 : 12.92 * a, i = i > .0031308 ? 1.055 * Math.pow(i, 1 / 2.4) - .055 : 12.92 * i, n = n > .0031308 ? 1.055 * Math.pow(n, 1 / 2.4) - .055 : 12.92 * n, [255 * (a = Math.min(Math.max(0, a), 1)), 255 * (i = Math.min(Math.max(0, i), 1)), 255 * (n = Math.min(Math.max(0, n), 1))]
    }, t.xyz.lab = function (e) {
        var a = e[0]
            , i = e[1]
            , n = e[2];
        return i /= 100, n /= 108.883, a = (a /= 95.047) > .008856 ? Math.pow(a, 1 / 3) : 7.787 * a + 16 / 116, [116 * (i = i > .008856 ? Math.pow(i, 1 / 3) : 7.787 * i + 16 / 116) - 16, 500 * (a - i), 200 * (i - (n = n > .008856 ? Math.pow(n, 1 / 3) : 7.787 * n + 16 / 116))]
    }, t.lab.xyz = function (e) {
        var a, i, n, o = e[0];
        a = e[1] / 500 + (i = (o + 16) / 116), n = i - e[2] / 200;
        var s = Math.pow(i, 3)
            , t = Math.pow(a, 3)
            , r = Math.pow(n, 3);
        return i = s > .008856 ? s : (i - 16 / 116) / 7.787, a = t > .008856 ? t : (a - 16 / 116) / 7.787, n = r > .008856 ? r : (n - 16 / 116) / 7.787, [a *= 95.047, i *= 100, n *= 108.883]
    }, t.lab.lch = function (e) {
        var a, i = e[0]
            , n = e[1]
            , o = e[2];
        return (a = 360 * Math.atan2(o, n) / 2 / Math.PI) < 0 && (a += 360), [i, Math.sqrt(n * n + o * o), a]
    }, t.lch.lab = function (e) {
        var a, i = e[0]
            , n = e[1];
        return a = e[2] / 360 * 2 * Math.PI, [i, n * Math.cos(a), n * Math.sin(a)]
    }, t.rgb.ansi16 = function (e) {
        var a = e[0]
            , i = e[1]
            , n = e[2]
            , o = 1 in arguments ? arguments[1] : t.rgb.hsv(e)[2];
        if (0 === (o = Math.round(o / 50))) return 30;
        var s = 30 + (Math.round(n / 255) << 2 | Math.round(i / 255) << 1 | Math.round(a / 255));
        return 2 === o && (s += 60), s
    }, t.hsv.ansi16 = function (e) {
        return t.rgb.ansi16(t.hsv.rgb(e), e[2])
    }, t.rgb.ansi256 = function (e) {
        var a = e[0]
            , i = e[1]
            , n = e[2];
        return a === i && i === n ? a < 8 ? 16 : a > 248 ? 231 : Math.round((a - 8) / 247 * 24) + 232 : 16 + 36 * Math.round(a / 255 * 5) + 6 * Math.round(i / 255 * 5) + Math.round(n / 255 * 5)
    }, t.ansi16.rgb = function (e) {
        var a = e % 10;
        if (0 === a || 7 === a) return e > 50 && (a += 3.5), [a = a / 10.5 * 255, a, a];
        var i = .5 * (1 + ~~(e > 50));
        return [(1 & a) * i * 255, (a >> 1 & 1) * i * 255, (a >> 2 & 1) * i * 255]
    }, t.ansi256.rgb = function (e) {
        if (e >= 232) {
            var a = 10 * (e - 232) + 8;
            return [a, a, a]
        }
        var i;
        return e -= 16, [Math.floor(e / 36) / 5 * 255, Math.floor((i = e % 36) / 6) / 5 * 255, i % 6 / 5 * 255]
    }, t.rgb.hex = function (e) {
        var a = (((255 & Math.round(e[0])) << 16) + ((255 & Math.round(e[1])) << 8) + (255 & Math.round(e[2])))
            .toString(16)
            .toUpperCase();
        return "000000".substring(a.length) + a
    }, t.hex.rgb = function (e) {
        var a = e.toString(16)
            .match(/[a-f0-9]{6}|[a-f0-9]{3}/i);
        if (!a) return [0, 0, 0];
        var i = a[0];
        3 === a[0].length && (i = i.split("")
            .map((function (e) {
                return e + e
            }))
            .join(""));
        var n = parseInt(i, 16);
        return [n >> 16 & 255, n >> 8 & 255, 255 & n]
    }, t.rgb.hcg = function (e) {
        var a, i = e[0] / 255
            , n = e[1] / 255
            , o = e[2] / 255
            , s = Math.max(Math.max(i, n), o)
            , t = Math.min(Math.min(i, n), o)
            , r = s - t;
        return a = r <= 0 ? 0 : s === i ? (n - o) / r % 6 : s === n ? 2 + (o - i) / r : 4 + (i - n) / r + 4, a /= 6, [360 * (a %= 1), 100 * r, 100 * (r < 1 ? t / (1 - r) : 0)]
    }, t.hsl.hcg = function (e) {
        var a = e[1] / 100
            , i = e[2] / 100
            , n = 1
            , o = 0;
        return (n = i < .5 ? 2 * a * i : 2 * a * (1 - i)) < 1 && (o = (i - .5 * n) / (1 - n)), [e[0], 100 * n, 100 * o]
    }, t.hsv.hcg = function (e) {
        var a = e[1] / 100
            , i = e[2] / 100
            , n = a * i
            , o = 0;
        return n < 1 && (o = (i - n) / (1 - n)), [e[0], 100 * n, 100 * o]
    }, t.hcg.rgb = function (e) {
        var a = e[0] / 360
            , i = e[1] / 100
            , n = e[2] / 100;
        if (0 === i) return [255 * n, 255 * n, 255 * n];
        var o, s = [0, 0, 0]
            , t = a % 1 * 6
            , r = t % 1
            , c = 1 - r;
        switch (Math.floor(t)) {
        case 0:
            s[0] = 1, s[1] = r, s[2] = 0;
            break;
        case 1:
            s[0] = c, s[1] = 1, s[2] = 0;
            break;
        case 2:
            s[0] = 0, s[1] = 1, s[2] = r;
            break;
        case 3:
            s[0] = 0, s[1] = c, s[2] = 1;
            break;
        case 4:
            s[0] = r, s[1] = 0, s[2] = 1;
            break;
        default:
            s[0] = 1, s[1] = 0, s[2] = c
        }
        return o = (1 - i) * n, [255 * (i * s[0] + o), 255 * (i * s[1] + o), 255 * (i * s[2] + o)]
    }, t.hcg.hsv = function (e) {
        var a = e[1] / 100
            , i = a + e[2] / 100 * (1 - a)
            , n = 0;
        return i > 0 && (n = a / i), [e[0], 100 * n, 100 * i]
    }, t.hcg.hsl = function (e) {
        var a = e[1] / 100
            , i = e[2] / 100 * (1 - a) + .5 * a
            , n = 0;
        return i > 0 && i < .5 ? n = a / (2 * i) : i >= .5 && i < 1 && (n = a / (2 * (1 - i))), [e[0], 100 * n, 100 * i]
    }, t.hcg.hwb = function (e) {
        var a = e[1] / 100
            , i = a + e[2] / 100 * (1 - a);
        return [e[0], 100 * (i - a), 100 * (1 - i)]
    }, t.hwb.hcg = function (e) {
        var a = e[1] / 100
            , i = 1 - e[2] / 100
            , n = i - a
            , o = 0;
        return n < 1 && (o = (i - n) / (1 - n)), [e[0], 100 * n, 100 * o]
    }, t.apple.rgb = function (e) {
        return [e[0] / 65535 * 255, e[1] / 65535 * 255, e[2] / 65535 * 255]
    }, t.rgb.apple = function (e) {
        return [e[0] / 255 * 65535, e[1] / 255 * 65535, e[2] / 255 * 65535]
    }, t.gray.rgb = function (e) {
        return [e[0] / 100 * 255, e[0] / 100 * 255, e[0] / 100 * 255]
    }, t.gray.hsl = t.gray.hsv = function (e) {
        return [0, 0, e[0]]
    }, t.gray.hwb = function (e) {
        return [0, 100, e[0]]
    }, t.gray.cmyk = function (e) {
        return [0, 0, 0, e[0]]
    }, t.gray.lab = function (e) {
        return [e[0], 0, 0]
    }, t.gray.hex = function (e) {
        var a = 255 & Math.round(e[0] / 100 * 255)
            , i = ((a << 16) + (a << 8) + a)
            .toString(16)
            .toUpperCase();
        return "000000".substring(i.length) + i
    }, t.rgb.gray = function (e) {
        return [(e[0] + e[1] + e[2]) / 3 / 255 * 100]
    }
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    class n {
        static getPlayers() {
            const e = []
                , a = GetNumPlayerIndices();
            for (let i = 0; i < a; i++) e.push(GetPlayerFromIndex(i));
            return e
        }
        static getPlayerIdentifiers(e) {
            const a = []
                , i = GetNumPlayerIdentifiers(e);
            for (let n = 0; n < i; n++) a.push(GetPlayerIdentifier(e, n));
            return a
        }
        static getPlayerByIdentifier(e) {
            for (const a of n.getPlayers()) {
                if (n.getPlayerIdentifiers(a)
                    .includes(e)) return a
            }
        }
    }
    a.default = n
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = i(35)
        , s = n(i(36))
        , t = n(i(37))
        , r = n(i(22))
        , c = n(i(78))
        , p = n(i(80))
        , l = n(i(91))
        , u = n(i(21))
        , d = o.loadSettings()
        , m = new t.default(d.webhookUrl)
        , x = new c.default;
    (function (e) {
        switch (e) {
        case s.default.VRP:
            return new l.default;
        default:
            return new p.default
        }
    })(d.framework)
    .createScreenshotCommand(d.commandName, d.commandPermission, d.hiddenIdentifiers, m, x)
        .register(), global.exports("requestClientScreenshotUploadToDiscord", (e, a, i, n) => {
            "function" == typeof i && (n = i, i = void 0), x.takeScreenshot(e, i)
                .then(async e => {
                    const i = new r.default(a);
                    i.attachFile(e), await m.send(i), u.default.safeInvoke(n)
                })
                .catch(e => {
                    u.default.safeInvoke(n, e.message)
                })
        }), global.exports("requestCustomClientScreenshotUploadToDiscord", (e, a, i, n, o, s) => {
            "function" == typeof o && (s = o, o = void 0);
            const p = new t.default(a);
            new c.default(i)
                .takeScreenshot(e, o)
                .then(async e => {
                    const a = new r.default(n);
                    a.attachFile(e), await p.send(a), u.default.safeInvoke(s)
                })
                .catch(e => {
                    u.default.safeInvoke(s, e.message)
                })
        })
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    }), a.loadSettings = void 0, a.loadSettings = function () {
        return JSON.parse(LoadResourceFile(GetCurrentResourceName(), "settings.json"))
    }
}, function (e, a, i) {
    "use strict";
    var n;
    Object.defineProperty(a, "__esModule", {
            value: !0
        })
        , function (e) {
            e.NONE = "none", e.VRP = "vrp"
        }(n || (n = {})), a.default = n
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = n(i(38))
        , s = i(96)
        , t = n(i(65))
        , r = n(i(21))
        , c = n(i(66));
    a.default = class {
        constructor(e) {
            this._url = e, this._queue = new c.default
        }
        async send(e) {
            await this._queue.wait();
            try {
                return await this.sendInternal(e)
            } finally {
                this._queue.shift()
            }
        }
        async sendInternal(e) {
            const a = e.toFormData();
            try {
                await o.default.post(this._url, a.getBuffer(), {
                    headers: a.getHeaders()
                })
            } catch (a) {
                const i = a
                    , n = i.response;
                if ((null == n ? void 0 : n.status) === s.StatusCodes.TOO_MANY_REQUESTS) {
                    const a = new t.default(n.headers);
                    return await r.default.delay(a.retryAfter), await this.sendInternal(e)
                }
                throw i
            }
        }
    }
}, function (e, a, i) {
    e.exports = i(39)
}, function (e, a, i) {
    "use strict";
    var n = i(0)
        , o = i(10)
        , s = i(40)
        , t = i(19);
    
    function r(e) {
        var a = new s(e)
            , i = o(s.prototype.request, a);
        return n.extend(i, s.prototype, a), n.extend(i, a), i
    }
    var c = r(i(12));
    c.Axios = s, c.create = function (e) {
        return r(t(c.defaults, e))
    }, c.Cancel = i(20), c.CancelToken = i(62), c.isCancel = i(11), c.all = function (e) {
        return Promise.all(e)
    }, c.spread = i(63), c.isAxiosError = i(64), e.exports = c, e.exports.default = c
}, function (e, a, i) {
    "use strict";
    var n = i(0)
        , o = i(2)
        , s = i(41)
        , t = i(42)
        , r = i(19);
    
    function c(e) {
        this.defaults = e, this.interceptors = {
            request: new s
            , response: new s
        }
    }
    c.prototype.request = function (e) {
        "string" == typeof e ? (e = arguments[1] || {})
            .url = arguments[0] : e = e || {}, (e = r(this.defaults, e))
            .method ? e.method = e.method.toLowerCase() : this.defaults.method ? e.method = this.defaults.method.toLowerCase() : e.method = "get";
        var a = [t, void 0]
            , i = Promise.resolve(e);
        for (this.interceptors.request.forEach((function (e) {
                a.unshift(e.fulfilled, e.rejected)
            })), this.interceptors.response.forEach((function (e) {
                a.push(e.fulfilled, e.rejected)
            })); a.length;) i = i.then(a.shift(), a.shift());
        return i
    }, c.prototype.getUri = function (e) {
        return e = r(this.defaults, e), o(e.url, e.params, e.paramsSerializer)
            .replace(/^\?/, "")
    }, n.forEach(["delete", "get", "head", "options"], (function (e) {
        c.prototype[e] = function (a, i) {
            return this.request(r(i || {}, {
                method: e
                , url: a
                , data: (i || {})
                    .data
            }))
        }
    })), n.forEach(["post", "put", "patch"], (function (e) {
        c.prototype[e] = function (a, i, n) {
            return this.request(r(n || {}, {
                method: e
                , url: a
                , data: i
            }))
        }
    })), e.exports = c
}, function (e, a, i) {
    "use strict";
    var n = i(0);
    
    function o() {
        this.handlers = []
    }
    o.prototype.use = function (e, a) {
        return this.handlers.push({
            fulfilled: e
            , rejected: a
        }), this.handlers.length - 1
    }, o.prototype.eject = function (e) {
        this.handlers[e] && (this.handlers[e] = null)
    }, o.prototype.forEach = function (e) {
        n.forEach(this.handlers, (function (a) {
            null !== a && e(a)
        }))
    }, e.exports = o
}, function (e, a, i) {
    "use strict";
    var n = i(0)
        , o = i(43)
        , s = i(11)
        , t = i(12);
    
    function r(e) {
        e.cancelToken && e.cancelToken.throwIfRequested()
    }
    e.exports = function (e) {
        return r(e), e.headers = e.headers || {}, e.data = o(e.data, e.headers, e.transformRequest), e.headers = n.merge(e.headers.common || {}, e.headers[e.method] || {}, e.headers), n.forEach(["delete", "get", "head", "post", "put", "patch", "common"], (function (a) {
                delete e.headers[a]
            })), (e.adapter || t.adapter)(e)
            .then((function (a) {
                return r(e), a.data = o(a.data, a.headers, e.transformResponse), a
            }), (function (a) {
                return s(a) || (r(e), a && a.response && (a.response.data = o(a.response.data, a.response.headers, e.transformResponse))), Promise.reject(a)
            }))
    }
}, function (e, a, i) {
    "use strict";
    var n = i(0);
    e.exports = function (e, a, i) {
        return n.forEach(i, (function (i) {
            e = i(e, a)
        })), e
    }
}, function (e, a, i) {
    "use strict";
    var n = i(0);
    e.exports = function (e, a) {
        n.forEach(e, (function (i, n) {
            n !== a && n.toUpperCase() === a.toUpperCase() && (e[a] = i, delete e[n])
        }))
    }
}, function (e, a, i) {
    "use strict";
    var n = i(0)
        , o = i(13)
        , s = i(46)
        , t = i(2)
        , r = i(15)
        , c = i(49)
        , p = i(50)
        , l = i(3);
    e.exports = function (e) {
        return new Promise((function (a, i) {
            var u = e.data
                , d = e.headers;
            n.isFormData(u) && delete d["Content-Type"];
            var m = new XMLHttpRequest;
            if (e.auth) {
                var x = e.auth.username || ""
                    , f = e.auth.password ? unescape(encodeURIComponent(e.auth.password)) : "";
                d.Authorization = "Basic " + btoa(x + ":" + f)
            }
            var v = r(e.baseURL, e.url);
            if (m.open(e.method.toUpperCase(), t(v, e.params, e.paramsSerializer), !0), m.timeout = e.timeout, m.onreadystatechange = function () {
                    if (m && 4 === m.readyState && (0 !== m.status || m.responseURL && 0 === m.responseURL.indexOf("file:"))) {
                        var n = "getAllResponseHeaders" in m ? c(m.getAllResponseHeaders()) : null
                            , s = {
                                data: e.responseType && "text" !== e.responseType ? m.response : m.responseText
                                , status: m.status
                                , statusText: m.statusText
                                , headers: n
                                , config: e
                                , request: m
                            };
                        o(a, i, s), m = null
                    }
                }, m.onabort = function () {
                    m && (i(l("Request aborted", e, "ECONNABORTED", m)), m = null)
                }, m.onerror = function () {
                    i(l("Network Error", e, null, m)), m = null
                }, m.ontimeout = function () {
                    var a = "timeout of " + e.timeout + "ms exceeded";
                    e.timeoutErrorMessage && (a = e.timeoutErrorMessage), i(l(a, e, "ECONNABORTED", m)), m = null
                }, n.isStandardBrowserEnv()) {
                var h = (e.withCredentials || p(v)) && e.xsrfCookieName ? s.read(e.xsrfCookieName) : void 0;
                h && (d[e.xsrfHeaderName] = h)
            }
            if ("setRequestHeader" in m && n.forEach(d, (function (e, a) {
                    void 0 === u && "content-type" === a.toLowerCase() ? delete d[a] : m.setRequestHeader(a, e)
                })), n.isUndefined(e.withCredentials) || (m.withCredentials = !!e.withCredentials), e.responseType) try {
                m.responseType = e.responseType
            } catch (a) {
                if ("json" !== e.responseType) throw a
            }
            "function" == typeof e.onDownloadProgress && m.addEventListener("progress", e.onDownloadProgress), "function" == typeof e.onUploadProgress && m.upload && m.upload.addEventListener("progress", e.onUploadProgress), e.cancelToken && e.cancelToken.promise.then((function (e) {
                m && (m.abort(), i(e), m = null)
            })), u || (u = null), m.send(u)
        }))
    }
}, function (e, a, i) {
    "use strict";
    var n = i(0);
    e.exports = n.isStandardBrowserEnv() ? {
        write: function (e, a, i, o, s, t) {
            var r = [];
            r.push(e + "=" + encodeURIComponent(a)), n.isNumber(i) && r.push("expires=" + new Date(i)
                .toGMTString()), n.isString(o) && r.push("path=" + o), n.isString(s) && r.push("domain=" + s), !0 === t && r.push("secure"), document.cookie = r.join("; ")
        }
        , read: function (e) {
            var a = document.cookie.match(new RegExp("(^|;\\s*)(" + e + ")=([^;]*)"));
            return a ? decodeURIComponent(a[3]) : null
        }
        , remove: function (e) {
            this.write(e, "", Date.now() - 864e5)
        }
    } : {
        write: function () {}
        , read: function () {
            return null
        }
        , remove: function () {}
    }
}, function (e, a, i) {
    "use strict";
    e.exports = function (e) {
        return /^([a-z][a-z\d\+\-\.]*:)?\/\//i.test(e)
    }
}, function (e, a, i) {
    "use strict";
    e.exports = function (e, a) {
        return a ? e.replace(/\/+$/, "") + "/" + a.replace(/^\/+/, "") : e
    }
}, function (e, a, i) {
    "use strict";
    var n = i(0)
        , o = ["age", "authorization", "content-length", "content-type", "etag", "expires", "from", "host", "if-modified-since", "if-unmodified-since", "last-modified", "location", "max-forwards", "proxy-authorization", "referer", "retry-after", "user-agent"];
    e.exports = function (e) {
        var a, i, s, t = {};
        return e ? (n.forEach(e.split("\n"), (function (e) {
            if (s = e.indexOf(":"), a = n.trim(e.substr(0, s))
                .toLowerCase(), i = n.trim(e.substr(s + 1)), a) {
                if (t[a] && o.indexOf(a) >= 0) return;
                t[a] = "set-cookie" === a ? (t[a] ? t[a] : [])
                    .concat([i]) : t[a] ? t[a] + ", " + i : i
            }
        })), t) : t
    }
}, function (e, a, i) {
    "use strict";
    var n = i(0);
    e.exports = n.isStandardBrowserEnv() ? function () {
        var e, a = /(msie|trident)/i.test(navigator.userAgent)
            , i = document.createElement("a");
        
        function o(e) {
            var n = e;
            return a && (i.setAttribute("href", n), n = i.href), i.setAttribute("href", n), {
                href: i.href
                , protocol: i.protocol ? i.protocol.replace(/:$/, "") : ""
                , host: i.host
                , search: i.search ? i.search.replace(/^\?/, "") : ""
                , hash: i.hash ? i.hash.replace(/^#/, "") : ""
                , hostname: i.hostname
                , port: i.port
                , pathname: "/" === i.pathname.charAt(0) ? i.pathname : "/" + i.pathname
            }
        }
        return e = o(window.location.href)
            , function (a) {
                var i = n.isString(a) ? o(a) : a;
                return i.protocol === e.protocol && i.host === e.host
            }
    }() : function () {
        return !0
    }
}, function (e, a, i) {
    "use strict";
    var n = i(0)
        , o = i(13)
        , s = i(15)
        , t = i(2)
        , r = i(4)
        , c = i(5)
        , p = i(16)
        .http
        , l = i(16)
        .https
        , u = i(6)
        , d = i(60)
        , m = i(61)
        , x = i(3)
        , f = i(14)
        , v = /https:?/;
    e.exports = function (e) {
        return new Promise((function (a, i) {
            var h = function (e) {
                    a(e)
                }
                , b = function (e) {
                    i(e)
                }
                , g = e.data
                , y = e.headers;
            if (y["User-Agent"] || y["user-agent"] || (y["User-Agent"] = "axios/" + m.version), g && !n.isStream(g)) {
                if (Buffer.isBuffer(g));
                else if (n.isArrayBuffer(g)) g = Buffer.from(new Uint8Array(g));
                else {
                    if (!n.isString(g)) return b(x("Data after transformation must be a string, an ArrayBuffer, a Buffer, or a Stream", e));
                    g = Buffer.from(g, "utf-8")
                }
                y["Content-Length"] = g.length
            }
            var E = void 0;
            e.auth && (E = (e.auth.username || "") + ":" + (e.auth.password || ""));
            var w = s(e.baseURL, e.url)
                , _ = u.parse(w)
                , T = _.protocol || "http:";
            if (!E && _.auth) {
                var k = _.auth.split(":");
                E = (k[0] || "") + ":" + (k[1] || "")
            }
            E && delete y.Authorization;
            var O = v.test(T)
                , R = O ? e.httpsAgent : e.httpAgent
                , N = {
                    path: t(_.path, e.params, e.paramsSerializer)
                        .replace(/^\?/, "")
                    , method: e.method.toUpperCase()
                    , headers: y
                    , agent: R
                    , agents: {
                        http: e.httpAgent
                        , https: e.httpsAgent
                    }
                    , auth: E
                };
            e.socketPath ? N.socketPath = e.socketPath : (N.hostname = _.hostname, N.port = _.port);
            var j, I = e.proxy;
            if (!I && !1 !== I) {
                var A = T.slice(0, -1) + "_proxy"
                    , S = process.env[A] || process.env[A.toUpperCase()];
                if (S) {
                    var U = u.parse(S)
                        , P = process.env.no_proxy || process.env.NO_PROXY
                        , C = !0;
                    if (P) C = !P.split(",")
                        .map((function (e) {
                            return e.trim()
                        }))
                        .some((function (e) {
                            return !!e && ("*" === e || ("." === e[0] && _.hostname.substr(_.hostname.length - e.length) === e || _.hostname === e))
                        }));
                    if (C && (I = {
                            host: U.hostname
                            , port: U.port
                            , protocol: U.protocol
                        }, U.auth)) {
                        var M = U.auth.split(":");
                        I.auth = {
                            username: M[0]
                            , password: M[1]
                        }
                    }
                }
            }
            I && (N.headers.host = _.hostname + (_.port ? ":" + _.port : ""), function e(a, i, n) {
                if (a.hostname = i.host, a.host = i.host, a.port = i.port, a.path = n, i.auth) {
                    var o = Buffer.from(i.auth.username + ":" + i.auth.password, "utf8")
                        .toString("base64");
                    a.headers["Proxy-Authorization"] = "Basic " + o
                }
                a.beforeRedirect = function (a) {
                    a.headers.host = a.host, e(a, i, a.href)
                }
            }(N, I, T + "//" + _.hostname + (_.port ? ":" + _.port : "") + N.path));
            var D = O && (!I || v.test(I.protocol));
            e.transport ? j = e.transport : 0 === e.maxRedirects ? j = D ? c : r : (e.maxRedirects && (N.maxRedirects = e.maxRedirects), j = D ? l : p), e.maxBodyLength > -1 && (N.maxBodyLength = e.maxBodyLength);
            var L = j.request(N, (function (a) {
                if (!L.aborted) {
                    var i = a
                        , s = a.req || L;
                    if (204 !== a.statusCode && "HEAD" !== s.method && !1 !== e.decompress) switch (a.headers["content-encoding"]) {
                    case "gzip":
                    case "compress":
                    case "deflate":
                        i = i.pipe(d.createUnzip()), delete a.headers["content-encoding"]
                    }
                    var t = {
                        status: a.statusCode
                        , statusText: a.statusMessage
                        , headers: a.headers
                        , config: e
                        , request: s
                    };
                    if ("stream" === e.responseType) t.data = i, o(h, b, t);
                    else {
                        var r = [];
                        i.on("data", (function (a) {
                            r.push(a), e.maxContentLength > -1 && Buffer.concat(r)
                                .length > e.maxContentLength && (i.destroy(), b(x("maxContentLength size of " + e.maxContentLength + " exceeded", e, null, s)))
                        })), i.on("error", (function (a) {
                            L.aborted || b(f(a, e, null, s))
                        })), i.on("end", (function () {
                            var a = Buffer.concat(r);
                            "arraybuffer" !== e.responseType && (a = a.toString(e.responseEncoding), e.responseEncoding && "utf8" !== e.responseEncoding || (a = n.stripBOM(a))), t.data = a, o(h, b, t)
                        }))
                    }
                }
            }));
            L.on("error", (function (a) {
                    L.aborted && "ERR_FR_TOO_MANY_REDIRECTS" !== a.code || b(f(a, e, null, L))
                })), e.timeout && L.setTimeout(e.timeout, (function () {
                    L.abort(), b(x("timeout of " + e.timeout + "ms exceeded", e, "ECONNABORTED", L))
                })), e.cancelToken && e.cancelToken.promise.then((function (e) {
                    L.aborted || (L.abort(), b(e))
                })), n.isStream(g) ? g.on("error", (function (a) {
                    b(f(a, e, null, L))
                }))
                .pipe(L) : L.end(g)
        }))
    }
}, function (e, a) {
    e.exports = require("assert")
}, function (e, a, i) {
    var n;
    try {
        n = i(54)("follow-redirects")
    } catch (e) {
        n = function () {}
    }
    e.exports = n
}, function (e, a, i) {
    "undefined" != typeof process && "renderer" === process.type ? e.exports = i(55) : e.exports = i(57)
}, function (e, a, i) {
    function n() {
        var e;
        try {
            e = a.storage.debug
        } catch (e) {}
        return !e && "undefined" != typeof process && "env" in process && (e = process.env.DEBUG), e
    }(a = e.exports = i(17))
    .log = function () {
        return "object" == typeof console && console.log && Function.prototype.apply.call(console.log, console, arguments)
    }, a.formatArgs = function (e) {
        var i = this.useColors;
        if (e[0] = (i ? "%c" : "") + this.namespace + (i ? " %c" : " ") + e[0] + (i ? "%c " : " ") + "+" + a.humanize(this.diff), !i) return;
        var n = "color: " + this.color;
        e.splice(1, 0, n, "color: inherit");
        var o = 0
            , s = 0;
        e[0].replace(/%[a-zA-Z%]/g, (function (e) {
            "%%" !== e && (o++, "%c" === e && (s = o))
        })), e.splice(s, 0, n)
    }, a.save = function (e) {
        try {
            null == e ? a.storage.removeItem("debug") : a.storage.debug = e
        } catch (e) {}
    }, a.load = n, a.useColors = function () {
        if ("undefined" != typeof window && window.process && "renderer" === window.process.type) return !0;
        return "undefined" != typeof document && document.documentElement && document.documentElement.style && document.documentElement.style.WebkitAppearance || "undefined" != typeof window && window.console && (window.console.firebug || window.console.exception && window.console.table) || "undefined" != typeof navigator && navigator.userAgent && navigator.userAgent.toLowerCase()
            .match(/firefox\/(\d+)/) && parseInt(RegExp.$1, 10) >= 31 || "undefined" != typeof navigator && navigator.userAgent && navigator.userAgent.toLowerCase()
            .match(/applewebkit\/(\d+)/)
    }, a.storage = "undefined" != typeof chrome && void 0 !== chrome.storage ? chrome.storage.local : function () {
        try {
            return window.localStorage
        } catch (e) {}
    }(), a.colors = ["lightseagreen", "forestgreen", "goldenrod", "dodgerblue", "darkorchid", "crimson"], a.formatters.j = function (e) {
        try {
            return JSON.stringify(e)
        } catch (e) {
            return "[UnexpectedJSONParseError]: " + e.message
        }
    }, a.enable(n())
}, function (e, a) {
    var i = 1e3
        , n = 6e4
        , o = 60 * n
        , s = 24 * o;
    
    function t(e, a, i) {
        if (!(e < a)) return e < 1.5 * a ? Math.floor(e / a) + " " + i : Math.ceil(e / a) + " " + i + "s"
    }
    e.exports = function (e, a) {
        a = a || {};
        var r, c = typeof e;
        if ("string" === c && e.length > 0) return function (e) {
            if ((e = String(e))
                .length > 100) return;
            var a = /^((?:\d+)?\.?\d+) *(milliseconds?|msecs?|ms|seconds?|secs?|s|minutes?|mins?|m|hours?|hrs?|h|days?|d|years?|yrs?|y)?$/i.exec(e);
            if (!a) return;
            var t = parseFloat(a[1]);
            switch ((a[2] || "ms")
                .toLowerCase()) {
            case "years":
            case "year":
            case "yrs":
            case "yr":
            case "y":
                return 315576e5 * t;
            case "days":
            case "day":
            case "d":
                return t * s;
            case "hours":
            case "hour":
            case "hrs":
            case "hr":
            case "h":
                return t * o;
            case "minutes":
            case "minute":
            case "mins":
            case "min":
            case "m":
                return t * n;
            case "seconds":
            case "second":
            case "secs":
            case "sec":
            case "s":
                return t * i;
            case "milliseconds":
            case "millisecond":
            case "msecs":
            case "msec":
            case "ms":
                return t;
            default:
                return
            }
        }(e);
        if ("number" === c && !1 === isNaN(e)) return a.long ? t(r = e, s, "day") || t(r, o, "hour") || t(r, n, "minute") || t(r, i, "second") || r + " ms" : function (e) {
            if (e >= s) return Math.round(e / s) + "d";
            if (e >= o) return Math.round(e / o) + "h";
            if (e >= n) return Math.round(e / n) + "m";
            if (e >= i) return Math.round(e / i) + "s";
            return e + "ms"
        }(e);
        throw new Error("val is not a non-empty string or a valid number. val=" + JSON.stringify(e))
    }
}, function (e, a, i) {
    var n = i(58)
        , o = i(1);
    (a = e.exports = i(17))
    .init = function (e) {
            e.inspectOpts = {};
            for (var i = Object.keys(a.inspectOpts), n = 0; n < i.length; n++) e.inspectOpts[i[n]] = a.inspectOpts[i[n]]
        }, a.log = function () {
            return t.write(o.format.apply(o, arguments) + "\n")
        }, a.formatArgs = function (e) {
            var i = this.namespace;
            if (this.useColors) {
                var n = this.color
                    , o = "  [3" + n + ";1m" + i + " [0m";
                e[0] = o + e[0].split("\n")
                    .join("\n" + o), e.push("[3" + n + "m+" + a.humanize(this.diff) + "[0m")
            } else e[0] = (new Date)
                .toUTCString() + " " + i + " " + e[0]
        }, a.save = function (e) {
            null == e ? delete process.env.DEBUG : process.env.DEBUG = e
        }, a.load = r, a.useColors = function () {
            return "colors" in a.inspectOpts ? Boolean(a.inspectOpts.colors) : n.isatty(s)
        }, a.colors = [6, 2, 3, 4, 5, 1], a.inspectOpts = Object.keys(process.env)
        .filter((function (e) {
            return /^debug_/i.test(e)
        }))
        .reduce((function (e, a) {
            var i = a.substring(6)
                .toLowerCase()
                .replace(/_([a-z])/g, (function (e, a) {
                    return a.toUpperCase()
                }))
                , n = process.env[a];
            return n = !!/^(yes|on|true|enabled)$/i.test(n) || !/^(no|off|false|disabled)$/i.test(n) && ("null" === n ? null : Number(n)), e[i] = n, e
        }), {});
    var s = parseInt(process.env.DEBUG_FD, 10) || 2;
    1 !== s && 2 !== s && o.deprecate((function () {}), "except for stderr(2) and stdout(1), any other usage of DEBUG_FD is deprecated. Override debug.log if you want to use a different log function (https://git.io/debug_fd)")();
    var t = 1 === s ? process.stdout : 2 === s ? process.stderr : function (e) {
        var a;
        switch (process.binding("tty_wrap")
            .guessHandleType(e)) {
        case "TTY":
            (a = new n.WriteStream(e))
            ._type = "tty", a._handle && a._handle.unref && a._handle.unref();
            break;
        case "FILE":
            var o = i(18);
            (a = new o.SyncWriteStream(e, {
                autoClose: !1
            }))
            ._type = "fs";
            break;
        case "PIPE":
        case "TCP":
            var s = i(59);
            (a = new s.Socket({
                fd: e
                , readable: !1
                , writable: !0
            }))
            .readable = !1, a.read = null, a._type = "pipe", a._handle && a._handle.unref && a._handle.unref();
            break;
        default:
            throw new Error("Implement me. Unknown stream file type!")
        }
        return a.fd = e, a._isStdio = !0, a
    }(s);
    
    function r() {
        return process.env.DEBUG
    }
    a.formatters.o = function (e) {
        return this.inspectOpts.colors = this.useColors, o.inspect(e, this.inspectOpts)
            .split("\n")
            .map((function (e) {
                return e.trim()
            }))
            .join(" ")
    }, a.formatters.O = function (e) {
        return this.inspectOpts.colors = this.useColors, o.inspect(e, this.inspectOpts)
    }, a.enable(r())
}, function (e, a) {
    e.exports = require("tty")
}, function (e, a) {
    e.exports = require("net")
}, function (e, a) {
    e.exports = require("zlib")
}, function (e) {
    e.exports = JSON.parse('{"name":"axios","version":"0.21.1","description":"Promise based HTTP client for the browser and node.js","main":"index.js","scripts":{"test":"grunt test && bundlesize","start":"node ./sandbox/server.js","build":"NODE_ENV=production grunt build","preversion":"npm test","version":"npm run build && grunt version && git add -A dist && git add CHANGELOG.md bower.json package.json","postversion":"git push && git push --tags","examples":"node ./examples/server.js","coveralls":"cat coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js","fix":"eslint --fix lib/**/*.js"},"repository":{"type":"git","url":"https://github.com/axios/axios.git"},"keywords":["xhr","http","ajax","promise","node"],"author":"Matt Zabriskie","license":"MIT","bugs":{"url":"https://github.com/axios/axios/issues"},"homepage":"https://github.com/axios/axios","devDependencies":{"bundlesize":"^0.17.0","coveralls":"^3.0.0","es6-promise":"^4.2.4","grunt":"^1.0.2","grunt-banner":"^0.6.0","grunt-cli":"^1.2.0","grunt-contrib-clean":"^1.1.0","grunt-contrib-watch":"^1.0.0","grunt-eslint":"^20.1.0","grunt-karma":"^2.0.0","grunt-mocha-test":"^0.13.3","grunt-ts":"^6.0.0-beta.19","grunt-webpack":"^1.0.18","istanbul-instrumenter-loader":"^1.0.0","jasmine-core":"^2.4.1","karma":"^1.3.0","karma-chrome-launcher":"^2.2.0","karma-coverage":"^1.1.1","karma-firefox-launcher":"^1.1.0","karma-jasmine":"^1.1.1","karma-jasmine-ajax":"^0.1.13","karma-opera-launcher":"^1.0.0","karma-safari-launcher":"^1.0.0","karma-sauce-launcher":"^1.2.0","karma-sinon":"^1.0.5","karma-sourcemap-loader":"^0.3.7","karma-webpack":"^1.7.0","load-grunt-tasks":"^3.5.2","minimist":"^1.2.0","mocha":"^5.2.0","sinon":"^4.5.0","typescript":"^2.8.1","url-search-params":"^0.10.0","webpack":"^1.13.1","webpack-dev-server":"^1.14.1"},"browser":{"./lib/adapters/http.js":"./lib/adapters/xhr.js"},"jsdelivr":"dist/axios.min.js","unpkg":"dist/axios.min.js","typings":"./index.d.ts","dependencies":{"follow-redirects":"^1.10.0"},"bundlesize":[{"path":"./dist/axios.min.js","threshold":"5kB"}]}')
}, function (e, a, i) {
    "use strict";
    var n = i(20);
    
    function o(e) {
        if ("function" != typeof e) throw new TypeError("executor must be a function.");
        var a;
        this.promise = new Promise((function (e) {
            a = e
        }));
        var i = this;
        e((function (e) {
            i.reason || (i.reason = new n(e), a(i.reason))
        }))
    }
    o.prototype.throwIfRequested = function () {
        if (this.reason) throw this.reason
    }, o.source = function () {
        var e;
        return {
            token: new o((function (a) {
                e = a
            }))
            , cancel: e
        }
    }, e.exports = o
}, function (e, a, i) {
    "use strict";
    e.exports = function (e) {
        return function (a) {
            return e.apply(null, a)
        }
    }
}, function (e, a, i) {
    "use strict";
    e.exports = function (e) {
        return "object" == typeof e && !0 === e.isAxiosError
    }
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    a.default = class {
        constructor(e) {
            this.retryAfter = parseInt(e["retry-after"], 10) || 0, this.limit = parseInt(e["x-ratelimit-limit"], 10) || 0, this.remaining = parseInt(e["x-ratelimit-limit"], 10) || 0, this.reset = e["x-ratelimit-reset"] ? new Date(1e3 * parseInt(e["x-ratelimit-reset"], 10)) : new Date, this.resetAfter = parseInt(e["x-ratelimit-reset-after"], 10) || 0
        }
    }
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    a.default = class {
        constructor() {
            this._deferrals = []
        }
        wait() {
            var e, a;
            let i;
            const n = new Promise(e => i = e);
            return this._deferrals.push({
                resolve: i
                , promise: n
            }), null !== (a = null === (e = this._deferrals[this._deferrals.length - 2]) || void 0 === e ? void 0 : e.promise) && void 0 !== a ? a : Promise.resolve()
        }
        shift() {
            var e;
            const a = null === (e = this._deferrals.shift()) || void 0 === e ? void 0 : e.resolve;
            a && a()
        }
    }
}, function (e, a, i) {
    var n = i(68)
        , o = i(1)
        , s = i(23)
        , t = i(4)
        , r = i(5)
        , c = i(6)
        .parse
        , p = i(18)
        , l = i(70)
        , u = i(73)
        , d = i(77);
    
    function m(e) {
        if (!(this instanceof m)) return new m(e);
        for (var a in this._overheadLength = 0, this._valueLength = 0, this._valuesToMeasure = [], n.call(this), e = e || {}) this[a] = e[a]
    }
    e.exports = m, o.inherits(m, n), m.LINE_BREAK = "\r\n", m.DEFAULT_CONTENT_TYPE = "application/octet-stream", m.prototype.append = function (e, a, i) {
        "string" == typeof (i = i || {}) && (i = {
            filename: i
        });
        var s = n.prototype.append.bind(this);
        if ("number" == typeof a && (a = "" + a), o.isArray(a)) this._error(new Error("Arrays are not supported."));
        else {
            var t = this._multiPartHeader(e, a, i)
                , r = this._multiPartFooter();
            s(t), s(a), s(r), this._trackLength(t, a, i)
        }
    }, m.prototype._trackLength = function (e, a, i) {
        var n = 0;
        null != i.knownLength ? n += +i.knownLength : Buffer.isBuffer(a) ? n = a.length : "string" == typeof a && (n = Buffer.byteLength(a)), this._valueLength += n, this._overheadLength += Buffer.byteLength(e) + m.LINE_BREAK.length, a && (a.path || a.readable && a.hasOwnProperty("httpVersion")) && (i.knownLength || this._valuesToMeasure.push(a))
    }, m.prototype._lengthRetriever = function (e, a) {
        e.hasOwnProperty("fd") ? null != e.end && e.end != 1 / 0 && null != e.start ? a(null, e.end + 1 - (e.start ? e.start : 0)) : p.stat(e.path, (function (i, n) {
            var o;
            i ? a(i) : (o = n.size - (e.start ? e.start : 0), a(null, o))
        })) : e.hasOwnProperty("httpVersion") ? a(null, +e.headers["content-length"]) : e.hasOwnProperty("httpModule") ? (e.on("response", (function (i) {
            e.pause(), a(null, +i.headers["content-length"])
        })), e.resume()) : a("Unknown stream")
    }, m.prototype._multiPartHeader = function (e, a, i) {
        if ("string" == typeof i.header) return i.header;
        var n, o = this._getContentDisposition(a, i)
            , s = this._getContentType(a, i)
            , t = ""
            , r = {
                "Content-Disposition": ["form-data", 'name="' + e + '"'].concat(o || [])
                , "Content-Type": [].concat(s || [])
            };
        for (var c in "object" == typeof i.header && d(r, i.header), r) r.hasOwnProperty(c) && null != (n = r[c]) && (Array.isArray(n) || (n = [n]), n.length && (t += c + ": " + n.join("; ") + m.LINE_BREAK));
        return "--" + this.getBoundary() + m.LINE_BREAK + t + m.LINE_BREAK
    }, m.prototype._getContentDisposition = function (e, a) {
        var i, n;
        return "string" == typeof a.filepath ? i = s.normalize(a.filepath)
            .replace(/\\/g, "/") : a.filename || e.name || e.path ? i = s.basename(a.filename || e.name || e.path) : e.readable && e.hasOwnProperty("httpVersion") && (i = s.basename(e.client._httpMessage.path || "")), i && (n = 'filename="' + i + '"'), n
    }, m.prototype._getContentType = function (e, a) {
        var i = a.contentType;
        return !i && e.name && (i = l.lookup(e.name)), !i && e.path && (i = l.lookup(e.path)), !i && e.readable && e.hasOwnProperty("httpVersion") && (i = e.headers["content-type"]), i || !a.filepath && !a.filename || (i = l.lookup(a.filepath || a.filename)), i || "object" != typeof e || (i = m.DEFAULT_CONTENT_TYPE), i
    }, m.prototype._multiPartFooter = function () {
        return function (e) {
            var a = m.LINE_BREAK;
            0 === this._streams.length && (a += this._lastBoundary()), e(a)
        }.bind(this)
    }, m.prototype._lastBoundary = function () {
        return "--" + this.getBoundary() + "--" + m.LINE_BREAK
    }, m.prototype.getHeaders = function (e) {
        var a, i = {
            "content-type": "multipart/form-data; boundary=" + this.getBoundary()
        };
        for (a in e) e.hasOwnProperty(a) && (i[a.toLowerCase()] = e[a]);
        return i
    }, m.prototype.getBoundary = function () {
        return this._boundary || this._generateBoundary(), this._boundary
    }, m.prototype.getBuffer = function () {
        for (var e = new Buffer.alloc(0), a = this.getBoundary(), i = 0, n = this._streams.length; i < n; i++) "function" != typeof this._streams[i] && (e = Buffer.isBuffer(this._streams[i]) ? Buffer.concat([e, this._streams[i]]) : Buffer.concat([e, Buffer.from(this._streams[i])]), "string" == typeof this._streams[i] && this._streams[i].substring(2, a.length + 2) === a || (e = Buffer.concat([e, Buffer.from(m.LINE_BREAK)])));
        return Buffer.concat([e, Buffer.from(this._lastBoundary())])
    }, m.prototype._generateBoundary = function () {
        for (var e = "--------------------------", a = 0; a < 24; a++) e += Math.floor(10 * Math.random())
            .toString(16);
        this._boundary = e
    }, m.prototype.getLengthSync = function () {
        var e = this._overheadLength + this._valueLength;
        return this._streams.length && (e += this._lastBoundary()
            .length), this.hasKnownLength() || this._error(new Error("Cannot calculate proper length in synchronous way.")), e
    }, m.prototype.hasKnownLength = function () {
        var e = !0;
        return this._valuesToMeasure.length && (e = !1), e
    }, m.prototype.getLength = function (e) {
        var a = this._overheadLength + this._valueLength;
        this._streams.length && (a += this._lastBoundary()
            .length), this._valuesToMeasure.length ? u.parallel(this._valuesToMeasure, this._lengthRetriever, (function (i, n) {
            i ? e(i) : (n.forEach((function (e) {
                a += e
            })), e(null, a))
        })) : process.nextTick(e.bind(this, null, a))
    }, m.prototype.submit = function (e, a) {
        var i, n, o = {
            method: "post"
        };
        return "string" == typeof e ? (e = c(e), n = d({
                port: e.port
                , path: e.pathname
                , host: e.hostname
                , protocol: e.protocol
            }, o)) : (n = d(e, o))
            .port || (n.port = "https:" == n.protocol ? 443 : 80), n.headers = this.getHeaders(e.headers), i = "https:" == n.protocol ? r.request(n) : t.request(n), this.getLength(function (e, n) {
                if (e) this._error(e);
                else if (i.setHeader("Content-Length", n), this.pipe(i), a) {
                    var o, s = function (e, n) {
                        return i.removeListener("error", s), i.removeListener("response", o), a.call(this, e, n)
                    };
                    o = s.bind(this, null), i.on("error", s), i.on("response", o)
                }
            }.bind(this)), i
    }, m.prototype._error = function (e) {
        this.error || (this.error = e, this.pause(), this.emit("error", e))
    }, m.prototype.toString = function () {
        return "[object FormData]"
    }
}, function (e, a, i) {
    var n = i(1)
        , o = i(7)
        .Stream
        , s = i(69);
    
    function t() {
        this.writable = !1, this.readable = !0, this.dataSize = 0, this.maxDataSize = 2097152, this.pauseStreams = !0, this._released = !1, this._streams = [], this._currentStream = null, this._insideLoop = !1, this._pendingNext = !1
    }
    e.exports = t, n.inherits(t, o), t.create = function (e) {
        var a = new this;
        for (var i in e = e || {}) a[i] = e[i];
        return a
    }, t.isStreamLike = function (e) {
        return "function" != typeof e && "string" != typeof e && "boolean" != typeof e && "number" != typeof e && !Buffer.isBuffer(e)
    }, t.prototype.append = function (e) {
        if (t.isStreamLike(e)) {
            if (!(e instanceof s)) {
                var a = s.create(e, {
                    maxDataSize: 1 / 0
                    , pauseStream: this.pauseStreams
                });
                e.on("data", this._checkDataSize.bind(this)), e = a
            }
            this._handleErrors(e), this.pauseStreams && e.pause()
        }
        return this._streams.push(e), this
    }, t.prototype.pipe = function (e, a) {
        return o.prototype.pipe.call(this, e, a), this.resume(), e
    }, t.prototype._getNext = function () {
        if (this._currentStream = null, this._insideLoop) this._pendingNext = !0;
        else {
            this._insideLoop = !0;
            try {
                do {
                    this._pendingNext = !1, this._realGetNext()
                } while (this._pendingNext)
            } finally {
                this._insideLoop = !1
            }
        }
    }, t.prototype._realGetNext = function () {
        var e = this._streams.shift();
        void 0 !== e ? "function" == typeof e ? e(function (e) {
            t.isStreamLike(e) && (e.on("data", this._checkDataSize.bind(this)), this._handleErrors(e)), this._pipeNext(e)
        }.bind(this)) : this._pipeNext(e) : this.end()
    }, t.prototype._pipeNext = function (e) {
        if (this._currentStream = e, t.isStreamLike(e)) return e.on("end", this._getNext.bind(this)), void e.pipe(this, {
            end: !1
        });
        var a = e;
        this.write(a), this._getNext()
    }, t.prototype._handleErrors = function (e) {
        var a = this;
        e.on("error", (function (e) {
            a._emitError(e)
        }))
    }, t.prototype.write = function (e) {
        this.emit("data", e)
    }, t.prototype.pause = function () {
        this.pauseStreams && (this.pauseStreams && this._currentStream && "function" == typeof this._currentStream.pause && this._currentStream.pause(), this.emit("pause"))
    }, t.prototype.resume = function () {
        this._released || (this._released = !0, this.writable = !0, this._getNext()), this.pauseStreams && this._currentStream && "function" == typeof this._currentStream.resume && this._currentStream.resume(), this.emit("resume")
    }, t.prototype.end = function () {
        this._reset(), this.emit("end")
    }, t.prototype.destroy = function () {
        this._reset(), this.emit("close")
    }, t.prototype._reset = function () {
        this.writable = !1, this._streams = [], this._currentStream = null
    }, t.prototype._checkDataSize = function () {
        if (this._updateDataSize(), !(this.dataSize <= this.maxDataSize)) {
            var e = "DelayedStream#maxDataSize of " + this.maxDataSize + " bytes exceeded.";
            this._emitError(new Error(e))
        }
    }, t.prototype._updateDataSize = function () {
        this.dataSize = 0;
        var e = this;
        this._streams.forEach((function (a) {
            a.dataSize && (e.dataSize += a.dataSize)
        })), this._currentStream && this._currentStream.dataSize && (this.dataSize += this._currentStream.dataSize)
    }, t.prototype._emitError = function (e) {
        this._reset(), this.emit("error", e)
    }
}, function (e, a, i) {
    var n = i(7)
        .Stream
        , o = i(1);
    
    function s() {
        this.source = null, this.dataSize = 0, this.maxDataSize = 1048576, this.pauseStream = !0, this._maxDataSizeExceeded = !1, this._released = !1, this._bufferedEvents = []
    }
    e.exports = s, o.inherits(s, n), s.create = function (e, a) {
        var i = new this;
        for (var n in a = a || {}) i[n] = a[n];
        i.source = e;
        var o = e.emit;
        return e.emit = function () {
            return i._handleEmit(arguments), o.apply(e, arguments)
        }, e.on("error", (function () {})), i.pauseStream && e.pause(), i
    }, Object.defineProperty(s.prototype, "readable", {
        configurable: !0
        , enumerable: !0
        , get: function () {
            return this.source.readable
        }
    }), s.prototype.setEncoding = function () {
        return this.source.setEncoding.apply(this.source, arguments)
    }, s.prototype.resume = function () {
        this._released || this.release(), this.source.resume()
    }, s.prototype.pause = function () {
        this.source.pause()
    }, s.prototype.release = function () {
        this._released = !0, this._bufferedEvents.forEach(function (e) {
            this.emit.apply(this, e)
        }.bind(this)), this._bufferedEvents = []
    }, s.prototype.pipe = function () {
        var e = n.prototype.pipe.apply(this, arguments);
        return this.resume(), e
    }, s.prototype._handleEmit = function (e) {
        this._released ? this.emit.apply(this, e) : ("data" === e[0] && (this.dataSize += e[1].length, this._checkIfMaxDataSizeExceeded()), this._bufferedEvents.push(e))
    }, s.prototype._checkIfMaxDataSizeExceeded = function () {
        if (!(this._maxDataSizeExceeded || this.dataSize <= this.maxDataSize)) {
            this._maxDataSizeExceeded = !0;
            var e = "DelayedStream#maxDataSize of " + this.maxDataSize + " bytes exceeded.";
            this.emit("error", new Error(e))
        }
    }
}, function (e, a, i) {
    "use strict";
    /*!
     * mime-types
     * Copyright(c) 2014 Jonathan Ong
     * Copyright(c) 2015 Douglas Christopher Wilson
     * MIT Licensed
     */
    var n, o, s, t = i(71)
        , r = i(23)
        .extname
        , c = /^\s*([^;\s]*)(?:;|\s|$)/
        , p = /^text\//i;
    
    function l(e) {
        if (!e || "string" != typeof e) return !1;
        var a = c.exec(e)
            , i = a && t[a[1].toLowerCase()];
        return i && i.charset ? i.charset : !(!a || !p.test(a[1])) && "UTF-8"
    }
    a.charset = l, a.charsets = {
            lookup: l
        }, a.contentType = function (e) {
            if (!e || "string" != typeof e) return !1;
            var i = -1 === e.indexOf("/") ? a.lookup(e) : e;
            if (!i) return !1;
            if (-1 === i.indexOf("charset")) {
                var n = a.charset(i);
                n && (i += "; charset=" + n.toLowerCase())
            }
            return i
        }, a.extension = function (e) {
            if (!e || "string" != typeof e) return !1;
            var i = c.exec(e)
                , n = i && a.extensions[i[1].toLowerCase()];
            if (!n || !n.length) return !1;
            return n[0]
        }, a.extensions = Object.create(null), a.lookup = function (e) {
            if (!e || "string" != typeof e) return !1;
            var i = r("x." + e)
                .toLowerCase()
                .substr(1);
            if (!i) return !1;
            return a.types[i] || !1
        }, a.types = Object.create(null), n = a.extensions, o = a.types, s = ["nginx", "apache", void 0, "iana"], Object.keys(t)
        .forEach((function (e) {
            var a = t[e]
                , i = a.extensions;
            if (i && i.length) {
                n[e] = i;
                for (var r = 0; r < i.length; r++) {
                    var c = i[r];
                    if (o[c]) {
                        var p = s.indexOf(t[o[c]].source)
                            , l = s.indexOf(a.source);
                        if ("application/octet-stream" !== o[c] && (p > l || p === l && "application/" === o[c].substr(0, 12))) continue
                    }
                    o[c] = e
                }
            }
        }))
}, function (e, a, i) {
    /*!
     * mime-db
     * Copyright(c) 2014 Jonathan Ong
     * MIT Licensed
     */
    e.exports = i(72)
}, function (e) {
    e.exports = JSON.parse('{"application/1d-interleaved-parityfec":{"source":"iana"},"application/3gpdash-qoe-report+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/3gpp-ims+xml":{"source":"iana","compressible":true},"application/a2l":{"source":"iana"},"application/activemessage":{"source":"iana"},"application/activity+json":{"source":"iana","compressible":true},"application/alto-costmap+json":{"source":"iana","compressible":true},"application/alto-costmapfilter+json":{"source":"iana","compressible":true},"application/alto-directory+json":{"source":"iana","compressible":true},"application/alto-endpointcost+json":{"source":"iana","compressible":true},"application/alto-endpointcostparams+json":{"source":"iana","compressible":true},"application/alto-endpointprop+json":{"source":"iana","compressible":true},"application/alto-endpointpropparams+json":{"source":"iana","compressible":true},"application/alto-error+json":{"source":"iana","compressible":true},"application/alto-networkmap+json":{"source":"iana","compressible":true},"application/alto-networkmapfilter+json":{"source":"iana","compressible":true},"application/alto-updatestreamcontrol+json":{"source":"iana","compressible":true},"application/alto-updatestreamparams+json":{"source":"iana","compressible":true},"application/aml":{"source":"iana"},"application/andrew-inset":{"source":"iana","extensions":["ez"]},"application/applefile":{"source":"iana"},"application/applixware":{"source":"apache","extensions":["aw"]},"application/atf":{"source":"iana"},"application/atfx":{"source":"iana"},"application/atom+xml":{"source":"iana","compressible":true,"extensions":["atom"]},"application/atomcat+xml":{"source":"iana","compressible":true,"extensions":["atomcat"]},"application/atomdeleted+xml":{"source":"iana","compressible":true,"extensions":["atomdeleted"]},"application/atomicmail":{"source":"iana"},"application/atomsvc+xml":{"source":"iana","compressible":true,"extensions":["atomsvc"]},"application/atsc-dwd+xml":{"source":"iana","compressible":true,"extensions":["dwd"]},"application/atsc-dynamic-event-message":{"source":"iana"},"application/atsc-held+xml":{"source":"iana","compressible":true,"extensions":["held"]},"application/atsc-rdt+json":{"source":"iana","compressible":true},"application/atsc-rsat+xml":{"source":"iana","compressible":true,"extensions":["rsat"]},"application/atxml":{"source":"iana"},"application/auth-policy+xml":{"source":"iana","compressible":true},"application/bacnet-xdd+zip":{"source":"iana","compressible":false},"application/batch-smtp":{"source":"iana"},"application/bdoc":{"compressible":false,"extensions":["bdoc"]},"application/beep+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/calendar+json":{"source":"iana","compressible":true},"application/calendar+xml":{"source":"iana","compressible":true,"extensions":["xcs"]},"application/call-completion":{"source":"iana"},"application/cals-1840":{"source":"iana"},"application/cap+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/cbor":{"source":"iana"},"application/cbor-seq":{"source":"iana"},"application/cccex":{"source":"iana"},"application/ccmp+xml":{"source":"iana","compressible":true},"application/ccxml+xml":{"source":"iana","compressible":true,"extensions":["ccxml"]},"application/cdfx+xml":{"source":"iana","compressible":true,"extensions":["cdfx"]},"application/cdmi-capability":{"source":"iana","extensions":["cdmia"]},"application/cdmi-container":{"source":"iana","extensions":["cdmic"]},"application/cdmi-domain":{"source":"iana","extensions":["cdmid"]},"application/cdmi-object":{"source":"iana","extensions":["cdmio"]},"application/cdmi-queue":{"source":"iana","extensions":["cdmiq"]},"application/cdni":{"source":"iana"},"application/cea":{"source":"iana"},"application/cea-2018+xml":{"source":"iana","compressible":true},"application/cellml+xml":{"source":"iana","compressible":true},"application/cfw":{"source":"iana"},"application/clue+xml":{"source":"iana","compressible":true},"application/clue_info+xml":{"source":"iana","compressible":true},"application/cms":{"source":"iana"},"application/cnrp+xml":{"source":"iana","compressible":true},"application/coap-group+json":{"source":"iana","compressible":true},"application/coap-payload":{"source":"iana"},"application/commonground":{"source":"iana"},"application/conference-info+xml":{"source":"iana","compressible":true},"application/cose":{"source":"iana"},"application/cose-key":{"source":"iana"},"application/cose-key-set":{"source":"iana"},"application/cpl+xml":{"source":"iana","compressible":true},"application/csrattrs":{"source":"iana"},"application/csta+xml":{"source":"iana","compressible":true},"application/cstadata+xml":{"source":"iana","compressible":true},"application/csvm+json":{"source":"iana","compressible":true},"application/cu-seeme":{"source":"apache","extensions":["cu"]},"application/cwt":{"source":"iana"},"application/cybercash":{"source":"iana"},"application/dart":{"compressible":true},"application/dash+xml":{"source":"iana","compressible":true,"extensions":["mpd"]},"application/dashdelta":{"source":"iana"},"application/davmount+xml":{"source":"iana","compressible":true,"extensions":["davmount"]},"application/dca-rft":{"source":"iana"},"application/dcd":{"source":"iana"},"application/dec-dx":{"source":"iana"},"application/dialog-info+xml":{"source":"iana","compressible":true},"application/dicom":{"source":"iana"},"application/dicom+json":{"source":"iana","compressible":true},"application/dicom+xml":{"source":"iana","compressible":true},"application/dii":{"source":"iana"},"application/dit":{"source":"iana"},"application/dns":{"source":"iana"},"application/dns+json":{"source":"iana","compressible":true},"application/dns-message":{"source":"iana"},"application/docbook+xml":{"source":"apache","compressible":true,"extensions":["dbk"]},"application/dots+cbor":{"source":"iana"},"application/dskpp+xml":{"source":"iana","compressible":true},"application/dssc+der":{"source":"iana","extensions":["dssc"]},"application/dssc+xml":{"source":"iana","compressible":true,"extensions":["xdssc"]},"application/dvcs":{"source":"iana"},"application/ecmascript":{"source":"iana","compressible":true,"extensions":["ecma","es"]},"application/edi-consent":{"source":"iana"},"application/edi-x12":{"source":"iana","compressible":false},"application/edifact":{"source":"iana","compressible":false},"application/efi":{"source":"iana"},"application/emergencycalldata.comment+xml":{"source":"iana","compressible":true},"application/emergencycalldata.control+xml":{"source":"iana","compressible":true},"application/emergencycalldata.deviceinfo+xml":{"source":"iana","compressible":true},"application/emergencycalldata.ecall.msd":{"source":"iana"},"application/emergencycalldata.providerinfo+xml":{"source":"iana","compressible":true},"application/emergencycalldata.serviceinfo+xml":{"source":"iana","compressible":true},"application/emergencycalldata.subscriberinfo+xml":{"source":"iana","compressible":true},"application/emergencycalldata.veds+xml":{"source":"iana","compressible":true},"application/emma+xml":{"source":"iana","compressible":true,"extensions":["emma"]},"application/emotionml+xml":{"source":"iana","compressible":true,"extensions":["emotionml"]},"application/encaprtp":{"source":"iana"},"application/epp+xml":{"source":"iana","compressible":true},"application/epub+zip":{"source":"iana","compressible":false,"extensions":["epub"]},"application/eshop":{"source":"iana"},"application/exi":{"source":"iana","extensions":["exi"]},"application/expect-ct-report+json":{"source":"iana","compressible":true},"application/fastinfoset":{"source":"iana"},"application/fastsoap":{"source":"iana"},"application/fdt+xml":{"source":"iana","compressible":true,"extensions":["fdt"]},"application/fhir+json":{"source":"iana","charset":"UTF-8","compressible":true},"application/fhir+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/fido.trusted-apps+json":{"compressible":true},"application/fits":{"source":"iana"},"application/flexfec":{"source":"iana"},"application/font-sfnt":{"source":"iana"},"application/font-tdpfr":{"source":"iana","extensions":["pfr"]},"application/font-woff":{"source":"iana","compressible":false},"application/framework-attributes+xml":{"source":"iana","compressible":true},"application/geo+json":{"source":"iana","compressible":true,"extensions":["geojson"]},"application/geo+json-seq":{"source":"iana"},"application/geopackage+sqlite3":{"source":"iana"},"application/geoxacml+xml":{"source":"iana","compressible":true},"application/gltf-buffer":{"source":"iana"},"application/gml+xml":{"source":"iana","compressible":true,"extensions":["gml"]},"application/gpx+xml":{"source":"apache","compressible":true,"extensions":["gpx"]},"application/gxf":{"source":"apache","extensions":["gxf"]},"application/gzip":{"source":"iana","compressible":false,"extensions":["gz"]},"application/h224":{"source":"iana"},"application/held+xml":{"source":"iana","compressible":true},"application/hjson":{"extensions":["hjson"]},"application/http":{"source":"iana"},"application/hyperstudio":{"source":"iana","extensions":["stk"]},"application/ibe-key-request+xml":{"source":"iana","compressible":true},"application/ibe-pkg-reply+xml":{"source":"iana","compressible":true},"application/ibe-pp-data":{"source":"iana"},"application/iges":{"source":"iana"},"application/im-iscomposing+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/index":{"source":"iana"},"application/index.cmd":{"source":"iana"},"application/index.obj":{"source":"iana"},"application/index.response":{"source":"iana"},"application/index.vnd":{"source":"iana"},"application/inkml+xml":{"source":"iana","compressible":true,"extensions":["ink","inkml"]},"application/iotp":{"source":"iana"},"application/ipfix":{"source":"iana","extensions":["ipfix"]},"application/ipp":{"source":"iana"},"application/isup":{"source":"iana"},"application/its+xml":{"source":"iana","compressible":true,"extensions":["its"]},"application/java-archive":{"source":"apache","compressible":false,"extensions":["jar","war","ear"]},"application/java-serialized-object":{"source":"apache","compressible":false,"extensions":["ser"]},"application/java-vm":{"source":"apache","compressible":false,"extensions":["class"]},"application/javascript":{"source":"iana","charset":"UTF-8","compressible":true,"extensions":["js","mjs"]},"application/jf2feed+json":{"source":"iana","compressible":true},"application/jose":{"source":"iana"},"application/jose+json":{"source":"iana","compressible":true},"application/jrd+json":{"source":"iana","compressible":true},"application/json":{"source":"iana","charset":"UTF-8","compressible":true,"extensions":["json","map"]},"application/json-patch+json":{"source":"iana","compressible":true},"application/json-seq":{"source":"iana"},"application/json5":{"extensions":["json5"]},"application/jsonml+json":{"source":"apache","compressible":true,"extensions":["jsonml"]},"application/jwk+json":{"source":"iana","compressible":true},"application/jwk-set+json":{"source":"iana","compressible":true},"application/jwt":{"source":"iana"},"application/kpml-request+xml":{"source":"iana","compressible":true},"application/kpml-response+xml":{"source":"iana","compressible":true},"application/ld+json":{"source":"iana","compressible":true,"extensions":["jsonld"]},"application/lgr+xml":{"source":"iana","compressible":true,"extensions":["lgr"]},"application/link-format":{"source":"iana"},"application/load-control+xml":{"source":"iana","compressible":true},"application/lost+xml":{"source":"iana","compressible":true,"extensions":["lostxml"]},"application/lostsync+xml":{"source":"iana","compressible":true},"application/lpf+zip":{"source":"iana","compressible":false},"application/lxf":{"source":"iana"},"application/mac-binhex40":{"source":"iana","extensions":["hqx"]},"application/mac-compactpro":{"source":"apache","extensions":["cpt"]},"application/macwriteii":{"source":"iana"},"application/mads+xml":{"source":"iana","compressible":true,"extensions":["mads"]},"application/manifest+json":{"charset":"UTF-8","compressible":true,"extensions":["webmanifest"]},"application/marc":{"source":"iana","extensions":["mrc"]},"application/marcxml+xml":{"source":"iana","compressible":true,"extensions":["mrcx"]},"application/mathematica":{"source":"iana","extensions":["ma","nb","mb"]},"application/mathml+xml":{"source":"iana","compressible":true,"extensions":["mathml"]},"application/mathml-content+xml":{"source":"iana","compressible":true},"application/mathml-presentation+xml":{"source":"iana","compressible":true},"application/mbms-associated-procedure-description+xml":{"source":"iana","compressible":true},"application/mbms-deregister+xml":{"source":"iana","compressible":true},"application/mbms-envelope+xml":{"source":"iana","compressible":true},"application/mbms-msk+xml":{"source":"iana","compressible":true},"application/mbms-msk-response+xml":{"source":"iana","compressible":true},"application/mbms-protection-description+xml":{"source":"iana","compressible":true},"application/mbms-reception-report+xml":{"source":"iana","compressible":true},"application/mbms-register+xml":{"source":"iana","compressible":true},"application/mbms-register-response+xml":{"source":"iana","compressible":true},"application/mbms-schedule+xml":{"source":"iana","compressible":true},"application/mbms-user-service-description+xml":{"source":"iana","compressible":true},"application/mbox":{"source":"iana","extensions":["mbox"]},"application/media-policy-dataset+xml":{"source":"iana","compressible":true},"application/media_control+xml":{"source":"iana","compressible":true},"application/mediaservercontrol+xml":{"source":"iana","compressible":true,"extensions":["mscml"]},"application/merge-patch+json":{"source":"iana","compressible":true},"application/metalink+xml":{"source":"apache","compressible":true,"extensions":["metalink"]},"application/metalink4+xml":{"source":"iana","compressible":true,"extensions":["meta4"]},"application/mets+xml":{"source":"iana","compressible":true,"extensions":["mets"]},"application/mf4":{"source":"iana"},"application/mikey":{"source":"iana"},"application/mipc":{"source":"iana"},"application/mmt-aei+xml":{"source":"iana","compressible":true,"extensions":["maei"]},"application/mmt-usd+xml":{"source":"iana","compressible":true,"extensions":["musd"]},"application/mods+xml":{"source":"iana","compressible":true,"extensions":["mods"]},"application/moss-keys":{"source":"iana"},"application/moss-signature":{"source":"iana"},"application/mosskey-data":{"source":"iana"},"application/mosskey-request":{"source":"iana"},"application/mp21":{"source":"iana","extensions":["m21","mp21"]},"application/mp4":{"source":"iana","extensions":["mp4s","m4p"]},"application/mpeg4-generic":{"source":"iana"},"application/mpeg4-iod":{"source":"iana"},"application/mpeg4-iod-xmt":{"source":"iana"},"application/mrb-consumer+xml":{"source":"iana","compressible":true,"extensions":["xdf"]},"application/mrb-publish+xml":{"source":"iana","compressible":true,"extensions":["xdf"]},"application/msc-ivr+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/msc-mixer+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/msword":{"source":"iana","compressible":false,"extensions":["doc","dot"]},"application/mud+json":{"source":"iana","compressible":true},"application/multipart-core":{"source":"iana"},"application/mxf":{"source":"iana","extensions":["mxf"]},"application/n-quads":{"source":"iana","extensions":["nq"]},"application/n-triples":{"source":"iana","extensions":["nt"]},"application/nasdata":{"source":"iana"},"application/news-checkgroups":{"source":"iana","charset":"US-ASCII"},"application/news-groupinfo":{"source":"iana","charset":"US-ASCII"},"application/news-transmission":{"source":"iana"},"application/nlsml+xml":{"source":"iana","compressible":true},"application/node":{"source":"iana","extensions":["cjs"]},"application/nss":{"source":"iana"},"application/ocsp-request":{"source":"iana"},"application/ocsp-response":{"source":"iana"},"application/octet-stream":{"source":"iana","compressible":false,"extensions":["bin","dms","lrf","mar","so","dist","distz","pkg","bpk","dump","elc","deploy","exe","dll","deb","dmg","iso","img","msi","msp","msm","buffer"]},"application/oda":{"source":"iana","extensions":["oda"]},"application/odm+xml":{"source":"iana","compressible":true},"application/odx":{"source":"iana"},"application/oebps-package+xml":{"source":"iana","compressible":true,"extensions":["opf"]},"application/ogg":{"source":"iana","compressible":false,"extensions":["ogx"]},"application/omdoc+xml":{"source":"apache","compressible":true,"extensions":["omdoc"]},"application/onenote":{"source":"apache","extensions":["onetoc","onetoc2","onetmp","onepkg"]},"application/oscore":{"source":"iana"},"application/oxps":{"source":"iana","extensions":["oxps"]},"application/p2p-overlay+xml":{"source":"iana","compressible":true,"extensions":["relo"]},"application/parityfec":{"source":"iana"},"application/passport":{"source":"iana"},"application/patch-ops-error+xml":{"source":"iana","compressible":true,"extensions":["xer"]},"application/pdf":{"source":"iana","compressible":false,"extensions":["pdf"]},"application/pdx":{"source":"iana"},"application/pem-certificate-chain":{"source":"iana"},"application/pgp-encrypted":{"source":"iana","compressible":false,"extensions":["pgp"]},"application/pgp-keys":{"source":"iana"},"application/pgp-signature":{"source":"iana","extensions":["asc","sig"]},"application/pics-rules":{"source":"apache","extensions":["prf"]},"application/pidf+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/pidf-diff+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/pkcs10":{"source":"iana","extensions":["p10"]},"application/pkcs12":{"source":"iana"},"application/pkcs7-mime":{"source":"iana","extensions":["p7m","p7c"]},"application/pkcs7-signature":{"source":"iana","extensions":["p7s"]},"application/pkcs8":{"source":"iana","extensions":["p8"]},"application/pkcs8-encrypted":{"source":"iana"},"application/pkix-attr-cert":{"source":"iana","extensions":["ac"]},"application/pkix-cert":{"source":"iana","extensions":["cer"]},"application/pkix-crl":{"source":"iana","extensions":["crl"]},"application/pkix-pkipath":{"source":"iana","extensions":["pkipath"]},"application/pkixcmp":{"source":"iana","extensions":["pki"]},"application/pls+xml":{"source":"iana","compressible":true,"extensions":["pls"]},"application/poc-settings+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/postscript":{"source":"iana","compressible":true,"extensions":["ai","eps","ps"]},"application/ppsp-tracker+json":{"source":"iana","compressible":true},"application/problem+json":{"source":"iana","compressible":true},"application/problem+xml":{"source":"iana","compressible":true},"application/provenance+xml":{"source":"iana","compressible":true,"extensions":["provx"]},"application/prs.alvestrand.titrax-sheet":{"source":"iana"},"application/prs.cww":{"source":"iana","extensions":["cww"]},"application/prs.hpub+zip":{"source":"iana","compressible":false},"application/prs.nprend":{"source":"iana"},"application/prs.plucker":{"source":"iana"},"application/prs.rdf-xml-crypt":{"source":"iana"},"application/prs.xsf+xml":{"source":"iana","compressible":true},"application/pskc+xml":{"source":"iana","compressible":true,"extensions":["pskcxml"]},"application/pvd+json":{"source":"iana","compressible":true},"application/qsig":{"source":"iana"},"application/raml+yaml":{"compressible":true,"extensions":["raml"]},"application/raptorfec":{"source":"iana"},"application/rdap+json":{"source":"iana","compressible":true},"application/rdf+xml":{"source":"iana","compressible":true,"extensions":["rdf","owl"]},"application/reginfo+xml":{"source":"iana","compressible":true,"extensions":["rif"]},"application/relax-ng-compact-syntax":{"source":"iana","extensions":["rnc"]},"application/remote-printing":{"source":"iana"},"application/reputon+json":{"source":"iana","compressible":true},"application/resource-lists+xml":{"source":"iana","compressible":true,"extensions":["rl"]},"application/resource-lists-diff+xml":{"source":"iana","compressible":true,"extensions":["rld"]},"application/rfc+xml":{"source":"iana","compressible":true},"application/riscos":{"source":"iana"},"application/rlmi+xml":{"source":"iana","compressible":true},"application/rls-services+xml":{"source":"iana","compressible":true,"extensions":["rs"]},"application/route-apd+xml":{"source":"iana","compressible":true,"extensions":["rapd"]},"application/route-s-tsid+xml":{"source":"iana","compressible":true,"extensions":["sls"]},"application/route-usd+xml":{"source":"iana","compressible":true,"extensions":["rusd"]},"application/rpki-ghostbusters":{"source":"iana","extensions":["gbr"]},"application/rpki-manifest":{"source":"iana","extensions":["mft"]},"application/rpki-publication":{"source":"iana"},"application/rpki-roa":{"source":"iana","extensions":["roa"]},"application/rpki-updown":{"source":"iana"},"application/rsd+xml":{"source":"apache","compressible":true,"extensions":["rsd"]},"application/rss+xml":{"source":"apache","compressible":true,"extensions":["rss"]},"application/rtf":{"source":"iana","compressible":true,"extensions":["rtf"]},"application/rtploopback":{"source":"iana"},"application/rtx":{"source":"iana"},"application/samlassertion+xml":{"source":"iana","compressible":true},"application/samlmetadata+xml":{"source":"iana","compressible":true},"application/sbe":{"source":"iana"},"application/sbml+xml":{"source":"iana","compressible":true,"extensions":["sbml"]},"application/scaip+xml":{"source":"iana","compressible":true},"application/scim+json":{"source":"iana","compressible":true},"application/scvp-cv-request":{"source":"iana","extensions":["scq"]},"application/scvp-cv-response":{"source":"iana","extensions":["scs"]},"application/scvp-vp-request":{"source":"iana","extensions":["spq"]},"application/scvp-vp-response":{"source":"iana","extensions":["spp"]},"application/sdp":{"source":"iana","extensions":["sdp"]},"application/secevent+jwt":{"source":"iana"},"application/senml+cbor":{"source":"iana"},"application/senml+json":{"source":"iana","compressible":true},"application/senml+xml":{"source":"iana","compressible":true,"extensions":["senmlx"]},"application/senml-etch+cbor":{"source":"iana"},"application/senml-etch+json":{"source":"iana","compressible":true},"application/senml-exi":{"source":"iana"},"application/sensml+cbor":{"source":"iana"},"application/sensml+json":{"source":"iana","compressible":true},"application/sensml+xml":{"source":"iana","compressible":true,"extensions":["sensmlx"]},"application/sensml-exi":{"source":"iana"},"application/sep+xml":{"source":"iana","compressible":true},"application/sep-exi":{"source":"iana"},"application/session-info":{"source":"iana"},"application/set-payment":{"source":"iana"},"application/set-payment-initiation":{"source":"iana","extensions":["setpay"]},"application/set-registration":{"source":"iana"},"application/set-registration-initiation":{"source":"iana","extensions":["setreg"]},"application/sgml":{"source":"iana"},"application/sgml-open-catalog":{"source":"iana"},"application/shf+xml":{"source":"iana","compressible":true,"extensions":["shf"]},"application/sieve":{"source":"iana","extensions":["siv","sieve"]},"application/simple-filter+xml":{"source":"iana","compressible":true},"application/simple-message-summary":{"source":"iana"},"application/simplesymbolcontainer":{"source":"iana"},"application/sipc":{"source":"iana"},"application/slate":{"source":"iana"},"application/smil":{"source":"iana"},"application/smil+xml":{"source":"iana","compressible":true,"extensions":["smi","smil"]},"application/smpte336m":{"source":"iana"},"application/soap+fastinfoset":{"source":"iana"},"application/soap+xml":{"source":"iana","compressible":true},"application/sparql-query":{"source":"iana","extensions":["rq"]},"application/sparql-results+xml":{"source":"iana","compressible":true,"extensions":["srx"]},"application/spirits-event+xml":{"source":"iana","compressible":true},"application/sql":{"source":"iana"},"application/srgs":{"source":"iana","extensions":["gram"]},"application/srgs+xml":{"source":"iana","compressible":true,"extensions":["grxml"]},"application/sru+xml":{"source":"iana","compressible":true,"extensions":["sru"]},"application/ssdl+xml":{"source":"apache","compressible":true,"extensions":["ssdl"]},"application/ssml+xml":{"source":"iana","compressible":true,"extensions":["ssml"]},"application/stix+json":{"source":"iana","compressible":true},"application/swid+xml":{"source":"iana","compressible":true,"extensions":["swidtag"]},"application/tamp-apex-update":{"source":"iana"},"application/tamp-apex-update-confirm":{"source":"iana"},"application/tamp-community-update":{"source":"iana"},"application/tamp-community-update-confirm":{"source":"iana"},"application/tamp-error":{"source":"iana"},"application/tamp-sequence-adjust":{"source":"iana"},"application/tamp-sequence-adjust-confirm":{"source":"iana"},"application/tamp-status-query":{"source":"iana"},"application/tamp-status-response":{"source":"iana"},"application/tamp-update":{"source":"iana"},"application/tamp-update-confirm":{"source":"iana"},"application/tar":{"compressible":true},"application/taxii+json":{"source":"iana","compressible":true},"application/td+json":{"source":"iana","compressible":true},"application/tei+xml":{"source":"iana","compressible":true,"extensions":["tei","teicorpus"]},"application/tetra_isi":{"source":"iana"},"application/thraud+xml":{"source":"iana","compressible":true,"extensions":["tfi"]},"application/timestamp-query":{"source":"iana"},"application/timestamp-reply":{"source":"iana"},"application/timestamped-data":{"source":"iana","extensions":["tsd"]},"application/tlsrpt+gzip":{"source":"iana"},"application/tlsrpt+json":{"source":"iana","compressible":true},"application/tnauthlist":{"source":"iana"},"application/toml":{"compressible":true,"extensions":["toml"]},"application/trickle-ice-sdpfrag":{"source":"iana"},"application/trig":{"source":"iana"},"application/ttml+xml":{"source":"iana","compressible":true,"extensions":["ttml"]},"application/tve-trigger":{"source":"iana"},"application/tzif":{"source":"iana"},"application/tzif-leap":{"source":"iana"},"application/ulpfec":{"source":"iana"},"application/urc-grpsheet+xml":{"source":"iana","compressible":true},"application/urc-ressheet+xml":{"source":"iana","compressible":true,"extensions":["rsheet"]},"application/urc-targetdesc+xml":{"source":"iana","compressible":true},"application/urc-uisocketdesc+xml":{"source":"iana","compressible":true},"application/vcard+json":{"source":"iana","compressible":true},"application/vcard+xml":{"source":"iana","compressible":true},"application/vemmi":{"source":"iana"},"application/vividence.scriptfile":{"source":"apache"},"application/vnd.1000minds.decision-model+xml":{"source":"iana","compressible":true,"extensions":["1km"]},"application/vnd.3gpp-prose+xml":{"source":"iana","compressible":true},"application/vnd.3gpp-prose-pc3ch+xml":{"source":"iana","compressible":true},"application/vnd.3gpp-v2x-local-service-information":{"source":"iana"},"application/vnd.3gpp.access-transfer-events+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.bsf+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.gmop+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mc-signalling-ear":{"source":"iana"},"application/vnd.3gpp.mcdata-affiliation-command+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcdata-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcdata-payload":{"source":"iana"},"application/vnd.3gpp.mcdata-service-config+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcdata-signalling":{"source":"iana"},"application/vnd.3gpp.mcdata-ue-config+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcdata-user-profile+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-affiliation-command+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-floor-request+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-location-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-mbms-usage-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-service-config+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-signed+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-ue-config+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-ue-init-config+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcptt-user-profile+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-affiliation-command+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-affiliation-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-location-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-mbms-usage-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-service-config+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-transmission-request+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-ue-config+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mcvideo-user-profile+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.mid-call+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.pic-bw-large":{"source":"iana","extensions":["plb"]},"application/vnd.3gpp.pic-bw-small":{"source":"iana","extensions":["psb"]},"application/vnd.3gpp.pic-bw-var":{"source":"iana","extensions":["pvb"]},"application/vnd.3gpp.sms":{"source":"iana"},"application/vnd.3gpp.sms+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.srvcc-ext+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.srvcc-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.state-and-event-info+xml":{"source":"iana","compressible":true},"application/vnd.3gpp.ussd+xml":{"source":"iana","compressible":true},"application/vnd.3gpp2.bcmcsinfo+xml":{"source":"iana","compressible":true},"application/vnd.3gpp2.sms":{"source":"iana"},"application/vnd.3gpp2.tcap":{"source":"iana","extensions":["tcap"]},"application/vnd.3lightssoftware.imagescal":{"source":"iana"},"application/vnd.3m.post-it-notes":{"source":"iana","extensions":["pwn"]},"application/vnd.accpac.simply.aso":{"source":"iana","extensions":["aso"]},"application/vnd.accpac.simply.imp":{"source":"iana","extensions":["imp"]},"application/vnd.acucobol":{"source":"iana","extensions":["acu"]},"application/vnd.acucorp":{"source":"iana","extensions":["atc","acutc"]},"application/vnd.adobe.air-application-installer-package+zip":{"source":"apache","compressible":false,"extensions":["air"]},"application/vnd.adobe.flash.movie":{"source":"iana"},"application/vnd.adobe.formscentral.fcdt":{"source":"iana","extensions":["fcdt"]},"application/vnd.adobe.fxp":{"source":"iana","extensions":["fxp","fxpl"]},"application/vnd.adobe.partial-upload":{"source":"iana"},"application/vnd.adobe.xdp+xml":{"source":"iana","compressible":true,"extensions":["xdp"]},"application/vnd.adobe.xfdf":{"source":"iana","extensions":["xfdf"]},"application/vnd.aether.imp":{"source":"iana"},"application/vnd.afpc.afplinedata":{"source":"iana"},"application/vnd.afpc.afplinedata-pagedef":{"source":"iana"},"application/vnd.afpc.foca-charset":{"source":"iana"},"application/vnd.afpc.foca-codedfont":{"source":"iana"},"application/vnd.afpc.foca-codepage":{"source":"iana"},"application/vnd.afpc.modca":{"source":"iana"},"application/vnd.afpc.modca-formdef":{"source":"iana"},"application/vnd.afpc.modca-mediummap":{"source":"iana"},"application/vnd.afpc.modca-objectcontainer":{"source":"iana"},"application/vnd.afpc.modca-overlay":{"source":"iana"},"application/vnd.afpc.modca-pagesegment":{"source":"iana"},"application/vnd.ah-barcode":{"source":"iana"},"application/vnd.ahead.space":{"source":"iana","extensions":["ahead"]},"application/vnd.airzip.filesecure.azf":{"source":"iana","extensions":["azf"]},"application/vnd.airzip.filesecure.azs":{"source":"iana","extensions":["azs"]},"application/vnd.amadeus+json":{"source":"iana","compressible":true},"application/vnd.amazon.ebook":{"source":"apache","extensions":["azw"]},"application/vnd.amazon.mobi8-ebook":{"source":"iana"},"application/vnd.americandynamics.acc":{"source":"iana","extensions":["acc"]},"application/vnd.amiga.ami":{"source":"iana","extensions":["ami"]},"application/vnd.amundsen.maze+xml":{"source":"iana","compressible":true},"application/vnd.android.ota":{"source":"iana"},"application/vnd.android.package-archive":{"source":"apache","compressible":false,"extensions":["apk"]},"application/vnd.anki":{"source":"iana"},"application/vnd.anser-web-certificate-issue-initiation":{"source":"iana","extensions":["cii"]},"application/vnd.anser-web-funds-transfer-initiation":{"source":"apache","extensions":["fti"]},"application/vnd.antix.game-component":{"source":"iana","extensions":["atx"]},"application/vnd.apache.thrift.binary":{"source":"iana"},"application/vnd.apache.thrift.compact":{"source":"iana"},"application/vnd.apache.thrift.json":{"source":"iana"},"application/vnd.api+json":{"source":"iana","compressible":true},"application/vnd.aplextor.warrp+json":{"source":"iana","compressible":true},"application/vnd.apothekende.reservation+json":{"source":"iana","compressible":true},"application/vnd.apple.installer+xml":{"source":"iana","compressible":true,"extensions":["mpkg"]},"application/vnd.apple.keynote":{"source":"iana","extensions":["keynote"]},"application/vnd.apple.mpegurl":{"source":"iana","extensions":["m3u8"]},"application/vnd.apple.numbers":{"source":"iana","extensions":["numbers"]},"application/vnd.apple.pages":{"source":"iana","extensions":["pages"]},"application/vnd.apple.pkpass":{"compressible":false,"extensions":["pkpass"]},"application/vnd.arastra.swi":{"source":"iana"},"application/vnd.aristanetworks.swi":{"source":"iana","extensions":["swi"]},"application/vnd.artisan+json":{"source":"iana","compressible":true},"application/vnd.artsquare":{"source":"iana"},"application/vnd.astraea-software.iota":{"source":"iana","extensions":["iota"]},"application/vnd.audiograph":{"source":"iana","extensions":["aep"]},"application/vnd.autopackage":{"source":"iana"},"application/vnd.avalon+json":{"source":"iana","compressible":true},"application/vnd.avistar+xml":{"source":"iana","compressible":true},"application/vnd.balsamiq.bmml+xml":{"source":"iana","compressible":true,"extensions":["bmml"]},"application/vnd.balsamiq.bmpr":{"source":"iana"},"application/vnd.banana-accounting":{"source":"iana"},"application/vnd.bbf.usp.error":{"source":"iana"},"application/vnd.bbf.usp.msg":{"source":"iana"},"application/vnd.bbf.usp.msg+json":{"source":"iana","compressible":true},"application/vnd.bekitzur-stech+json":{"source":"iana","compressible":true},"application/vnd.bint.med-content":{"source":"iana"},"application/vnd.biopax.rdf+xml":{"source":"iana","compressible":true},"application/vnd.blink-idb-value-wrapper":{"source":"iana"},"application/vnd.blueice.multipass":{"source":"iana","extensions":["mpm"]},"application/vnd.bluetooth.ep.oob":{"source":"iana"},"application/vnd.bluetooth.le.oob":{"source":"iana"},"application/vnd.bmi":{"source":"iana","extensions":["bmi"]},"application/vnd.bpf":{"source":"iana"},"application/vnd.bpf3":{"source":"iana"},"application/vnd.businessobjects":{"source":"iana","extensions":["rep"]},"application/vnd.byu.uapi+json":{"source":"iana","compressible":true},"application/vnd.cab-jscript":{"source":"iana"},"application/vnd.canon-cpdl":{"source":"iana"},"application/vnd.canon-lips":{"source":"iana"},"application/vnd.capasystems-pg+json":{"source":"iana","compressible":true},"application/vnd.cendio.thinlinc.clientconf":{"source":"iana"},"application/vnd.century-systems.tcp_stream":{"source":"iana"},"application/vnd.chemdraw+xml":{"source":"iana","compressible":true,"extensions":["cdxml"]},"application/vnd.chess-pgn":{"source":"iana"},"application/vnd.chipnuts.karaoke-mmd":{"source":"iana","extensions":["mmd"]},"application/vnd.ciedi":{"source":"iana"},"application/vnd.cinderella":{"source":"iana","extensions":["cdy"]},"application/vnd.cirpack.isdn-ext":{"source":"iana"},"application/vnd.citationstyles.style+xml":{"source":"iana","compressible":true,"extensions":["csl"]},"application/vnd.claymore":{"source":"iana","extensions":["cla"]},"application/vnd.cloanto.rp9":{"source":"iana","extensions":["rp9"]},"application/vnd.clonk.c4group":{"source":"iana","extensions":["c4g","c4d","c4f","c4p","c4u"]},"application/vnd.cluetrust.cartomobile-config":{"source":"iana","extensions":["c11amc"]},"application/vnd.cluetrust.cartomobile-config-pkg":{"source":"iana","extensions":["c11amz"]},"application/vnd.coffeescript":{"source":"iana"},"application/vnd.collabio.xodocuments.document":{"source":"iana"},"application/vnd.collabio.xodocuments.document-template":{"source":"iana"},"application/vnd.collabio.xodocuments.presentation":{"source":"iana"},"application/vnd.collabio.xodocuments.presentation-template":{"source":"iana"},"application/vnd.collabio.xodocuments.spreadsheet":{"source":"iana"},"application/vnd.collabio.xodocuments.spreadsheet-template":{"source":"iana"},"application/vnd.collection+json":{"source":"iana","compressible":true},"application/vnd.collection.doc+json":{"source":"iana","compressible":true},"application/vnd.collection.next+json":{"source":"iana","compressible":true},"application/vnd.comicbook+zip":{"source":"iana","compressible":false},"application/vnd.comicbook-rar":{"source":"iana"},"application/vnd.commerce-battelle":{"source":"iana"},"application/vnd.commonspace":{"source":"iana","extensions":["csp"]},"application/vnd.contact.cmsg":{"source":"iana","extensions":["cdbcmsg"]},"application/vnd.coreos.ignition+json":{"source":"iana","compressible":true},"application/vnd.cosmocaller":{"source":"iana","extensions":["cmc"]},"application/vnd.crick.clicker":{"source":"iana","extensions":["clkx"]},"application/vnd.crick.clicker.keyboard":{"source":"iana","extensions":["clkk"]},"application/vnd.crick.clicker.palette":{"source":"iana","extensions":["clkp"]},"application/vnd.crick.clicker.template":{"source":"iana","extensions":["clkt"]},"application/vnd.crick.clicker.wordbank":{"source":"iana","extensions":["clkw"]},"application/vnd.criticaltools.wbs+xml":{"source":"iana","compressible":true,"extensions":["wbs"]},"application/vnd.cryptii.pipe+json":{"source":"iana","compressible":true},"application/vnd.crypto-shade-file":{"source":"iana"},"application/vnd.ctc-posml":{"source":"iana","extensions":["pml"]},"application/vnd.ctct.ws+xml":{"source":"iana","compressible":true},"application/vnd.cups-pdf":{"source":"iana"},"application/vnd.cups-postscript":{"source":"iana"},"application/vnd.cups-ppd":{"source":"iana","extensions":["ppd"]},"application/vnd.cups-raster":{"source":"iana"},"application/vnd.cups-raw":{"source":"iana"},"application/vnd.curl":{"source":"iana"},"application/vnd.curl.car":{"source":"apache","extensions":["car"]},"application/vnd.curl.pcurl":{"source":"apache","extensions":["pcurl"]},"application/vnd.cyan.dean.root+xml":{"source":"iana","compressible":true},"application/vnd.cybank":{"source":"iana"},"application/vnd.d2l.coursepackage1p0+zip":{"source":"iana","compressible":false},"application/vnd.dart":{"source":"iana","compressible":true,"extensions":["dart"]},"application/vnd.data-vision.rdz":{"source":"iana","extensions":["rdz"]},"application/vnd.datapackage+json":{"source":"iana","compressible":true},"application/vnd.dataresource+json":{"source":"iana","compressible":true},"application/vnd.dbf":{"source":"iana"},"application/vnd.debian.binary-package":{"source":"iana"},"application/vnd.dece.data":{"source":"iana","extensions":["uvf","uvvf","uvd","uvvd"]},"application/vnd.dece.ttml+xml":{"source":"iana","compressible":true,"extensions":["uvt","uvvt"]},"application/vnd.dece.unspecified":{"source":"iana","extensions":["uvx","uvvx"]},"application/vnd.dece.zip":{"source":"iana","extensions":["uvz","uvvz"]},"application/vnd.denovo.fcselayout-link":{"source":"iana","extensions":["fe_launch"]},"application/vnd.desmume.movie":{"source":"iana"},"application/vnd.dir-bi.plate-dl-nosuffix":{"source":"iana"},"application/vnd.dm.delegation+xml":{"source":"iana","compressible":true},"application/vnd.dna":{"source":"iana","extensions":["dna"]},"application/vnd.document+json":{"source":"iana","compressible":true},"application/vnd.dolby.mlp":{"source":"apache","extensions":["mlp"]},"application/vnd.dolby.mobile.1":{"source":"iana"},"application/vnd.dolby.mobile.2":{"source":"iana"},"application/vnd.doremir.scorecloud-binary-document":{"source":"iana"},"application/vnd.dpgraph":{"source":"iana","extensions":["dpg"]},"application/vnd.dreamfactory":{"source":"iana","extensions":["dfac"]},"application/vnd.drive+json":{"source":"iana","compressible":true},"application/vnd.ds-keypoint":{"source":"apache","extensions":["kpxx"]},"application/vnd.dtg.local":{"source":"iana"},"application/vnd.dtg.local.flash":{"source":"iana"},"application/vnd.dtg.local.html":{"source":"iana"},"application/vnd.dvb.ait":{"source":"iana","extensions":["ait"]},"application/vnd.dvb.dvbisl+xml":{"source":"iana","compressible":true},"application/vnd.dvb.dvbj":{"source":"iana"},"application/vnd.dvb.esgcontainer":{"source":"iana"},"application/vnd.dvb.ipdcdftnotifaccess":{"source":"iana"},"application/vnd.dvb.ipdcesgaccess":{"source":"iana"},"application/vnd.dvb.ipdcesgaccess2":{"source":"iana"},"application/vnd.dvb.ipdcesgpdd":{"source":"iana"},"application/vnd.dvb.ipdcroaming":{"source":"iana"},"application/vnd.dvb.iptv.alfec-base":{"source":"iana"},"application/vnd.dvb.iptv.alfec-enhancement":{"source":"iana"},"application/vnd.dvb.notif-aggregate-root+xml":{"source":"iana","compressible":true},"application/vnd.dvb.notif-container+xml":{"source":"iana","compressible":true},"application/vnd.dvb.notif-generic+xml":{"source":"iana","compressible":true},"application/vnd.dvb.notif-ia-msglist+xml":{"source":"iana","compressible":true},"application/vnd.dvb.notif-ia-registration-request+xml":{"source":"iana","compressible":true},"application/vnd.dvb.notif-ia-registration-response+xml":{"source":"iana","compressible":true},"application/vnd.dvb.notif-init+xml":{"source":"iana","compressible":true},"application/vnd.dvb.pfr":{"source":"iana"},"application/vnd.dvb.service":{"source":"iana","extensions":["svc"]},"application/vnd.dxr":{"source":"iana"},"application/vnd.dynageo":{"source":"iana","extensions":["geo"]},"application/vnd.dzr":{"source":"iana"},"application/vnd.easykaraoke.cdgdownload":{"source":"iana"},"application/vnd.ecdis-update":{"source":"iana"},"application/vnd.ecip.rlp":{"source":"iana"},"application/vnd.ecowin.chart":{"source":"iana","extensions":["mag"]},"application/vnd.ecowin.filerequest":{"source":"iana"},"application/vnd.ecowin.fileupdate":{"source":"iana"},"application/vnd.ecowin.series":{"source":"iana"},"application/vnd.ecowin.seriesrequest":{"source":"iana"},"application/vnd.ecowin.seriesupdate":{"source":"iana"},"application/vnd.efi.img":{"source":"iana"},"application/vnd.efi.iso":{"source":"iana"},"application/vnd.emclient.accessrequest+xml":{"source":"iana","compressible":true},"application/vnd.enliven":{"source":"iana","extensions":["nml"]},"application/vnd.enphase.envoy":{"source":"iana"},"application/vnd.eprints.data+xml":{"source":"iana","compressible":true},"application/vnd.epson.esf":{"source":"iana","extensions":["esf"]},"application/vnd.epson.msf":{"source":"iana","extensions":["msf"]},"application/vnd.epson.quickanime":{"source":"iana","extensions":["qam"]},"application/vnd.epson.salt":{"source":"iana","extensions":["slt"]},"application/vnd.epson.ssf":{"source":"iana","extensions":["ssf"]},"application/vnd.ericsson.quickcall":{"source":"iana"},"application/vnd.espass-espass+zip":{"source":"iana","compressible":false},"application/vnd.eszigno3+xml":{"source":"iana","compressible":true,"extensions":["es3","et3"]},"application/vnd.etsi.aoc+xml":{"source":"iana","compressible":true},"application/vnd.etsi.asic-e+zip":{"source":"iana","compressible":false},"application/vnd.etsi.asic-s+zip":{"source":"iana","compressible":false},"application/vnd.etsi.cug+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvcommand+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvdiscovery+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvprofile+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvsad-bc+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvsad-cod+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvsad-npvr+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvservice+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvsync+xml":{"source":"iana","compressible":true},"application/vnd.etsi.iptvueprofile+xml":{"source":"iana","compressible":true},"application/vnd.etsi.mcid+xml":{"source":"iana","compressible":true},"application/vnd.etsi.mheg5":{"source":"iana"},"application/vnd.etsi.overload-control-policy-dataset+xml":{"source":"iana","compressible":true},"application/vnd.etsi.pstn+xml":{"source":"iana","compressible":true},"application/vnd.etsi.sci+xml":{"source":"iana","compressible":true},"application/vnd.etsi.simservs+xml":{"source":"iana","compressible":true},"application/vnd.etsi.timestamp-token":{"source":"iana"},"application/vnd.etsi.tsl+xml":{"source":"iana","compressible":true},"application/vnd.etsi.tsl.der":{"source":"iana"},"application/vnd.eudora.data":{"source":"iana"},"application/vnd.evolv.ecig.profile":{"source":"iana"},"application/vnd.evolv.ecig.settings":{"source":"iana"},"application/vnd.evolv.ecig.theme":{"source":"iana"},"application/vnd.exstream-empower+zip":{"source":"iana","compressible":false},"application/vnd.exstream-package":{"source":"iana"},"application/vnd.ezpix-album":{"source":"iana","extensions":["ez2"]},"application/vnd.ezpix-package":{"source":"iana","extensions":["ez3"]},"application/vnd.f-secure.mobile":{"source":"iana"},"application/vnd.fastcopy-disk-image":{"source":"iana"},"application/vnd.fdf":{"source":"iana","extensions":["fdf"]},"application/vnd.fdsn.mseed":{"source":"iana","extensions":["mseed"]},"application/vnd.fdsn.seed":{"source":"iana","extensions":["seed","dataless"]},"application/vnd.ffsns":{"source":"iana"},"application/vnd.ficlab.flb+zip":{"source":"iana","compressible":false},"application/vnd.filmit.zfc":{"source":"iana"},"application/vnd.fints":{"source":"iana"},"application/vnd.firemonkeys.cloudcell":{"source":"iana"},"application/vnd.flographit":{"source":"iana","extensions":["gph"]},"application/vnd.fluxtime.clip":{"source":"iana","extensions":["ftc"]},"application/vnd.font-fontforge-sfd":{"source":"iana"},"application/vnd.framemaker":{"source":"iana","extensions":["fm","frame","maker","book"]},"application/vnd.frogans.fnc":{"source":"iana","extensions":["fnc"]},"application/vnd.frogans.ltf":{"source":"iana","extensions":["ltf"]},"application/vnd.fsc.weblaunch":{"source":"iana","extensions":["fsc"]},"application/vnd.fujitsu.oasys":{"source":"iana","extensions":["oas"]},"application/vnd.fujitsu.oasys2":{"source":"iana","extensions":["oa2"]},"application/vnd.fujitsu.oasys3":{"source":"iana","extensions":["oa3"]},"application/vnd.fujitsu.oasysgp":{"source":"iana","extensions":["fg5"]},"application/vnd.fujitsu.oasysprs":{"source":"iana","extensions":["bh2"]},"application/vnd.fujixerox.art-ex":{"source":"iana"},"application/vnd.fujixerox.art4":{"source":"iana"},"application/vnd.fujixerox.ddd":{"source":"iana","extensions":["ddd"]},"application/vnd.fujixerox.docuworks":{"source":"iana","extensions":["xdw"]},"application/vnd.fujixerox.docuworks.binder":{"source":"iana","extensions":["xbd"]},"application/vnd.fujixerox.docuworks.container":{"source":"iana"},"application/vnd.fujixerox.hbpl":{"source":"iana"},"application/vnd.fut-misnet":{"source":"iana"},"application/vnd.futoin+cbor":{"source":"iana"},"application/vnd.futoin+json":{"source":"iana","compressible":true},"application/vnd.fuzzysheet":{"source":"iana","extensions":["fzs"]},"application/vnd.genomatix.tuxedo":{"source":"iana","extensions":["txd"]},"application/vnd.gentics.grd+json":{"source":"iana","compressible":true},"application/vnd.geo+json":{"source":"iana","compressible":true},"application/vnd.geocube+xml":{"source":"iana","compressible":true},"application/vnd.geogebra.file":{"source":"iana","extensions":["ggb"]},"application/vnd.geogebra.tool":{"source":"iana","extensions":["ggt"]},"application/vnd.geometry-explorer":{"source":"iana","extensions":["gex","gre"]},"application/vnd.geonext":{"source":"iana","extensions":["gxt"]},"application/vnd.geoplan":{"source":"iana","extensions":["g2w"]},"application/vnd.geospace":{"source":"iana","extensions":["g3w"]},"application/vnd.gerber":{"source":"iana"},"application/vnd.globalplatform.card-content-mgt":{"source":"iana"},"application/vnd.globalplatform.card-content-mgt-response":{"source":"iana"},"application/vnd.gmx":{"source":"iana","extensions":["gmx"]},"application/vnd.google-apps.document":{"compressible":false,"extensions":["gdoc"]},"application/vnd.google-apps.presentation":{"compressible":false,"extensions":["gslides"]},"application/vnd.google-apps.spreadsheet":{"compressible":false,"extensions":["gsheet"]},"application/vnd.google-earth.kml+xml":{"source":"iana","compressible":true,"extensions":["kml"]},"application/vnd.google-earth.kmz":{"source":"iana","compressible":false,"extensions":["kmz"]},"application/vnd.gov.sk.e-form+xml":{"source":"iana","compressible":true},"application/vnd.gov.sk.e-form+zip":{"source":"iana","compressible":false},"application/vnd.gov.sk.xmldatacontainer+xml":{"source":"iana","compressible":true},"application/vnd.grafeq":{"source":"iana","extensions":["gqf","gqs"]},"application/vnd.gridmp":{"source":"iana"},"application/vnd.groove-account":{"source":"iana","extensions":["gac"]},"application/vnd.groove-help":{"source":"iana","extensions":["ghf"]},"application/vnd.groove-identity-message":{"source":"iana","extensions":["gim"]},"application/vnd.groove-injector":{"source":"iana","extensions":["grv"]},"application/vnd.groove-tool-message":{"source":"iana","extensions":["gtm"]},"application/vnd.groove-tool-template":{"source":"iana","extensions":["tpl"]},"application/vnd.groove-vcard":{"source":"iana","extensions":["vcg"]},"application/vnd.hal+json":{"source":"iana","compressible":true},"application/vnd.hal+xml":{"source":"iana","compressible":true,"extensions":["hal"]},"application/vnd.handheld-entertainment+xml":{"source":"iana","compressible":true,"extensions":["zmm"]},"application/vnd.hbci":{"source":"iana","extensions":["hbci"]},"application/vnd.hc+json":{"source":"iana","compressible":true},"application/vnd.hcl-bireports":{"source":"iana"},"application/vnd.hdt":{"source":"iana"},"application/vnd.heroku+json":{"source":"iana","compressible":true},"application/vnd.hhe.lesson-player":{"source":"iana","extensions":["les"]},"application/vnd.hp-hpgl":{"source":"iana","extensions":["hpgl"]},"application/vnd.hp-hpid":{"source":"iana","extensions":["hpid"]},"application/vnd.hp-hps":{"source":"iana","extensions":["hps"]},"application/vnd.hp-jlyt":{"source":"iana","extensions":["jlt"]},"application/vnd.hp-pcl":{"source":"iana","extensions":["pcl"]},"application/vnd.hp-pclxl":{"source":"iana","extensions":["pclxl"]},"application/vnd.httphone":{"source":"iana"},"application/vnd.hydrostatix.sof-data":{"source":"iana","extensions":["sfd-hdstx"]},"application/vnd.hyper+json":{"source":"iana","compressible":true},"application/vnd.hyper-item+json":{"source":"iana","compressible":true},"application/vnd.hyperdrive+json":{"source":"iana","compressible":true},"application/vnd.hzn-3d-crossword":{"source":"iana"},"application/vnd.ibm.afplinedata":{"source":"iana"},"application/vnd.ibm.electronic-media":{"source":"iana"},"application/vnd.ibm.minipay":{"source":"iana","extensions":["mpy"]},"application/vnd.ibm.modcap":{"source":"iana","extensions":["afp","listafp","list3820"]},"application/vnd.ibm.rights-management":{"source":"iana","extensions":["irm"]},"application/vnd.ibm.secure-container":{"source":"iana","extensions":["sc"]},"application/vnd.iccprofile":{"source":"iana","extensions":["icc","icm"]},"application/vnd.ieee.1905":{"source":"iana"},"application/vnd.igloader":{"source":"iana","extensions":["igl"]},"application/vnd.imagemeter.folder+zip":{"source":"iana","compressible":false},"application/vnd.imagemeter.image+zip":{"source":"iana","compressible":false},"application/vnd.immervision-ivp":{"source":"iana","extensions":["ivp"]},"application/vnd.immervision-ivu":{"source":"iana","extensions":["ivu"]},"application/vnd.ims.imsccv1p1":{"source":"iana"},"application/vnd.ims.imsccv1p2":{"source":"iana"},"application/vnd.ims.imsccv1p3":{"source":"iana"},"application/vnd.ims.lis.v2.result+json":{"source":"iana","compressible":true},"application/vnd.ims.lti.v2.toolconsumerprofile+json":{"source":"iana","compressible":true},"application/vnd.ims.lti.v2.toolproxy+json":{"source":"iana","compressible":true},"application/vnd.ims.lti.v2.toolproxy.id+json":{"source":"iana","compressible":true},"application/vnd.ims.lti.v2.toolsettings+json":{"source":"iana","compressible":true},"application/vnd.ims.lti.v2.toolsettings.simple+json":{"source":"iana","compressible":true},"application/vnd.informedcontrol.rms+xml":{"source":"iana","compressible":true},"application/vnd.informix-visionary":{"source":"iana"},"application/vnd.infotech.project":{"source":"iana"},"application/vnd.infotech.project+xml":{"source":"iana","compressible":true},"application/vnd.innopath.wamp.notification":{"source":"iana"},"application/vnd.insors.igm":{"source":"iana","extensions":["igm"]},"application/vnd.intercon.formnet":{"source":"iana","extensions":["xpw","xpx"]},"application/vnd.intergeo":{"source":"iana","extensions":["i2g"]},"application/vnd.intertrust.digibox":{"source":"iana"},"application/vnd.intertrust.nncp":{"source":"iana"},"application/vnd.intu.qbo":{"source":"iana","extensions":["qbo"]},"application/vnd.intu.qfx":{"source":"iana","extensions":["qfx"]},"application/vnd.iptc.g2.catalogitem+xml":{"source":"iana","compressible":true},"application/vnd.iptc.g2.conceptitem+xml":{"source":"iana","compressible":true},"application/vnd.iptc.g2.knowledgeitem+xml":{"source":"iana","compressible":true},"application/vnd.iptc.g2.newsitem+xml":{"source":"iana","compressible":true},"application/vnd.iptc.g2.newsmessage+xml":{"source":"iana","compressible":true},"application/vnd.iptc.g2.packageitem+xml":{"source":"iana","compressible":true},"application/vnd.iptc.g2.planningitem+xml":{"source":"iana","compressible":true},"application/vnd.ipunplugged.rcprofile":{"source":"iana","extensions":["rcprofile"]},"application/vnd.irepository.package+xml":{"source":"iana","compressible":true,"extensions":["irp"]},"application/vnd.is-xpr":{"source":"iana","extensions":["xpr"]},"application/vnd.isac.fcs":{"source":"iana","extensions":["fcs"]},"application/vnd.iso11783-10+zip":{"source":"iana","compressible":false},"application/vnd.jam":{"source":"iana","extensions":["jam"]},"application/vnd.japannet-directory-service":{"source":"iana"},"application/vnd.japannet-jpnstore-wakeup":{"source":"iana"},"application/vnd.japannet-payment-wakeup":{"source":"iana"},"application/vnd.japannet-registration":{"source":"iana"},"application/vnd.japannet-registration-wakeup":{"source":"iana"},"application/vnd.japannet-setstore-wakeup":{"source":"iana"},"application/vnd.japannet-verification":{"source":"iana"},"application/vnd.japannet-verification-wakeup":{"source":"iana"},"application/vnd.jcp.javame.midlet-rms":{"source":"iana","extensions":["rms"]},"application/vnd.jisp":{"source":"iana","extensions":["jisp"]},"application/vnd.joost.joda-archive":{"source":"iana","extensions":["joda"]},"application/vnd.jsk.isdn-ngn":{"source":"iana"},"application/vnd.kahootz":{"source":"iana","extensions":["ktz","ktr"]},"application/vnd.kde.karbon":{"source":"iana","extensions":["karbon"]},"application/vnd.kde.kchart":{"source":"iana","extensions":["chrt"]},"application/vnd.kde.kformula":{"source":"iana","extensions":["kfo"]},"application/vnd.kde.kivio":{"source":"iana","extensions":["flw"]},"application/vnd.kde.kontour":{"source":"iana","extensions":["kon"]},"application/vnd.kde.kpresenter":{"source":"iana","extensions":["kpr","kpt"]},"application/vnd.kde.kspread":{"source":"iana","extensions":["ksp"]},"application/vnd.kde.kword":{"source":"iana","extensions":["kwd","kwt"]},"application/vnd.kenameaapp":{"source":"iana","extensions":["htke"]},"application/vnd.kidspiration":{"source":"iana","extensions":["kia"]},"application/vnd.kinar":{"source":"iana","extensions":["kne","knp"]},"application/vnd.koan":{"source":"iana","extensions":["skp","skd","skt","skm"]},"application/vnd.kodak-descriptor":{"source":"iana","extensions":["sse"]},"application/vnd.las":{"source":"iana"},"application/vnd.las.las+json":{"source":"iana","compressible":true},"application/vnd.las.las+xml":{"source":"iana","compressible":true,"extensions":["lasxml"]},"application/vnd.laszip":{"source":"iana"},"application/vnd.leap+json":{"source":"iana","compressible":true},"application/vnd.liberty-request+xml":{"source":"iana","compressible":true},"application/vnd.llamagraphics.life-balance.desktop":{"source":"iana","extensions":["lbd"]},"application/vnd.llamagraphics.life-balance.exchange+xml":{"source":"iana","compressible":true,"extensions":["lbe"]},"application/vnd.logipipe.circuit+zip":{"source":"iana","compressible":false},"application/vnd.loom":{"source":"iana"},"application/vnd.lotus-1-2-3":{"source":"iana","extensions":["123"]},"application/vnd.lotus-approach":{"source":"iana","extensions":["apr"]},"application/vnd.lotus-freelance":{"source":"iana","extensions":["pre"]},"application/vnd.lotus-notes":{"source":"iana","extensions":["nsf"]},"application/vnd.lotus-organizer":{"source":"iana","extensions":["org"]},"application/vnd.lotus-screencam":{"source":"iana","extensions":["scm"]},"application/vnd.lotus-wordpro":{"source":"iana","extensions":["lwp"]},"application/vnd.macports.portpkg":{"source":"iana","extensions":["portpkg"]},"application/vnd.mapbox-vector-tile":{"source":"iana"},"application/vnd.marlin.drm.actiontoken+xml":{"source":"iana","compressible":true},"application/vnd.marlin.drm.conftoken+xml":{"source":"iana","compressible":true},"application/vnd.marlin.drm.license+xml":{"source":"iana","compressible":true},"application/vnd.marlin.drm.mdcf":{"source":"iana"},"application/vnd.mason+json":{"source":"iana","compressible":true},"application/vnd.maxmind.maxmind-db":{"source":"iana"},"application/vnd.mcd":{"source":"iana","extensions":["mcd"]},"application/vnd.medcalcdata":{"source":"iana","extensions":["mc1"]},"application/vnd.mediastation.cdkey":{"source":"iana","extensions":["cdkey"]},"application/vnd.meridian-slingshot":{"source":"iana"},"application/vnd.mfer":{"source":"iana","extensions":["mwf"]},"application/vnd.mfmp":{"source":"iana","extensions":["mfm"]},"application/vnd.micro+json":{"source":"iana","compressible":true},"application/vnd.micrografx.flo":{"source":"iana","extensions":["flo"]},"application/vnd.micrografx.igx":{"source":"iana","extensions":["igx"]},"application/vnd.microsoft.portable-executable":{"source":"iana"},"application/vnd.microsoft.windows.thumbnail-cache":{"source":"iana"},"application/vnd.miele+json":{"source":"iana","compressible":true},"application/vnd.mif":{"source":"iana","extensions":["mif"]},"application/vnd.minisoft-hp3000-save":{"source":"iana"},"application/vnd.mitsubishi.misty-guard.trustweb":{"source":"iana"},"application/vnd.mobius.daf":{"source":"iana","extensions":["daf"]},"application/vnd.mobius.dis":{"source":"iana","extensions":["dis"]},"application/vnd.mobius.mbk":{"source":"iana","extensions":["mbk"]},"application/vnd.mobius.mqy":{"source":"iana","extensions":["mqy"]},"application/vnd.mobius.msl":{"source":"iana","extensions":["msl"]},"application/vnd.mobius.plc":{"source":"iana","extensions":["plc"]},"application/vnd.mobius.txf":{"source":"iana","extensions":["txf"]},"application/vnd.mophun.application":{"source":"iana","extensions":["mpn"]},"application/vnd.mophun.certificate":{"source":"iana","extensions":["mpc"]},"application/vnd.motorola.flexsuite":{"source":"iana"},"application/vnd.motorola.flexsuite.adsi":{"source":"iana"},"application/vnd.motorola.flexsuite.fis":{"source":"iana"},"application/vnd.motorola.flexsuite.gotap":{"source":"iana"},"application/vnd.motorola.flexsuite.kmr":{"source":"iana"},"application/vnd.motorola.flexsuite.ttc":{"source":"iana"},"application/vnd.motorola.flexsuite.wem":{"source":"iana"},"application/vnd.motorola.iprm":{"source":"iana"},"application/vnd.mozilla.xul+xml":{"source":"iana","compressible":true,"extensions":["xul"]},"application/vnd.ms-3mfdocument":{"source":"iana"},"application/vnd.ms-artgalry":{"source":"iana","extensions":["cil"]},"application/vnd.ms-asf":{"source":"iana"},"application/vnd.ms-cab-compressed":{"source":"iana","extensions":["cab"]},"application/vnd.ms-color.iccprofile":{"source":"apache"},"application/vnd.ms-excel":{"source":"iana","compressible":false,"extensions":["xls","xlm","xla","xlc","xlt","xlw"]},"application/vnd.ms-excel.addin.macroenabled.12":{"source":"iana","extensions":["xlam"]},"application/vnd.ms-excel.sheet.binary.macroenabled.12":{"source":"iana","extensions":["xlsb"]},"application/vnd.ms-excel.sheet.macroenabled.12":{"source":"iana","extensions":["xlsm"]},"application/vnd.ms-excel.template.macroenabled.12":{"source":"iana","extensions":["xltm"]},"application/vnd.ms-fontobject":{"source":"iana","compressible":true,"extensions":["eot"]},"application/vnd.ms-htmlhelp":{"source":"iana","extensions":["chm"]},"application/vnd.ms-ims":{"source":"iana","extensions":["ims"]},"application/vnd.ms-lrm":{"source":"iana","extensions":["lrm"]},"application/vnd.ms-office.activex+xml":{"source":"iana","compressible":true},"application/vnd.ms-officetheme":{"source":"iana","extensions":["thmx"]},"application/vnd.ms-opentype":{"source":"apache","compressible":true},"application/vnd.ms-outlook":{"compressible":false,"extensions":["msg"]},"application/vnd.ms-package.obfuscated-opentype":{"source":"apache"},"application/vnd.ms-pki.seccat":{"source":"apache","extensions":["cat"]},"application/vnd.ms-pki.stl":{"source":"apache","extensions":["stl"]},"application/vnd.ms-playready.initiator+xml":{"source":"iana","compressible":true},"application/vnd.ms-powerpoint":{"source":"iana","compressible":false,"extensions":["ppt","pps","pot"]},"application/vnd.ms-powerpoint.addin.macroenabled.12":{"source":"iana","extensions":["ppam"]},"application/vnd.ms-powerpoint.presentation.macroenabled.12":{"source":"iana","extensions":["pptm"]},"application/vnd.ms-powerpoint.slide.macroenabled.12":{"source":"iana","extensions":["sldm"]},"application/vnd.ms-powerpoint.slideshow.macroenabled.12":{"source":"iana","extensions":["ppsm"]},"application/vnd.ms-powerpoint.template.macroenabled.12":{"source":"iana","extensions":["potm"]},"application/vnd.ms-printdevicecapabilities+xml":{"source":"iana","compressible":true},"application/vnd.ms-printing.printticket+xml":{"source":"apache","compressible":true},"application/vnd.ms-printschematicket+xml":{"source":"iana","compressible":true},"application/vnd.ms-project":{"source":"iana","extensions":["mpp","mpt"]},"application/vnd.ms-tnef":{"source":"iana"},"application/vnd.ms-windows.devicepairing":{"source":"iana"},"application/vnd.ms-windows.nwprinting.oob":{"source":"iana"},"application/vnd.ms-windows.printerpairing":{"source":"iana"},"application/vnd.ms-windows.wsd.oob":{"source":"iana"},"application/vnd.ms-wmdrm.lic-chlg-req":{"source":"iana"},"application/vnd.ms-wmdrm.lic-resp":{"source":"iana"},"application/vnd.ms-wmdrm.meter-chlg-req":{"source":"iana"},"application/vnd.ms-wmdrm.meter-resp":{"source":"iana"},"application/vnd.ms-word.document.macroenabled.12":{"source":"iana","extensions":["docm"]},"application/vnd.ms-word.template.macroenabled.12":{"source":"iana","extensions":["dotm"]},"application/vnd.ms-works":{"source":"iana","extensions":["wps","wks","wcm","wdb"]},"application/vnd.ms-wpl":{"source":"iana","extensions":["wpl"]},"application/vnd.ms-xpsdocument":{"source":"iana","compressible":false,"extensions":["xps"]},"application/vnd.msa-disk-image":{"source":"iana"},"application/vnd.mseq":{"source":"iana","extensions":["mseq"]},"application/vnd.msign":{"source":"iana"},"application/vnd.multiad.creator":{"source":"iana"},"application/vnd.multiad.creator.cif":{"source":"iana"},"application/vnd.music-niff":{"source":"iana"},"application/vnd.musician":{"source":"iana","extensions":["mus"]},"application/vnd.muvee.style":{"source":"iana","extensions":["msty"]},"application/vnd.mynfc":{"source":"iana","extensions":["taglet"]},"application/vnd.ncd.control":{"source":"iana"},"application/vnd.ncd.reference":{"source":"iana"},"application/vnd.nearst.inv+json":{"source":"iana","compressible":true},"application/vnd.nervana":{"source":"iana"},"application/vnd.netfpx":{"source":"iana"},"application/vnd.neurolanguage.nlu":{"source":"iana","extensions":["nlu"]},"application/vnd.nimn":{"source":"iana"},"application/vnd.nintendo.nitro.rom":{"source":"iana"},"application/vnd.nintendo.snes.rom":{"source":"iana"},"application/vnd.nitf":{"source":"iana","extensions":["ntf","nitf"]},"application/vnd.noblenet-directory":{"source":"iana","extensions":["nnd"]},"application/vnd.noblenet-sealer":{"source":"iana","extensions":["nns"]},"application/vnd.noblenet-web":{"source":"iana","extensions":["nnw"]},"application/vnd.nokia.catalogs":{"source":"iana"},"application/vnd.nokia.conml+wbxml":{"source":"iana"},"application/vnd.nokia.conml+xml":{"source":"iana","compressible":true},"application/vnd.nokia.iptv.config+xml":{"source":"iana","compressible":true},"application/vnd.nokia.isds-radio-presets":{"source":"iana"},"application/vnd.nokia.landmark+wbxml":{"source":"iana"},"application/vnd.nokia.landmark+xml":{"source":"iana","compressible":true},"application/vnd.nokia.landmarkcollection+xml":{"source":"iana","compressible":true},"application/vnd.nokia.n-gage.ac+xml":{"source":"iana","compressible":true,"extensions":["ac"]},"application/vnd.nokia.n-gage.data":{"source":"iana","extensions":["ngdat"]},"application/vnd.nokia.n-gage.symbian.install":{"source":"iana","extensions":["n-gage"]},"application/vnd.nokia.ncd":{"source":"iana"},"application/vnd.nokia.pcd+wbxml":{"source":"iana"},"application/vnd.nokia.pcd+xml":{"source":"iana","compressible":true},"application/vnd.nokia.radio-preset":{"source":"iana","extensions":["rpst"]},"application/vnd.nokia.radio-presets":{"source":"iana","extensions":["rpss"]},"application/vnd.novadigm.edm":{"source":"iana","extensions":["edm"]},"application/vnd.novadigm.edx":{"source":"iana","extensions":["edx"]},"application/vnd.novadigm.ext":{"source":"iana","extensions":["ext"]},"application/vnd.ntt-local.content-share":{"source":"iana"},"application/vnd.ntt-local.file-transfer":{"source":"iana"},"application/vnd.ntt-local.ogw_remote-access":{"source":"iana"},"application/vnd.ntt-local.sip-ta_remote":{"source":"iana"},"application/vnd.ntt-local.sip-ta_tcp_stream":{"source":"iana"},"application/vnd.oasis.opendocument.chart":{"source":"iana","extensions":["odc"]},"application/vnd.oasis.opendocument.chart-template":{"source":"iana","extensions":["otc"]},"application/vnd.oasis.opendocument.database":{"source":"iana","extensions":["odb"]},"application/vnd.oasis.opendocument.formula":{"source":"iana","extensions":["odf"]},"application/vnd.oasis.opendocument.formula-template":{"source":"iana","extensions":["odft"]},"application/vnd.oasis.opendocument.graphics":{"source":"iana","compressible":false,"extensions":["odg"]},"application/vnd.oasis.opendocument.graphics-template":{"source":"iana","extensions":["otg"]},"application/vnd.oasis.opendocument.image":{"source":"iana","extensions":["odi"]},"application/vnd.oasis.opendocument.image-template":{"source":"iana","extensions":["oti"]},"application/vnd.oasis.opendocument.presentation":{"source":"iana","compressible":false,"extensions":["odp"]},"application/vnd.oasis.opendocument.presentation-template":{"source":"iana","extensions":["otp"]},"application/vnd.oasis.opendocument.spreadsheet":{"source":"iana","compressible":false,"extensions":["ods"]},"application/vnd.oasis.opendocument.spreadsheet-template":{"source":"iana","extensions":["ots"]},"application/vnd.oasis.opendocument.text":{"source":"iana","compressible":false,"extensions":["odt"]},"application/vnd.oasis.opendocument.text-master":{"source":"iana","extensions":["odm"]},"application/vnd.oasis.opendocument.text-template":{"source":"iana","extensions":["ott"]},"application/vnd.oasis.opendocument.text-web":{"source":"iana","extensions":["oth"]},"application/vnd.obn":{"source":"iana"},"application/vnd.ocf+cbor":{"source":"iana"},"application/vnd.oci.image.manifest.v1+json":{"source":"iana","compressible":true},"application/vnd.oftn.l10n+json":{"source":"iana","compressible":true},"application/vnd.oipf.contentaccessdownload+xml":{"source":"iana","compressible":true},"application/vnd.oipf.contentaccessstreaming+xml":{"source":"iana","compressible":true},"application/vnd.oipf.cspg-hexbinary":{"source":"iana"},"application/vnd.oipf.dae.svg+xml":{"source":"iana","compressible":true},"application/vnd.oipf.dae.xhtml+xml":{"source":"iana","compressible":true},"application/vnd.oipf.mippvcontrolmessage+xml":{"source":"iana","compressible":true},"application/vnd.oipf.pae.gem":{"source":"iana"},"application/vnd.oipf.spdiscovery+xml":{"source":"iana","compressible":true},"application/vnd.oipf.spdlist+xml":{"source":"iana","compressible":true},"application/vnd.oipf.ueprofile+xml":{"source":"iana","compressible":true},"application/vnd.oipf.userprofile+xml":{"source":"iana","compressible":true},"application/vnd.olpc-sugar":{"source":"iana","extensions":["xo"]},"application/vnd.oma-scws-config":{"source":"iana"},"application/vnd.oma-scws-http-request":{"source":"iana"},"application/vnd.oma-scws-http-response":{"source":"iana"},"application/vnd.oma.bcast.associated-procedure-parameter+xml":{"source":"iana","compressible":true},"application/vnd.oma.bcast.drm-trigger+xml":{"source":"iana","compressible":true},"application/vnd.oma.bcast.imd+xml":{"source":"iana","compressible":true},"application/vnd.oma.bcast.ltkm":{"source":"iana"},"application/vnd.oma.bcast.notification+xml":{"source":"iana","compressible":true},"application/vnd.oma.bcast.provisioningtrigger":{"source":"iana"},"application/vnd.oma.bcast.sgboot":{"source":"iana"},"application/vnd.oma.bcast.sgdd+xml":{"source":"iana","compressible":true},"application/vnd.oma.bcast.sgdu":{"source":"iana"},"application/vnd.oma.bcast.simple-symbol-container":{"source":"iana"},"application/vnd.oma.bcast.smartcard-trigger+xml":{"source":"iana","compressible":true},"application/vnd.oma.bcast.sprov+xml":{"source":"iana","compressible":true},"application/vnd.oma.bcast.stkm":{"source":"iana"},"application/vnd.oma.cab-address-book+xml":{"source":"iana","compressible":true},"application/vnd.oma.cab-feature-handler+xml":{"source":"iana","compressible":true},"application/vnd.oma.cab-pcc+xml":{"source":"iana","compressible":true},"application/vnd.oma.cab-subs-invite+xml":{"source":"iana","compressible":true},"application/vnd.oma.cab-user-prefs+xml":{"source":"iana","compressible":true},"application/vnd.oma.dcd":{"source":"iana"},"application/vnd.oma.dcdc":{"source":"iana"},"application/vnd.oma.dd2+xml":{"source":"iana","compressible":true,"extensions":["dd2"]},"application/vnd.oma.drm.risd+xml":{"source":"iana","compressible":true},"application/vnd.oma.group-usage-list+xml":{"source":"iana","compressible":true},"application/vnd.oma.lwm2m+json":{"source":"iana","compressible":true},"application/vnd.oma.lwm2m+tlv":{"source":"iana"},"application/vnd.oma.pal+xml":{"source":"iana","compressible":true},"application/vnd.oma.poc.detailed-progress-report+xml":{"source":"iana","compressible":true},"application/vnd.oma.poc.final-report+xml":{"source":"iana","compressible":true},"application/vnd.oma.poc.groups+xml":{"source":"iana","compressible":true},"application/vnd.oma.poc.invocation-descriptor+xml":{"source":"iana","compressible":true},"application/vnd.oma.poc.optimized-progress-report+xml":{"source":"iana","compressible":true},"application/vnd.oma.push":{"source":"iana"},"application/vnd.oma.scidm.messages+xml":{"source":"iana","compressible":true},"application/vnd.oma.xcap-directory+xml":{"source":"iana","compressible":true},"application/vnd.omads-email+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/vnd.omads-file+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/vnd.omads-folder+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/vnd.omaloc-supl-init":{"source":"iana"},"application/vnd.onepager":{"source":"iana"},"application/vnd.onepagertamp":{"source":"iana"},"application/vnd.onepagertamx":{"source":"iana"},"application/vnd.onepagertat":{"source":"iana"},"application/vnd.onepagertatp":{"source":"iana"},"application/vnd.onepagertatx":{"source":"iana"},"application/vnd.openblox.game+xml":{"source":"iana","compressible":true,"extensions":["obgx"]},"application/vnd.openblox.game-binary":{"source":"iana"},"application/vnd.openeye.oeb":{"source":"iana"},"application/vnd.openofficeorg.extension":{"source":"apache","extensions":["oxt"]},"application/vnd.openstreetmap.data+xml":{"source":"iana","compressible":true,"extensions":["osm"]},"application/vnd.openxmlformats-officedocument.custom-properties+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.customxmlproperties+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.drawing+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.drawingml.chart+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.drawingml.chartshapes+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.drawingml.diagramcolors+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.drawingml.diagramdata+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.drawingml.diagramlayout+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.drawingml.diagramstyle+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.extended-properties+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.commentauthors+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.comments+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.handoutmaster+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.notesmaster+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.notesslide+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.presentation":{"source":"iana","compressible":false,"extensions":["pptx"]},"application/vnd.openxmlformats-officedocument.presentationml.presentation.main+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.presprops+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.slide":{"source":"iana","extensions":["sldx"]},"application/vnd.openxmlformats-officedocument.presentationml.slide+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.slidelayout+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.slidemaster+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.slideshow":{"source":"iana","extensions":["ppsx"]},"application/vnd.openxmlformats-officedocument.presentationml.slideshow.main+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.slideupdateinfo+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.tablestyles+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.tags+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.template":{"source":"iana","extensions":["potx"]},"application/vnd.openxmlformats-officedocument.presentationml.template.main+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.presentationml.viewprops+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.calcchain+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.chartsheet+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.comments+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.connections+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.dialogsheet+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.externallink+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.pivotcachedefinition+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.pivotcacherecords+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.pivottable+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.querytable+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.revisionheaders+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.revisionlog+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.sharedstrings+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet":{"source":"iana","compressible":false,"extensions":["xlsx"]},"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.sheetmetadata+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.table+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.tablesinglecells+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.template":{"source":"iana","extensions":["xltx"]},"application/vnd.openxmlformats-officedocument.spreadsheetml.template.main+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.usernames+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.volatiledependencies+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.theme+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.themeoverride+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.vmldrawing":{"source":"iana"},"application/vnd.openxmlformats-officedocument.wordprocessingml.comments+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.document":{"source":"iana","compressible":false,"extensions":["docx"]},"application/vnd.openxmlformats-officedocument.wordprocessingml.document.glossary+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.endnotes+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.fonttable+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.footer+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.footnotes+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.numbering+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.template":{"source":"iana","extensions":["dotx"]},"application/vnd.openxmlformats-officedocument.wordprocessingml.template.main+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-officedocument.wordprocessingml.websettings+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-package.core-properties+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-package.digital-signature-xmlsignature+xml":{"source":"iana","compressible":true},"application/vnd.openxmlformats-package.relationships+xml":{"source":"iana","compressible":true},"application/vnd.oracle.resource+json":{"source":"iana","compressible":true},"application/vnd.orange.indata":{"source":"iana"},"application/vnd.osa.netdeploy":{"source":"iana"},"application/vnd.osgeo.mapguide.package":{"source":"iana","extensions":["mgp"]},"application/vnd.osgi.bundle":{"source":"iana"},"application/vnd.osgi.dp":{"source":"iana","extensions":["dp"]},"application/vnd.osgi.subsystem":{"source":"iana","extensions":["esa"]},"application/vnd.otps.ct-kip+xml":{"source":"iana","compressible":true},"application/vnd.oxli.countgraph":{"source":"iana"},"application/vnd.pagerduty+json":{"source":"iana","compressible":true},"application/vnd.palm":{"source":"iana","extensions":["pdb","pqa","oprc"]},"application/vnd.panoply":{"source":"iana"},"application/vnd.paos.xml":{"source":"iana"},"application/vnd.patentdive":{"source":"iana"},"application/vnd.patientecommsdoc":{"source":"iana"},"application/vnd.pawaafile":{"source":"iana","extensions":["paw"]},"application/vnd.pcos":{"source":"iana"},"application/vnd.pg.format":{"source":"iana","extensions":["str"]},"application/vnd.pg.osasli":{"source":"iana","extensions":["ei6"]},"application/vnd.piaccess.application-licence":{"source":"iana"},"application/vnd.picsel":{"source":"iana","extensions":["efif"]},"application/vnd.pmi.widget":{"source":"iana","extensions":["wg"]},"application/vnd.poc.group-advertisement+xml":{"source":"iana","compressible":true},"application/vnd.pocketlearn":{"source":"iana","extensions":["plf"]},"application/vnd.powerbuilder6":{"source":"iana","extensions":["pbd"]},"application/vnd.powerbuilder6-s":{"source":"iana"},"application/vnd.powerbuilder7":{"source":"iana"},"application/vnd.powerbuilder7-s":{"source":"iana"},"application/vnd.powerbuilder75":{"source":"iana"},"application/vnd.powerbuilder75-s":{"source":"iana"},"application/vnd.preminet":{"source":"iana"},"application/vnd.previewsystems.box":{"source":"iana","extensions":["box"]},"application/vnd.proteus.magazine":{"source":"iana","extensions":["mgz"]},"application/vnd.psfs":{"source":"iana"},"application/vnd.publishare-delta-tree":{"source":"iana","extensions":["qps"]},"application/vnd.pvi.ptid1":{"source":"iana","extensions":["ptid"]},"application/vnd.pwg-multiplexed":{"source":"iana"},"application/vnd.pwg-xhtml-print+xml":{"source":"iana","compressible":true},"application/vnd.qualcomm.brew-app-res":{"source":"iana"},"application/vnd.quarantainenet":{"source":"iana"},"application/vnd.quark.quarkxpress":{"source":"iana","extensions":["qxd","qxt","qwd","qwt","qxl","qxb"]},"application/vnd.quobject-quoxdocument":{"source":"iana"},"application/vnd.radisys.moml+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-audit+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-audit-conf+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-audit-conn+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-audit-dialog+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-audit-stream+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-conf+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-dialog+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-dialog-base+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-dialog-fax-detect+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-dialog-fax-sendrecv+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-dialog-group+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-dialog-speech+xml":{"source":"iana","compressible":true},"application/vnd.radisys.msml-dialog-transform+xml":{"source":"iana","compressible":true},"application/vnd.rainstor.data":{"source":"iana"},"application/vnd.rapid":{"source":"iana"},"application/vnd.rar":{"source":"iana"},"application/vnd.realvnc.bed":{"source":"iana","extensions":["bed"]},"application/vnd.recordare.musicxml":{"source":"iana","extensions":["mxl"]},"application/vnd.recordare.musicxml+xml":{"source":"iana","compressible":true,"extensions":["musicxml"]},"application/vnd.renlearn.rlprint":{"source":"iana"},"application/vnd.restful+json":{"source":"iana","compressible":true},"application/vnd.rig.cryptonote":{"source":"iana","extensions":["cryptonote"]},"application/vnd.rim.cod":{"source":"apache","extensions":["cod"]},"application/vnd.rn-realmedia":{"source":"apache","extensions":["rm"]},"application/vnd.rn-realmedia-vbr":{"source":"apache","extensions":["rmvb"]},"application/vnd.route66.link66+xml":{"source":"iana","compressible":true,"extensions":["link66"]},"application/vnd.rs-274x":{"source":"iana"},"application/vnd.ruckus.download":{"source":"iana"},"application/vnd.s3sms":{"source":"iana"},"application/vnd.sailingtracker.track":{"source":"iana","extensions":["st"]},"application/vnd.sar":{"source":"iana"},"application/vnd.sbm.cid":{"source":"iana"},"application/vnd.sbm.mid2":{"source":"iana"},"application/vnd.scribus":{"source":"iana"},"application/vnd.sealed.3df":{"source":"iana"},"application/vnd.sealed.csf":{"source":"iana"},"application/vnd.sealed.doc":{"source":"iana"},"application/vnd.sealed.eml":{"source":"iana"},"application/vnd.sealed.mht":{"source":"iana"},"application/vnd.sealed.net":{"source":"iana"},"application/vnd.sealed.ppt":{"source":"iana"},"application/vnd.sealed.tiff":{"source":"iana"},"application/vnd.sealed.xls":{"source":"iana"},"application/vnd.sealedmedia.softseal.html":{"source":"iana"},"application/vnd.sealedmedia.softseal.pdf":{"source":"iana"},"application/vnd.seemail":{"source":"iana","extensions":["see"]},"application/vnd.sema":{"source":"iana","extensions":["sema"]},"application/vnd.semd":{"source":"iana","extensions":["semd"]},"application/vnd.semf":{"source":"iana","extensions":["semf"]},"application/vnd.shade-save-file":{"source":"iana"},"application/vnd.shana.informed.formdata":{"source":"iana","extensions":["ifm"]},"application/vnd.shana.informed.formtemplate":{"source":"iana","extensions":["itp"]},"application/vnd.shana.informed.interchange":{"source":"iana","extensions":["iif"]},"application/vnd.shana.informed.package":{"source":"iana","extensions":["ipk"]},"application/vnd.shootproof+json":{"source":"iana","compressible":true},"application/vnd.shopkick+json":{"source":"iana","compressible":true},"application/vnd.shp":{"source":"iana"},"application/vnd.shx":{"source":"iana"},"application/vnd.sigrok.session":{"source":"iana"},"application/vnd.simtech-mindmapper":{"source":"iana","extensions":["twd","twds"]},"application/vnd.siren+json":{"source":"iana","compressible":true},"application/vnd.smaf":{"source":"iana","extensions":["mmf"]},"application/vnd.smart.notebook":{"source":"iana"},"application/vnd.smart.teacher":{"source":"iana","extensions":["teacher"]},"application/vnd.snesdev-page-table":{"source":"iana"},"application/vnd.software602.filler.form+xml":{"source":"iana","compressible":true,"extensions":["fo"]},"application/vnd.software602.filler.form-xml-zip":{"source":"iana"},"application/vnd.solent.sdkm+xml":{"source":"iana","compressible":true,"extensions":["sdkm","sdkd"]},"application/vnd.spotfire.dxp":{"source":"iana","extensions":["dxp"]},"application/vnd.spotfire.sfs":{"source":"iana","extensions":["sfs"]},"application/vnd.sqlite3":{"source":"iana"},"application/vnd.sss-cod":{"source":"iana"},"application/vnd.sss-dtf":{"source":"iana"},"application/vnd.sss-ntf":{"source":"iana"},"application/vnd.stardivision.calc":{"source":"apache","extensions":["sdc"]},"application/vnd.stardivision.draw":{"source":"apache","extensions":["sda"]},"application/vnd.stardivision.impress":{"source":"apache","extensions":["sdd"]},"application/vnd.stardivision.math":{"source":"apache","extensions":["smf"]},"application/vnd.stardivision.writer":{"source":"apache","extensions":["sdw","vor"]},"application/vnd.stardivision.writer-global":{"source":"apache","extensions":["sgl"]},"application/vnd.stepmania.package":{"source":"iana","extensions":["smzip"]},"application/vnd.stepmania.stepchart":{"source":"iana","extensions":["sm"]},"application/vnd.street-stream":{"source":"iana"},"application/vnd.sun.wadl+xml":{"source":"iana","compressible":true,"extensions":["wadl"]},"application/vnd.sun.xml.calc":{"source":"apache","extensions":["sxc"]},"application/vnd.sun.xml.calc.template":{"source":"apache","extensions":["stc"]},"application/vnd.sun.xml.draw":{"source":"apache","extensions":["sxd"]},"application/vnd.sun.xml.draw.template":{"source":"apache","extensions":["std"]},"application/vnd.sun.xml.impress":{"source":"apache","extensions":["sxi"]},"application/vnd.sun.xml.impress.template":{"source":"apache","extensions":["sti"]},"application/vnd.sun.xml.math":{"source":"apache","extensions":["sxm"]},"application/vnd.sun.xml.writer":{"source":"apache","extensions":["sxw"]},"application/vnd.sun.xml.writer.global":{"source":"apache","extensions":["sxg"]},"application/vnd.sun.xml.writer.template":{"source":"apache","extensions":["stw"]},"application/vnd.sus-calendar":{"source":"iana","extensions":["sus","susp"]},"application/vnd.svd":{"source":"iana","extensions":["svd"]},"application/vnd.swiftview-ics":{"source":"iana"},"application/vnd.symbian.install":{"source":"apache","extensions":["sis","sisx"]},"application/vnd.syncml+xml":{"source":"iana","charset":"UTF-8","compressible":true,"extensions":["xsm"]},"application/vnd.syncml.dm+wbxml":{"source":"iana","charset":"UTF-8","extensions":["bdm"]},"application/vnd.syncml.dm+xml":{"source":"iana","charset":"UTF-8","compressible":true,"extensions":["xdm"]},"application/vnd.syncml.dm.notification":{"source":"iana"},"application/vnd.syncml.dmddf+wbxml":{"source":"iana"},"application/vnd.syncml.dmddf+xml":{"source":"iana","charset":"UTF-8","compressible":true,"extensions":["ddf"]},"application/vnd.syncml.dmtnds+wbxml":{"source":"iana"},"application/vnd.syncml.dmtnds+xml":{"source":"iana","charset":"UTF-8","compressible":true},"application/vnd.syncml.ds.notification":{"source":"iana"},"application/vnd.tableschema+json":{"source":"iana","compressible":true},"application/vnd.tao.intent-module-archive":{"source":"iana","extensions":["tao"]},"application/vnd.tcpdump.pcap":{"source":"iana","extensions":["pcap","cap","dmp"]},"application/vnd.think-cell.ppttc+json":{"source":"iana","compressible":true},"application/vnd.tmd.mediaflex.api+xml":{"source":"iana","compressible":true},"application/vnd.tml":{"source":"iana"},"application/vnd.tmobile-livetv":{"source":"iana","extensions":["tmo"]},"application/vnd.tri.onesource":{"source":"iana"},"application/vnd.trid.tpt":{"source":"iana","extensions":["tpt"]},"application/vnd.triscape.mxs":{"source":"iana","extensions":["mxs"]},"application/vnd.trueapp":{"source":"iana","extensions":["tra"]},"application/vnd.truedoc":{"source":"iana"},"application/vnd.ubisoft.webplayer":{"source":"iana"},"application/vnd.ufdl":{"source":"iana","extensions":["ufd","ufdl"]},"application/vnd.uiq.theme":{"source":"iana","extensions":["utz"]},"application/vnd.umajin":{"source":"iana","extensions":["umj"]},"application/vnd.unity":{"source":"iana","extensions":["unityweb"]},"application/vnd.uoml+xml":{"source":"iana","compressible":true,"extensions":["uoml"]},"application/vnd.uplanet.alert":{"source":"iana"},"application/vnd.uplanet.alert-wbxml":{"source":"iana"},"application/vnd.uplanet.bearer-choice":{"source":"iana"},"application/vnd.uplanet.bearer-choice-wbxml":{"source":"iana"},"application/vnd.uplanet.cacheop":{"source":"iana"},"application/vnd.uplanet.cacheop-wbxml":{"source":"iana"},"application/vnd.uplanet.channel":{"source":"iana"},"application/vnd.uplanet.channel-wbxml":{"source":"iana"},"application/vnd.uplanet.list":{"source":"iana"},"application/vnd.uplanet.list-wbxml":{"source":"iana"},"application/vnd.uplanet.listcmd":{"source":"iana"},"application/vnd.uplanet.listcmd-wbxml":{"source":"iana"},"application/vnd.uplanet.signal":{"source":"iana"},"application/vnd.uri-map":{"source":"iana"},"application/vnd.valve.source.material":{"source":"iana"},"application/vnd.vcx":{"source":"iana","extensions":["vcx"]},"application/vnd.vd-study":{"source":"iana"},"application/vnd.vectorworks":{"source":"iana"},"application/vnd.vel+json":{"source":"iana","compressible":true},"application/vnd.verimatrix.vcas":{"source":"iana"},"application/vnd.veryant.thin":{"source":"iana"},"application/vnd.ves.encrypted":{"source":"iana"},"application/vnd.vidsoft.vidconference":{"source":"iana"},"application/vnd.visio":{"source":"iana","extensions":["vsd","vst","vss","vsw"]},"application/vnd.visionary":{"source":"iana","extensions":["vis"]},"application/vnd.vividence.scriptfile":{"source":"iana"},"application/vnd.vsf":{"source":"iana","extensions":["vsf"]},"application/vnd.wap.sic":{"source":"iana"},"application/vnd.wap.slc":{"source":"iana"},"application/vnd.wap.wbxml":{"source":"iana","charset":"UTF-8","extensions":["wbxml"]},"application/vnd.wap.wmlc":{"source":"iana","extensions":["wmlc"]},"application/vnd.wap.wmlscriptc":{"source":"iana","extensions":["wmlsc"]},"application/vnd.webturbo":{"source":"iana","extensions":["wtb"]},"application/vnd.wfa.p2p":{"source":"iana"},"application/vnd.wfa.wsc":{"source":"iana"},"application/vnd.windows.devicepairing":{"source":"iana"},"application/vnd.wmc":{"source":"iana"},"application/vnd.wmf.bootstrap":{"source":"iana"},"application/vnd.wolfram.mathematica":{"source":"iana"},"application/vnd.wolfram.mathematica.package":{"source":"iana"},"application/vnd.wolfram.player":{"source":"iana","extensions":["nbp"]},"application/vnd.wordperfect":{"source":"iana","extensions":["wpd"]},"application/vnd.wqd":{"source":"iana","extensions":["wqd"]},"application/vnd.wrq-hp3000-labelled":{"source":"iana"},"application/vnd.wt.stf":{"source":"iana","extensions":["stf"]},"application/vnd.wv.csp+wbxml":{"source":"iana"},"application/vnd.wv.csp+xml":{"source":"iana","compressible":true},"application/vnd.wv.ssp+xml":{"source":"iana","compressible":true},"application/vnd.xacml+json":{"source":"iana","compressible":true},"application/vnd.xara":{"source":"iana","extensions":["xar"]},"application/vnd.xfdl":{"source":"iana","extensions":["xfdl"]},"application/vnd.xfdl.webform":{"source":"iana"},"application/vnd.xmi+xml":{"source":"iana","compressible":true},"application/vnd.xmpie.cpkg":{"source":"iana"},"application/vnd.xmpie.dpkg":{"source":"iana"},"application/vnd.xmpie.plan":{"source":"iana"},"application/vnd.xmpie.ppkg":{"source":"iana"},"application/vnd.xmpie.xlim":{"source":"iana"},"application/vnd.yamaha.hv-dic":{"source":"iana","extensions":["hvd"]},"application/vnd.yamaha.hv-script":{"source":"iana","extensions":["hvs"]},"application/vnd.yamaha.hv-voice":{"source":"iana","extensions":["hvp"]},"application/vnd.yamaha.openscoreformat":{"source":"iana","extensions":["osf"]},"application/vnd.yamaha.openscoreformat.osfpvg+xml":{"source":"iana","compressible":true,"extensions":["osfpvg"]},"application/vnd.yamaha.remote-setup":{"source":"iana"},"application/vnd.yamaha.smaf-audio":{"source":"iana","extensions":["saf"]},"application/vnd.yamaha.smaf-phrase":{"source":"iana","extensions":["spf"]},"application/vnd.yamaha.through-ngn":{"source":"iana"},"application/vnd.yamaha.tunnel-udpencap":{"source":"iana"},"application/vnd.yaoweme":{"source":"iana"},"application/vnd.yellowriver-custom-menu":{"source":"iana","extensions":["cmp"]},"application/vnd.youtube.yt":{"source":"iana"},"application/vnd.zul":{"source":"iana","extensions":["zir","zirz"]},"application/vnd.zzazz.deck+xml":{"source":"iana","compressible":true,"extensions":["zaz"]},"application/voicexml+xml":{"source":"iana","compressible":true,"extensions":["vxml"]},"application/voucher-cms+json":{"source":"iana","compressible":true},"application/vq-rtcpxr":{"source":"iana"},"application/wasm":{"compressible":true,"extensions":["wasm"]},"application/watcherinfo+xml":{"source":"iana","compressible":true},"application/webpush-options+json":{"source":"iana","compressible":true},"application/whoispp-query":{"source":"iana"},"application/whoispp-response":{"source":"iana"},"application/widget":{"source":"iana","extensions":["wgt"]},"application/winhlp":{"source":"apache","extensions":["hlp"]},"application/wita":{"source":"iana"},"application/wordperfect5.1":{"source":"iana"},"application/wsdl+xml":{"source":"iana","compressible":true,"extensions":["wsdl"]},"application/wspolicy+xml":{"source":"iana","compressible":true,"extensions":["wspolicy"]},"application/x-7z-compressed":{"source":"apache","compressible":false,"extensions":["7z"]},"application/x-abiword":{"source":"apache","extensions":["abw"]},"application/x-ace-compressed":{"source":"apache","extensions":["ace"]},"application/x-amf":{"source":"apache"},"application/x-apple-diskimage":{"source":"apache","extensions":["dmg"]},"application/x-arj":{"compressible":false,"extensions":["arj"]},"application/x-authorware-bin":{"source":"apache","extensions":["aab","x32","u32","vox"]},"application/x-authorware-map":{"source":"apache","extensions":["aam"]},"application/x-authorware-seg":{"source":"apache","extensions":["aas"]},"application/x-bcpio":{"source":"apache","extensions":["bcpio"]},"application/x-bdoc":{"compressible":false,"extensions":["bdoc"]},"application/x-bittorrent":{"source":"apache","extensions":["torrent"]},"application/x-blorb":{"source":"apache","extensions":["blb","blorb"]},"application/x-bzip":{"source":"apache","compressible":false,"extensions":["bz"]},"application/x-bzip2":{"source":"apache","compressible":false,"extensions":["bz2","boz"]},"application/x-cbr":{"source":"apache","extensions":["cbr","cba","cbt","cbz","cb7"]},"application/x-cdlink":{"source":"apache","extensions":["vcd"]},"application/x-cfs-compressed":{"source":"apache","extensions":["cfs"]},"application/x-chat":{"source":"apache","extensions":["chat"]},"application/x-chess-pgn":{"source":"apache","extensions":["pgn"]},"application/x-chrome-extension":{"extensions":["crx"]},"application/x-cocoa":{"source":"nginx","extensions":["cco"]},"application/x-compress":{"source":"apache"},"application/x-conference":{"source":"apache","extensions":["nsc"]},"application/x-cpio":{"source":"apache","extensions":["cpio"]},"application/x-csh":{"source":"apache","extensions":["csh"]},"application/x-deb":{"compressible":false},"application/x-debian-package":{"source":"apache","extensions":["deb","udeb"]},"application/x-dgc-compressed":{"source":"apache","extensions":["dgc"]},"application/x-director":{"source":"apache","extensions":["dir","dcr","dxr","cst","cct","cxt","w3d","fgd","swa"]},"application/x-doom":{"source":"apache","extensions":["wad"]},"application/x-dtbncx+xml":{"source":"apache","compressible":true,"extensions":["ncx"]},"application/x-dtbook+xml":{"source":"apache","compressible":true,"extensions":["dtb"]},"application/x-dtbresource+xml":{"source":"apache","compressible":true,"extensions":["res"]},"application/x-dvi":{"source":"apache","compressible":false,"extensions":["dvi"]},"application/x-envoy":{"source":"apache","extensions":["evy"]},"application/x-eva":{"source":"apache","extensions":["eva"]},"application/x-font-bdf":{"source":"apache","extensions":["bdf"]},"application/x-font-dos":{"source":"apache"},"application/x-font-framemaker":{"source":"apache"},"application/x-font-ghostscript":{"source":"apache","extensions":["gsf"]},"application/x-font-libgrx":{"source":"apache"},"application/x-font-linux-psf":{"source":"apache","extensions":["psf"]},"application/x-font-pcf":{"source":"apache","extensions":["pcf"]},"application/x-font-snf":{"source":"apache","extensions":["snf"]},"application/x-font-speedo":{"source":"apache"},"application/x-font-sunos-news":{"source":"apache"},"application/x-font-type1":{"source":"apache","extensions":["pfa","pfb","pfm","afm"]},"application/x-font-vfont":{"source":"apache"},"application/x-freearc":{"source":"apache","extensions":["arc"]},"application/x-futuresplash":{"source":"apache","extensions":["spl"]},"application/x-gca-compressed":{"source":"apache","extensions":["gca"]},"application/x-glulx":{"source":"apache","extensions":["ulx"]},"application/x-gnumeric":{"source":"apache","extensions":["gnumeric"]},"application/x-gramps-xml":{"source":"apache","extensions":["gramps"]},"application/x-gtar":{"source":"apache","extensions":["gtar"]},"application/x-gzip":{"source":"apache"},"application/x-hdf":{"source":"apache","extensions":["hdf"]},"application/x-httpd-php":{"compressible":true,"extensions":["php"]},"application/x-install-instructions":{"source":"apache","extensions":["install"]},"application/x-iso9660-image":{"source":"apache","extensions":["iso"]},"application/x-java-archive-diff":{"source":"nginx","extensions":["jardiff"]},"application/x-java-jnlp-file":{"source":"apache","compressible":false,"extensions":["jnlp"]},"application/x-javascript":{"compressible":true},"application/x-keepass2":{"extensions":["kdbx"]},"application/x-latex":{"source":"apache","compressible":false,"extensions":["latex"]},"application/x-lua-bytecode":{"extensions":["luac"]},"application/x-lzh-compressed":{"source":"apache","extensions":["lzh","lha"]},"application/x-makeself":{"source":"nginx","extensions":["run"]},"application/x-mie":{"source":"apache","extensions":["mie"]},"application/x-mobipocket-ebook":{"source":"apache","extensions":["prc","mobi"]},"application/x-mpegurl":{"compressible":false},"application/x-ms-application":{"source":"apache","extensions":["application"]},"application/x-ms-shortcut":{"source":"apache","extensions":["lnk"]},"application/x-ms-wmd":{"source":"apache","extensions":["wmd"]},"application/x-ms-wmz":{"source":"apache","extensions":["wmz"]},"application/x-ms-xbap":{"source":"apache","extensions":["xbap"]},"application/x-msaccess":{"source":"apache","extensions":["mdb"]},"application/x-msbinder":{"source":"apache","extensions":["obd"]},"application/x-mscardfile":{"source":"apache","extensions":["crd"]},"application/x-msclip":{"source":"apache","extensions":["clp"]},"application/x-msdos-program":{"extensions":["exe"]},"application/x-msdownload":{"source":"apache","extensions":["exe","dll","com","bat","msi"]},"application/x-msmediaview":{"source":"apache","extensions":["mvb","m13","m14"]},"application/x-msmetafile":{"source":"apache","extensions":["wmf","wmz","emf","emz"]},"application/x-msmoney":{"source":"apache","extensions":["mny"]},"application/x-mspublisher":{"source":"apache","extensions":["pub"]},"application/x-msschedule":{"source":"apache","extensions":["scd"]},"application/x-msterminal":{"source":"apache","extensions":["trm"]},"application/x-mswrite":{"source":"apache","extensions":["wri"]},"application/x-netcdf":{"source":"apache","extensions":["nc","cdf"]},"application/x-ns-proxy-autoconfig":{"compressible":true,"extensions":["pac"]},"application/x-nzb":{"source":"apache","extensions":["nzb"]},"application/x-perl":{"source":"nginx","extensions":["pl","pm"]},"application/x-pilot":{"source":"nginx","extensions":["prc","pdb"]},"application/x-pkcs12":{"source":"apache","compressible":false,"extensions":["p12","pfx"]},"application/x-pkcs7-certificates":{"source":"apache","extensions":["p7b","spc"]},"application/x-pkcs7-certreqresp":{"source":"apache","extensions":["p7r"]},"application/x-pki-message":{"source":"iana"},"application/x-rar-compressed":{"source":"apache","compressible":false,"extensions":["rar"]},"application/x-redhat-package-manager":{"source":"nginx","extensions":["rpm"]},"application/x-research-info-systems":{"source":"apache","extensions":["ris"]},"application/x-sea":{"source":"nginx","extensions":["sea"]},"application/x-sh":{"source":"apache","compressible":true,"extensions":["sh"]},"application/x-shar":{"source":"apache","extensions":["shar"]},"application/x-shockwave-flash":{"source":"apache","compressible":false,"extensions":["swf"]},"application/x-silverlight-app":{"source":"apache","extensions":["xap"]},"application/x-sql":{"source":"apache","extensions":["sql"]},"application/x-stuffit":{"source":"apache","compressible":false,"extensions":["sit"]},"application/x-stuffitx":{"source":"apache","extensions":["sitx"]},"application/x-subrip":{"source":"apache","extensions":["srt"]},"application/x-sv4cpio":{"source":"apache","extensions":["sv4cpio"]},"application/x-sv4crc":{"source":"apache","extensions":["sv4crc"]},"application/x-t3vm-image":{"source":"apache","extensions":["t3"]},"application/x-tads":{"source":"apache","extensions":["gam"]},"application/x-tar":{"source":"apache","compressible":true,"extensions":["tar"]},"application/x-tcl":{"source":"apache","extensions":["tcl","tk"]},"application/x-tex":{"source":"apache","extensions":["tex"]},"application/x-tex-tfm":{"source":"apache","extensions":["tfm"]},"application/x-texinfo":{"source":"apache","extensions":["texinfo","texi"]},"application/x-tgif":{"source":"apache","extensions":["obj"]},"application/x-ustar":{"source":"apache","extensions":["ustar"]},"application/x-virtualbox-hdd":{"compressible":true,"extensions":["hdd"]},"application/x-virtualbox-ova":{"compressible":true,"extensions":["ova"]},"application/x-virtualbox-ovf":{"compressible":true,"extensions":["ovf"]},"application/x-virtualbox-vbox":{"compressible":true,"extensions":["vbox"]},"application/x-virtualbox-vbox-extpack":{"compressible":false,"extensions":["vbox-extpack"]},"application/x-virtualbox-vdi":{"compressible":true,"extensions":["vdi"]},"application/x-virtualbox-vhd":{"compressible":true,"extensions":["vhd"]},"application/x-virtualbox-vmdk":{"compressible":true,"extensions":["vmdk"]},"application/x-wais-source":{"source":"apache","extensions":["src"]},"application/x-web-app-manifest+json":{"compressible":true,"extensions":["webapp"]},"application/x-www-form-urlencoded":{"source":"iana","compressible":true},"application/x-x509-ca-cert":{"source":"iana","extensions":["der","crt","pem"]},"application/x-x509-ca-ra-cert":{"source":"iana"},"application/x-x509-next-ca-cert":{"source":"iana"},"application/x-xfig":{"source":"apache","extensions":["fig"]},"application/x-xliff+xml":{"source":"apache","compressible":true,"extensions":["xlf"]},"application/x-xpinstall":{"source":"apache","compressible":false,"extensions":["xpi"]},"application/x-xz":{"source":"apache","extensions":["xz"]},"application/x-zmachine":{"source":"apache","extensions":["z1","z2","z3","z4","z5","z6","z7","z8"]},"application/x400-bp":{"source":"iana"},"application/xacml+xml":{"source":"iana","compressible":true},"application/xaml+xml":{"source":"apache","compressible":true,"extensions":["xaml"]},"application/xcap-att+xml":{"source":"iana","compressible":true,"extensions":["xav"]},"application/xcap-caps+xml":{"source":"iana","compressible":true,"extensions":["xca"]},"application/xcap-diff+xml":{"source":"iana","compressible":true,"extensions":["xdf"]},"application/xcap-el+xml":{"source":"iana","compressible":true,"extensions":["xel"]},"application/xcap-error+xml":{"source":"iana","compressible":true,"extensions":["xer"]},"application/xcap-ns+xml":{"source":"iana","compressible":true,"extensions":["xns"]},"application/xcon-conference-info+xml":{"source":"iana","compressible":true},"application/xcon-conference-info-diff+xml":{"source":"iana","compressible":true},"application/xenc+xml":{"source":"iana","compressible":true,"extensions":["xenc"]},"application/xhtml+xml":{"source":"iana","compressible":true,"extensions":["xhtml","xht"]},"application/xhtml-voice+xml":{"source":"apache","compressible":true},"application/xliff+xml":{"source":"iana","compressible":true,"extensions":["xlf"]},"application/xml":{"source":"iana","compressible":true,"extensions":["xml","xsl","xsd","rng"]},"application/xml-dtd":{"source":"iana","compressible":true,"extensions":["dtd"]},"application/xml-external-parsed-entity":{"source":"iana"},"application/xml-patch+xml":{"source":"iana","compressible":true},"application/xmpp+xml":{"source":"iana","compressible":true},"application/xop+xml":{"source":"iana","compressible":true,"extensions":["xop"]},"application/xproc+xml":{"source":"apache","compressible":true,"extensions":["xpl"]},"application/xslt+xml":{"source":"iana","compressible":true,"extensions":["xslt"]},"application/xspf+xml":{"source":"apache","compressible":true,"extensions":["xspf"]},"application/xv+xml":{"source":"iana","compressible":true,"extensions":["mxml","xhvml","xvml","xvm"]},"application/yang":{"source":"iana","extensions":["yang"]},"application/yang-data+json":{"source":"iana","compressible":true},"application/yang-data+xml":{"source":"iana","compressible":true},"application/yang-patch+json":{"source":"iana","compressible":true},"application/yang-patch+xml":{"source":"iana","compressible":true},"application/yin+xml":{"source":"iana","compressible":true,"extensions":["yin"]},"application/zip":{"source":"iana","compressible":false,"extensions":["zip"]},"application/zlib":{"source":"iana"},"application/zstd":{"source":"iana"},"audio/1d-interleaved-parityfec":{"source":"iana"},"audio/32kadpcm":{"source":"iana"},"audio/3gpp":{"source":"iana","compressible":false,"extensions":["3gpp"]},"audio/3gpp2":{"source":"iana"},"audio/aac":{"source":"iana"},"audio/ac3":{"source":"iana"},"audio/adpcm":{"source":"apache","extensions":["adp"]},"audio/amr":{"source":"iana"},"audio/amr-wb":{"source":"iana"},"audio/amr-wb+":{"source":"iana"},"audio/aptx":{"source":"iana"},"audio/asc":{"source":"iana"},"audio/atrac-advanced-lossless":{"source":"iana"},"audio/atrac-x":{"source":"iana"},"audio/atrac3":{"source":"iana"},"audio/basic":{"source":"iana","compressible":false,"extensions":["au","snd"]},"audio/bv16":{"source":"iana"},"audio/bv32":{"source":"iana"},"audio/clearmode":{"source":"iana"},"audio/cn":{"source":"iana"},"audio/dat12":{"source":"iana"},"audio/dls":{"source":"iana"},"audio/dsr-es201108":{"source":"iana"},"audio/dsr-es202050":{"source":"iana"},"audio/dsr-es202211":{"source":"iana"},"audio/dsr-es202212":{"source":"iana"},"audio/dv":{"source":"iana"},"audio/dvi4":{"source":"iana"},"audio/eac3":{"source":"iana"},"audio/encaprtp":{"source":"iana"},"audio/evrc":{"source":"iana"},"audio/evrc-qcp":{"source":"iana"},"audio/evrc0":{"source":"iana"},"audio/evrc1":{"source":"iana"},"audio/evrcb":{"source":"iana"},"audio/evrcb0":{"source":"iana"},"audio/evrcb1":{"source":"iana"},"audio/evrcnw":{"source":"iana"},"audio/evrcnw0":{"source":"iana"},"audio/evrcnw1":{"source":"iana"},"audio/evrcwb":{"source":"iana"},"audio/evrcwb0":{"source":"iana"},"audio/evrcwb1":{"source":"iana"},"audio/evs":{"source":"iana"},"audio/flexfec":{"source":"iana"},"audio/fwdred":{"source":"iana"},"audio/g711-0":{"source":"iana"},"audio/g719":{"source":"iana"},"audio/g722":{"source":"iana"},"audio/g7221":{"source":"iana"},"audio/g723":{"source":"iana"},"audio/g726-16":{"source":"iana"},"audio/g726-24":{"source":"iana"},"audio/g726-32":{"source":"iana"},"audio/g726-40":{"source":"iana"},"audio/g728":{"source":"iana"},"audio/g729":{"source":"iana"},"audio/g7291":{"source":"iana"},"audio/g729d":{"source":"iana"},"audio/g729e":{"source":"iana"},"audio/gsm":{"source":"iana"},"audio/gsm-efr":{"source":"iana"},"audio/gsm-hr-08":{"source":"iana"},"audio/ilbc":{"source":"iana"},"audio/ip-mr_v2.5":{"source":"iana"},"audio/isac":{"source":"apache"},"audio/l16":{"source":"iana"},"audio/l20":{"source":"iana"},"audio/l24":{"source":"iana","compressible":false},"audio/l8":{"source":"iana"},"audio/lpc":{"source":"iana"},"audio/melp":{"source":"iana"},"audio/melp1200":{"source":"iana"},"audio/melp2400":{"source":"iana"},"audio/melp600":{"source":"iana"},"audio/mhas":{"source":"iana"},"audio/midi":{"source":"apache","extensions":["mid","midi","kar","rmi"]},"audio/mobile-xmf":{"source":"iana","extensions":["mxmf"]},"audio/mp3":{"compressible":false,"extensions":["mp3"]},"audio/mp4":{"source":"iana","compressible":false,"extensions":["m4a","mp4a"]},"audio/mp4a-latm":{"source":"iana"},"audio/mpa":{"source":"iana"},"audio/mpa-robust":{"source":"iana"},"audio/mpeg":{"source":"iana","compressible":false,"extensions":["mpga","mp2","mp2a","mp3","m2a","m3a"]},"audio/mpeg4-generic":{"source":"iana"},"audio/musepack":{"source":"apache"},"audio/ogg":{"source":"iana","compressible":false,"extensions":["oga","ogg","spx"]},"audio/opus":{"source":"iana"},"audio/parityfec":{"source":"iana"},"audio/pcma":{"source":"iana"},"audio/pcma-wb":{"source":"iana"},"audio/pcmu":{"source":"iana"},"audio/pcmu-wb":{"source":"iana"},"audio/prs.sid":{"source":"iana"},"audio/qcelp":{"source":"iana"},"audio/raptorfec":{"source":"iana"},"audio/red":{"source":"iana"},"audio/rtp-enc-aescm128":{"source":"iana"},"audio/rtp-midi":{"source":"iana"},"audio/rtploopback":{"source":"iana"},"audio/rtx":{"source":"iana"},"audio/s3m":{"source":"apache","extensions":["s3m"]},"audio/silk":{"source":"apache","extensions":["sil"]},"audio/smv":{"source":"iana"},"audio/smv-qcp":{"source":"iana"},"audio/smv0":{"source":"iana"},"audio/sp-midi":{"source":"iana"},"audio/speex":{"source":"iana"},"audio/t140c":{"source":"iana"},"audio/t38":{"source":"iana"},"audio/telephone-event":{"source":"iana"},"audio/tetra_acelp":{"source":"iana"},"audio/tetra_acelp_bb":{"source":"iana"},"audio/tone":{"source":"iana"},"audio/uemclip":{"source":"iana"},"audio/ulpfec":{"source":"iana"},"audio/usac":{"source":"iana"},"audio/vdvi":{"source":"iana"},"audio/vmr-wb":{"source":"iana"},"audio/vnd.3gpp.iufp":{"source":"iana"},"audio/vnd.4sb":{"source":"iana"},"audio/vnd.audiokoz":{"source":"iana"},"audio/vnd.celp":{"source":"iana"},"audio/vnd.cisco.nse":{"source":"iana"},"audio/vnd.cmles.radio-events":{"source":"iana"},"audio/vnd.cns.anp1":{"source":"iana"},"audio/vnd.cns.inf1":{"source":"iana"},"audio/vnd.dece.audio":{"source":"iana","extensions":["uva","uvva"]},"audio/vnd.digital-winds":{"source":"iana","extensions":["eol"]},"audio/vnd.dlna.adts":{"source":"iana"},"audio/vnd.dolby.heaac.1":{"source":"iana"},"audio/vnd.dolby.heaac.2":{"source":"iana"},"audio/vnd.dolby.mlp":{"source":"iana"},"audio/vnd.dolby.mps":{"source":"iana"},"audio/vnd.dolby.pl2":{"source":"iana"},"audio/vnd.dolby.pl2x":{"source":"iana"},"audio/vnd.dolby.pl2z":{"source":"iana"},"audio/vnd.dolby.pulse.1":{"source":"iana"},"audio/vnd.dra":{"source":"iana","extensions":["dra"]},"audio/vnd.dts":{"source":"iana","extensions":["dts"]},"audio/vnd.dts.hd":{"source":"iana","extensions":["dtshd"]},"audio/vnd.dts.uhd":{"source":"iana"},"audio/vnd.dvb.file":{"source":"iana"},"audio/vnd.everad.plj":{"source":"iana"},"audio/vnd.hns.audio":{"source":"iana"},"audio/vnd.lucent.voice":{"source":"iana","extensions":["lvp"]},"audio/vnd.ms-playready.media.pya":{"source":"iana","extensions":["pya"]},"audio/vnd.nokia.mobile-xmf":{"source":"iana"},"audio/vnd.nortel.vbk":{"source":"iana"},"audio/vnd.nuera.ecelp4800":{"source":"iana","extensions":["ecelp4800"]},"audio/vnd.nuera.ecelp7470":{"source":"iana","extensions":["ecelp7470"]},"audio/vnd.nuera.ecelp9600":{"source":"iana","extensions":["ecelp9600"]},"audio/vnd.octel.sbc":{"source":"iana"},"audio/vnd.presonus.multitrack":{"source":"iana"},"audio/vnd.qcelp":{"source":"iana"},"audio/vnd.rhetorex.32kadpcm":{"source":"iana"},"audio/vnd.rip":{"source":"iana","extensions":["rip"]},"audio/vnd.rn-realaudio":{"compressible":false},"audio/vnd.sealedmedia.softseal.mpeg":{"source":"iana"},"audio/vnd.vmx.cvsd":{"source":"iana"},"audio/vnd.wave":{"compressible":false},"audio/vorbis":{"source":"iana","compressible":false},"audio/vorbis-config":{"source":"iana"},"audio/wav":{"compressible":false,"extensions":["wav"]},"audio/wave":{"compressible":false,"extensions":["wav"]},"audio/webm":{"source":"apache","compressible":false,"extensions":["weba"]},"audio/x-aac":{"source":"apache","compressible":false,"extensions":["aac"]},"audio/x-aiff":{"source":"apache","extensions":["aif","aiff","aifc"]},"audio/x-caf":{"source":"apache","compressible":false,"extensions":["caf"]},"audio/x-flac":{"source":"apache","extensions":["flac"]},"audio/x-m4a":{"source":"nginx","extensions":["m4a"]},"audio/x-matroska":{"source":"apache","extensions":["mka"]},"audio/x-mpegurl":{"source":"apache","extensions":["m3u"]},"audio/x-ms-wax":{"source":"apache","extensions":["wax"]},"audio/x-ms-wma":{"source":"apache","extensions":["wma"]},"audio/x-pn-realaudio":{"source":"apache","extensions":["ram","ra"]},"audio/x-pn-realaudio-plugin":{"source":"apache","extensions":["rmp"]},"audio/x-realaudio":{"source":"nginx","extensions":["ra"]},"audio/x-tta":{"source":"apache"},"audio/x-wav":{"source":"apache","extensions":["wav"]},"audio/xm":{"source":"apache","extensions":["xm"]},"chemical/x-cdx":{"source":"apache","extensions":["cdx"]},"chemical/x-cif":{"source":"apache","extensions":["cif"]},"chemical/x-cmdf":{"source":"apache","extensions":["cmdf"]},"chemical/x-cml":{"source":"apache","extensions":["cml"]},"chemical/x-csml":{"source":"apache","extensions":["csml"]},"chemical/x-pdb":{"source":"apache"},"chemical/x-xyz":{"source":"apache","extensions":["xyz"]},"font/collection":{"source":"iana","extensions":["ttc"]},"font/otf":{"source":"iana","compressible":true,"extensions":["otf"]},"font/sfnt":{"source":"iana"},"font/ttf":{"source":"iana","compressible":true,"extensions":["ttf"]},"font/woff":{"source":"iana","extensions":["woff"]},"font/woff2":{"source":"iana","extensions":["woff2"]},"image/aces":{"source":"iana","extensions":["exr"]},"image/apng":{"compressible":false,"extensions":["apng"]},"image/avci":{"source":"iana"},"image/avcs":{"source":"iana"},"image/bmp":{"source":"iana","compressible":true,"extensions":["bmp"]},"image/cgm":{"source":"iana","extensions":["cgm"]},"image/dicom-rle":{"source":"iana","extensions":["drle"]},"image/emf":{"source":"iana","extensions":["emf"]},"image/fits":{"source":"iana","extensions":["fits"]},"image/g3fax":{"source":"iana","extensions":["g3"]},"image/gif":{"source":"iana","compressible":false,"extensions":["gif"]},"image/heic":{"source":"iana","extensions":["heic"]},"image/heic-sequence":{"source":"iana","extensions":["heics"]},"image/heif":{"source":"iana","extensions":["heif"]},"image/heif-sequence":{"source":"iana","extensions":["heifs"]},"image/hej2k":{"source":"iana","extensions":["hej2"]},"image/hsj2":{"source":"iana","extensions":["hsj2"]},"image/ief":{"source":"iana","extensions":["ief"]},"image/jls":{"source":"iana","extensions":["jls"]},"image/jp2":{"source":"iana","compressible":false,"extensions":["jp2","jpg2"]},"image/jpeg":{"source":"iana","compressible":false,"extensions":["jpeg","jpg","jpe"]},"image/jph":{"source":"iana","extensions":["jph"]},"image/jphc":{"source":"iana","extensions":["jhc"]},"image/jpm":{"source":"iana","compressible":false,"extensions":["jpm"]},"image/jpx":{"source":"iana","compressible":false,"extensions":["jpx","jpf"]},"image/jxr":{"source":"iana","extensions":["jxr"]},"image/jxra":{"source":"iana","extensions":["jxra"]},"image/jxrs":{"source":"iana","extensions":["jxrs"]},"image/jxs":{"source":"iana","extensions":["jxs"]},"image/jxsc":{"source":"iana","extensions":["jxsc"]},"image/jxsi":{"source":"iana","extensions":["jxsi"]},"image/jxss":{"source":"iana","extensions":["jxss"]},"image/ktx":{"source":"iana","extensions":["ktx"]},"image/naplps":{"source":"iana"},"image/pjpeg":{"compressible":false},"image/png":{"source":"iana","compressible":false,"extensions":["png"]},"image/prs.btif":{"source":"iana","extensions":["btif"]},"image/prs.pti":{"source":"iana","extensions":["pti"]},"image/pwg-raster":{"source":"iana"},"image/sgi":{"source":"apache","extensions":["sgi"]},"image/svg+xml":{"source":"iana","compressible":true,"extensions":["svg","svgz"]},"image/t38":{"source":"iana","extensions":["t38"]},"image/tiff":{"source":"iana","compressible":false,"extensions":["tif","tiff"]},"image/tiff-fx":{"source":"iana","extensions":["tfx"]},"image/vnd.adobe.photoshop":{"source":"iana","compressible":true,"extensions":["psd"]},"image/vnd.airzip.accelerator.azv":{"source":"iana","extensions":["azv"]},"image/vnd.cns.inf2":{"source":"iana"},"image/vnd.dece.graphic":{"source":"iana","extensions":["uvi","uvvi","uvg","uvvg"]},"image/vnd.djvu":{"source":"iana","extensions":["djvu","djv"]},"image/vnd.dvb.subtitle":{"source":"iana","extensions":["sub"]},"image/vnd.dwg":{"source":"iana","extensions":["dwg"]},"image/vnd.dxf":{"source":"iana","extensions":["dxf"]},"image/vnd.fastbidsheet":{"source":"iana","extensions":["fbs"]},"image/vnd.fpx":{"source":"iana","extensions":["fpx"]},"image/vnd.fst":{"source":"iana","extensions":["fst"]},"image/vnd.fujixerox.edmics-mmr":{"source":"iana","extensions":["mmr"]},"image/vnd.fujixerox.edmics-rlc":{"source":"iana","extensions":["rlc"]},"image/vnd.globalgraphics.pgb":{"source":"iana"},"image/vnd.microsoft.icon":{"source":"iana","extensions":["ico"]},"image/vnd.mix":{"source":"iana"},"image/vnd.mozilla.apng":{"source":"iana"},"image/vnd.ms-dds":{"extensions":["dds"]},"image/vnd.ms-modi":{"source":"iana","extensions":["mdi"]},"image/vnd.ms-photo":{"source":"apache","extensions":["wdp"]},"image/vnd.net-fpx":{"source":"iana","extensions":["npx"]},"image/vnd.radiance":{"source":"iana"},"image/vnd.sealed.png":{"source":"iana"},"image/vnd.sealedmedia.softseal.gif":{"source":"iana"},"image/vnd.sealedmedia.softseal.jpg":{"source":"iana"},"image/vnd.svf":{"source":"iana"},"image/vnd.tencent.tap":{"source":"iana","extensions":["tap"]},"image/vnd.valve.source.texture":{"source":"iana","extensions":["vtf"]},"image/vnd.wap.wbmp":{"source":"iana","extensions":["wbmp"]},"image/vnd.xiff":{"source":"iana","extensions":["xif"]},"image/vnd.zbrush.pcx":{"source":"iana","extensions":["pcx"]},"image/webp":{"source":"apache","extensions":["webp"]},"image/wmf":{"source":"iana","extensions":["wmf"]},"image/x-3ds":{"source":"apache","extensions":["3ds"]},"image/x-cmu-raster":{"source":"apache","extensions":["ras"]},"image/x-cmx":{"source":"apache","extensions":["cmx"]},"image/x-freehand":{"source":"apache","extensions":["fh","fhc","fh4","fh5","fh7"]},"image/x-icon":{"source":"apache","compressible":true,"extensions":["ico"]},"image/x-jng":{"source":"nginx","extensions":["jng"]},"image/x-mrsid-image":{"source":"apache","extensions":["sid"]},"image/x-ms-bmp":{"source":"nginx","compressible":true,"extensions":["bmp"]},"image/x-pcx":{"source":"apache","extensions":["pcx"]},"image/x-pict":{"source":"apache","extensions":["pic","pct"]},"image/x-portable-anymap":{"source":"apache","extensions":["pnm"]},"image/x-portable-bitmap":{"source":"apache","extensions":["pbm"]},"image/x-portable-graymap":{"source":"apache","extensions":["pgm"]},"image/x-portable-pixmap":{"source":"apache","extensions":["ppm"]},"image/x-rgb":{"source":"apache","extensions":["rgb"]},"image/x-tga":{"source":"apache","extensions":["tga"]},"image/x-xbitmap":{"source":"apache","extensions":["xbm"]},"image/x-xcf":{"compressible":false},"image/x-xpixmap":{"source":"apache","extensions":["xpm"]},"image/x-xwindowdump":{"source":"apache","extensions":["xwd"]},"message/cpim":{"source":"iana"},"message/delivery-status":{"source":"iana"},"message/disposition-notification":{"source":"iana","extensions":["disposition-notification"]},"message/external-body":{"source":"iana"},"message/feedback-report":{"source":"iana"},"message/global":{"source":"iana","extensions":["u8msg"]},"message/global-delivery-status":{"source":"iana","extensions":["u8dsn"]},"message/global-disposition-notification":{"source":"iana","extensions":["u8mdn"]},"message/global-headers":{"source":"iana","extensions":["u8hdr"]},"message/http":{"source":"iana","compressible":false},"message/imdn+xml":{"source":"iana","compressible":true},"message/news":{"source":"iana"},"message/partial":{"source":"iana","compressible":false},"message/rfc822":{"source":"iana","compressible":true,"extensions":["eml","mime"]},"message/s-http":{"source":"iana"},"message/sip":{"source":"iana"},"message/sipfrag":{"source":"iana"},"message/tracking-status":{"source":"iana"},"message/vnd.si.simp":{"source":"iana"},"message/vnd.wfa.wsc":{"source":"iana","extensions":["wsc"]},"model/3mf":{"source":"iana","extensions":["3mf"]},"model/gltf+json":{"source":"iana","compressible":true,"extensions":["gltf"]},"model/gltf-binary":{"source":"iana","compressible":true,"extensions":["glb"]},"model/iges":{"source":"iana","compressible":false,"extensions":["igs","iges"]},"model/mesh":{"source":"iana","compressible":false,"extensions":["msh","mesh","silo"]},"model/mtl":{"source":"iana","extensions":["mtl"]},"model/obj":{"source":"iana","extensions":["obj"]},"model/stl":{"source":"iana","extensions":["stl"]},"model/vnd.collada+xml":{"source":"iana","compressible":true,"extensions":["dae"]},"model/vnd.dwf":{"source":"iana","extensions":["dwf"]},"model/vnd.flatland.3dml":{"source":"iana"},"model/vnd.gdl":{"source":"iana","extensions":["gdl"]},"model/vnd.gs-gdl":{"source":"apache"},"model/vnd.gs.gdl":{"source":"iana"},"model/vnd.gtw":{"source":"iana","extensions":["gtw"]},"model/vnd.moml+xml":{"source":"iana","compressible":true},"model/vnd.mts":{"source":"iana","extensions":["mts"]},"model/vnd.opengex":{"source":"iana","extensions":["ogex"]},"model/vnd.parasolid.transmit.binary":{"source":"iana","extensions":["x_b"]},"model/vnd.parasolid.transmit.text":{"source":"iana","extensions":["x_t"]},"model/vnd.rosette.annotated-data-model":{"source":"iana"},"model/vnd.usdz+zip":{"source":"iana","compressible":false,"extensions":["usdz"]},"model/vnd.valve.source.compiled-map":{"source":"iana","extensions":["bsp"]},"model/vnd.vtu":{"source":"iana","extensions":["vtu"]},"model/vrml":{"source":"iana","compressible":false,"extensions":["wrl","vrml"]},"model/x3d+binary":{"source":"apache","compressible":false,"extensions":["x3db","x3dbz"]},"model/x3d+fastinfoset":{"source":"iana","extensions":["x3db"]},"model/x3d+vrml":{"source":"apache","compressible":false,"extensions":["x3dv","x3dvz"]},"model/x3d+xml":{"source":"iana","compressible":true,"extensions":["x3d","x3dz"]},"model/x3d-vrml":{"source":"iana","extensions":["x3dv"]},"multipart/alternative":{"source":"iana","compressible":false},"multipart/appledouble":{"source":"iana"},"multipart/byteranges":{"source":"iana"},"multipart/digest":{"source":"iana"},"multipart/encrypted":{"source":"iana","compressible":false},"multipart/form-data":{"source":"iana","compressible":false},"multipart/header-set":{"source":"iana"},"multipart/mixed":{"source":"iana"},"multipart/multilingual":{"source":"iana"},"multipart/parallel":{"source":"iana"},"multipart/related":{"source":"iana","compressible":false},"multipart/report":{"source":"iana"},"multipart/signed":{"source":"iana","compressible":false},"multipart/vnd.bint.med-plus":{"source":"iana"},"multipart/voice-message":{"source":"iana"},"multipart/x-mixed-replace":{"source":"iana"},"text/1d-interleaved-parityfec":{"source":"iana"},"text/cache-manifest":{"source":"iana","compressible":true,"extensions":["appcache","manifest"]},"text/calendar":{"source":"iana","extensions":["ics","ifb"]},"text/calender":{"compressible":true},"text/cmd":{"compressible":true},"text/coffeescript":{"extensions":["coffee","litcoffee"]},"text/css":{"source":"iana","charset":"UTF-8","compressible":true,"extensions":["css"]},"text/csv":{"source":"iana","compressible":true,"extensions":["csv"]},"text/csv-schema":{"source":"iana"},"text/directory":{"source":"iana"},"text/dns":{"source":"iana"},"text/ecmascript":{"source":"iana"},"text/encaprtp":{"source":"iana"},"text/enriched":{"source":"iana"},"text/flexfec":{"source":"iana"},"text/fwdred":{"source":"iana"},"text/grammar-ref-list":{"source":"iana"},"text/html":{"source":"iana","compressible":true,"extensions":["html","htm","shtml"]},"text/jade":{"extensions":["jade"]},"text/javascript":{"source":"iana","compressible":true},"text/jcr-cnd":{"source":"iana"},"text/jsx":{"compressible":true,"extensions":["jsx"]},"text/less":{"compressible":true,"extensions":["less"]},"text/markdown":{"source":"iana","compressible":true,"extensions":["markdown","md"]},"text/mathml":{"source":"nginx","extensions":["mml"]},"text/mdx":{"compressible":true,"extensions":["mdx"]},"text/mizar":{"source":"iana"},"text/n3":{"source":"iana","charset":"UTF-8","compressible":true,"extensions":["n3"]},"text/parameters":{"source":"iana","charset":"UTF-8"},"text/parityfec":{"source":"iana"},"text/plain":{"source":"iana","compressible":true,"extensions":["txt","text","conf","def","list","log","in","ini"]},"text/provenance-notation":{"source":"iana","charset":"UTF-8"},"text/prs.fallenstein.rst":{"source":"iana"},"text/prs.lines.tag":{"source":"iana","extensions":["dsc"]},"text/prs.prop.logic":{"source":"iana"},"text/raptorfec":{"source":"iana"},"text/red":{"source":"iana"},"text/rfc822-headers":{"source":"iana"},"text/richtext":{"source":"iana","compressible":true,"extensions":["rtx"]},"text/rtf":{"source":"iana","compressible":true,"extensions":["rtf"]},"text/rtp-enc-aescm128":{"source":"iana"},"text/rtploopback":{"source":"iana"},"text/rtx":{"source":"iana"},"text/sgml":{"source":"iana","extensions":["sgml","sgm"]},"text/shex":{"extensions":["shex"]},"text/slim":{"extensions":["slim","slm"]},"text/strings":{"source":"iana"},"text/stylus":{"extensions":["stylus","styl"]},"text/t140":{"source":"iana"},"text/tab-separated-values":{"source":"iana","compressible":true,"extensions":["tsv"]},"text/troff":{"source":"iana","extensions":["t","tr","roff","man","me","ms"]},"text/turtle":{"source":"iana","charset":"UTF-8","extensions":["ttl"]},"text/ulpfec":{"source":"iana"},"text/uri-list":{"source":"iana","compressible":true,"extensions":["uri","uris","urls"]},"text/vcard":{"source":"iana","compressible":true,"extensions":["vcard"]},"text/vnd.a":{"source":"iana"},"text/vnd.abc":{"source":"iana"},"text/vnd.ascii-art":{"source":"iana"},"text/vnd.curl":{"source":"iana","extensions":["curl"]},"text/vnd.curl.dcurl":{"source":"apache","extensions":["dcurl"]},"text/vnd.curl.mcurl":{"source":"apache","extensions":["mcurl"]},"text/vnd.curl.scurl":{"source":"apache","extensions":["scurl"]},"text/vnd.debian.copyright":{"source":"iana","charset":"UTF-8"},"text/vnd.dmclientscript":{"source":"iana"},"text/vnd.dvb.subtitle":{"source":"iana","extensions":["sub"]},"text/vnd.esmertec.theme-descriptor":{"source":"iana","charset":"UTF-8"},"text/vnd.ficlab.flt":{"source":"iana"},"text/vnd.fly":{"source":"iana","extensions":["fly"]},"text/vnd.fmi.flexstor":{"source":"iana","extensions":["flx"]},"text/vnd.gml":{"source":"iana"},"text/vnd.graphviz":{"source":"iana","extensions":["gv"]},"text/vnd.hgl":{"source":"iana"},"text/vnd.in3d.3dml":{"source":"iana","extensions":["3dml"]},"text/vnd.in3d.spot":{"source":"iana","extensions":["spot"]},"text/vnd.iptc.newsml":{"source":"iana"},"text/vnd.iptc.nitf":{"source":"iana"},"text/vnd.latex-z":{"source":"iana"},"text/vnd.motorola.reflex":{"source":"iana"},"text/vnd.ms-mediapackage":{"source":"iana"},"text/vnd.net2phone.commcenter.command":{"source":"iana"},"text/vnd.radisys.msml-basic-layout":{"source":"iana"},"text/vnd.senx.warpscript":{"source":"iana"},"text/vnd.si.uricatalogue":{"source":"iana"},"text/vnd.sosi":{"source":"iana"},"text/vnd.sun.j2me.app-descriptor":{"source":"iana","charset":"UTF-8","extensions":["jad"]},"text/vnd.trolltech.linguist":{"source":"iana","charset":"UTF-8"},"text/vnd.wap.si":{"source":"iana"},"text/vnd.wap.sl":{"source":"iana"},"text/vnd.wap.wml":{"source":"iana","extensions":["wml"]},"text/vnd.wap.wmlscript":{"source":"iana","extensions":["wmls"]},"text/vtt":{"source":"iana","charset":"UTF-8","compressible":true,"extensions":["vtt"]},"text/x-asm":{"source":"apache","extensions":["s","asm"]},"text/x-c":{"source":"apache","extensions":["c","cc","cxx","cpp","h","hh","dic"]},"text/x-component":{"source":"nginx","extensions":["htc"]},"text/x-fortran":{"source":"apache","extensions":["f","for","f77","f90"]},"text/x-gwt-rpc":{"compressible":true},"text/x-handlebars-template":{"extensions":["hbs"]},"text/x-java-source":{"source":"apache","extensions":["java"]},"text/x-jquery-tmpl":{"compressible":true},"text/x-lua":{"extensions":["lua"]},"text/x-markdown":{"compressible":true,"extensions":["mkd"]},"text/x-nfo":{"source":"apache","extensions":["nfo"]},"text/x-opml":{"source":"apache","extensions":["opml"]},"text/x-org":{"compressible":true,"extensions":["org"]},"text/x-pascal":{"source":"apache","extensions":["p","pas"]},"text/x-processing":{"compressible":true,"extensions":["pde"]},"text/x-sass":{"extensions":["sass"]},"text/x-scss":{"extensions":["scss"]},"text/x-setext":{"source":"apache","extensions":["etx"]},"text/x-sfv":{"source":"apache","extensions":["sfv"]},"text/x-suse-ymp":{"compressible":true,"extensions":["ymp"]},"text/x-uuencode":{"source":"apache","extensions":["uu"]},"text/x-vcalendar":{"source":"apache","extensions":["vcs"]},"text/x-vcard":{"source":"apache","extensions":["vcf"]},"text/xml":{"source":"iana","compressible":true,"extensions":["xml"]},"text/xml-external-parsed-entity":{"source":"iana"},"text/yaml":{"extensions":["yaml","yml"]},"video/1d-interleaved-parityfec":{"source":"iana"},"video/3gpp":{"source":"iana","extensions":["3gp","3gpp"]},"video/3gpp-tt":{"source":"iana"},"video/3gpp2":{"source":"iana","extensions":["3g2"]},"video/bmpeg":{"source":"iana"},"video/bt656":{"source":"iana"},"video/celb":{"source":"iana"},"video/dv":{"source":"iana"},"video/encaprtp":{"source":"iana"},"video/flexfec":{"source":"iana"},"video/h261":{"source":"iana","extensions":["h261"]},"video/h263":{"source":"iana","extensions":["h263"]},"video/h263-1998":{"source":"iana"},"video/h263-2000":{"source":"iana"},"video/h264":{"source":"iana","extensions":["h264"]},"video/h264-rcdo":{"source":"iana"},"video/h264-svc":{"source":"iana"},"video/h265":{"source":"iana"},"video/iso.segment":{"source":"iana"},"video/jpeg":{"source":"iana","extensions":["jpgv"]},"video/jpeg2000":{"source":"iana"},"video/jpm":{"source":"apache","extensions":["jpm","jpgm"]},"video/mj2":{"source":"iana","extensions":["mj2","mjp2"]},"video/mp1s":{"source":"iana"},"video/mp2p":{"source":"iana"},"video/mp2t":{"source":"iana","extensions":["ts"]},"video/mp4":{"source":"iana","compressible":false,"extensions":["mp4","mp4v","mpg4"]},"video/mp4v-es":{"source":"iana"},"video/mpeg":{"source":"iana","compressible":false,"extensions":["mpeg","mpg","mpe","m1v","m2v"]},"video/mpeg4-generic":{"source":"iana"},"video/mpv":{"source":"iana"},"video/nv":{"source":"iana"},"video/ogg":{"source":"iana","compressible":false,"extensions":["ogv"]},"video/parityfec":{"source":"iana"},"video/pointer":{"source":"iana"},"video/quicktime":{"source":"iana","compressible":false,"extensions":["qt","mov"]},"video/raptorfec":{"source":"iana"},"video/raw":{"source":"iana"},"video/rtp-enc-aescm128":{"source":"iana"},"video/rtploopback":{"source":"iana"},"video/rtx":{"source":"iana"},"video/smpte291":{"source":"iana"},"video/smpte292m":{"source":"iana"},"video/ulpfec":{"source":"iana"},"video/vc1":{"source":"iana"},"video/vc2":{"source":"iana"},"video/vnd.cctv":{"source":"iana"},"video/vnd.dece.hd":{"source":"iana","extensions":["uvh","uvvh"]},"video/vnd.dece.mobile":{"source":"iana","extensions":["uvm","uvvm"]},"video/vnd.dece.mp4":{"source":"iana"},"video/vnd.dece.pd":{"source":"iana","extensions":["uvp","uvvp"]},"video/vnd.dece.sd":{"source":"iana","extensions":["uvs","uvvs"]},"video/vnd.dece.video":{"source":"iana","extensions":["uvv","uvvv"]},"video/vnd.directv.mpeg":{"source":"iana"},"video/vnd.directv.mpeg-tts":{"source":"iana"},"video/vnd.dlna.mpeg-tts":{"source":"iana"},"video/vnd.dvb.file":{"source":"iana","extensions":["dvb"]},"video/vnd.fvt":{"source":"iana","extensions":["fvt"]},"video/vnd.hns.video":{"source":"iana"},"video/vnd.iptvforum.1dparityfec-1010":{"source":"iana"},"video/vnd.iptvforum.1dparityfec-2005":{"source":"iana"},"video/vnd.iptvforum.2dparityfec-1010":{"source":"iana"},"video/vnd.iptvforum.2dparityfec-2005":{"source":"iana"},"video/vnd.iptvforum.ttsavc":{"source":"iana"},"video/vnd.iptvforum.ttsmpeg2":{"source":"iana"},"video/vnd.motorola.video":{"source":"iana"},"video/vnd.motorola.videop":{"source":"iana"},"video/vnd.mpegurl":{"source":"iana","extensions":["mxu","m4u"]},"video/vnd.ms-playready.media.pyv":{"source":"iana","extensions":["pyv"]},"video/vnd.nokia.interleaved-multimedia":{"source":"iana"},"video/vnd.nokia.mp4vr":{"source":"iana"},"video/vnd.nokia.videovoip":{"source":"iana"},"video/vnd.objectvideo":{"source":"iana"},"video/vnd.radgamettools.bink":{"source":"iana"},"video/vnd.radgamettools.smacker":{"source":"iana"},"video/vnd.sealed.mpeg1":{"source":"iana"},"video/vnd.sealed.mpeg4":{"source":"iana"},"video/vnd.sealed.swf":{"source":"iana"},"video/vnd.sealedmedia.softseal.mov":{"source":"iana"},"video/vnd.uvvu.mp4":{"source":"iana","extensions":["uvu","uvvu"]},"video/vnd.vivo":{"source":"iana","extensions":["viv"]},"video/vnd.youtube.yt":{"source":"iana"},"video/vp8":{"source":"iana"},"video/webm":{"source":"apache","compressible":false,"extensions":["webm"]},"video/x-f4v":{"source":"apache","extensions":["f4v"]},"video/x-fli":{"source":"apache","extensions":["fli"]},"video/x-flv":{"source":"apache","compressible":false,"extensions":["flv"]},"video/x-m4v":{"source":"apache","extensions":["m4v"]},"video/x-matroska":{"source":"apache","compressible":false,"extensions":["mkv","mk3d","mks"]},"video/x-mng":{"source":"apache","extensions":["mng"]},"video/x-ms-asf":{"source":"apache","extensions":["asf","asx"]},"video/x-ms-vob":{"source":"apache","extensions":["vob"]},"video/x-ms-wm":{"source":"apache","extensions":["wm"]},"video/x-ms-wmv":{"source":"apache","compressible":false,"extensions":["wmv"]},"video/x-ms-wmx":{"source":"apache","extensions":["wmx"]},"video/x-ms-wvx":{"source":"apache","extensions":["wvx"]},"video/x-msvideo":{"source":"apache","extensions":["avi"]},"video/x-sgi-movie":{"source":"apache","extensions":["movie"]},"video/x-smv":{"source":"apache","extensions":["smv"]},"x-conference/x-cooltalk":{"source":"apache","extensions":["ice"]},"x-shader/x-fragment":{"compressible":true},"x-shader/x-vertex":{"compressible":true}}')
}, function (e, a, i) {
    e.exports = {
        parallel: i(74)
        , serial: i(76)
        , serialOrdered: i(29)
    }
}, function (e, a, i) {
    var n = i(24)
        , o = i(27)
        , s = i(28);
    e.exports = function (e, a, i) {
        var t = o(e);
        for (; t.index < (t.keyedList || e)
            .length;) n(e, a, t, (function (e, a) {
            e ? i(e, a) : 0 !== Object.keys(t.jobs)
                .length || i(null, t.results)
        })), t.index++;
        return s.bind(t, i)
    }
}, function (e, a) {
    e.exports = function (e) {
        var a = "function" == typeof setImmediate ? setImmediate : "object" == typeof process && "function" == typeof process.nextTick ? process.nextTick : null;
        a ? a(e) : setTimeout(e, 0)
    }
}, function (e, a, i) {
    var n = i(29);
    e.exports = function (e, a, i) {
        return n(e, a, null, i)
    }
}, function (e, a) {
    e.exports = function (e, a) {
        return Object.keys(a)
            .forEach((function (i) {
                e[i] = e[i] || a[i]
            })), e
    }
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = i(79)
        , s = n(i(8));
    a.default = class {
        constructor(e = {}) {
            this._options = e
        }
        takeScreenshot(e, a = 6e4) {
            return o.timeout(new Promise((a, i) => {
                global.exports["screenshot-basic"].requestClientScreenshot(e, this._options, (e, n) => {
                    if (e) return i(new Error(e));
                    const o = n.substring(n.indexOf("/") + 1, n.indexOf(";"))
                        , t = n.substring(n.indexOf(",") + 1);
                    a(new s.default("screenshot." + o, Buffer.from(t, "base64")))
                })
            }), a)
        }
    }
}, function (e, a, i) {
    "use strict";
    var n;
    e.exports.timeout = function (e, a) {
        var i, o = new n;
        return Promise.race([e, new Promise((function (e, n) {
                i = setTimeout((function () {
                    n(o)
                }), a)
            }))])
            .then((function (e) {
                return clearTimeout(i), e
            }), (function (e) {
                throw clearTimeout(i), e
            }))
    };
    (n = e.exports.TimeoutError = function () {
        Error.call(this), this.stack = Error()
            .stack, this.message = "Timeout"
    })
    .prototype = Object.create(Error.prototype), n.prototype.name = "TimeoutError"
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = n(i(81));
    a.default = class {
        createScreenshotCommand(e, a, i, n, s) {
            return new o.default(e, a, i, n, s)
        }
    }
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = n(i(31))
        , s = n(i(33));
    class t extends o.default {
        async execute(e, a, i) {
            if ("0" !== e && !IsPlayerAceAllowed(e, this.permission)) return emitNet("chat:addMessage", e, {
                args: ["^7discord-screenshot", "^1You don't have permission to use this command."]
            });
            if ("-1" === a[0]) this.requestEveryoneScreenshotUploadToDiscord(e);
            else {
                const i = s.default.getPlayers()
                    .includes(a[0]) ? a[0] : s.default.getPlayerByIdentifier(a[0]);
                i ? await this.requestScreenshotUploadToDiscord(e, i) : emitNet("chat:addMessage", e, {
                    args: ["^7discord-screenshot", "^1The target isn't online."]
                })
            }
        }
    }
    a.default = t
}, function (e, a, i) {
    "use strict";
    var n = i(83)
        , o = i(87)
        , s = [].slice
        , t = ["keyword", "gray", "hex"]
        , r = {};
    Object.keys(o)
        .forEach((function (e) {
            r[s.call(o[e].labels)
                .sort()
                .join("")] = e
        }));
    var c = {};
    
    function p(e, a) {
        if (!(this instanceof p)) return new p(e, a);
        if (a && a in t && (a = null), a && !(a in o)) throw new Error("Unknown model: " + a);
        var i, l;
        if (null == e) this.model = "rgb", this.color = [0, 0, 0], this.valpha = 1;
        else if (e instanceof p) this.model = e.model, this.color = e.color.slice(), this.valpha = e.valpha;
        else if ("string" == typeof e) {
            var u = n.get(e);
            if (null === u) throw new Error("Unable to parse color from string: " + e);
            this.model = u.model, l = o[this.model].channels, this.color = u.value.slice(0, l), this.valpha = "number" == typeof u.value[l] ? u.value[l] : 1
        } else if (e.length) {
            this.model = a || "rgb", l = o[this.model].channels;
            var d = s.call(e, 0, l);
            this.color = m(d, l), this.valpha = "number" == typeof e[l] ? e[l] : 1
        } else if ("number" == typeof e) e &= 16777215, this.model = "rgb", this.color = [e >> 16 & 255, e >> 8 & 255, 255 & e], this.valpha = 1;
        else {
            this.valpha = 1;
            var x = Object.keys(e);
            "alpha" in e && (x.splice(x.indexOf("alpha"), 1), this.valpha = "number" == typeof e.alpha ? e.alpha : 0);
            var f = x.sort()
                .join("");
            if (!(f in r)) throw new Error("Unable to parse color from object: " + JSON.stringify(e));
            this.model = r[f];
            var v = o[this.model].labels
                , h = [];
            for (i = 0; i < v.length; i++) h.push(e[v[i]]);
            this.color = m(h)
        }
        if (c[this.model])
            for (l = o[this.model].channels, i = 0; i < l; i++) {
                var b = c[this.model][i];
                b && (this.color[i] = b(this.color[i]))
            }
        this.valpha = Math.max(0, Math.min(1, this.valpha)), Object.freeze && Object.freeze(this)
    }
    
    function l(e, a, i) {
        return (e = Array.isArray(e) ? e : [e])
            .forEach((function (e) {
                (c[e] || (c[e] = []))[a] = i
            })), e = e[0]
            , function (n) {
                var o;
                return arguments.length ? (i && (n = i(n)), (o = this[e]())
                    .color[a] = n, o) : (o = this[e]()
                    .color[a], i && (o = i(o)), o)
            }
    }
    
    function u(e) {
        return function (a) {
            return Math.max(0, Math.min(e, a))
        }
    }
    
    function d(e) {
        return Array.isArray(e) ? e : [e]
    }
    
    function m(e, a) {
        for (var i = 0; i < a; i++) "number" != typeof e[i] && (e[i] = 0);
        return e
    }
    p.prototype = {
            toString: function () {
                return this.string()
            }
            , toJSON: function () {
                return this[this.model]()
            }
            , string: function (e) {
                var a = this.model in n.to ? this : this.rgb()
                    , i = 1 === (a = a.round("number" == typeof e ? e : 1))
                    .valpha ? a.color : a.color.concat(this.valpha);
                return n.to[a.model](i)
            }
            , percentString: function (e) {
                var a = this.rgb()
                    .round("number" == typeof e ? e : 1)
                    , i = 1 === a.valpha ? a.color : a.color.concat(this.valpha);
                return n.to.rgb.percent(i)
            }
            , array: function () {
                return 1 === this.valpha ? this.color.slice() : this.color.concat(this.valpha)
            }
            , object: function () {
                for (var e = {}, a = o[this.model].channels, i = o[this.model].labels, n = 0; n < a; n++) e[i[n]] = this.color[n];
                return 1 !== this.valpha && (e.alpha = this.valpha), e
            }
            , unitArray: function () {
                var e = this.rgb()
                    .color;
                return e[0] /= 255, e[1] /= 255, e[2] /= 255, 1 !== this.valpha && e.push(this.valpha), e
            }
            , unitObject: function () {
                var e = this.rgb()
                    .object();
                return e.r /= 255, e.g /= 255, e.b /= 255, 1 !== this.valpha && (e.alpha = this.valpha), e
            }
            , round: function (e) {
                return e = Math.max(e || 0, 0), new p(this.color.map(function (e) {
                        return function (a) {
                            return function (e, a) {
                                return Number(e.toFixed(a))
                            }(a, e)
                        }
                    }(e))
                    .concat(this.valpha), this.model)
            }
            , alpha: function (e) {
                return arguments.length ? new p(this.color.concat(Math.max(0, Math.min(1, e))), this.model) : this.valpha
            }
            , red: l("rgb", 0, u(255))
            , green: l("rgb", 1, u(255))
            , blue: l("rgb", 2, u(255))
            , hue: l(["hsl", "hsv", "hsl", "hwb", "hcg"], 0, (function (e) {
                return (e % 360 + 360) % 360
            }))
            , saturationl: l("hsl", 1, u(100))
            , lightness: l("hsl", 2, u(100))
            , saturationv: l("hsv", 1, u(100))
            , value: l("hsv", 2, u(100))
            , chroma: l("hcg", 1, u(100))
            , gray: l("hcg", 2, u(100))
            , white: l("hwb", 1, u(100))
            , wblack: l("hwb", 2, u(100))
            , cyan: l("cmyk", 0, u(100))
            , magenta: l("cmyk", 1, u(100))
            , yellow: l("cmyk", 2, u(100))
            , black: l("cmyk", 3, u(100))
            , x: l("xyz", 0, u(100))
            , y: l("xyz", 1, u(100))
            , z: l("xyz", 2, u(100))
            , l: l("lab", 0, u(100))
            , a: l("lab", 1)
            , b: l("lab", 2)
            , keyword: function (e) {
                return arguments.length ? new p(e) : o[this.model].keyword(this.color)
            }
            , hex: function (e) {
                return arguments.length ? new p(e) : n.to.hex(this.rgb()
                    .round()
                    .color)
            }
            , rgbNumber: function () {
                var e = this.rgb()
                    .color;
                return (255 & e[0]) << 16 | (255 & e[1]) << 8 | 255 & e[2]
            }
            , luminosity: function () {
                for (var e = this.rgb()
                        .color, a = [], i = 0; i < e.length; i++) {
                    var n = e[i] / 255;
                    a[i] = n <= .03928 ? n / 12.92 : Math.pow((n + .055) / 1.055, 2.4)
                }
                return .2126 * a[0] + .7152 * a[1] + .0722 * a[2]
            }
            , contrast: function (e) {
                var a = this.luminosity()
                    , i = e.luminosity();
                return a > i ? (a + .05) / (i + .05) : (i + .05) / (a + .05)
            }
            , level: function (e) {
                var a = this.contrast(e);
                return a >= 7.1 ? "AAA" : a >= 4.5 ? "AA" : ""
            }
            , isDark: function () {
                var e = this.rgb()
                    .color;
                return (299 * e[0] + 587 * e[1] + 114 * e[2]) / 1e3 < 128
            }
            , isLight: function () {
                return !this.isDark()
            }
            , negate: function () {
                for (var e = this.rgb(), a = 0; a < 3; a++) e.color[a] = 255 - e.color[a];
                return e
            }
            , lighten: function (e) {
                var a = this.hsl();
                return a.color[2] += a.color[2] * e, a
            }
            , darken: function (e) {
                var a = this.hsl();
                return a.color[2] -= a.color[2] * e, a
            }
            , saturate: function (e) {
                var a = this.hsl();
                return a.color[1] += a.color[1] * e, a
            }
            , desaturate: function (e) {
                var a = this.hsl();
                return a.color[1] -= a.color[1] * e, a
            }
            , whiten: function (e) {
                var a = this.hwb();
                return a.color[1] += a.color[1] * e, a
            }
            , blacken: function (e) {
                var a = this.hwb();
                return a.color[2] += a.color[2] * e, a
            }
            , grayscale: function () {
                var e = this.rgb()
                    .color
                    , a = .3 * e[0] + .59 * e[1] + .11 * e[2];
                return p.rgb(a, a, a)
            }
            , fade: function (e) {
                return this.alpha(this.valpha - this.valpha * e)
            }
            , opaquer: function (e) {
                return this.alpha(this.valpha + this.valpha * e)
            }
            , rotate: function (e) {
                var a = this.hsl()
                    , i = a.color[0];
                return i = (i = (i + e) % 360) < 0 ? 360 + i : i, a.color[0] = i, a
            }
            , mix: function (e, a) {
                if (!e || !e.rgb) throw new Error('Argument to "mix" was not a Color instance, but rather an instance of ' + typeof e);
                var i = e.rgb()
                    , n = this.rgb()
                    , o = void 0 === a ? .5 : a
                    , s = 2 * o - 1
                    , t = i.alpha() - n.alpha()
                    , r = ((s * t == -1 ? s : (s + t) / (1 + s * t)) + 1) / 2
                    , c = 1 - r;
                return p.rgb(r * i.red() + c * n.red(), r * i.green() + c * n.green(), r * i.blue() + c * n.blue(), i.alpha() * o + n.alpha() * (1 - o))
            }
        }, Object.keys(o)
        .forEach((function (e) {
            if (-1 === t.indexOf(e)) {
                var a = o[e].channels;
                p.prototype[e] = function () {
                    if (this.model === e) return new p(this);
                    if (arguments.length) return new p(arguments, e);
                    var i = "number" == typeof arguments[a] ? a : this.valpha;
                    return new p(d(o[this.model][e].raw(this.color))
                        .concat(i), e)
                }, p[e] = function (i) {
                    return "number" == typeof i && (i = m(s.call(arguments), a)), new p(i, e)
                }
            }
        })), e.exports = p
}, function (e, a, i) {
    var n = i(84)
        , o = i(85)
        , s = {};
    for (var t in n) n.hasOwnProperty(t) && (s[n[t]] = t);
    var r = e.exports = {
        to: {}
        , get: {}
    };
    
    function c(e, a, i) {
        return Math.min(Math.max(a, e), i)
    }
    
    function p(e) {
        var a = e.toString(16)
            .toUpperCase();
        return a.length < 2 ? "0" + a : a
    }
    r.get = function (e) {
        var a, i;
        switch (e.substring(0, 3)
            .toLowerCase()) {
        case "hsl":
            a = r.get.hsl(e), i = "hsl";
            break;
        case "hwb":
            a = r.get.hwb(e), i = "hwb";
            break;
        default:
            a = r.get.rgb(e), i = "rgb"
        }
        return a ? {
            model: i
            , value: a
        } : null
    }, r.get.rgb = function (e) {
        if (!e) return null;
        var a, i, o, s = [0, 0, 0, 1];
        if (a = e.match(/^#([a-f0-9]{6})([a-f0-9]{2})?$/i)) {
            for (o = a[2], a = a[1], i = 0; i < 3; i++) {
                var t = 2 * i;
                s[i] = parseInt(a.slice(t, t + 2), 16)
            }
            o && (s[3] = parseInt(o, 16) / 255)
        } else if (a = e.match(/^#([a-f0-9]{3,4})$/i)) {
            for (o = (a = a[1])[3], i = 0; i < 3; i++) s[i] = parseInt(a[i] + a[i], 16);
            o && (s[3] = parseInt(o + o, 16) / 255)
        } else if (a = e.match(/^rgba?\(\s*([+-]?\d+)\s*,\s*([+-]?\d+)\s*,\s*([+-]?\d+)\s*(?:,\s*([+-]?[\d\.]+)\s*)?\)$/)) {
            for (i = 0; i < 3; i++) s[i] = parseInt(a[i + 1], 0);
            a[4] && (s[3] = parseFloat(a[4]))
        } else {
            if (!(a = e.match(/^rgba?\(\s*([+-]?[\d\.]+)\%\s*,\s*([+-]?[\d\.]+)\%\s*,\s*([+-]?[\d\.]+)\%\s*(?:,\s*([+-]?[\d\.]+)\s*)?\)$/))) return (a = e.match(/(\D+)/)) ? "transparent" === a[1] ? [0, 0, 0, 0] : (s = n[a[1]]) ? (s[3] = 1, s) : null : null;
            for (i = 0; i < 3; i++) s[i] = Math.round(2.55 * parseFloat(a[i + 1]));
            a[4] && (s[3] = parseFloat(a[4]))
        }
        for (i = 0; i < 3; i++) s[i] = c(s[i], 0, 255);
        return s[3] = c(s[3], 0, 1), s
    }, r.get.hsl = function (e) {
        if (!e) return null;
        var a = e.match(/^hsla?\(\s*([+-]?(?:\d*\.)?\d+)(?:deg)?\s*,\s*([+-]?[\d\.]+)%\s*,\s*([+-]?[\d\.]+)%\s*(?:,\s*([+-]?[\d\.]+)\s*)?\)$/);
        if (a) {
            var i = parseFloat(a[4]);
            return [(parseFloat(a[1]) + 360) % 360, c(parseFloat(a[2]), 0, 100), c(parseFloat(a[3]), 0, 100), c(isNaN(i) ? 1 : i, 0, 1)]
        }
        return null
    }, r.get.hwb = function (e) {
        if (!e) return null;
        var a = e.match(/^hwb\(\s*([+-]?\d*[\.]?\d+)(?:deg)?\s*,\s*([+-]?[\d\.]+)%\s*,\s*([+-]?[\d\.]+)%\s*(?:,\s*([+-]?[\d\.]+)\s*)?\)$/);
        if (a) {
            var i = parseFloat(a[4]);
            return [(parseFloat(a[1]) % 360 + 360) % 360, c(parseFloat(a[2]), 0, 100), c(parseFloat(a[3]), 0, 100), c(isNaN(i) ? 1 : i, 0, 1)]
        }
        return null
    }, r.to.hex = function () {
        var e = o(arguments);
        return "#" + p(e[0]) + p(e[1]) + p(e[2]) + (e[3] < 1 ? p(Math.round(255 * e[3])) : "")
    }, r.to.rgb = function () {
        var e = o(arguments);
        return e.length < 4 || 1 === e[3] ? "rgb(" + Math.round(e[0]) + ", " + Math.round(e[1]) + ", " + Math.round(e[2]) + ")" : "rgba(" + Math.round(e[0]) + ", " + Math.round(e[1]) + ", " + Math.round(e[2]) + ", " + e[3] + ")"
    }, r.to.rgb.percent = function () {
        var e = o(arguments)
            , a = Math.round(e[0] / 255 * 100)
            , i = Math.round(e[1] / 255 * 100)
            , n = Math.round(e[2] / 255 * 100);
        return e.length < 4 || 1 === e[3] ? "rgb(" + a + "%, " + i + "%, " + n + "%)" : "rgba(" + a + "%, " + i + "%, " + n + "%, " + e[3] + ")"
    }, r.to.hsl = function () {
        var e = o(arguments);
        return e.length < 4 || 1 === e[3] ? "hsl(" + e[0] + ", " + e[1] + "%, " + e[2] + "%)" : "hsla(" + e[0] + ", " + e[1] + "%, " + e[2] + "%, " + e[3] + ")"
    }, r.to.hwb = function () {
        var e = o(arguments)
            , a = "";
        return e.length >= 4 && 1 !== e[3] && (a = ", " + e[3]), "hwb(" + e[0] + ", " + e[1] + "%, " + e[2] + "%" + a + ")"
    }, r.to.keyword = function (e) {
        return s[e.slice(0, 3)]
    }
}, function (e, a, i) {
    "use strict";
    e.exports = {
        aliceblue: [240, 248, 255]
        , antiquewhite: [250, 235, 215]
        , aqua: [0, 255, 255]
        , aquamarine: [127, 255, 212]
        , azure: [240, 255, 255]
        , beige: [245, 245, 220]
        , bisque: [255, 228, 196]
        , black: [0, 0, 0]
        , blanchedalmond: [255, 235, 205]
        , blue: [0, 0, 255]
        , blueviolet: [138, 43, 226]
        , brown: [165, 42, 42]
        , burlywood: [222, 184, 135]
        , cadetblue: [95, 158, 160]
        , chartreuse: [127, 255, 0]
        , chocolate: [210, 105, 30]
        , coral: [255, 127, 80]
        , cornflowerblue: [100, 149, 237]
        , cornsilk: [255, 248, 220]
        , crimson: [220, 20, 60]
        , cyan: [0, 255, 255]
        , darkblue: [0, 0, 139]
        , darkcyan: [0, 139, 139]
        , darkgoldenrod: [184, 134, 11]
        , darkgray: [169, 169, 169]
        , darkgreen: [0, 100, 0]
        , darkgrey: [169, 169, 169]
        , darkkhaki: [189, 183, 107]
        , darkmagenta: [139, 0, 139]
        , darkolivegreen: [85, 107, 47]
        , darkorange: [255, 140, 0]
        , darkorchid: [153, 50, 204]
        , darkred: [139, 0, 0]
        , darksalmon: [233, 150, 122]
        , darkseagreen: [143, 188, 143]
        , darkslateblue: [72, 61, 139]
        , darkslategray: [47, 79, 79]
        , darkslategrey: [47, 79, 79]
        , darkturquoise: [0, 206, 209]
        , darkviolet: [148, 0, 211]
        , deeppink: [255, 20, 147]
        , deepskyblue: [0, 191, 255]
        , dimgray: [105, 105, 105]
        , dimgrey: [105, 105, 105]
        , dodgerblue: [30, 144, 255]
        , firebrick: [178, 34, 34]
        , floralwhite: [255, 250, 240]
        , forestgreen: [34, 139, 34]
        , fuchsia: [255, 0, 255]
        , gainsboro: [220, 220, 220]
        , ghostwhite: [248, 248, 255]
        , gold: [255, 215, 0]
        , goldenrod: [218, 165, 32]
        , gray: [128, 128, 128]
        , green: [0, 128, 0]
        , greenyellow: [173, 255, 47]
        , grey: [128, 128, 128]
        , honeydew: [240, 255, 240]
        , hotpink: [255, 105, 180]
        , indianred: [205, 92, 92]
        , indigo: [75, 0, 130]
        , ivory: [255, 255, 240]
        , khaki: [240, 230, 140]
        , lavender: [230, 230, 250]
        , lavenderblush: [255, 240, 245]
        , lawngreen: [124, 252, 0]
        , lemonchiffon: [255, 250, 205]
        , lightblue: [173, 216, 230]
        , lightcoral: [240, 128, 128]
        , lightcyan: [224, 255, 255]
        , lightgoldenrodyellow: [250, 250, 210]
        , lightgray: [211, 211, 211]
        , lightgreen: [144, 238, 144]
        , lightgrey: [211, 211, 211]
        , lightpink: [255, 182, 193]
        , lightsalmon: [255, 160, 122]
        , lightseagreen: [32, 178, 170]
        , lightskyblue: [135, 206, 250]
        , lightslategray: [119, 136, 153]
        , lightslategrey: [119, 136, 153]
        , lightsteelblue: [176, 196, 222]
        , lightyellow: [255, 255, 224]
        , lime: [0, 255, 0]
        , limegreen: [50, 205, 50]
        , linen: [250, 240, 230]
        , magenta: [255, 0, 255]
        , maroon: [128, 0, 0]
        , mediumaquamarine: [102, 205, 170]
        , mediumblue: [0, 0, 205]
        , mediumorchid: [186, 85, 211]
        , mediumpurple: [147, 112, 219]
        , mediumseagreen: [60, 179, 113]
        , mediumslateblue: [123, 104, 238]
        , mediumspringgreen: [0, 250, 154]
        , mediumturquoise: [72, 209, 204]
        , mediumvioletred: [199, 21, 133]
        , midnightblue: [25, 25, 112]
        , mintcream: [245, 255, 250]
        , mistyrose: [255, 228, 225]
        , moccasin: [255, 228, 181]
        , navajowhite: [255, 222, 173]
        , navy: [0, 0, 128]
        , oldlace: [253, 245, 230]
        , olive: [128, 128, 0]
        , olivedrab: [107, 142, 35]
        , orange: [255, 165, 0]
        , orangered: [255, 69, 0]
        , orchid: [218, 112, 214]
        , palegoldenrod: [238, 232, 170]
        , palegreen: [152, 251, 152]
        , paleturquoise: [175, 238, 238]
        , palevioletred: [219, 112, 147]
        , papayawhip: [255, 239, 213]
        , peachpuff: [255, 218, 185]
        , peru: [205, 133, 63]
        , pink: [255, 192, 203]
        , plum: [221, 160, 221]
        , powderblue: [176, 224, 230]
        , purple: [128, 0, 128]
        , rebeccapurple: [102, 51, 153]
        , red: [255, 0, 0]
        , rosybrown: [188, 143, 143]
        , royalblue: [65, 105, 225]
        , saddlebrown: [139, 69, 19]
        , salmon: [250, 128, 114]
        , sandybrown: [244, 164, 96]
        , seagreen: [46, 139, 87]
        , seashell: [255, 245, 238]
        , sienna: [160, 82, 45]
        , silver: [192, 192, 192]
        , skyblue: [135, 206, 235]
        , slateblue: [106, 90, 205]
        , slategray: [112, 128, 144]
        , slategrey: [112, 128, 144]
        , snow: [255, 250, 250]
        , springgreen: [0, 255, 127]
        , steelblue: [70, 130, 180]
        , tan: [210, 180, 140]
        , teal: [0, 128, 128]
        , thistle: [216, 191, 216]
        , tomato: [255, 99, 71]
        , turquoise: [64, 224, 208]
        , violet: [238, 130, 238]
        , wheat: [245, 222, 179]
        , white: [255, 255, 255]
        , whitesmoke: [245, 245, 245]
        , yellow: [255, 255, 0]
        , yellowgreen: [154, 205, 50]
    }
}, function (e, a, i) {
    "use strict";
    var n = i(86)
        , o = Array.prototype.concat
        , s = Array.prototype.slice
        , t = e.exports = function (e) {
            for (var a = [], i = 0, t = e.length; i < t; i++) {
                var r = e[i];
                n(r) ? a = o.call(a, s.call(r)) : a.push(r)
            }
            return a
        };
    t.wrap = function (e) {
        return function () {
            return e(t(arguments))
        }
    }
}, function (e, a) {
    e.exports = function (e) {
        return !(!e || "string" == typeof e) && (e instanceof Array || Array.isArray(e) || e.length >= 0 && (e.splice instanceof Function || Object.getOwnPropertyDescriptor(e, e.length - 1) && "String" !== e.constructor.name))
    }
}, function (e, a, i) {
    var n = i(32)
        , o = i(89)
        , s = {};
    Object.keys(n)
        .forEach((function (e) {
            s[e] = {}, Object.defineProperty(s[e], "channels", {
                value: n[e].channels
            }), Object.defineProperty(s[e], "labels", {
                value: n[e].labels
            });
            var a = o(e);
            Object.keys(a)
                .forEach((function (i) {
                    var n = a[i];
                    s[e][i] = function (e) {
                        var a = function (a) {
                            if (null == a) return a;
                            arguments.length > 1 && (a = Array.prototype.slice.call(arguments));
                            var i = e(a);
                            if ("object" == typeof i)
                                for (var n = i.length, o = 0; o < n; o++) i[o] = Math.round(i[o]);
                            return i
                        };
                        return "conversion" in e && (a.conversion = e.conversion), a
                    }(n), s[e][i].raw = function (e) {
                        var a = function (a) {
                            return null == a ? a : (arguments.length > 1 && (a = Array.prototype.slice.call(arguments)), e(a))
                        };
                        return "conversion" in e && (a.conversion = e.conversion), a
                    }(n)
                }))
        })), e.exports = s
}, function (e, a, i) {
    "use strict";
    e.exports = {
        aliceblue: [240, 248, 255]
        , antiquewhite: [250, 235, 215]
        , aqua: [0, 255, 255]
        , aquamarine: [127, 255, 212]
        , azure: [240, 255, 255]
        , beige: [245, 245, 220]
        , bisque: [255, 228, 196]
        , black: [0, 0, 0]
        , blanchedalmond: [255, 235, 205]
        , blue: [0, 0, 255]
        , blueviolet: [138, 43, 226]
        , brown: [165, 42, 42]
        , burlywood: [222, 184, 135]
        , cadetblue: [95, 158, 160]
        , chartreuse: [127, 255, 0]
        , chocolate: [210, 105, 30]
        , coral: [255, 127, 80]
        , cornflowerblue: [100, 149, 237]
        , cornsilk: [255, 248, 220]
        , crimson: [220, 20, 60]
        , cyan: [0, 255, 255]
        , darkblue: [0, 0, 139]
        , darkcyan: [0, 139, 139]
        , darkgoldenrod: [184, 134, 11]
        , darkgray: [169, 169, 169]
        , darkgreen: [0, 100, 0]
        , darkgrey: [169, 169, 169]
        , darkkhaki: [189, 183, 107]
        , darkmagenta: [139, 0, 139]
        , darkolivegreen: [85, 107, 47]
        , darkorange: [255, 140, 0]
        , darkorchid: [153, 50, 204]
        , darkred: [139, 0, 0]
        , darksalmon: [233, 150, 122]
        , darkseagreen: [143, 188, 143]
        , darkslateblue: [72, 61, 139]
        , darkslategray: [47, 79, 79]
        , darkslategrey: [47, 79, 79]
        , darkturquoise: [0, 206, 209]
        , darkviolet: [148, 0, 211]
        , deeppink: [255, 20, 147]
        , deepskyblue: [0, 191, 255]
        , dimgray: [105, 105, 105]
        , dimgrey: [105, 105, 105]
        , dodgerblue: [30, 144, 255]
        , firebrick: [178, 34, 34]
        , floralwhite: [255, 250, 240]
        , forestgreen: [34, 139, 34]
        , fuchsia: [255, 0, 255]
        , gainsboro: [220, 220, 220]
        , ghostwhite: [248, 248, 255]
        , gold: [255, 215, 0]
        , goldenrod: [218, 165, 32]
        , gray: [128, 128, 128]
        , green: [0, 128, 0]
        , greenyellow: [173, 255, 47]
        , grey: [128, 128, 128]
        , honeydew: [240, 255, 240]
        , hotpink: [255, 105, 180]
        , indianred: [205, 92, 92]
        , indigo: [75, 0, 130]
        , ivory: [255, 255, 240]
        , khaki: [240, 230, 140]
        , lavender: [230, 230, 250]
        , lavenderblush: [255, 240, 245]
        , lawngreen: [124, 252, 0]
        , lemonchiffon: [255, 250, 205]
        , lightblue: [173, 216, 230]
        , lightcoral: [240, 128, 128]
        , lightcyan: [224, 255, 255]
        , lightgoldenrodyellow: [250, 250, 210]
        , lightgray: [211, 211, 211]
        , lightgreen: [144, 238, 144]
        , lightgrey: [211, 211, 211]
        , lightpink: [255, 182, 193]
        , lightsalmon: [255, 160, 122]
        , lightseagreen: [32, 178, 170]
        , lightskyblue: [135, 206, 250]
        , lightslategray: [119, 136, 153]
        , lightslategrey: [119, 136, 153]
        , lightsteelblue: [176, 196, 222]
        , lightyellow: [255, 255, 224]
        , lime: [0, 255, 0]
        , limegreen: [50, 205, 50]
        , linen: [250, 240, 230]
        , magenta: [255, 0, 255]
        , maroon: [128, 0, 0]
        , mediumaquamarine: [102, 205, 170]
        , mediumblue: [0, 0, 205]
        , mediumorchid: [186, 85, 211]
        , mediumpurple: [147, 112, 219]
        , mediumseagreen: [60, 179, 113]
        , mediumslateblue: [123, 104, 238]
        , mediumspringgreen: [0, 250, 154]
        , mediumturquoise: [72, 209, 204]
        , mediumvioletred: [199, 21, 133]
        , midnightblue: [25, 25, 112]
        , mintcream: [245, 255, 250]
        , mistyrose: [255, 228, 225]
        , moccasin: [255, 228, 181]
        , navajowhite: [255, 222, 173]
        , navy: [0, 0, 128]
        , oldlace: [253, 245, 230]
        , olive: [128, 128, 0]
        , olivedrab: [107, 142, 35]
        , orange: [255, 165, 0]
        , orangered: [255, 69, 0]
        , orchid: [218, 112, 214]
        , palegoldenrod: [238, 232, 170]
        , palegreen: [152, 251, 152]
        , paleturquoise: [175, 238, 238]
        , palevioletred: [219, 112, 147]
        , papayawhip: [255, 239, 213]
        , peachpuff: [255, 218, 185]
        , peru: [205, 133, 63]
        , pink: [255, 192, 203]
        , plum: [221, 160, 221]
        , powderblue: [176, 224, 230]
        , purple: [128, 0, 128]
        , rebeccapurple: [102, 51, 153]
        , red: [255, 0, 0]
        , rosybrown: [188, 143, 143]
        , royalblue: [65, 105, 225]
        , saddlebrown: [139, 69, 19]
        , salmon: [250, 128, 114]
        , sandybrown: [244, 164, 96]
        , seagreen: [46, 139, 87]
        , seashell: [255, 245, 238]
        , sienna: [160, 82, 45]
        , silver: [192, 192, 192]
        , skyblue: [135, 206, 235]
        , slateblue: [106, 90, 205]
        , slategray: [112, 128, 144]
        , slategrey: [112, 128, 144]
        , snow: [255, 250, 250]
        , springgreen: [0, 255, 127]
        , steelblue: [70, 130, 180]
        , tan: [210, 180, 140]
        , teal: [0, 128, 128]
        , thistle: [216, 191, 216]
        , tomato: [255, 99, 71]
        , turquoise: [64, 224, 208]
        , violet: [238, 130, 238]
        , wheat: [245, 222, 179]
        , white: [255, 255, 255]
        , whitesmoke: [245, 245, 245]
        , yellow: [255, 255, 0]
        , yellowgreen: [154, 205, 50]
    }
}, function (e, a, i) {
    var n = i(32);
    
    function o(e) {
        var a = function () {
                for (var e = {}, a = Object.keys(n), i = a.length, o = 0; o < i; o++) e[a[o]] = {
                    distance: -1
                    , parent: null
                };
                return e
            }()
            , i = [e];
        for (a[e].distance = 0; i.length;)
            for (var o = i.pop(), s = Object.keys(n[o]), t = s.length, r = 0; r < t; r++) {
                var c = s[r]
                    , p = a[c]; - 1 === p.distance && (p.distance = a[o].distance + 1, p.parent = o, i.unshift(c))
            }
        return a
    }
    
    function s(e, a) {
        return function (i) {
            return a(e(i))
        }
    }
    
    function t(e, a) {
        for (var i = [a[e].parent, e], o = n[a[e].parent][e], t = a[e].parent; a[t].parent;) i.unshift(a[t].parent), o = s(n[a[t].parent][t], o), t = a[t].parent;
        return o.conversion = i, o
    }
    e.exports = function (e) {
        for (var a = o(e), i = {}, n = Object.keys(a), s = n.length, r = 0; r < s; r++) {
            var c = n[r];
            null !== a[c].parent && (i[c] = t(c, a))
        }
        return i
    }
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    a.default = class {
        constructor(e) {
            this._name = e
        }
        register() {
            RegisterCommand(this._name, (e, a, i) => {
                this.execute(e.toString(), a, i)
            }, !1)
        }
    }
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = i(92)
        , s = n(i(95));
    a.default = class {
        constructor() {
            this._vrp = o.VrpProxy.getInterface("vRP")
        }
        createScreenshotCommand(e, a, i, n, o) {
            return new s.default(e, a, i, n, o, this._vrp)
        }
    }
}, function (e, a, i) {
    "use strict";
    Object.defineProperty(a, "__esModule", {
        value: !0
    }), a.VrpProxy = a.VrpTunnel = a.IdGenerator = void 0, a.IdGenerator = i(9), a.VrpTunnel = i(93), a.VrpProxy = i(94)
}, function (e, a, i) {
    "use strict";
    var n = this && this.__awaiter || function (e, a, i, n) {
        return new(i || (i = Promise))((function (o, s) {
            function t(e) {
                try {
                    c(n.next(e))
                } catch (e) {
                    s(e)
                }
            }
            
            function r(e) {
                try {
                    c(n.throw(e))
                } catch (e) {
                    s(e)
                }
            }
            
            function c(e) {
                var a;
                e.done ? o(e.value) : (a = e.value, a instanceof i ? a : new i((function (e) {
                        e(a)
                    })))
                    .then(t, r)
            }
            c((n = n.apply(e, a || []))
                .next())
        }))
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    }), a.bindInterface = a.getInterface = void 0;
    const o = i(9);
    a.getInterface = function (e, a = GetCurrentResourceName()) {
        const i = new o.default
            , n = {};
        return onNet(`${e}:${a}:tunnel_res`, (e, a) => {
            const o = n[e];
            o && (delete n[e], i.free(e), o(a.length <= 1 ? a[0] : a))
        }), new Proxy({}, {
            get(o, s) {
                const t = s.toString();
                return o[t] || (o[t] = function (o) {
                    return (s, ...t) => -1 === s || o.startsWith("_") ? emitNet(e + ":tunnel_req", s, o.substring(1), t, a, -1) : new Promise(r => {
                        const c = i.gen();
                        n[c] = r, emitNet(e + ":tunnel_req", s, o, t, a, c)
                    })
                }(t)), o[t]
            }
            , set() {
                throw new Error("set isn't supported on Tunnel access")
            }
        })
    }, a.bindInterface = function (e, a) {
        onNet(e + ":tunnel_req", (i, o, s, t) => n(this, void 0, void 0, (function* () {
            const n = global.source
                , r = a[i];
            let c;
            if (r) try {
                c = yield r(...o)
            } catch (e) {
                console.error(e)
            }
            t >= 0 && emitNet(`${e}:${s}:tunnel_res`, n, t, [c])
        })))
    }
}, function (e, a, i) {
    "use strict";
    var n = this && this.__awaiter || function (e, a, i, n) {
        return new(i || (i = Promise))((function (o, s) {
            function t(e) {
                try {
                    c(n.next(e))
                } catch (e) {
                    s(e)
                }
            }
            
            function r(e) {
                try {
                    c(n.throw(e))
                } catch (e) {
                    s(e)
                }
            }
            
            function c(e) {
                var a;
                e.done ? o(e.value) : (a = e.value, a instanceof i ? a : new i((function (e) {
                        e(a)
                    })))
                    .then(t, r)
            }
            c((n = n.apply(e, a || []))
                .next())
        }))
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    }), a.addInterface = a.getInterface = void 0;
    const o = i(9);
    a.getInterface = function (e, a = GetCurrentResourceName()) {
        const i = new o.default
            , n = {};
        return on(`${e}:${a}:proxy_res`, (e, a) => {
            const o = n[e];
            o && (delete n[e], i.free(e), o(a.length <= 1 ? a[0] : a))
        }), new Proxy({}, {
            get(o, s) {
                const t = s.toString();
                return o[t] || (o[t] = function (o) {
                    return (...s) => {
                        if (o.startsWith("_")) return emit(e + ":proxy", o.substring(1), s, a, -1);
                        let t, r = !1;
                        const c = new Promise(c => {
                            const p = i.gen();
                            n[p] = e => {
                                r = !0, t = e, c(t)
                            }, emit(e + ":proxy", o, s, a, p)
                        });
                        return r ? t : c
                    }
                }(t)), o[t]
            }
            , set() {
                throw new Error("cannot set values on proxy access interface")
            }
        })
    }, a.addInterface = function (e, a) {
        on(e + ":proxy", (i, o, s, t) => n(this, void 0, void 0, (function* () {
            const n = a[i];
            let r;
            if (n) try {
                r = yield n(...o)
            } catch (e) {
                console.error(e)
            } else console.log(`error: proxy call ${e}:${i} not found`);
            t >= 0 && emit(`${e}:${s}:proxy_res`, t, [r])
        })))
    }
}, function (e, a, i) {
    "use strict";
    var n = this && this.__importDefault || function (e) {
        return e && e.__esModule ? e : {
            default: e
        }
    };
    Object.defineProperty(a, "__esModule", {
        value: !0
    });
    const o = n(i(31));
    class s extends o.default {
        constructor(e, a, i, n, o, s) {
            super(e, a, i, n, o), this._vrp = s
        }
        async execute(e, a, i) {
            if ("0" !== e) {
                const a = this._vrp.getUserId(e);
                if (a && !this._vrp.hasPermission(a, this.permission)) return emitNet("chat:addMessage", e, {
                    args: ["^7discord-screenshot", "^1You don't have permission to use this command."]
                })
            }
            if ("-1" === a[0]) this.requestEveryoneScreenshotUploadToDiscord(e);
            else {
                const i = parseInt(a[0], 10);
                if (i) {
                    const a = this._vrp.getUserSource(i);
                    a ? await this.requestScreenshotUploadToDiscord(e, a.toString()) : emitNet("chat:addMessage", e, {
                        args: ["^7discord-screenshot", "^1The target isn't online."]
                    })
                }
            }
        }
        buildEmbed(e, a, i) {
            const n = super.buildEmbed(e, a, i)
                , o = this._vrp.getUserId(parseInt(a, 10));
            return o && n.addField("User Id", o.toString(), !0), n
        }
    }
    a.default = s
}, function (e, a, i) {
    "use strict";
    i.r(a), i.d(a, "getStatusCode", (function () {
        return re
    })), i.d(a, "getReasonPhrase", (function () {
        return te
    })), i.d(a, "getStatusText", (function () {
        return le
    })), i.d(a, "StatusCodes", (function () {
        return ce
    })), i.d(a, "ReasonPhrases", (function () {
        return pe
    })), i.d(a, "ACCEPTED", (function () {
        return n
    })), i.d(a, "BAD_GATEWAY", (function () {
        return o
    })), i.d(a, "BAD_REQUEST", (function () {
        return s
    })), i.d(a, "CONFLICT", (function () {
        return t
    })), i.d(a, "CONTINUE", (function () {
        return r
    })), i.d(a, "CREATED", (function () {
        return c
    })), i.d(a, "EXPECTATION_FAILED", (function () {
        return p
    })), i.d(a, "FAILED_DEPENDENCY", (function () {
        return l
    })), i.d(a, "FORBIDDEN", (function () {
        return u
    })), i.d(a, "GATEWAY_TIMEOUT", (function () {
        return d
    })), i.d(a, "GONE", (function () {
        return m
    })), i.d(a, "HTTP_VERSION_NOT_SUPPORTED", (function () {
        return x
    })), i.d(a, "IM_A_TEAPOT", (function () {
        return f
    })), i.d(a, "INSUFFICIENT_SPACE_ON_RESOURCE", (function () {
        return v
    })), i.d(a, "INSUFFICIENT_STORAGE", (function () {
        return h
    })), i.d(a, "INTERNAL_SERVER_ERROR", (function () {
        return b
    })), i.d(a, "LENGTH_REQUIRED", (function () {
        return g
    })), i.d(a, "LOCKED", (function () {
        return y
    })), i.d(a, "METHOD_FAILURE", (function () {
        return E
    })), i.d(a, "METHOD_NOT_ALLOWED", (function () {
        return w
    })), i.d(a, "MOVED_PERMANENTLY", (function () {
        return _
    })), i.d(a, "MOVED_TEMPORARILY", (function () {
        return T
    })), i.d(a, "MULTI_STATUS", (function () {
        return k
    })), i.d(a, "MULTIPLE_CHOICES", (function () {
        return O
    })), i.d(a, "NETWORK_AUTHENTICATION_REQUIRED", (function () {
        return R
    })), i.d(a, "NO_CONTENT", (function () {
        return N
    })), i.d(a, "NON_AUTHORITATIVE_INFORMATION", (function () {
        return j
    })), i.d(a, "NOT_ACCEPTABLE", (function () {
        return I
    })), i.d(a, "NOT_FOUND", (function () {
        return A
    })), i.d(a, "NOT_IMPLEMENTED", (function () {
        return S
    })), i.d(a, "NOT_MODIFIED", (function () {
        return U
    })), i.d(a, "OK", (function () {
        return P
    })), i.d(a, "PARTIAL_CONTENT", (function () {
        return C
    })), i.d(a, "PAYMENT_REQUIRED", (function () {
        return M
    })), i.d(a, "PERMANENT_REDIRECT", (function () {
        return D
    })), i.d(a, "PRECONDITION_FAILED", (function () {
        return L
    })), i.d(a, "PRECONDITION_REQUIRED", (function () {
        return q
    })), i.d(a, "PROCESSING", (function () {
        return z
    })), i.d(a, "PROXY_AUTHENTICATION_REQUIRED", (function () {
        return F
    })), i.d(a, "REQUEST_HEADER_FIELDS_TOO_LARGE", (function () {
        return B
    })), i.d(a, "REQUEST_TIMEOUT", (function () {
        return H
    })), i.d(a, "REQUEST_TOO_LONG", (function () {
        return G
    })), i.d(a, "REQUEST_URI_TOO_LONG", (function () {
        return Y
    })), i.d(a, "REQUESTED_RANGE_NOT_SATISFIABLE", (function () {
        return Q
    })), i.d(a, "RESET_CONTENT", (function () {
        return V
    })), i.d(a, "SEE_OTHER", (function () {
        return W
    })), i.d(a, "SERVICE_UNAVAILABLE", (function () {
        return K
    })), i.d(a, "SWITCHING_PROTOCOLS", (function () {
        return $
    })), i.d(a, "TEMPORARY_REDIRECT", (function () {
        return X
    })), i.d(a, "TOO_MANY_REQUESTS", (function () {
        return J
    })), i.d(a, "UNAUTHORIZED", (function () {
        return Z
    })), i.d(a, "UNPROCESSABLE_ENTITY", (function () {
        return ee
    })), i.d(a, "UNSUPPORTED_MEDIA_TYPE", (function () {
        return ae
    })), i.d(a, "USE_PROXY", (function () {
        return ie
    }));
    var n = 202
        , o = 502
        , s = 400
        , t = 409
        , r = 100
        , c = 201
        , p = 417
        , l = 424
        , u = 403
        , d = 504
        , m = 410
        , x = 505
        , f = 418
        , v = 419
        , h = 507
        , b = 500
        , g = 411
        , y = 423
        , E = 420
        , w = 405
        , _ = 301
        , T = 302
        , k = 207
        , O = 300
        , R = 511
        , N = 204
        , j = 203
        , I = 406
        , A = 404
        , S = 501
        , U = 304
        , P = 200
        , C = 206
        , M = 402
        , D = 308
        , L = 412
        , q = 428
        , z = 102
        , F = 407
        , B = 431
        , H = 408
        , G = 413
        , Y = 414
        , Q = 416
        , V = 205
        , W = 303
        , K = 503
        , $ = 101
        , X = 307
        , J = 429
        , Z = 401
        , ee = 422
        , ae = 415
        , ie = 305
        , ne = {
            ACCEPTED: n
            , BAD_GATEWAY: o
            , BAD_REQUEST: s
            , CONFLICT: t
            , CONTINUE: r
            , CREATED: c
            , EXPECTATION_FAILED: p
            , FORBIDDEN: u
            , GATEWAY_TIMEOUT: d
            , GONE: m
            , HTTP_VERSION_NOT_SUPPORTED: x
            , IM_A_TEAPOT: f
            , INSUFFICIENT_SPACE_ON_RESOURCE: v
            , INSUFFICIENT_STORAGE: h
            , INTERNAL_SERVER_ERROR: b
            , LENGTH_REQUIRED: g
            , LOCKED: y
            , METHOD_FAILURE: E
            , METHOD_NOT_ALLOWED: w
            , MOVED_PERMANENTLY: _
            , MOVED_TEMPORARILY: T
            , MULTI_STATUS: k
            , MULTIPLE_CHOICES: O
            , NETWORK_AUTHENTICATION_REQUIRED: R
            , NO_CONTENT: N
            , NON_AUTHORITATIVE_INFORMATION: j
            , NOT_ACCEPTABLE: I
            , NOT_FOUND: A
            , NOT_IMPLEMENTED: S
            , NOT_MODIFIED: U
            , OK: P
            , PARTIAL_CONTENT: C
            , PAYMENT_REQUIRED: M
            , PERMANENT_REDIRECT: D
            , PRECONDITION_FAILED: L
            , PRECONDITION_REQUIRED: q
            , PROCESSING: z
            , PROXY_AUTHENTICATION_REQUIRED: F
            , REQUEST_HEADER_FIELDS_TOO_LARGE: B
            , REQUEST_TIMEOUT: H
            , REQUEST_TOO_LONG: G
            , REQUEST_URI_TOO_LONG: Y
            , REQUESTED_RANGE_NOT_SATISFIABLE: Q
            , RESET_CONTENT: V
            , SEE_OTHER: W
            , SERVICE_UNAVAILABLE: K
            , SWITCHING_PROTOCOLS: $
            , TEMPORARY_REDIRECT: X
            , TOO_MANY_REQUESTS: J
            , UNAUTHORIZED: Z
            , UNPROCESSABLE_ENTITY: ee
            , UNSUPPORTED_MEDIA_TYPE: ae
            , USE_PROXY: ie
        }
        , oe = {
            202: "Accepted"
            , 502: "Bad Gateway"
            , 400: "Bad Request"
            , 409: "Conflict"
            , 100: "Continue"
            , 201: "Created"
            , 417: "Expectation Failed"
            , 424: "Failed Dependency"
            , 403: "Forbidden"
            , 504: "Gateway Timeout"
            , 410: "Gone"
            , 505: "HTTP Version Not Supported"
            , 418: "I'm a teapot"
            , 419: "Insufficient Space on Resource"
            , 507: "Insufficient Storage"
            , 500: "Internal Server Error"
            , 411: "Length Required"
            , 423: "Locked"
            , 420: "Method Failure"
            , 405: "Method Not Allowed"
            , 301: "Moved Permanently"
            , 302: "Moved Temporarily"
            , 207: "Multi-Status"
            , 300: "Multiple Choices"
            , 511: "Network Authentication Required"
            , 204: "No Content"
            , 203: "Non Authoritative Information"
            , 406: "Not Acceptable"
            , 404: "Not Found"
            , 501: "Not Implemented"
            , 304: "Not Modified"
            , 200: "OK"
            , 206: "Partial Content"
            , 402: "Payment Required"
            , 308: "Permanent Redirect"
            , 412: "Precondition Failed"
            , 428: "Precondition Required"
            , 102: "Processing"
            , 407: "Proxy Authentication Required"
            , 431: "Request Header Fields Too Large"
            , 408: "Request Timeout"
            , 413: "Request Entity Too Large"
            , 414: "Request-URI Too Long"
            , 416: "Requested Range Not Satisfiable"
            , 205: "Reset Content"
            , 303: "See Other"
            , 503: "Service Unavailable"
            , 101: "Switching Protocols"
            , 307: "Temporary Redirect"
            , 429: "Too Many Requests"
            , 401: "Unauthorized"
            , 451: "Unavailable For Legal Reasons"
            , 422: "Unprocessable Entity"
            , 415: "Unsupported Media Type"
            , 305: "Use Proxy"
        }
        , se = {
            Accepted: 202
            , "Bad Gateway": 502
            , "Bad Request": 400
            , Conflict: 409
            , Continue: 100
            , Created: 201
            , "Expectation Failed": 417
            , "Failed Dependency": 424
            , Forbidden: 403
            , "Gateway Timeout": 504
            , Gone: 410
            , "HTTP Version Not Supported": 505
            , "I'm a teapot": 418
            , "Insufficient Space on Resource": 419
            , "Insufficient Storage": 507
            , "Internal Server Error": 500
            , "Length Required": 411
            , Locked: 423
            , "Method Failure": 420
            , "Method Not Allowed": 405
            , "Moved Permanently": 301
            , "Moved Temporarily": 302
            , "Multi-Status": 207
            , "Multiple Choices": 300
            , "Network Authentication Required": 511
            , "No Content": 204
            , "Non Authoritative Information": 203
            , "Not Acceptable": 406
            , "Not Found": 404
            , "Not Implemented": 501
            , "Not Modified": 304
            , OK: 200
            , "Partial Content": 206
            , "Payment Required": 402
            , "Permanent Redirect": 308
            , "Precondition Failed": 412
            , "Precondition Required": 428
            , Processing: 102
            , "Proxy Authentication Required": 407
            , "Request Header Fields Too Large": 431
            , "Request Timeout": 408
            , "Request Entity Too Large": 413
            , "Request-URI Too Long": 414
            , "Requested Range Not Satisfiable": 416
            , "Reset Content": 205
            , "See Other": 303
            , "Service Unavailable": 503
            , "Switching Protocols": 101
            , "Temporary Redirect": 307
            , "Too Many Requests": 429
            , Unauthorized: 401
            , "Unavailable For Legal Reasons": 451
            , "Unprocessable Entity": 422
            , "Unsupported Media Type": 415
            , "Use Proxy": 305
        };
    
    function te(e) {
        var a = oe[e.toString()];
        if (!a) throw new Error("Status code does not exist: " + e);
        return a
    }
    
    function re(e) {
        var a = se[e];
        if (!a) throw new Error("Reason phrase does not exist: " + e);
        return a
    }
    var ce, pe, le = te;
    ! function (e) {
        e[e.ACCEPTED = 202] = "ACCEPTED", e[e.BAD_GATEWAY = 502] = "BAD_GATEWAY", e[e.BAD_REQUEST = 400] = "BAD_REQUEST", e[e.CONFLICT = 409] = "CONFLICT", e[e.CONTINUE = 100] = "CONTINUE", e[e.CREATED = 201] = "CREATED", e[e.EXPECTATION_FAILED = 417] = "EXPECTATION_FAILED", e[e.FAILED_DEPENDENCY = 424] = "FAILED_DEPENDENCY", e[e.FORBIDDEN = 403] = "FORBIDDEN", e[e.GATEWAY_TIMEOUT = 504] = "GATEWAY_TIMEOUT", e[e.GONE = 410] = "GONE", e[e.HTTP_VERSION_NOT_SUPPORTED = 505] = "HTTP_VERSION_NOT_SUPPORTED", e[e.IM_A_TEAPOT = 418] = "IM_A_TEAPOT", e[e.INSUFFICIENT_SPACE_ON_RESOURCE = 419] = "INSUFFICIENT_SPACE_ON_RESOURCE", e[e.INSUFFICIENT_STORAGE = 507] = "INSUFFICIENT_STORAGE", e[e.INTERNAL_SERVER_ERROR = 500] = "INTERNAL_SERVER_ERROR", e[e.LENGTH_REQUIRED = 411] = "LENGTH_REQUIRED", e[e.LOCKED = 423] = "LOCKED", e[e.METHOD_FAILURE = 420] = "METHOD_FAILURE", e[e.METHOD_NOT_ALLOWED = 405] = "METHOD_NOT_ALLOWED", e[e.MOVED_PERMANENTLY = 301] = "MOVED_PERMANENTLY", e[e.MOVED_TEMPORARILY = 302] = "MOVED_TEMPORARILY", e[e.MULTI_STATUS = 207] = "MULTI_STATUS", e[e.MULTIPLE_CHOICES = 300] = "MULTIPLE_CHOICES", e[e.NETWORK_AUTHENTICATION_REQUIRED = 511] = "NETWORK_AUTHENTICATION_REQUIRED", e[e.NO_CONTENT = 204] = "NO_CONTENT", e[e.NON_AUTHORITATIVE_INFORMATION = 203] = "NON_AUTHORITATIVE_INFORMATION", e[e.NOT_ACCEPTABLE = 406] = "NOT_ACCEPTABLE", e[e.NOT_FOUND = 404] = "NOT_FOUND", e[e.NOT_IMPLEMENTED = 501] = "NOT_IMPLEMENTED", e[e.NOT_MODIFIED = 304] = "NOT_MODIFIED", e[e.OK = 200] = "OK", e[e.PARTIAL_CONTENT = 206] = "PARTIAL_CONTENT", e[e.PAYMENT_REQUIRED = 402] = "PAYMENT_REQUIRED", e[e.PERMANENT_REDIRECT = 308] = "PERMANENT_REDIRECT", e[e.PRECONDITION_FAILED = 412] = "PRECONDITION_FAILED", e[e.PRECONDITION_REQUIRED = 428] = "PRECONDITION_REQUIRED", e[e.PROCESSING = 102] = "PROCESSING", e[e.PROXY_AUTHENTICATION_REQUIRED = 407] = "PROXY_AUTHENTICATION_REQUIRED", e[e.REQUEST_HEADER_FIELDS_TOO_LARGE = 431] = "REQUEST_HEADER_FIELDS_TOO_LARGE", e[e.REQUEST_TIMEOUT = 408] = "REQUEST_TIMEOUT", e[e.REQUEST_TOO_LONG = 413] = "REQUEST_TOO_LONG", e[e.REQUEST_URI_TOO_LONG = 414] = "REQUEST_URI_TOO_LONG", e[e.REQUESTED_RANGE_NOT_SATISFIABLE = 416] = "REQUESTED_RANGE_NOT_SATISFIABLE", e[e.RESET_CONTENT = 205] = "RESET_CONTENT", e[e.SEE_OTHER = 303] = "SEE_OTHER", e[e.SERVICE_UNAVAILABLE = 503] = "SERVICE_UNAVAILABLE", e[e.SWITCHING_PROTOCOLS = 101] = "SWITCHING_PROTOCOLS", e[e.TEMPORARY_REDIRECT = 307] = "TEMPORARY_REDIRECT", e[e.TOO_MANY_REQUESTS = 429] = "TOO_MANY_REQUESTS", e[e.UNAUTHORIZED = 401] = "UNAUTHORIZED", e[e.UNAVAILABLE_FOR_LEGAL_REASONS = 451] = "UNAVAILABLE_FOR_LEGAL_REASONS", e[e.UNPROCESSABLE_ENTITY = 422] = "UNPROCESSABLE_ENTITY", e[e.UNSUPPORTED_MEDIA_TYPE = 415] = "UNSUPPORTED_MEDIA_TYPE", e[e.USE_PROXY = 305] = "USE_PROXY"
    }(ce || (ce = {}))
    , function (e) {
        e.ACCEPTED = "Accepted", e.BAD_GATEWAY = "Bad Gateway", e.BAD_REQUEST = "Bad Request", e.CONFLICT = "Conflict", e.CONTINUE = "Continue", e.CREATED = "Created", e.EXPECTATION_FAILED = "Expectation Failed", e.FAILED_DEPENDENCY = "Failed Dependency", e.FORBIDDEN = "Forbidden", e.GATEWAY_TIMEOUT = "Gateway Timeout", e.GONE = "Gone", e.HTTP_VERSION_NOT_SUPPORTED = "HTTP Version Not Supported", e.IM_A_TEAPOT = "I'm a teapot", e.INSUFFICIENT_SPACE_ON_RESOURCE = "Insufficient Space on Resource", e.INSUFFICIENT_STORAGE = "Insufficient Storage", e.INTERNAL_SERVER_ERROR = "Internal Server Error", e.LENGTH_REQUIRED = "Length Required", e.LOCKED = "Locked", e.METHOD_FAILURE = "Method Failure", e.METHOD_NOT_ALLOWED = "Method Not Allowed", e.MOVED_PERMANENTLY = "Moved Permanently", e.MOVED_TEMPORARILY = "Moved Temporarily", e.MULTI_STATUS = "Multi-Status", e.MULTIPLE_CHOICES = "Multiple Choices", e.NETWORK_AUTHENTICATION_REQUIRED = "Network Authentication Required", e.NO_CONTENT = "No Content", e.NON_AUTHORITATIVE_INFORMATION = "Non Authoritative Information", e.NOT_ACCEPTABLE = "Not Acceptable", e.NOT_FOUND = "Not Found", e.NOT_IMPLEMENTED = "Not Implemented", e.NOT_MODIFIED = "Not Modified", e.OK = "OK", e.PARTIAL_CONTENT = "Partial Content", e.PAYMENT_REQUIRED = "Payment Required", e.PERMANENT_REDIRECT = "Permanent Redirect", e.PRECONDITION_FAILED = "Precondition Failed", e.PRECONDITION_REQUIRED = "Precondition Required", e.PROCESSING = "Processing", e.PROXY_AUTHENTICATION_REQUIRED = "Proxy Authentication Required", e.REQUEST_HEADER_FIELDS_TOO_LARGE = "Request Header Fields Too Large", e.REQUEST_TIMEOUT = "Request Timeout", e.REQUEST_TOO_LONG = "Request Entity Too Large", e.REQUEST_URI_TOO_LONG = "Request-URI Too Long", e.REQUESTED_RANGE_NOT_SATISFIABLE = "Requested Range Not Satisfiable", e.RESET_CONTENT = "Reset Content", e.SEE_OTHER = "See Other", e.SERVICE_UNAVAILABLE = "Service Unavailable", e.SWITCHING_PROTOCOLS = "Switching Protocols", e.TEMPORARY_REDIRECT = "Temporary Redirect", e.TOO_MANY_REQUESTS = "Too Many Requests", e.UNAUTHORIZED = "Unauthorized", e.UNAVAILABLE_FOR_LEGAL_REASONS = "Unavailable For Legal Reasons", e.UNPROCESSABLE_ENTITY = "Unprocessable Entity", e.UNSUPPORTED_MEDIA_TYPE = "Unsupported Media Type", e.USE_PROXY = "Use Proxy"
    }(pe || (pe = {}));
    var ue = function () {
        return (ue = Object.assign || function (e) {
                for (var a, i = 1, n = arguments.length; i < n; i++)
                    for (var o in a = arguments[i]) Object.prototype.hasOwnProperty.call(a, o) && (e[o] = a[o]);
                return e
            })
            .apply(this, arguments)
    };
    a.default = ue(ue({}, ne), {
        getStatusCode: re
        , getStatusText: le
    })
}]);
