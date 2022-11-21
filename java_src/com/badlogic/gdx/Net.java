package com.badlogic.gdx;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.net.ServerSocket;
import com.badlogic.gdx.net.ServerSocketHints;
import com.badlogic.gdx.net.Socket;
import com.badlogic.gdx.net.SocketHints;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pool;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface Net {

    /* loaded from: classes.dex */
    public interface HttpMethods {
        public static final String DELETE = "DELETE";
        public static final String GET = "GET";
        public static final String HEAD = "HEAD";
        public static final String PATCH = "PATCH";
        public static final String POST = "POST";
        public static final String PUT = "PUT";
    }

    /* loaded from: classes.dex */
    public static class HttpRequest implements Pool.Poolable {

        /* renamed from: a */
        public String f3171a;

        /* renamed from: b */
        public String f3172b;

        /* renamed from: d */
        public Map<String, String> f3173d;

        /* renamed from: k */
        public int f3174k;

        /* renamed from: p */
        public String f3175p;

        /* renamed from: q */
        public InputStream f3176q;

        /* renamed from: r */
        public long f3177r;

        /* renamed from: s */
        public boolean f3178s;

        /* renamed from: t */
        public boolean f3179t;

        public HttpRequest() {
            this.f3174k = 0;
            this.f3178s = true;
            this.f3179t = false;
            this.f3173d = new HashMap();
        }

        public String getContent() {
            return this.f3175p;
        }

        public long getContentLength() {
            return this.f3177r;
        }

        public InputStream getContentStream() {
            return this.f3176q;
        }

        public boolean getFollowRedirects() {
            return this.f3178s;
        }

        public Map<String, String> getHeaders() {
            return this.f3173d;
        }

        public boolean getIncludeCredentials() {
            return this.f3179t;
        }

        public String getMethod() {
            return this.f3171a;
        }

        public int getTimeOut() {
            return this.f3174k;
        }

        public String getUrl() {
            return this.f3172b;
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f3171a = null;
            this.f3172b = null;
            this.f3173d.clear();
            this.f3174k = 0;
            this.f3175p = null;
            this.f3176q = null;
            this.f3177r = 0L;
            this.f3178s = true;
        }

        public void setContent(String str) {
            this.f3175p = str;
        }

        public void setHeader(String str, String str2) {
            this.f3173d.put(str, str2);
        }

        public void setIncludeCredentials(boolean z) {
            this.f3179t = z;
        }

        public void setMethod(String str) {
            this.f3171a = str;
        }

        public void setTimeOut(int i) {
            this.f3174k = i;
        }

        public void setUrl(String str) {
            this.f3172b = str;
        }

        public void setContent(InputStream inputStream, long j) {
            this.f3176q = inputStream;
            this.f3177r = j;
        }

        public void setFollowRedirects(boolean z) {
            if (!z && Gdx.app.getType() == Application.ApplicationType.WebGL) {
                throw new IllegalArgumentException("Following redirects can't be disabled using the GWT/WebGL backend!");
            }
            this.f3178s = z;
        }

        public HttpRequest(String str) {
            this();
            this.f3171a = str;
        }
    }

    /* loaded from: classes.dex */
    public interface HttpResponse {
        String getHeader(String str);

        Map<String, List<String>> getHeaders();

        byte[] getResult();

        InputStream getResultAsStream();

        String getResultAsString();

        HttpStatus getStatus();
    }

    /* loaded from: classes.dex */
    public interface HttpResponseListener {
        void cancelled();

        void failed(Throwable th);

        void handleHttpResponse(HttpResponse httpResponse);
    }

    /* loaded from: classes.dex */
    public enum Protocol {
        TCP
    }

    void cancelHttpRequest(HttpRequest httpRequest);

    Socket newClientSocket(Protocol protocol, String str, int i, SocketHints socketHints);

    ServerSocket newServerSocket(Protocol protocol, int i, ServerSocketHints serverSocketHints);

    ServerSocket newServerSocket(Protocol protocol, String str, int i, ServerSocketHints serverSocketHints);

    boolean openURI(String str);

    void sendHttpRequest(HttpRequest httpRequest, @Null HttpResponseListener httpResponseListener);
}
