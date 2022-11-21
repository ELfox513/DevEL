package p239z6;

import android.content.Context;
import com.google.firebase.perf.config.RemoteConfigManager;
import p029c7.C1078a;
import p099j7.C4371d;
import p099j7.C4372e;
import p099j7.C4385k;
import p223x6.C7391a;
/* renamed from: z6.a */
/* loaded from: classes2.dex */
public class C7873a {

    /* renamed from: d */
    public static final C1078a f38270d = C1078a.m24639e();

    /* renamed from: e */
    public static volatile C7873a f38271e;

    /* renamed from: a */
    public final RemoteConfigManager f38272a;

    /* renamed from: b */
    public C4371d f38273b;

    /* renamed from: c */
    public C7895v f38274c;

    /* renamed from: F */
    public final boolean m90F(long j) {
        return j >= 0;
    }

    /* renamed from: H */
    public final boolean m88H(long j) {
        return j >= 0;
    }

    /* renamed from: J */
    public final boolean m86J(float f) {
        return 0.0f <= f && f <= 1.0f;
    }

    /* renamed from: K */
    public final boolean m85K(long j) {
        return j > 0;
    }

    /* renamed from: L */
    public final boolean m84L(long j) {
        return j > 0;
    }

    /* renamed from: N */
    public void m82N(Context context) {
        m83M(context.getApplicationContext());
    }

    /* renamed from: O */
    public void m81O(C4371d c4371d) {
        this.f38273b = c4371d;
    }

    /* renamed from: b */
    public final C4372e<Boolean> m79b(AbstractC7893t<Boolean> abstractC7893t) {
        return this.f38274c.m13b(abstractC7893t.mo17a());
    }

    /* renamed from: c */
    public final C4372e<Float> m78c(AbstractC7893t<Float> abstractC7893t) {
        return this.f38274c.m11d(abstractC7893t.mo17a());
    }

    /* renamed from: d */
    public final C4372e<Long> m77d(AbstractC7893t<Long> abstractC7893t) {
        return this.f38274c.m9f(abstractC7893t.mo17a());
    }

    /* renamed from: e */
    public final C4372e<String> m76e(AbstractC7893t<String> abstractC7893t) {
        return this.f38274c.m8g(abstractC7893t.mo17a());
    }

    /* renamed from: k */
    public boolean m70k() {
        return m72i() && !m71j();
    }

    /* renamed from: l */
    public final C4372e<Boolean> m69l(AbstractC7893t<Boolean> abstractC7893t) {
        return this.f38273b.m16744b(abstractC7893t.mo16b());
    }

    /* renamed from: m */
    public final C4372e<Float> m68m(AbstractC7893t<Float> abstractC7893t) {
        return this.f38273b.m16743c(abstractC7893t.mo16b());
    }

    /* renamed from: n */
    public final C4372e<Long> m67n(AbstractC7893t<Long> abstractC7893t) {
        return this.f38273b.m16741e(abstractC7893t.mo16b());
    }

    /* renamed from: s */
    public final C4372e<Boolean> m62s(AbstractC7893t<Boolean> abstractC7893t) {
        return this.f38272a.getBoolean(abstractC7893t.mo15c());
    }

    /* renamed from: t */
    public final C4372e<Float> m61t(AbstractC7893t<Float> abstractC7893t) {
        return this.f38272a.getFloat(abstractC7893t.mo15c());
    }

    /* renamed from: u */
    public final C4372e<Long> m60u(AbstractC7893t<Long> abstractC7893t) {
        return this.f38272a.getLong(abstractC7893t.mo15c());
    }

    /* renamed from: v */
    public final C4372e<String> m59v(AbstractC7893t<String> abstractC7893t) {
        return this.f38272a.getString(abstractC7893t.mo15c());
    }

    /* renamed from: f */
    public static synchronized C7873a m75f() {
        C7873a c7873a;
        synchronized (C7873a.class) {
            if (f38271e == null) {
                f38271e = new C7873a(null, null, null);
            }
            c7873a = f38271e;
        }
        return c7873a;
    }

    /* renamed from: M */
    public void m83M(Context context) {
        f38270d.m24636h(C4385k.m16723b(context));
        this.f38274c.m6i(context);
    }

    public C7873a(RemoteConfigManager remoteConfigManager, C4371d c4371d, C7895v c7895v) {
        this.f38272a = remoteConfigManager == null ? RemoteConfigManager.getInstance() : remoteConfigManager;
        this.f38273b = c4371d == null ? new C4371d() : c4371d;
        this.f38274c = c7895v == null ? C7895v.m10e() : c7895v;
    }

