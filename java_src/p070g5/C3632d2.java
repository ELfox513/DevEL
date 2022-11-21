package p070g5;

import android.os.Bundle;
import java.util.Map;
import p145p.C5270a;
import p220x3.C7297q;
/* renamed from: g5.d2 */
/* loaded from: classes2.dex */
public final class C3632d2 extends C3645e3 {

    /* renamed from: b */
    public final Map<String, Long> f16421b;

    /* renamed from: c */
    public final Map<String, Integer> f16422c;

    /* renamed from: d */
    public long f16423d;

    /* renamed from: g */
    public final void m18429g(String str, long j) {
        if (str != null && str.length() != 0) {
            this.f17008a.mo17855P().m17826u(new RunnableC3593a(this, str, j));
        } else {
            this.f17008a.mo17858F().m18018m().m18042a("Ad unit id must be a non-empty string");
        }
    }

    /* renamed from: h */
    public final void m18428h(String str, long j) {
        if (str != null && str.length() != 0) {
            this.f17008a.mo17855P().m17826u(new RunnableC3606b0(this, str, j));
        } else {
            this.f17008a.mo17858F().m18018m().m18042a("Ad unit id must be a non-empty string");
        }
    }

    /* renamed from: i */
    public final void m18427i(long j) {
        C3781p7 m17910o = this.f17008a.m18541H().m17910o(false);
        for (String str : this.f16421b.keySet()) {
            m18425k(str, j - this.f16421b.get(str).longValue(), m17910o);
        }
        if (!this.f16421b.isEmpty()) {
            m18426j(j - this.f16423d, m17910o);
        }
        m18424l(j);
    }

    /* renamed from: j */
    public final void m18426j(long j, C3781p7 c3781p7) {
        if (c3781p7 == null) {
            this.f17008a.mo17858F().m18014q().m18042a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            this.f17008a.mo17858F().m18014q().m18041b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            C3700ia.m18157s(c3781p7, bundle, true);
            this.f17008a.m18543D().m18216p("am", "_xa", bundle);
        }
    }

    /* renamed from: k */
    public final void m18425k(String str, long j, C3781p7 c3781p7) {
        if (c3781p7 == null) {
            this.f17008a.mo17858F().m18014q().m18042a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            this.f17008a.mo17858F().m18014q().m18041b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            C3700ia.m18157s(c3781p7, bundle, true);
            this.f17008a.m18543D().m18216p("am", "_xu", bundle);
        }
    }

    /* renamed from: l */
    public final void m18424l(long j) {
        for (String str : this.f16421b.keySet()) {
            this.f16421b.put(str, Long.valueOf(j));
        }
        if (!this.f16421b.isEmpty()) {
            this.f16423d = j;
        }
    }

    public C3632d2(C3611b5 c3611b5) {
        super(c3611b5);
        this.f16422c = new C5270a();
        this.f16421b = new C5270a();
    }

    /* renamed from: d */
    public static /* bridge */ /* synthetic */ void m18432d(C3632d2 c3632d2, String str, long j) {
        c3632d2.mo17839c();
        C7297q.m1887f(str);
        if (c3632d2.f16422c.isEmpty()) {
            c3632d2.f16423d = j;
        }
        Integer num = c3632d2.f16422c.get(str);
        if (num != null) {
            c3632d2.f16422c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (c3632d2.f16422c.size() >= 100) {
            c3632d2.f17008a.mo17858F().m18013r().m18042a("Too many ads visible");
        } else {
            c3632d2.f16422c.put(str, 1);
            c3632d2.f16421b.put(str, Long.valueOf(j));
        }
    }

    /* renamed from: e */
    public static /* bridge */ /* synthetic */ void m18431e(C3632d2 c3632d2, String str, long j) {
        c3632d2.mo17839c();
        C7297q.m1887f(str);
        Integer num = c3632d2.f16422c.get(str);
        if (num != null) {
            C3781p7 m17910o = c3632d2.f17008a.m18541H().m17910o(false);
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                c3632d2.f16422c.remove(str);
                Long l = c3632d2.f16421b.get(str);
                if (l == null) {
                    c3632d2.f17008a.mo17858F().m18018m().m18042a("First ad unit exposure time was never set");
                } else {
                    long longValue = l.longValue();
                    c3632d2.f16421b.remove(str);
                    c3632d2.m18425k(str, j - longValue, m17910o);
                }
                if (c3632d2.f16422c.isEmpty()) {
                    long j2 = c3632d2.f16423d;
                    if (j2 == 0) {
                        c3632d2.f17008a.mo17858F().m18018m().m18042a("First ad exposure time was never set");
                        return;
                    }
                    c3632d2.m18426j(j - j2, m17910o);
                    c3632d2.f16423d = 0L;
                    return;
                }
                return;
            }
            c3632d2.f16422c.put(str, Integer.valueOf(intValue));
            return;
        }
        c3632d2.f17008a.mo17858F().m18018m().m18041b("Call to endAdUnitExposure for unknown ad unit id", str);
    }
}
