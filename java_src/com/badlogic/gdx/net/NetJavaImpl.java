package com.badlogic.gdx.net;

import com.badlogic.gdx.Net;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class NetJavaImpl {

    /* renamed from: a */
    public final ThreadPoolExecutor f5550a;

    /* renamed from: b */
    public final ObjectMap<Net.HttpRequest, HttpURLConnection> f5551b;

    /* renamed from: c */
    public final ObjectMap<Net.HttpRequest, Net.HttpResponseListener> f5552c;

    /* renamed from: d */
    public final ObjectMap<Net.HttpRequest, Future<?>> f5553d;

    /* loaded from: classes.dex */
    public static class HttpClientResponse implements Net.HttpResponse {

        /* renamed from: a */
        public final HttpURLConnection f5561a;

        /* renamed from: b */
        public HttpStatus f5562b;

        @Override // com.badlogic.gdx.Net.HttpResponse
        public String getHeader(String str) {
            return this.f5561a.getHeaderField(str);
        }

        @Override // com.badlogic.gdx.Net.HttpResponse
        public Map<String, List<String>> getHeaders() {
            return this.f5561a.getHeaderFields();
        }

        @Override // com.badlogic.gdx.Net.HttpResponse
        public InputStream getResultAsStream() {
            return m23893a();
        }

        @Override // com.badlogic.gdx.Net.HttpResponse
        public HttpStatus getStatus() {
            return this.f5562b;
        }

        /* renamed from: a */
        public final InputStream m23893a() {
            try {
                return this.f5561a.getInputStream();
            } catch (IOException unused) {
                return this.f5561a.getErrorStream();
            }
        }

        public HttpClientResponse(HttpURLConnection httpURLConnection) {
            this.f5561a = httpURLConnection;
            try {
                this.f5562b = new HttpStatus(httpURLConnection.getResponseCode());
            } catch (IOException unused) {
                this.f5562b = new HttpStatus(-1);
            }
        }

        @Override // com.badlogic.gdx.Net.HttpResponse
        public byte[] getResult() {
            InputStream m23893a = m23893a();
            if (m23893a == null) {
                return StreamUtils.EMPTY_BYTES;
            }
            try {
                return StreamUtils.copyStreamToByteArray(m23893a, this.f5561a.getContentLength());
            } catch (IOException unused) {
                return StreamUtils.EMPTY_BYTES;
            } finally {
                StreamUtils.closeQuietly(m23893a);
            }
        }

        @Override // com.badlogic.gdx.Net.HttpResponse
        public String getResultAsString() {
            InputStream m23893a = m23893a();
            if (m23893a == null) {
                return "";
            }
            try {
                return StreamUtils.copyStreamToString(m23893a, this.f5561a.getContentLength(), "UTF8");
            } catch (IOException unused) {
                return "";
            } finally {
                StreamUtils.closeQuietly(m23893a);
            }
        }
    }

    public NetJavaImpl() {
        this(Integer.MAX_VALUE);
    }

    /* renamed from: b */
    public synchronized Net.HttpResponseListener m23896b(Net.HttpRequest httpRequest) {
        return this.f5552c.get(httpRequest);
    }

    /* renamed from: c */
    public synchronized void m23895c(Net.HttpRequest httpRequest, Net.HttpResponseListener httpResponseListener, HttpURLConnection httpURLConnection) {
        this.f5551b.put(httpRequest, httpURLConnection);
        this.f5552c.put(httpRequest, httpResponseListener);
    }

    /* renamed from: d */
    public synchronized void m23894d(Net.HttpRequest httpRequest) {
        this.f5551b.remove(httpRequest);
        this.f5552c.remove(httpRequest);
        this.f5553d.remove(httpRequest);
    }

    public NetJavaImpl(int i) {
        boolean z = i == Integer.MAX_VALUE;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(z ? 0 : i, i, 60L, TimeUnit.SECONDS, z ? new SynchronousQueue() : new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.badlogic.gdx.net.NetJavaImpl.1

            /* renamed from: a */
            public AtomicInteger f5554a = new AtomicInteger();

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "NetThread" + this.f5554a.getAndIncrement());
                thread.setDaemon(true);
                return thread;
            }
        });
        this.f5550a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(!z);
        this.f5551b = new ObjectMap<>();
        this.f5552c = new ObjectMap<>();
        this.f5553d = new ObjectMap<>();
    }

    /* renamed from: a */
    public final void m23897a(Net.HttpRequest httpRequest) {
        Future<?> future = this.f5553d.get(httpRequest);
        if (future != null) {
            future.cancel(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00be A[Catch: Exception -> 0x00f7, LOOP:0: B:32:0x00b8->B:34:0x00be, LOOP_END, TryCatch #0 {Exception -> 0x00f7, blocks: (B:6:0x0013, B:10:0x0022, B:12:0x002a, B:14:0x0032, B:18:0x003c, B:20:0x0044, B:23:0x004b, B:31:0x008c, B:32:0x00b8, B:34:0x00be, B:35:0x00d4, B:24:0x0055, B:27:0x005d, B:29:0x0063, B:30:0x0074), top: B:45:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendHttpRequest(final com.badlogic.gdx.Net.HttpRequest r10, final com.badlogic.gdx.Net.HttpResponseListener r11) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.net.NetJavaImpl.sendHttpRequest(com.badlogic.gdx.Net$HttpRequest, com.badlogic.gdx.Net$HttpResponseListener):void");
    }

    public void cancelHttpRequest(Net.HttpRequest httpRequest) {
        Net.HttpResponseListener m23896b = m23896b(httpRequest);
        if (m23896b != null) {
            m23896b.cancelled();
            m23897a(httpRequest);
            m23894d(httpRequest);
        }
    }
}
