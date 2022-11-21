package p054e7;

import java.util.Map;
import p029c7.C1078a;
import p099j7.EnumC4369b;
import p108k7.C4521m;
/* renamed from: e7.d */
/* loaded from: classes2.dex */
public final class C3392d extends AbstractC3393e {

    /* renamed from: b */
    public static final C1078a f15774b = C1078a.m24639e();

    /* renamed from: a */
    public final C4521m f15775a;

    /* renamed from: g */
    public final boolean m18991g(C4521m c4521m) {
        return m18990h(c4521m, 0);
    }

    /* renamed from: h */
    public final boolean m18990h(C4521m c4521m, int i) {
        if (c4521m == null) {
            return false;
        }
        if (i > 1) {
            f15774b.m24635i("Exceed MAX_SUBTRACE_DEEP:1");
            return false;
        }
        for (Map.Entry<String, Long> entry : c4521m.m16102h0().entrySet()) {
            if (!m18986l(entry.getKey())) {
                C1078a c1078a = f15774b;
                c1078a.m24635i("invalid CounterId:" + entry.getKey());
                return false;
            } else if (!m18985m(entry.getValue())) {
                C1078a c1078a2 = f15774b;
                c1078a2.m24635i("invalid CounterValue:" + entry.getValue());
                return false;
            }
        }
        for (C4521m c4521m2 : c4521m.m16094p0()) {
            if (!m18990h(c4521m2, i + 1)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: k */
    public final boolean m18987k(C4521m c4521m) {
        return c4521m.m16096n0().startsWith("_st_");
    }

    /* renamed from: l */
    public final boolean m18986l(String str) {
        if (str == null) {
            return false;
        }
        String trim = str.trim();
        if (trim.isEmpty()) {
            f15774b.m24635i("counterId is empty");
            return false;
        } else if (trim.length() > 100) {
            f15774b.m24635i("counterId exceeded max length 100");
            return false;
        } else {
            return true;
        }
    }

    /* renamed from: m */
    public final boolean m18985m(Long l) {
        return l != null;
    }

    /* renamed from: o */
    public final boolean m18983o(C4521m c4521m, int i) {
        if (c4521m == null) {
            f15774b.m24635i("TraceMetric is null");
            return false;
        } else if (i > 1) {
            f15774b.m24635i("Exceed MAX_SUBTRACE_DEEP:1");
            return false;
        } else if (!m18981q(c4521m.m16096n0())) {
            C1078a c1078a = f15774b;
            c1078a.m24635i("invalid TraceId:" + c4521m.m16096n0());
            return false;
        } else if (!m18982p(c4521m)) {
            C1078a c1078a2 = f15774b;
            c1078a2.m24635i("invalid TraceDuration:" + c4521m.m16099k0());
            return false;
        } else if (!c4521m.m16093q0()) {
            f15774b.m24635i("clientStartTimeUs is null.");
            return false;
        } else if (m18987k(c4521m) && !m18984n(c4521m)) {
            C1078a c1078a3 = f15774b;
            c1078a3.m24635i("non-positive totalFrames in screen trace " + c4521m.m16096n0());
            return false;
        } else {
            for (C4521m c4521m2 : c4521m.m16094p0()) {
                if (!m18983o(c4521m2, i + 1)) {
                    return false;
                }
            }
            return m18988j(c4521m.m16101i0());
        }
    }

    /* renamed from: p */
    public final boolean m18982p(C4521m c4521m) {
        return c4521m != null && c4521m.m16099k0() > 0;
    }

    /* renamed from: q */
    public final boolean m18981q(String str) {
        if (str == null) {
            return false;
        }
        String trim = str.trim();
        return !trim.isEmpty() && trim.length() <= 100;
    }

    @Override // p054e7.AbstractC3393e
    /* renamed from: c */
    public boolean mo18978c() {
        if (!m18983o(this.f15775a, 0)) {
            C1078a c1078a = f15774b;
            c1078a.m24635i("Invalid Trace:" + this.f15775a.m16096n0());
            return false;
        } else if (m18989i(this.f15775a) && !m18991g(this.f15775a)) {
            C1078a c1078a2 = f15774b;
            c1078a2.m24635i("Invalid Counters for Trace:" + this.f15775a.m16096n0());
            return false;
        } else {
            return true;
        }
    }

    public C3392d(C4521m c4521m) {
        this.f15775a = c4521m;
    }

    /* renamed from: i */
    public final boolean m18989i(C4521m c4521m) {
        boolean z;
        boolean z2;
        if (c4521m.m16103g0() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        for (C4521m c4521m2 : c4521m.m16094p0()) {
            if (c4521m2.m16103g0() > 0) {
                z2 = true;
                continue;
            } else {
                z2 = false;
                continue;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public final boolean m18988j(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String m18977d = AbstractC3393e.m18977d(entry);
            if (m18977d != null) {
                f15774b.m24635i(m18977d);
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    public final boolean m18984n(C4521m c4521m) {
        Long l = c4521m.m16102h0().get(EnumC4369b.FRAMES_TOTAL.toString());
        if (l != null && l.compareTo((Long) 0L) > 0) {
            return true;
        }
        return false;
    }
}
