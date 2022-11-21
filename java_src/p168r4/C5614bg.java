package p168r4;

import android.net.Uri;
import com.badlogic.gdx.net.HttpRequestHeader;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: r4.bg */
/* loaded from: classes2.dex */
public final class C5614bg extends AbstractC5898j5 implements InterfaceC5915jm {

    /* renamed from: e */
    public final boolean f21037e;

    /* renamed from: f */
    public final int f21038f;

    /* renamed from: g */
    public final int f21039g;

    /* renamed from: h */
    public final String f21040h;

    /* renamed from: i */
    public final C5804gl f21041i;

    /* renamed from: j */
    public final C5804gl f21042j;

    /* renamed from: k */
    public C6350vc f21043k;

    /* renamed from: l */
    public HttpURLConnection f21044l;

    /* renamed from: m */
    public InputStream f21045m;

    /* renamed from: n */
    public boolean f21046n;

    /* renamed from: o */
    public int f21047o;

    /* renamed from: p */
    public long f21048p;

    /* renamed from: q */
    public long f21049q;

    public C5614bg(String str, int i, int i2, boolean z, C5804gl c5804gl, a13<String> a13Var, boolean z2) {
        super(true);
        this.f21040h = str;
        this.f21038f = i;
        this.f21039g = i2;
        this.f21037e = z;
        this.f21041i = c5804gl;
        this.f21042j = new C5804gl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C5614bg(String str, String str2, int i, int i2, boolean z, C5804gl c5804gl, a13<String> a13Var, boolean z2) {
        this(str, str2, i, i2, z, null, false);
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.f21048p;
            if (j != -1) {
                long j2 = j - this.f21049q;
                if (j2 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j2);
            }
            InputStream inputStream = this.f21045m;
            int i3 = C5979lc.f27164a;
            int read = inputStream.read(bArr, i, i2);
            if (read == -1) {
                return -1;
            }
            this.f21049q += read;
            m10420r(read);
            return read;
        } catch (IOException e) {
            C6350vc c6350vc = this.f21043k;
            int i4 = C5979lc.f27164a;
            throw C5765fj.m11505a(e, c6350vc, 2);
        }
    }

    @Override // p168r4.AbstractC5898j5, p168r4.InterfaceC6087o8, p168r4.InterfaceC5915jm
    /* renamed from: d */
    public final Map<String, List<String>> mo5983d() {
        HttpURLConnection httpURLConnection = this.f21044l;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        long j;
        try {
            InputStream inputStream = this.f21045m;
            if (inputStream != null) {
                long j2 = this.f21048p;
                if (j2 == -1) {
                    j = -1;
                } else {
                    j = j2 - this.f21049q;
                }
                HttpURLConnection httpURLConnection = this.f21044l;
                try {
                    if (httpURLConnection != null) {
                        int i = C5979lc.f27164a;
                        if (i >= 19) {
                            if (i <= 20) {
                                try {
                                    InputStream inputStream2 = httpURLConnection.getInputStream();
                                    if (j == -1) {
                                        if (inputStream2.read() != -1) {
                                        }
                                    } else if (j <= 2048) {
                                    }
                                    String name = inputStream2.getClass().getName();
                                    if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                                        Class<? super Object> superclass = inputStream2.getClass().getSuperclass();
                                        superclass.getClass();
                                        Method declaredMethod = superclass.getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                                        declaredMethod.setAccessible(true);
                                        declaredMethod.invoke(inputStream2, new Object[0]);
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            inputStream.close();
                        }
                    }
                    inputStream.close();
                } catch (IOException e) {
                    C6350vc c6350vc = this.f21043k;
                    int i2 = C5979lc.f27164a;
                    throw new C5765fj(e, c6350vc, 2000, 3);
                }
            }
        } finally {
            this.f21045m = null;
            m12779v();
            if (this.f21046n) {
                this.f21046n = false;
                m10419s();
            }
        }
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        HttpURLConnection httpURLConnection = this.f21044l;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* renamed from: u */
    public final URL m12780u(URL url, String str, C6350vc c6350vc) {
        String str2;
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!"https".equals(protocol) && !"http".equals(protocol)) {
                    String valueOf = String.valueOf(protocol);
                    if (valueOf.length() != 0) {
                        str2 = "Unsupported protocol redirect: ".concat(valueOf);
                    } else {
                        str2 = new String("Unsupported protocol redirect: ");
                    }
                    throw new C5765fj(str2, c6350vc, 2001, 1);
                } else if (!this.f21037e && !protocol.equals(url.getProtocol())) {
                    String protocol2 = url.getProtocol();
                    StringBuilder sb = new StringBuilder(String.valueOf(protocol2).length() + 41 + protocol.length());
                    sb.append("Disallowed cross-protocol redirect (");
                    sb.append(protocol2);
                    sb.append(" to ");
                    sb.append(protocol);
                    sb.append(")");
                    throw new C5765fj(sb.toString(), c6350vc, 2001, 1);
                } else {
                    return url2;
                }
            } catch (MalformedURLException e) {
                throw new C5765fj(e, c6350vc, 2001, 1);
            }
        }
        throw new C5765fj("Null location redirect", c6350vc, 2001, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ca, code lost:
        r5 = 1;
        r2 = new java.lang.StringBuilder(31);
        r2.append("Too many redirects: ");
        r2.append(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01ee, code lost:
        throw new p168r4.C5765fj(new java.net.NoRouteToHostException(r2.toString()), r25, 2001, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b0, code lost:
        if (r8 != 0) goto L15;
     */
    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4059g(p168r4.C6350vc r25) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5614bg.mo4059g(r4.vc):long");
    }

    /* renamed from: v */
    public final void m12779v() {
        HttpURLConnection httpURLConnection = this.f21044l;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                C5720eb.m11832b("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f21044l = null;
        }
    }

    /* renamed from: t */
    public final HttpURLConnection m12781t(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) {
        String sb;
        String str;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f21038f);
        httpURLConnection.setReadTimeout(this.f21039g);
        HashMap hashMap = new HashMap();
        hashMap.putAll(this.f21041i.m11130a());
        hashMap.putAll(this.f21042j.m11130a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j == 0 && j2 == -1) {
            sb = null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("bytes=");
            sb2.append(j);
            sb2.append("-");
            if (j2 != -1) {
                sb2.append((j + j2) - 1);
            }
            sb = sb2.toString();
        }
        if (sb != null) {
            httpURLConnection.setRequestProperty(HttpRequestHeader.Range, sb);
        }
        String str2 = this.f21040h;
        if (str2 != null) {
            httpURLConnection.setRequestProperty(HttpRequestHeader.UserAgent, str2);
        }
        if (true != z) {
            str = "identity";
        } else {
            str = "gzip";
        }
        httpURLConnection.setRequestProperty(HttpRequestHeader.AcceptEncoding, str);
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setRequestMethod(C6350vc.m6173a(1));
        httpURLConnection.connect();
        return httpURLConnection;
    }
}
