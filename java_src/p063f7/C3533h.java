package p063f7;

import android.os.Build;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.net.HttpRequestHeader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import p029c7.C1078a;
import p045d7.C3332b;
import p099j7.C4381h;
/* renamed from: f7.h */
/* loaded from: classes2.dex */
public class C3533h {

    /* renamed from: f */
    public static final C1078a f16026f = C1078a.m24639e();

    /* renamed from: a */
    public final HttpURLConnection f16027a;

    /* renamed from: b */
    public final C3332b f16028b;

    /* renamed from: c */
    public long f16029c = -1;

    /* renamed from: d */
    public long f16030d = -1;

    /* renamed from: e */
    public final C4381h f16031e;

    /* renamed from: A */
    public boolean m18708A() {
        return this.f16027a.getInstanceFollowRedirects();
    }

    /* renamed from: E */
    public int m18704E() {
        return this.f16027a.getReadTimeout();
    }

    /* renamed from: F */
    public String m18703F() {
        return this.f16027a.getRequestMethod();
    }

    /* renamed from: G */
    public Map<String, List<String>> m18702G() {
        return this.f16027a.getRequestProperties();
    }

    /* renamed from: H */
    public String m18701H(String str) {
        return this.f16027a.getRequestProperty(str);
    }

    /* renamed from: K */
    public URL m18698K() {
        return this.f16027a.getURL();
    }

    /* renamed from: L */
    public boolean m18697L() {
        return this.f16027a.getUseCaches();
    }

    /* renamed from: M */
    public void m18696M(boolean z) {
        this.f16027a.setAllowUserInteraction(z);
    }

    /* renamed from: N */
    public void m18695N(int i) {
        this.f16027a.setChunkedStreamingMode(i);
    }

    /* renamed from: O */
    public void m18694O(int i) {
        this.f16027a.setConnectTimeout(i);
    }

    /* renamed from: P */
    public void m18693P(boolean z) {
        this.f16027a.setDefaultUseCaches(z);
    }

    /* renamed from: Q */
    public void m18692Q(boolean z) {
        this.f16027a.setDoInput(z);
    }

    /* renamed from: R */
    public void m18691R(boolean z) {
        this.f16027a.setDoOutput(z);
    }

    /* renamed from: S */
    public void m18690S(int i) {
        this.f16027a.setFixedLengthStreamingMode(i);
    }

    /* renamed from: U */
    public void m18688U(long j) {
        this.f16027a.setIfModifiedSince(j);
    }

    /* renamed from: V */
    public void m18687V(boolean z) {
        this.f16027a.setInstanceFollowRedirects(z);
    }

    /* renamed from: W */
    public void m18686W(int i) {
        this.f16027a.setReadTimeout(i);
    }

    /* renamed from: X */
    public void m18685X(String str) {
        this.f16027a.setRequestMethod(str);
    }

    /* renamed from: Z */
    public void m18683Z(boolean z) {
        this.f16027a.setUseCaches(z);
    }

    /* renamed from: a */
    public void m18682a(String str, String str2) {
        this.f16027a.addRequestProperty(str, str2);
    }

    /* renamed from: b0 */
    public boolean m18679b0() {
        return this.f16027a.usingProxy();
    }

    /* renamed from: d */
    public boolean m18677d() {
        return this.f16027a.getAllowUserInteraction();
    }

    /* renamed from: e */
    public int m18676e() {
        return this.f16027a.getConnectTimeout();
    }

    public boolean equals(Object obj) {
        return this.f16027a.equals(obj);
    }

    public int hashCode() {
        return this.f16027a.hashCode();
    }

    /* renamed from: m */
    public boolean m18668m() {
        return this.f16027a.getDefaultUseCaches();
    }

    /* renamed from: n */
    public boolean m18667n() {
        return this.f16027a.getDoInput();
    }

    /* renamed from: o */
    public boolean m18666o() {
        return this.f16027a.getDoOutput();
    }

    public String toString() {
        return this.f16027a.toString();
    }

    /* renamed from: y */
    public long m18656y() {
        return this.f16027a.getIfModifiedSince();
    }

