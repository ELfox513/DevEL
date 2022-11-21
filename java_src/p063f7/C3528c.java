package p063f7;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import p045d7.C3332b;
import p099j7.C4381h;
/* renamed from: f7.c */
/* loaded from: classes2.dex */
public final class C3528c extends HttpURLConnection {

    /* renamed from: a */
    public final C3533h f16023a;

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f16023a.m18682a(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() {
        this.f16023a.m18680b();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f16023a.m18678c();
    }

    public boolean equals(Object obj) {
        return this.f16023a.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f16023a.m18677d();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f16023a.m18676e();
    }

    @Override // java.net.URLConnection
    public Object getContent() {
        return this.f16023a.m18675f();
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f16023a.m18673h();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f16023a.m18672i();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f16023a.m18671j();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f16023a.m18670k();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f16023a.m18669l();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f16023a.m18668m();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f16023a.m18667n();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f16023a.m18666o();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f16023a.m18665p();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f16023a.m18664q();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i) {
        return this.f16023a.m18663r(i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        return this.f16023a.m18661t(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        return this.f16023a.m18660u(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        return this.f16023a.m18659v(i);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        return this.f16023a.m18658w(str, j);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.f16023a.m18657x();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f16023a.m18656y();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return this.f16023a.m18655z();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f16023a.m18708A();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f16023a.m18707B();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.f16023a.m18706C();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() {
        return this.f16023a.m18705D();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f16023a.m18704E();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f16023a.m18703F();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.f16023a.m18702G();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f16023a.m18701H(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() {
        return this.f16023a.m18700I();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() {
        return this.f16023a.m18699J();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f16023a.m18698K();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f16023a.m18697L();
    }

    public int hashCode() {
        return this.f16023a.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.f16023a.m18696M(z);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i) {
        this.f16023a.m18695N(i);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f16023a.m18694O(i);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.f16023a.m18693P(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.f16023a.m18692Q(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.f16023a.m18691R(z);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i) {
        this.f16023a.m18690S(i);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.f16023a.m18688U(j);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.f16023a.m18687V(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f16023a.m18686W(i);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) {
        this.f16023a.m18685X(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f16023a.m18684Y(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.f16023a.m18683Z(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f16023a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f16023a.m18679b0();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) {
        return this.f16023a.m18674g(clsArr);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f16023a.m18662s(str);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j) {
        this.f16023a.m18689T(j);
    }

    public C3528c(HttpURLConnection httpURLConnection, C4381h c4381h, C3332b c3332b) {
        super(httpURLConnection.getURL());
        this.f16023a = new C3533h(httpURLConnection, c4381h, c3332b);
    }
}
