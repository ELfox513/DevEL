package p090i7;

import android.content.Context;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import p029c7.C1078a;
import p099j7.C4368a;
import p099j7.C4373f;
import p099j7.C4381h;
import p099j7.C4385k;
import p099j7.EnumC4370c;
import p108k7.C4510i;
import p108k7.C4514k;
import p108k7.EnumC4518l;
import p239z6.C7873a;
/* renamed from: i7.d */
/* loaded from: classes2.dex */
public final class C4145d {

    /* renamed from: a */
    public final C7873a f17760a;

    /* renamed from: b */
    public final float f17761b;

    /* renamed from: c */
    public C4146a f17762c;

    /* renamed from: d */
    public C4146a f17763d;

    /* renamed from: e */
    public boolean f17764e;

    /* renamed from: i7.d$a */
    /* loaded from: classes2.dex */
    public static class C4146a {

        /* renamed from: k */
        public static final C1078a f17765k = C1078a.m24639e();

        /* renamed from: l */
        public static final long f17766l = TimeUnit.SECONDS.toMicros(1);

        /* renamed from: a */
        public final C4368a f17767a;

        /* renamed from: b */
        public final boolean f17768b;

        /* renamed from: c */
        public C4381h f17769c;

        /* renamed from: d */
        public C4373f f17770d;

        /* renamed from: e */
        public long f17771e;

        /* renamed from: f */
        public long f17772f;

        /* renamed from: g */
        public C4373f f17773g;

        /* renamed from: h */
        public C4373f f17774h;

        /* renamed from: i */
        public long f17775i;

        /* renamed from: j */
        public long f17776j;

        /* renamed from: a */
        public synchronized void m17308a(boolean z) {
            C4373f c4373f;
            long j;
            if (z) {
                c4373f = this.f17773g;
            } else {
                c4373f = this.f17774h;
            }
            this.f17770d = c4373f;
            if (z) {
                j = this.f17775i;
            } else {
                j = this.f17776j;
            }
            this.f17771e = j;
        }

        /* renamed from: b */
        public synchronized boolean m17307b(C4510i c4510i) {
            double m16731j = this.f17769c.m16731j(this.f17767a.m16746a());
            double m16735a = this.f17770d.m16735a();
            Double.isNaN(m16731j);
            double d = m16731j * m16735a;
            long j = f17766l;
            double d2 = j;
            Double.isNaN(d2);
            long max = Math.max(0L, (long) (d / d2));
            this.f17772f = Math.min(this.f17772f + max, this.f17771e);
            if (max > 0) {
                long m16730l = this.f17769c.m16730l();
                double d3 = max * j;
                double m16735a2 = this.f17770d.m16735a();
                Double.isNaN(d3);
                this.f17769c = new C4381h(m16730l + ((long) (d3 / m16735a2)));
            }
            long j2 = this.f17772f;
            if (j2 > 0) {
                this.f17772f = j2 - 1;
                return true;
            }
            if (this.f17768b) {
                f17765k.m24635i("Exceeded log rate limit, dropping the log.");
            }
            return false;
        }

        /* renamed from: c */
        public static long m17306c(C7873a c7873a, String str) {
            if (str == "Trace") {
                return c7873a.m93C();
            }
            return c7873a.m66o();
        }

        /* renamed from: d */
        public static long m17305d(C7873a c7873a, String str) {
            if (str == "Trace") {
                return c7873a.m63r();
            }
            return c7873a.m63r();
        }

        /* renamed from: e */
        public static long m17304e(C7873a c7873a, String str) {
            if (str == "Trace") {
                return c7873a.m92D();
            }
            return c7873a.m65p();
        }

        /* renamed from: f */
        public static long m17303f(C7873a c7873a, String str) {
            if (str == "Trace") {
                return c7873a.m63r();
            }
            return c7873a.m63r();
        }

