package com.badlogic.gdx.net;

import com.badlogic.gdx.Net;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.Pools;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes.dex */
public class HttpRequestBuilder {
    public static String baseUrl = "";
    public static int defaultTimeout = 1000;
    public static Json json = new Json();

    /* renamed from: a */
    public Net.HttpRequest f5547a;

    public HttpRequestBuilder content(String str) {
        m23898a();
        this.f5547a.setContent(str);
        return this;
    }

    /* renamed from: a */
    public final void m23898a() {
        if (this.f5547a != null) {
            return;
        }
        throw new IllegalStateException("A new request has not been started yet. Call HttpRequestBuilder.newRequest() first.");
    }

    public HttpRequestBuilder newRequest() {
        if (this.f5547a == null) {
            Net.HttpRequest httpRequest = (Net.HttpRequest) Pools.obtain(Net.HttpRequest.class);
            this.f5547a = httpRequest;
            httpRequest.setTimeOut(defaultTimeout);
            return this;
        }
        throw new IllegalStateException("A new request has already been started. Call HttpRequestBuilder.build() first.");
    }

    public HttpRequestBuilder basicAuthentication(String str, String str2) {
        m23898a();
        Net.HttpRequest httpRequest = this.f5547a;
        StringBuilder sb = new StringBuilder();
        sb.append("Basic ");
        sb.append(Base64Coder.encodeString(str + ":" + str2));
        httpRequest.setHeader(HttpRequestHeader.Authorization, sb.toString());
        return this;
    }

    public Net.HttpRequest build() {
        m23898a();
        Net.HttpRequest httpRequest = this.f5547a;
        this.f5547a = null;
        return httpRequest;
    }

    public HttpRequestBuilder content(InputStream inputStream, long j) {
        m23898a();
        this.f5547a.setContent(inputStream, j);
        return this;
    }

    public HttpRequestBuilder followRedirects(boolean z) {
        m23898a();
        this.f5547a.setFollowRedirects(z);
        return this;
    }

    public HttpRequestBuilder formEncodedContent(Map<String, String> map) {
        m23898a();
        this.f5547a.setHeader("Content-Type", "application/x-www-form-urlencoded");
        this.f5547a.setContent(HttpParametersUtils.convertHttpParameters(map));
        return this;
    }

    public HttpRequestBuilder header(String str, String str2) {
        m23898a();
        this.f5547a.setHeader(str, str2);
        return this;
    }

    public HttpRequestBuilder includeCredentials(boolean z) {
        m23898a();
        this.f5547a.setIncludeCredentials(z);
        return this;
    }

    public HttpRequestBuilder jsonContent(Object obj) {
        m23898a();
        this.f5547a.setHeader("Content-Type", "application/json");
        this.f5547a.setContent(json.toJson(obj));
        return this;
    }

    public HttpRequestBuilder method(String str) {
        m23898a();
        this.f5547a.setMethod(str);
        return this;
    }

    public HttpRequestBuilder timeout(int i) {
        m23898a();
        this.f5547a.setTimeOut(i);
        return this;
    }

    public HttpRequestBuilder url(String str) {
        m23898a();
        Net.HttpRequest httpRequest = this.f5547a;
        httpRequest.setUrl(baseUrl + str);
        return this;
    }
}