    /* renamed from: C */
    public OutputStream m18706C() {
        try {
            return new C3527b(this.f16027a.getOutputStream(), this.f16028b, this.f16031e);
        } catch (IOException e) {
            this.f16028b.m19119J(this.f16031e.m16732h());
            C3536k.m18651d(this.f16028b);
            throw e;
        }
    }

    /* renamed from: D */
    public Permission m18705D() {
        try {
            return this.f16027a.getPermission();
        } catch (IOException e) {
            this.f16028b.m19119J(this.f16031e.m16732h());
            C3536k.m18651d(this.f16028b);
            throw e;
        }
    }

    /* renamed from: T */
    public void m18689T(long j) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f16027a.setFixedLengthStreamingMode(j);
        }
    }

    /* renamed from: Y */
    public void m18684Y(String str, String str2) {
        if (HttpRequestHeader.UserAgent.equalsIgnoreCase(str)) {
            this.f16028b.m19116P(str2);
        }
        this.f16027a.setRequestProperty(str, str2);
    }

    /* renamed from: a0 */
    public final void m18681a0() {
        if (this.f16029c == -1) {
            this.f16031e.m16729n();
            long m16730l = this.f16031e.m16730l();
            this.f16029c = m16730l;
            this.f16028b.m19123D(m16730l);
        }
        String m18703F = m18703F();
        if (m18703F != null) {
            this.f16028b.m19107z(m18703F);
        } else if (m18666o()) {
            this.f16028b.m19107z(Net.HttpMethods.POST);
        } else {
            this.f16028b.m19107z(Net.HttpMethods.GET);
        }
    }

    /* renamed from: b */
    public void m18680b() {
        if (this.f16029c == -1) {
            this.f16031e.m16729n();
            long m16730l = this.f16031e.m16730l();
            this.f16029c = m16730l;
            this.f16028b.m19123D(m16730l);
        }
        try {
            this.f16027a.connect();
        } catch (IOException e) {
            this.f16028b.m19119J(this.f16031e.m16732h());
            C3536k.m18651d(this.f16028b);
            throw e;
        }
    }

    /* renamed from: c */
    public void m18678c() {
        this.f16028b.m19119J(this.f16031e.m16732h());
        this.f16028b.m19115h();
        this.f16027a.disconnect();
    }

    public C3533h(HttpURLConnection httpURLConnection, C4381h c4381h, C3332b c3332b) {
        this.f16027a = httpURLConnection;
        this.f16028b = c3332b;
        this.f16031e = c4381h;
        c3332b.m19117L(httpURLConnection.getURL().toString());
    }

    /* renamed from: B */
    public long m18707B() {
        m18681a0();
        return this.f16027a.getLastModified();
    }

    /* renamed from: I */
    public int m18700I() {
        m18681a0();
        if (this.f16030d == -1) {
            long m16732h = this.f16031e.m16732h();
            this.f16030d = m16732h;
            this.f16028b.m19118K(m16732h);
        }
        try {
            int responseCode = this.f16027a.getResponseCode();
            this.f16028b.m19126A(responseCode);
            return responseCode;
        } catch (IOException e) {
            this.f16028b.m19119J(this.f16031e.m16732h());
            C3536k.m18651d(this.f16028b);
            throw e;
        }
    }

    /* renamed from: J */
    public String m18699J() {
        m18681a0();
        if (this.f16030d == -1) {
            long m16732h = this.f16031e.m16732h();
            this.f16030d = m16732h;
            this.f16028b.m19118K(m16732h);
        }
        try {
            String responseMessage = this.f16027a.getResponseMessage();
            this.f16028b.m19126A(this.f16027a.getResponseCode());
            return responseMessage;
        } catch (IOException e) {
            this.f16028b.m19119J(this.f16031e.m16732h());
            C3536k.m18651d(this.f16028b);
            throw e;
        }
    }

    /* renamed from: f */
    public Object m18675f() {
        m18681a0();
        this.f16028b.m19126A(this.f16027a.getResponseCode());
        try {
            Object content = this.f16027a.getContent();
            if (content instanceof InputStream) {
                this.f16028b.m19122E(this.f16027a.getContentType());
                return new C3526a((InputStream) content, this.f16028b, this.f16031e);
            }
            this.f16028b.m19122E(this.f16027a.getContentType());
            this.f16028b.m19121F(this.f16027a.getContentLength());
            this.f16028b.m19119J(this.f16031e.m16732h());
            this.f16028b.m19115h();
            return content;
        } catch (IOException e) {
            this.f16028b.m19119J(this.f16031e.m16732h());
            C3536k.m18651d(this.f16028b);
            throw e;
        }
    }

    /* renamed from: g */
    public Object m18674g(Class[] clsArr) {
        m18681a0();
        this.f16028b.m19126A(this.f16027a.getResponseCode());
        try {
            Object content = this.f16027a.getContent(clsArr);
            if (content instanceof InputStream) {
                this.f16028b.m19122E(this.f16027a.getContentType());
                return new C3526a((InputStream) content, this.f16028b, this.f16031e);
            }
            this.f16028b.m19122E(this.f16027a.getContentType());
            this.f16028b.m19121F(this.f16027a.getContentLength());
            this.f16028b.m19119J(this.f16031e.m16732h());
            this.f16028b.m19115h();
            return content;
        } catch (IOException e) {
            this.f16028b.m19119J(this.f16031e.m16732h());
            C3536k.m18651d(this.f16028b);
            throw e;
        }
    }

    /* renamed from: h */
    public String m18673h() {
        m18681a0();
        return this.f16027a.getContentEncoding();
    }

    /* renamed from: i */
    public int m18672i() {
        m18681a0();
        return this.f16027a.getContentLength();
    }

    /* renamed from: j */
    public long m18671j() {
        long contentLengthLong;
        m18681a0();
        if (Build.VERSION.SDK_INT >= 24) {
            contentLengthLong = this.f16027a.getContentLengthLong();
            return contentLengthLong;
        }
        return 0L;
    }

    /* renamed from: k */
    public String m18670k() {
        m18681a0();
        return this.f16027a.getContentType();
    }

    /* renamed from: l */
    public long m18669l() {
        m18681a0();
        return this.f16027a.getDate();
    }

    /* renamed from: p */
    public InputStream m18665p() {
        m18681a0();
        try {
            this.f16028b.m19126A(this.f16027a.getResponseCode());
        } catch (IOException unused) {
            f16026f.m24643a("IOException thrown trying to obtain the response code");
        }
        InputStream errorStream = this.f16027a.getErrorStream();
        if (errorStream != null) {
            return new C3526a(errorStream, this.f16028b, this.f16031e);
        }
        return errorStream;
    }

    /* renamed from: q */
    public long m18664q() {
        m18681a0();
        return this.f16027a.getExpiration();
    }

    /* renamed from: r */
    public String m18663r(int i) {
        m18681a0();
        return this.f16027a.getHeaderField(i);
    }

    /* renamed from: s */
    public String m18662s(String str) {
        m18681a0();
        return this.f16027a.getHeaderField(str);
    }

    /* renamed from: t */
    public long m18661t(String str, long j) {
        m18681a0();
        return this.f16027a.getHeaderFieldDate(str, j);
    }

    /* renamed from: u */
    public int m18660u(String str, int i) {
        m18681a0();
        return this.f16027a.getHeaderFieldInt(str, i);
    }

    /* renamed from: v */
    public String m18659v(int i) {
        m18681a0();
        return this.f16027a.getHeaderFieldKey(i);
    }

    /* renamed from: w */
    public long m18658w(String str, long j) {
        long headerFieldLong;
        m18681a0();
        if (Build.VERSION.SDK_INT >= 24) {
            headerFieldLong = this.f16027a.getHeaderFieldLong(str, j);
            return headerFieldLong;
        }
        return 0L;
    }

    /* renamed from: x */
    public Map<String, List<String>> m18657x() {
        m18681a0();
        return this.f16027a.getHeaderFields();
    }

    /* renamed from: z */
    public InputStream m18655z() {
        m18681a0();
        this.f16028b.m19126A(this.f16027a.getResponseCode());
        this.f16028b.m19122E(this.f16027a.getContentType());
        try {
            return new C3526a(this.f16027a.getInputStream(), this.f16028b, this.f16031e);
        } catch (IOException e) {
            this.f16028b.m19119J(this.f16031e.m16732h());
            C3536k.m18651d(this.f16028b);
            throw e;
        }
    }
}
