package p070g5;

import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import p018b5.C0591c1;
import p018b5.C0684h9;
import p018b5.C0697i5;
import p018b5.C0731k5;
import p018b5.C0740ke;
import p018b5.C0842qe;
import p018b5.C0882t3;
import p018b5.C0911uf;
import p018b5.C0928vf;
import p018b5.C0933w3;
import p018b5.C0950x3;
import p018b5.C0965y1;
import p018b5.C0984z3;
import p018b5.C0992zb;
import p018b5.InterfaceC0877sf;
import p145p.C5270a;
import p145p.C5276e;
import p220x3.C7297q;
/* renamed from: g5.t4 */
/* loaded from: classes2.dex */
public final class C3826t4 extends AbstractC3807r9 implements InterfaceC3653f {

    /* renamed from: d */
    public final Map<String, Map<String, String>> f16940d;

    /* renamed from: e */
    public final Map<String, Map<String, Boolean>> f16941e;

    /* renamed from: f */
    public final Map<String, Map<String, Boolean>> f16942f;

    /* renamed from: g */
    public final Map<String, C0950x3> f16943g;

    /* renamed from: h */
    public final Map<String, Map<String, Integer>> f16944h;

    /* renamed from: i */
    public final C5276e<String, C0591c1> f16945i;

    /* renamed from: j */
    public final InterfaceC0877sf f16946j;

    /* renamed from: k */
    public final Map<String, String> f16947k;

    @Override // p070g5.AbstractC3807r9
    /* renamed from: g */
    public final boolean mo17810g() {
        return false;
    }

    /* renamed from: q */
    public final boolean m17974q(String str) {
        return Config.SITE_API_VERSION.equals(mo17984a(str, "measurement.upload.blacklist_internal"));
    }

    /* renamed from: t */
    public final boolean m17971t(String str) {
        return Config.SITE_API_VERSION.equals(mo17984a(str, "measurement.upload.blacklist_public"));
    }

    /* renamed from: z */
    public static final Map<String, String> m17965z(C0950x3 c0950x3) {
        C5270a c5270a = new C5270a();
        if (c0950x3 != null) {
            for (C0984z3 c0984z3 : c0950x3.m25011D()) {
                c5270a.put(c0984z3.m24895t(), c0984z3.m24894u());
            }
        }
        return c5270a;
    }

    /* renamed from: v */
    public final C0950x3 m17969v(String str, byte[] bArr) {
        Long l;
        if (bArr == null) {
            return C0950x3.m24999z();
        }
        try {
            C0950x3 m25101i = ((C0933w3) C3640da.m18390y(C0950x3.m25001w(), bArr)).m25101i();
            C3765o3 m18014q = this.f17008a.mo17858F().m18014q();
            String str2 = null;
            if (m25101i.m25006I()) {
                l = Long.valueOf(m25101i.m25003u());
            } else {
                l = null;
            }
            if (m25101i.m25007H()) {
                str2 = m25101i.m25014A();
            }
            m18014q.m18040c("Parsed config. version, gmp_app_id", l, str2);
            return m25101i;
        } catch (C0684h9 e) {
            this.f17008a.mo17858F().m18013r().m18040c("Unable to merge remote config. appId", C3789q3.m18010u(str), e);
            return C0950x3.m24999z();
        } catch (RuntimeException e2) {
            this.f17008a.mo17858F().m18013r().m18040c("Unable to merge remote config. appId", C3789q3.m18010u(str), e2);
            return C0950x3.m24999z();
        }
    }

