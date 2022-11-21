package p054e7;

import android.content.Context;
import java.net.URI;
import p029c7.C1078a;
import p099j7.C4383i;
import p108k7.C4500h;
/* renamed from: e7.c */
/* loaded from: classes2.dex */
public final class C3391c extends AbstractC3393e {

    /* renamed from: c */
    public static final C1078a f15771c = C1078a.m24639e();

    /* renamed from: a */
    public final C4500h f15772a;

    /* renamed from: b */
    public final Context f15773b;

    /* renamed from: g */
    public final URI m19003g(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException | IllegalStateException e) {
            f15771c.m24634j("getResultUrl throws exception %s", e.getMessage());
            return null;
        }
    }

    /* renamed from: h */
    public final boolean m19002h(URI uri, Context context) {
        if (uri == null) {
            return false;
        }
        return C4383i.m16726a(uri, context);
    }

    /* renamed from: j */
    public final boolean m19000j(String str) {
        return m19001i(str);
    }

    /* renamed from: k */
    public final boolean m18999k(String str) {
        return (str == null || m19001i(str) || str.length() > 255) ? false : true;
    }

    /* renamed from: l */
    public boolean m18998l(C4500h.EnumC4504d enumC4504d) {
        return (enumC4504d == null || enumC4504d == C4500h.EnumC4504d.HTTP_METHOD_UNKNOWN) ? false : true;
    }

    /* renamed from: m */
    public final boolean m18997m(int i) {
        return i > 0;
    }

    /* renamed from: n */
    public final boolean m18996n(long j) {
        return j >= 0;
    }

    /* renamed from: o */
    public final boolean m18995o(int i) {
        return i == -1 || i > 0;
    }

    /* renamed from: p */
    public final boolean m18994p(String str) {
        if (str == null) {
            return false;
        }
        return "http".equalsIgnoreCase(str) || "https".equalsIgnoreCase(str);
    }

    /* renamed from: q */
    public final boolean m18993q(long j) {
        return j >= 0;
    }

    /* renamed from: r */
    public final boolean m18992r(String str) {
        return str == null;
    }

    @Override // p054e7.AbstractC3393e
    /* renamed from: c */
    public boolean mo18978c() {
        C4500h.EnumC4504d enumC4504d;
        if (m19000j(this.f15772a.m16187s0())) {
            C1078a c1078a = f15771c;
            c1078a.m24635i("URL is missing:" + this.f15772a.m16187s0());
            return false;
        }
        URI m19003g = m19003g(this.f15772a.m16187s0());
        if (m19003g == null) {
            f15771c.m24635i("URL cannot be parsed");
            return false;
        } else if (!m19002h(m19003g, this.f15773b)) {
            C1078a c1078a2 = f15771c;
            c1078a2.m24635i("URL fails allowlist rule: " + m19003g);
            return false;
        } else if (!m18999k(m19003g.getHost())) {
            f15771c.m24635i("URL host is null or invalid");
            return false;
        } else if (!m18994p(m19003g.getScheme())) {
            f15771c.m24635i("URL scheme is null or invalid");
            return false;
        } else if (!m18992r(m19003g.getUserInfo())) {
            f15771c.m24635i("URL user info is null");
            return false;
        } else if (!m18995o(m19003g.getPort())) {
            f15771c.m24635i("URL port is less than or equal to 0");
            return false;
        } else {
            if (this.f15772a.m16185u0()) {
                enumC4504d = this.f15772a.m16196j0();
            } else {
                enumC4504d = null;
            }
            if (!m18998l(enumC4504d)) {
                C1078a c1078a3 = f15771c;
                c1078a3.m24635i("HTTP Method is null or invalid: " + this.f15772a.m16196j0());
                return false;
            } else if (this.f15772a.m16184v0() && !m18997m(this.f15772a.m16195k0())) {
                C1078a c1078a4 = f15771c;
                c1078a4.m24635i("HTTP ResponseCode is a negative value:" + this.f15772a.m16195k0());
                return false;
            } else if (this.f15772a.m16183w0() && !m18996n(this.f15772a.m16193m0())) {
                C1078a c1078a5 = f15771c;
                c1078a5.m24635i("Request Payload is a negative value:" + this.f15772a.m16193m0());
                return false;
            } else if (this.f15772a.m16182x0() && !m18996n(this.f15772a.m16191o0())) {
                C1078a c1078a6 = f15771c;
                c1078a6.m24635i("Response Payload is a negative value:" + this.f15772a.m16191o0());
                return false;
            } else if (this.f15772a.m16186t0() && this.f15772a.m16198h0() > 0) {
                if (this.f15772a.m16181y0() && !m18993q(this.f15772a.m16190p0())) {
                    C1078a c1078a7 = f15771c;
                    c1078a7.m24635i("Time to complete the request is a negative value:" + this.f15772a.m16190p0());
                    return false;
                } else if (this.f15772a.m16228A0() && !m18993q(this.f15772a.m16188r0())) {
                    C1078a c1078a8 = f15771c;
                    c1078a8.m24635i("Time from the start of the request to the start of the response is null or a negative value:" + this.f15772a.m16188r0());
                    return false;
                } else if (this.f15772a.m16180z0() && this.f15772a.m16189q0() > 0) {
                    if (!this.f15772a.m16184v0()) {
                        f15771c.m24635i("Did not receive a HTTP Response Code");
                        return false;
                    }
                    return true;
                } else {
                    C1078a c1078a9 = f15771c;
                    c1078a9.m24635i("Time from the start of the request to the end of the response is null, negative or zero:" + this.f15772a.m16189q0());
                    return false;
                }
            } else {
                C1078a c1078a10 = f15771c;
                c1078a10.m24635i("Start time of the request is null, or zero, or a negative value:" + this.f15772a.m16198h0());
                return false;
            }
        }
    }

    /* renamed from: i */
    public final boolean m19001i(String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    public C3391c(C4500h c4500h, Context context) {
        this.f15773b = context;
        this.f15772a = c4500h;
    }
}