        /* renamed from: g */
        public final void m17302g(C7873a c7873a, String str, boolean z) {
            long m17303f = m17303f(c7873a, str);
            long m17304e = m17304e(c7873a, str);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            C4373f c4373f = new C4373f(m17304e, m17303f, timeUnit);
            this.f17773g = c4373f;
            this.f17775i = m17304e;
            if (z) {
                f17765k.m24642b("Foreground %s logging rate:%f, burst capacity:%d", str, c4373f, Long.valueOf(m17304e));
            }
            long m17305d = m17305d(c7873a, str);
            long m17306c = m17306c(c7873a, str);
            C4373f c4373f2 = new C4373f(m17306c, m17305d, timeUnit);
            this.f17774h = c4373f2;
            this.f17776j = m17306c;
            if (z) {
                f17765k.m24642b("Background %s logging rate:%f, capacity:%d", str, c4373f2, Long.valueOf(m17306c));
            }
        }

        public C4146a(C4373f c4373f, long j, C4368a c4368a, C7873a c7873a, String str, boolean z) {
            this.f17767a = c4368a;
            this.f17771e = j;
            this.f17770d = c4373f;
            this.f17772f = j;
            this.f17769c = c4368a.m16746a();
            m17302g(c7873a, str, z);
            this.f17768b = z;
        }
    }

    public C4145d(Context context, C4373f c4373f, long j) {
        this(c4373f, j, new C4368a(), m17313c(), C7873a.m75f());
        this.f17764e = C4385k.m16723b(context);
    }

    /* renamed from: c */
    public static float m17313c() {
        return new Random().nextFloat();
    }

    /* renamed from: a */
    public void m17315a(boolean z) {
        this.f17762c.m17308a(z);
        this.f17763d.m17308a(z);
    }

    /* renamed from: e */
    public final boolean m17311e() {
        if (this.f17761b < this.f17760a.m64q()) {
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public final boolean m17310f() {
        if (this.f17761b < this.f17760a.m91E()) {
            return true;
        }
        return false;
    }

    public C4145d(C4373f c4373f, long j, C4368a c4368a, float f, C7873a c7873a) {
        this.f17762c = null;
        this.f17763d = null;
        boolean z = false;
        this.f17764e = false;
        if (0.0f <= f && f < 1.0f) {
            z = true;
        }
        C4385k.m16724a(z, "Sampling bucket ID should be in range [0.0f, 1.0f).");
        this.f17761b = f;
        this.f17760a = c7873a;
        this.f17762c = new C4146a(c4373f, j, c4368a, c7873a, "Trace", this.f17764e);
        this.f17763d = new C4146a(c4373f, j, c4368a, c7873a, "Network", this.f17764e);
    }

    /* renamed from: b */
    public boolean m17314b(C4510i c4510i) {
        if (c4510i.mo16139i() && !m17310f() && !m17312d(c4510i.mo16138j().m16095o0())) {
            return false;
        }
        if (c4510i.mo16137n() && !m17311e() && !m17312d(c4510i.mo16136o().m16194l0())) {
            return false;
        }
        if (!m17309g(c4510i)) {
            return true;
        }
        if (c4510i.mo16137n()) {
            return this.f17763d.m17307b(c4510i);
        }
        if (!c4510i.mo16139i()) {
            return false;
        }
        return this.f17762c.m17307b(c4510i);
    }

    /* renamed from: d */
    public final boolean m17312d(List<C4514k> list) {
        if (list.size() <= 0 || list.get(0).m16128W() <= 0 || list.get(0).m16129V(0) != EnumC4518l.GAUGES_AND_SYSTEM_EVENTS) {
            return false;
        }
        return true;
    }

    /* renamed from: g */
    public boolean m17309g(C4510i c4510i) {
        if ((c4510i.mo16139i() && ((c4510i.mo16138j().m16096n0().equals(EnumC4370c.FOREGROUND_TRACE_NAME.toString()) || c4510i.mo16138j().m16096n0().equals(EnumC4370c.BACKGROUND_TRACE_NAME.toString())) && c4510i.mo16138j().m16103g0() > 0)) || c4510i.mo16140b()) {
            return false;
        }
        return true;
    }
}