    /* renamed from: A */
    public long m95A() {
        C7888o m26e = C7888o.m26e();
        C4372e<Long> m67n = m67n(m26e);
        if (m67n.m16737d() && m88H(m67n.m16738c().longValue())) {
            return m67n.m16738c().longValue();
        }
        C4372e<Long> m60u = m60u(m26e);
        if (m60u.m16737d() && m88H(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m26e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m26e);
        if (m77d.m16737d() && m88H(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m26e.m27d().longValue();
    }

    /* renamed from: B */
    public float m94B() {
        C7889p m24e = C7889p.m24e();
        C4372e<Float> m68m = m68m(m24e);
        if (m68m.m16737d()) {
            float floatValue = m68m.m16738c().floatValue() / 100.0f;
            if (m86J(floatValue)) {
                return floatValue;
            }
        }
        C4372e<Float> m61t = m61t(m24e);
        if (m61t.m16737d() && m86J(m61t.m16738c().floatValue())) {
            this.f38274c.m5j(m24e.mo17a(), m61t.m16738c().floatValue());
            return m61t.m16738c().floatValue();
        }
        C4372e<Float> m78c = m78c(m24e);
        if (m78c.m16737d() && m86J(m78c.m16738c().floatValue())) {
            return m78c.m16738c().floatValue();
        }
        return m24e.m25d().floatValue();
    }

    /* renamed from: C */
    public long m93C() {
        C7890q m22e = C7890q.m22e();
        C4372e<Long> m60u = m60u(m22e);
        if (m60u.m16737d() && m90F(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m22e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m22e);
        if (m77d.m16737d() && m90F(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m22e.m23d().longValue();
    }

    /* renamed from: D */
    public long m92D() {
        C7891r m20e = C7891r.m20e();
        C4372e<Long> m60u = m60u(m20e);
        if (m60u.m16737d() && m90F(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m20e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m20e);
        if (m77d.m16737d() && m90F(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m20e.m21d().longValue();
    }

    /* renamed from: E */
    public float m91E() {
        C7892s m18e = C7892s.m18e();
        C4372e<Float> m61t = m61t(m18e);
        if (m61t.m16737d() && m86J(m61t.m16738c().floatValue())) {
            this.f38274c.m5j(m18e.mo17a(), m61t.m16738c().floatValue());
            return m61t.m16738c().floatValue();
        }
        C4372e<Float> m78c = m78c(m18e);
        if (m78c.m16737d() && m86J(m78c.m16738c().floatValue())) {
            return m78c.m16738c().floatValue();
        }
        return m18e.m19d().floatValue();
    }

    /* renamed from: G */
    public final boolean m89G(String str) {
        if (str.trim().isEmpty()) {
            return false;
        }
        for (String str2 : str.split(";")) {
            if (str2.trim().equals(C7391a.f36985b)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: I */
    public boolean m87I() {
        Boolean m73h = m73h();
        if ((m73h == null || m73h.booleanValue()) && m70k()) {
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public String m80a() {
        String m49f;
        C7876d m50e = C7876d.m50e();
        if (C7391a.f36984a.booleanValue()) {
            return m50e.m51d();
        }
        String mo15c = m50e.mo15c();
        long j = -1;
        if (mo15c != null) {
            j = ((Long) this.f38272a.getRemoteConfigValueOrDefault(mo15c, -1L)).longValue();
        }
        String mo17a = m50e.mo17a();
        if (C7876d.m48g(j) && (m49f = C7876d.m49f(j)) != null) {
            this.f38274c.m3l(mo17a, m49f);
            return m49f;
        }
        C4372e<String> m76e = m76e(m50e);
        if (m76e.m16737d()) {
            return m76e.m16738c();
        }
        return m50e.m51d();
    }

    /* renamed from: g */
    public Boolean m74g() {
        C7874b m53e = C7874b.m53e();
        C4372e<Boolean> m69l = m69l(m53e);
        if (m69l.m16737d()) {
            return m69l.m16738c();
        }
        return m53e.m54d();
    }

    /* renamed from: h */
    public Boolean m73h() {
        if (m74g().booleanValue()) {
            return Boolean.FALSE;
        }
        C7875c m52d = C7875c.m52d();
        C4372e<Boolean> m79b = m79b(m52d);
        if (m79b.m16737d()) {
            return m79b.m16738c();
        }
        C4372e<Boolean> m69l = m69l(m52d);
        if (m69l.m16737d()) {
            return m69l.m16738c();
        }
        return null;
    }

    /* renamed from: i */
    public final boolean m72i() {
        C7883j m36e = C7883j.m36e();
        C4372e<Boolean> m62s = m62s(m36e);
        if (m62s.m16737d()) {
            if (this.f38272a.isLastFetchFailed()) {
                return false;
            }
            this.f38274c.m2m(m36e.mo17a(), m62s.m16738c().booleanValue());
            return m62s.m16738c().booleanValue();
        }
        C4372e<Boolean> m79b = m79b(m36e);
        if (m79b.m16737d()) {
            return m79b.m16738c().booleanValue();
        }
        return m36e.m37d().booleanValue();
    }

    /* renamed from: j */
    public final boolean m71j() {
        C7882i m38e = C7882i.m38e();
        C4372e<String> m59v = m59v(m38e);
        if (m59v.m16737d()) {
            this.f38274c.m3l(m38e.mo17a(), m59v.m16738c());
            return m89G(m59v.m16738c());
        }
        C4372e<String> m76e = m76e(m38e);
        if (m76e.m16737d()) {
            return m89G(m76e.m16738c());
        }
        return m89G(m38e.m39d());
    }

    /* renamed from: o */
    public long m66o() {
        C7878e m46e = C7878e.m46e();
        C4372e<Long> m60u = m60u(m46e);
        if (m60u.m16737d() && m90F(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m46e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m46e);
        if (m77d.m16737d() && m90F(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m46e.m47d().longValue();
    }

    /* renamed from: p */
    public long m65p() {
        C7879f m44e = C7879f.m44e();
        C4372e<Long> m60u = m60u(m44e);
        if (m60u.m16737d() && m90F(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m44e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m44e);
        if (m77d.m16737d() && m90F(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m44e.m45d().longValue();
    }

    /* renamed from: q */
    public float m64q() {
        C7880g m42e = C7880g.m42e();
        C4372e<Float> m61t = m61t(m42e);
        if (m61t.m16737d() && m86J(m61t.m16738c().floatValue())) {
            this.f38274c.m5j(m42e.mo17a(), m61t.m16738c().floatValue());
            return m61t.m16738c().floatValue();
        }
        C4372e<Float> m78c = m78c(m42e);
        if (m78c.m16737d() && m86J(m78c.m16738c().floatValue())) {
            return m78c.m16738c().floatValue();
        }
        return m42e.m43d().floatValue();
    }

    /* renamed from: r */
    public long m63r() {
        C7881h m40e = C7881h.m40e();
        C4372e<Long> m60u = m60u(m40e);
        if (m60u.m16737d() && m84L(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m40e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m40e);
        if (m77d.m16737d() && m84L(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m40e.m41d().longValue();
    }

    /* renamed from: w */
    public long m58w() {
        C7884k m34e = C7884k.m34e();
        C4372e<Long> m67n = m67n(m34e);
        if (m67n.m16737d() && m88H(m67n.m16738c().longValue())) {
            return m67n.m16738c().longValue();
        }
        C4372e<Long> m60u = m60u(m34e);
        if (m60u.m16737d() && m88H(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m34e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m34e);
        if (m77d.m16737d() && m88H(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m34e.m35d().longValue();
    }

    /* renamed from: x */
    public long m57x() {
        C7885l m32e = C7885l.m32e();
        C4372e<Long> m67n = m67n(m32e);
        if (m67n.m16737d() && m88H(m67n.m16738c().longValue())) {
            return m67n.m16738c().longValue();
        }
        C4372e<Long> m60u = m60u(m32e);
        if (m60u.m16737d() && m88H(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m32e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m32e);
        if (m77d.m16737d() && m88H(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m32e.m33d().longValue();
    }

    /* renamed from: y */
    public long m56y() {
        C7886m m30e = C7886m.m30e();
        C4372e<Long> m67n = m67n(m30e);
        if (m67n.m16737d() && m85K(m67n.m16738c().longValue())) {
            return m67n.m16738c().longValue();
        }
        C4372e<Long> m60u = m60u(m30e);
        if (m60u.m16737d() && m85K(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m30e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m30e);
        if (m77d.m16737d() && m85K(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m30e.m31d().longValue();
    }

    /* renamed from: z */
    public long m55z() {
        C7887n m28e = C7887n.m28e();
        C4372e<Long> m67n = m67n(m28e);
        if (m67n.m16737d() && m88H(m67n.m16738c().longValue())) {
            return m67n.m16738c().longValue();
        }
        C4372e<Long> m60u = m60u(m28e);
        if (m60u.m16737d() && m88H(m60u.m16738c().longValue())) {
            this.f38274c.m4k(m28e.mo17a(), m60u.m16738c().longValue());
            return m60u.m16738c().longValue();
        }
        C4372e<Long> m77d = m77d(m28e);
        if (m77d.m16737d() && m88H(m77d.m16738c().longValue())) {
            return m77d.m16738c().longValue();
        }
        return m28e.m29d().longValue();
    }
}
