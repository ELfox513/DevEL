package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;
import p045d7.C3332b;
import p063f7.C3534i;
import p063f7.C3536k;
import p090i7.C4153k;
import p099j7.C4381h;
/* loaded from: classes2.dex */
public class FirebasePerfHttpClient {
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) {
        return m22926g(httpClient, httpUriRequest, new C4381h(), C4153k.m17283k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) {
        return m22925h(httpClient, httpUriRequest, httpContext, new C4381h(), C4153k.m17283k());
    }

    /* renamed from: a */
    public static <T> T m22932a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, C4381h c4381h, C4153k c4153k) {
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            m19114j.m19117L(httpHost.toURI() + httpRequest.getRequestLine().getUri()).m19107z(httpRequest.getRequestLine().getMethod());
            Long m18654a = C3536k.m18654a(httpRequest);
            if (m18654a != null) {
                m19114j.m19124C(m18654a.longValue());
            }
            c4381h.m16729n();
            m19114j.m19123D(c4381h.m16730l());
            return (T) httpClient.execute(httpHost, httpRequest, new C3534i(responseHandler, c4381h, m19114j));
        } catch (IOException e) {
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    /* renamed from: b */
    public static <T> T m22931b(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext, C4381h c4381h, C4153k c4153k) {
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            m19114j.m19117L(httpHost.toURI() + httpRequest.getRequestLine().getUri()).m19107z(httpRequest.getRequestLine().getMethod());
            Long m18654a = C3536k.m18654a(httpRequest);
            if (m18654a != null) {
                m19114j.m19124C(m18654a.longValue());
            }
            c4381h.m16729n();
            m19114j.m19123D(c4381h.m16730l());
            return (T) httpClient.execute(httpHost, httpRequest, new C3534i(responseHandler, c4381h, m19114j), httpContext);
        } catch (IOException e) {
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    /* renamed from: c */
    public static <T> T m22930c(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, C4381h c4381h, C4153k c4153k) {
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            m19114j.m19117L(httpUriRequest.getURI().toString()).m19107z(httpUriRequest.getMethod());
            Long m18654a = C3536k.m18654a(httpUriRequest);
            if (m18654a != null) {
                m19114j.m19124C(m18654a.longValue());
            }
            c4381h.m16729n();
            m19114j.m19123D(c4381h.m16730l());
            return (T) httpClient.execute(httpUriRequest, new C3534i(responseHandler, c4381h, m19114j));
        } catch (IOException e) {
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    /* renamed from: d */
    public static <T> T m22929d(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext, C4381h c4381h, C4153k c4153k) {
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            m19114j.m19117L(httpUriRequest.getURI().toString()).m19107z(httpUriRequest.getMethod());
            Long m18654a = C3536k.m18654a(httpUriRequest);
            if (m18654a != null) {
                m19114j.m19124C(m18654a.longValue());
            }
            c4381h.m16729n();
            m19114j.m19123D(c4381h.m16730l());
            return (T) httpClient.execute(httpUriRequest, new C3534i(responseHandler, c4381h, m19114j), httpContext);
        } catch (IOException e) {
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    /* renamed from: e */
    public static HttpResponse m22928e(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, C4381h c4381h, C4153k c4153k) {
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            m19114j.m19117L(httpHost.toURI() + httpRequest.getRequestLine().getUri()).m19107z(httpRequest.getRequestLine().getMethod());
            Long m18654a = C3536k.m18654a(httpRequest);
            if (m18654a != null) {
                m19114j.m19124C(m18654a.longValue());
            }
            c4381h.m16729n();
            m19114j.m19123D(c4381h.m16730l());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest);
            m19114j.m19119J(c4381h.m16732h());
            m19114j.m19126A(execute.getStatusLine().getStatusCode());
            Long m18654a2 = C3536k.m18654a(execute);
            if (m18654a2 != null) {
                m19114j.m19121F(m18654a2.longValue());
            }
            String m18653b = C3536k.m18653b(execute);
            if (m18653b != null) {
                m19114j.m19122E(m18653b);
            }
            m19114j.m19115h();
            return execute;
        } catch (IOException e) {
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) {
        return (T) m22930c(httpClient, httpUriRequest, responseHandler, new C4381h(), C4153k.m17283k());
    }

    /* renamed from: f */
    public static HttpResponse m22927f(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext, C4381h c4381h, C4153k c4153k) {
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            m19114j.m19117L(httpHost.toURI() + httpRequest.getRequestLine().getUri()).m19107z(httpRequest.getRequestLine().getMethod());
            Long m18654a = C3536k.m18654a(httpRequest);
            if (m18654a != null) {
                m19114j.m19124C(m18654a.longValue());
            }
            c4381h.m16729n();
            m19114j.m19123D(c4381h.m16730l());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest, httpContext);
            m19114j.m19119J(c4381h.m16732h());
            m19114j.m19126A(execute.getStatusLine().getStatusCode());
            Long m18654a2 = C3536k.m18654a(execute);
            if (m18654a2 != null) {
                m19114j.m19121F(m18654a2.longValue());
            }
            String m18653b = C3536k.m18653b(execute);
            if (m18653b != null) {
                m19114j.m19122E(m18653b);
            }
            m19114j.m19115h();
            return execute;
        } catch (IOException e) {
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    /* renamed from: g */
    public static HttpResponse m22926g(HttpClient httpClient, HttpUriRequest httpUriRequest, C4381h c4381h, C4153k c4153k) {
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            m19114j.m19117L(httpUriRequest.getURI().toString()).m19107z(httpUriRequest.getMethod());
            Long m18654a = C3536k.m18654a(httpUriRequest);
            if (m18654a != null) {
                m19114j.m19124C(m18654a.longValue());
            }
            c4381h.m16729n();
            m19114j.m19123D(c4381h.m16730l());
            HttpResponse execute = httpClient.execute(httpUriRequest);
            m19114j.m19119J(c4381h.m16732h());
            m19114j.m19126A(execute.getStatusLine().getStatusCode());
            Long m18654a2 = C3536k.m18654a(execute);
            if (m18654a2 != null) {
                m19114j.m19121F(m18654a2.longValue());
            }
            String m18653b = C3536k.m18653b(execute);
            if (m18653b != null) {
                m19114j.m19122E(m18653b);
            }
            m19114j.m19115h();
            return execute;
        } catch (IOException e) {
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    /* renamed from: h */
    public static HttpResponse m22925h(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext, C4381h c4381h, C4153k c4153k) {
        C3332b m19114j = C3332b.m19114j(c4153k);
        try {
            m19114j.m19117L(httpUriRequest.getURI().toString()).m19107z(httpUriRequest.getMethod());
            Long m18654a = C3536k.m18654a(httpUriRequest);
            if (m18654a != null) {
                m19114j.m19124C(m18654a.longValue());
            }
            c4381h.m16729n();
            m19114j.m19123D(c4381h.m16730l());
            HttpResponse execute = httpClient.execute(httpUriRequest, httpContext);
            m19114j.m19119J(c4381h.m16732h());
            m19114j.m19126A(execute.getStatusLine().getStatusCode());
            Long m18654a2 = C3536k.m18654a(execute);
            if (m18654a2 != null) {
                m19114j.m19121F(m18654a2.longValue());
            }
            String m18653b = C3536k.m18653b(execute);
            if (m18653b != null) {
                m19114j.m19122E(m18653b);
            }
            m19114j.m19115h();
            return execute;
        } catch (IOException e) {
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) {
        return (T) m22929d(httpClient, httpUriRequest, responseHandler, httpContext, new C4381h(), C4153k.m17283k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) {
        return m22928e(httpClient, httpHost, httpRequest, new C4381h(), C4153k.m17283k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        return m22927f(httpClient, httpHost, httpRequest, httpContext, new C4381h(), C4153k.m17283k());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        return (T) m22932a(httpClient, httpHost, httpRequest, responseHandler, new C4381h(), C4153k.m17283k());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        return (T) m22931b(httpClient, httpHost, httpRequest, responseHandler, httpContext, new C4381h(), C4153k.m17283k());
    }
}