    /* renamed from: w */
    public final void m17968w(String str, C0933w3 c0933w3) {
        C5270a c5270a = new C5270a();
        C5270a c5270a2 = new C5270a();
        C5270a c5270a3 = new C5270a();
        if (c0933w3 != null) {
            for (int i = 0; i < c0933w3.m25059t(); i++) {
                C0882t3 m24978l = c0933w3.m25058u(i).m24978l();
                if (TextUtils.isEmpty(m24978l.m25238v())) {
                    this.f17008a.mo17858F().m18013r().m18042a("EventConfig contained null event name");
                } else {
                    String m25238v = m24978l.m25238v();
                    String m17811b = C3899z5.m17811b(m24978l.m25238v());
                    if (!TextUtils.isEmpty(m17811b)) {
                        m24978l.m25239u(m17811b);
                        c0933w3.m25056x(i, m24978l);
                    }
                    c5270a.put(m25238v, Boolean.valueOf(m24978l.m25237x()));
                    c5270a2.put(m24978l.m25238v(), Boolean.valueOf(m24978l.m25236z()));
                    if (m24978l.m25241A()) {
                        if (m24978l.m25240t() >= 2 && m24978l.m25240t() <= 65535) {
                            c5270a3.put(m24978l.m25238v(), Integer.valueOf(m24978l.m25240t()));
                        } else {
                            this.f17008a.mo17858F().m18013r().m18040c("Invalid sampling rate. Event name, sample rate", m24978l.m25238v(), Integer.valueOf(m24978l.m25240t()));
                        }
                    }
                }
            }
        }
        this.f16941e.put(str, c5270a);
        this.f16942f.put(str, c5270a2);
        this.f16944h.put(str, c5270a3);
    }

    public C3826t4(C3616ba c3616ba) {
        super(c3616ba);
        this.f16940d = new C5270a();
        this.f16941e = new C5270a();
        this.f16942f = new C5270a();
        this.f16943g = new C5270a();
        this.f16947k = new C5270a();
        this.f16944h = new C5270a();
        this.f16945i = new C3790q4(this, 20);
        this.f16946j = new C3802r4(this);
    }

    /* renamed from: i */
    public static /* bridge */ /* synthetic */ C0591c1 m17982i(C3826t4 c3826t4, String str) {
        c3826t4.m18000d();
        C7297q.m1887f(str);
        C0842qe.m25453b();
        if (!c3826t4.f17008a.m18513u().m18356w(null, C3621c3.f16402x0) || !c3826t4.m17975p(str)) {
            return null;
        }
        if (c3826t4.f16943g.containsKey(str) && c3826t4.f16943g.get(str) != null) {
            c3826t4.m17966y(str, c3826t4.f16943g.get(str));
        } else {
            c3826t4.m17967x(str);
        }
        return c3826t4.f16945i.m13690h().get(str);
    }

    @Override // p070g5.InterfaceC3653f
    /* renamed from: a */
    public final String mo17984a(String str, String str2) {
        mo17839c();
        m17967x(str);
        Map<String, String> map = this.f16940d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    /* renamed from: h */
    public final int m17983h(String str, String str2) {
        Integer num;
        mo17839c();
        m17967x(str);
        Map<String, Integer> map = this.f16944h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* renamed from: j */
    public final C0950x3 m17981j(String str) {
        m18000d();
        mo17839c();
        C7297q.m1887f(str);
        m17967x(str);
        return this.f16943g.get(str);
    }

    /* renamed from: k */
    public final String m17980k(String str) {
        mo17839c();
        return this.f16947k.get(str);
    }

    /* renamed from: m */
    public final void m17978m(String str) {
        mo17839c();
        this.f16947k.put(str, null);
    }

    /* renamed from: n */
    public final void m17977n(String str) {
        mo17839c();
        this.f16943g.remove(str);
    }

    /* renamed from: o */
    public final boolean m17976o(String str) {
        mo17839c();
        C0950x3 m17981j = m17981j(str);
        if (m17981j == null) {
            return false;
        }
        return m17981j.m25008G();
    }

    /* renamed from: p */
    public final boolean m17975p(String str) {
        C0950x3 c0950x3;
        C0842qe.m25453b();
        if (!this.f17008a.m18513u().m18356w(null, C3621c3.f16402x0) || TextUtils.isEmpty(str) || (c0950x3 = this.f16943g.get(str)) == null || c0950x3.m25005s() == 0) {
            return false;
        }
        return true;
    }

    /* renamed from: r */
    public final boolean m17973r(String str, String str2) {
        Boolean bool;
        mo17839c();
        m17967x(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f16942f.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: s */
    public final boolean m17972s(String str, String str2) {
        Boolean bool;
        mo17839c();
        m17967x(str);
        if (m17974q(str) && C3700ia.m18189V(str2)) {
            return true;
        }
        if (m17971t(str) && C3700ia.m18188W(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f16941e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: u */
    public final boolean m17970u(String str, byte[] bArr, String str2) {
        m18000d();
        mo17839c();
        C7297q.m1887f(str);
        C0933w3 m24978l = m17969v(str, bArr).m24978l();
        if (m24978l == null) {
            return false;
        }
        m17968w(str, m24978l);
        C0842qe.m25453b();
        if (this.f17008a.m18513u().m18356w(null, C3621c3.f16402x0)) {
            m17966y(str, m24978l.m25101i());
        }
        this.f16943g.put(str, m24978l.m25101i());
        this.f16947k.put(str, str2);
        this.f16940d.put(str, m17965z(m24978l.m25101i()));
        this.f16900b.m18488V().m18101j(str, new ArrayList(m24978l.m25055z()));
        try {
            m24978l.m25057v();
            bArr = m24978l.m25101i().m25982e();
        } catch (RuntimeException e) {
            this.f17008a.mo17858F().m18013r().m18040c("Unable to serialize reduced-size config. Storing full config instead. appId", C3789q3.m18010u(str), e);
        }
        C0740ke.m25690b();
        if (this.f17008a.m18513u().m18356w(null, C3621c3.f16396u0)) {
            this.f16900b.m18488V().m18096n(str, bArr, str2);
        } else {
            this.f16900b.m18488V().m18096n(str, bArr, null);
        }
        this.f16943g.put(str, m24978l.m25101i());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0090, code lost:
        if (r2 == null) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0121  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17967x(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3826t4.m17967x(java.lang.String):void");
    }

    /* renamed from: y */
    public final void m17966y(final String str, C0950x3 c0950x3) {
        if (c0950x3.m25005s() != 0) {
            this.f17008a.mo17858F().m18014q().m18041b("EES programs found", Integer.valueOf(c0950x3.m25005s()));
            C0731k5 c0731k5 = c0950x3.m25012C().get(0);
            try {
                C0591c1 c0591c1 = new C0591c1();
                c0591c1.m26118d("internal.remoteConfig", new Callable() { // from class: g5.n4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return new C0992zb("internal.remoteConfig", new C3814s4(C3826t4.this, str));
                    }
                });
                c0591c1.m26118d("internal.appMetadata", new Callable() { // from class: g5.p4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        final C3826t4 c3826t4 = C3826t4.this;
                        final String str2 = str;
                        return new C0928vf("internal.appMetadata", new Callable() { // from class: g5.o4
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                C3826t4 c3826t42 = C3826t4.this;
                                String str3 = str2;
                                C3671g5 m18119T = c3826t42.f16900b.m18488V().m18119T(str3);
                                HashMap hashMap = new HashMap();
                                hashMap.put("platform", "android");
                                hashMap.put("package_name", str3);
                                c3826t42.f17008a.m18513u().m18367l();
                                hashMap.put("gmp_version", 43042L);
                                if (m18119T != null) {
                                    String m18302h0 = m18119T.m18302h0();
                                    if (m18302h0 != null) {
                                        hashMap.put("app_version", m18302h0);
                                    }
                                    hashMap.put("app_version_int", Long.valueOf(m18119T.m18331M()));
                                    hashMap.put("dynamite_version", Long.valueOf(m18119T.m18322V()));
                                }
                                return hashMap;
                            }
                        });
                    }
                });
                c0591c1.m26118d("internal.logger", new Callable() { // from class: g5.m4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return new C0911uf(C3826t4.this.f16946j);
                    }
                });
                c0591c1.m26119c(c0731k5);
                this.f16945i.m13694d(str, c0591c1);
                this.f17008a.mo17858F().m18014q().m18040c("EES program loaded for appId, activities", str, Integer.valueOf(c0731k5.m25707s().m25934s()));
                for (C0697i5 c0697i5 : c0731k5.m25707s().m25931v()) {
                    this.f17008a.mo17858F().m18014q().m18041b("EES program activity", c0697i5.m25798t());
                }
                return;
            } catch (C0965y1 unused) {
                this.f17008a.mo17858F().m18018m().m18041b("Failed to load EES program. appId", str);
                return;
            }
        }
        this.f16945i.m13693e(str);
    }
}
