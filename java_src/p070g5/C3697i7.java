package p070g5;

import android.app.Application;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p018b5.C0654fd;
import p018b5.C0756ld;
import p145p.C5270a;
import p220x3.C7297q;
/* renamed from: g5.i7 */
/* loaded from: classes2.dex */
public final class C3697i7 extends AbstractC3658f4 {

    /* renamed from: c */
    public C3673g7 f16618c;

    /* renamed from: d */
    public InterfaceC3624c6 f16619d;

    /* renamed from: e */
    public final Set<InterfaceC3636d6> f16620e;

    /* renamed from: f */
    public boolean f16621f;

    /* renamed from: g */
    public final AtomicReference<String> f16622g;

    /* renamed from: h */
    public final Object f16623h;

    /* renamed from: i */
    public C3677h f16624i;

    /* renamed from: j */
    public int f16625j;

    /* renamed from: k */
    public final AtomicLong f16626k;

    /* renamed from: l */
    public long f16627l;

    /* renamed from: m */
    public int f16628m;

    /* renamed from: n */
    public final C3808ra f16629n;

    /* renamed from: o */
    public boolean f16630o;

    /* renamed from: p */
    public final InterfaceC3688ha f16631p;

    /* renamed from: B */
    public final void m18250B(C3677h c3677h, int i, long j) {
        boolean z;
        boolean z2;
        C3677h c3677h2;
        boolean z3;
        m18384d();
        if (i != -10 && c3677h.m18276e() == null && c3677h.m18275f() == null) {
            this.f17008a.mo17858F().m18012s().m18042a("Discarding empty consent settings");
            return;
        }
        synchronized (this.f16623h) {
            z = true;
            z2 = false;
            if (C3677h.m18269l(i, this.f16625j)) {
                boolean m18268m = c3677h.m18268m(this.f16624i);
                if (c3677h.m18270k() && !this.f16624i.m18270k()) {
                    z2 = true;
                }
                C3677h m18277d = c3677h.m18277d(this.f16624i);
                this.f16624i = m18277d;
                this.f16625j = i;
                c3677h2 = m18277d;
                z3 = z2;
                z2 = m18268m;
            } else {
                c3677h2 = c3677h;
                z3 = false;
                z = false;
            }
        }
        if (!z) {
            this.f17008a.mo17858F().m18015p().m18041b("Ignoring lower-priority consent settings, proposed settings", c3677h2);
            return;
        }
        long andIncrement = this.f16626k.getAndIncrement();
        if (z2) {
            this.f16622g.set(null);
            this.f17008a.mo17855P().m17825v(new RunnableC3613b7(this, c3677h2, j, i, andIncrement, z3));
        } else if (i != 30 && i != -10) {
            this.f17008a.mo17855P().m17826u(new RunnableC3637d7(this, c3677h2, i, andIncrement, z3));
        } else {
            this.f17008a.mo17855P().m17825v(new RunnableC3625c7(this, c3677h2, i, andIncrement, z3));
        }
    }

    /* renamed from: J */
    public final void m18244J(String str, String str2, Object obj, boolean z, long j) {
        String str3;
        int i;
        int length;
        int i2;
        if (str == null) {
            str3 = "app";
        } else {
            str3 = str;
        }
        if (z) {
            i = this.f17008a.m18538K().m18166n0(str2);
        } else {
            C3700ia m18538K = this.f17008a.m18538K();
            if (m18538K.m18194N("user property", str2)) {
                if (!m18538K.m18198J("user property", C3612b6.f16269a, null, str2)) {
                    i = 15;
                } else {
                    m18538K.f17008a.m18513u();
                    if (m18538K.m18199I("user property", 24, str2)) {
                        i = 0;
                    }
                }
            }
            i = 6;
        }
        if (i != 0) {
            C3700ia m18538K2 = this.f17008a.m18538K();
            this.f17008a.m18513u();
            String m18171l = m18538K2.m18171l(str2, 24, true);
            if (str2 != null) {
                i2 = str2.length();
            } else {
                i2 = 0;
            }
            this.f17008a.m18538K().m18151v(this.f16631p, null, i, "_ev", m18171l, i2);
        } else if (obj != null) {
            int m18174j0 = this.f17008a.m18538K().m18174j0(str2, obj);
            if (m18174j0 != 0) {
                C3700ia m18538K3 = this.f17008a.m18538K();
                this.f17008a.m18513u();
                String m18171l2 = m18538K3.m18171l(str2, 24, true);
                if (!(obj instanceof String) && !(obj instanceof CharSequence)) {
                    length = 0;
                } else {
                    length = String.valueOf(obj).length();
                }
                this.f17008a.m18538K().m18151v(this.f16631p, null, m18174j0, "_ev", m18171l2, length);
                return;
            }
            Object m18173k = this.f17008a.m18538K().m18173k(str2, obj);
            if (m18173k != null) {
                m18209w(str3, str2, j, m18173k);
            }
        } else {
            m18209w(str3, str2, j, null);
        }
    }

    /* renamed from: X */
    public final String m18233X() {
        return this.f16622g.get();
    }

    /* renamed from: Y */
    public final String m18232Y() {
        C3781p7 m17911n = this.f17008a.m18541H().m17911n();
        if (m17911n != null) {
            return m17911n.f16825b;
        }
        return null;
    }

    /* renamed from: Z */
    public final String m18231Z() {
        C3781p7 m17911n = this.f17008a.m18541H().m17911n();
        if (m17911n != null) {
            return m17911n.f16824a;
        }
        return null;
    }

    @Override // p070g5.AbstractC3658f4
    /* renamed from: i */
    public final boolean mo17880i() {
        return false;
    }

    /* renamed from: n */
    public final void m18218n(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        String str3;
        Bundle bundle2;
        boolean z3;
        if (str == null) {
            str3 = "app";
        } else {
            str3 = str;
        }
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = bundle;
        }
        if (C3700ia.m18185Z(str2, "screen_view")) {
            this.f17008a.m18541H().m17918A(bundle2, j);
            return;
        }
        if (z2 && this.f16619d != null && !C3700ia.m18189V(str2)) {
            z3 = false;
        } else {
            z3 = true;
        }
        m18210v(str3, str2, j, bundle2, z2, z3, z, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x012d  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18214r(java.lang.String r20, java.lang.String r21, long r22, android.os.Bundle r24, boolean r25, boolean r26, boolean r27, java.lang.String r28) {
        /*
            Method dump skipped, instructions count: 1324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3697i7.m18214r(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    /* renamed from: x */
    public final void m18208x(String str) {
        this.f16622g.set(str);
    }

    /* renamed from: I */
    public final void m18245I(String str, String str2, Object obj, boolean z) {
        m18244J("auto", "_ldl", obj, true, this.f17008a.mo17854Q().mo24763a());
    }

    /* renamed from: T */
    public final Boolean m18237T() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.f17008a.mo17855P().m17834m(atomicReference, 15000L, "boolean test flag value", new RunnableC3816s6(this, atomicReference));
    }

    /* renamed from: U */
    public final Double m18236U() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.f17008a.mo17855P().m17834m(atomicReference, 15000L, "double test flag value", new RunnableC3900z6(this, atomicReference));
    }

    /* renamed from: V */
    public final Integer m18235V() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.f17008a.mo17855P().m17834m(atomicReference, 15000L, "int test flag value", new RunnableC3888y6(this, atomicReference));
    }

    /* renamed from: W */
    public final Long m18234W() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.f17008a.mo17855P().m17834m(atomicReference, 15000L, "long test flag value", new RunnableC3876x6(this, atomicReference));
    }

    /* renamed from: a0 */
    public final String m18230a0() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.f17008a.mo17855P().m17834m(atomicReference, 15000L, "String test flag value", new RunnableC3864w6(this, atomicReference));
    }

    /* renamed from: b0 */
    public final ArrayList<Bundle> m18229b0(String str, String str2) {
        if (this.f17008a.mo17855P().m17823x()) {
            this.f17008a.mo17858F().m18018m().m18042a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        }
        this.f17008a.mo17857G();
        if (C3605b.m18551a()) {
            this.f17008a.mo17858F().m18018m().m18042a("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f17008a.mo17855P().m17834m(atomicReference, 5000L, "get conditional user properties", new RunnableC3828t6(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list == null) {
            this.f17008a.mo17858F().m18018m().m18041b("Timed out waiting for get conditional user properties", null);
            return new ArrayList<>();
        }
        return C3700ia.m18163p(list);
    }

    /* renamed from: c0 */
    public final Map<String, Object> m18228c0(String str, String str2, boolean z) {
        if (this.f17008a.mo17855P().m17823x()) {
            this.f17008a.mo17858F().m18018m().m18042a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        this.f17008a.mo17857G();
        if (C3605b.m18551a()) {
            this.f17008a.mo17858F().m18018m().m18042a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f17008a.mo17855P().m17834m(atomicReference, 5000L, "get user properties", new RunnableC3840u6(this, atomicReference, null, str, str2, z));
        List<C3652ea> list = (List) atomicReference.get();
        if (list == null) {
            this.f17008a.mo17858F().m18018m().m18041b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.emptyMap();
        }
        C5270a c5270a = new C5270a(list.size());
        for (C3652ea c3652ea : list) {
            Object m18386X0 = c3652ea.m18386X0();
            if (m18386X0 != null) {
                c5270a.put(c3652ea.f16463b, m18386X0);
            }
        }
        return c5270a;
    }

    /* renamed from: h0 */
    public final void m18223h0(String str, String str2, Bundle bundle) {
        long mo24763a = this.f17008a.mo17854Q().mo24763a();
        C7297q.m1887f(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", mo24763a);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.f17008a.mo17855P().m17826u(new RunnableC3804r6(this, bundle2));
    }

    /* renamed from: j */
    public final void m18222j() {
        if ((this.f17008a.mo17856O().getApplicationContext() instanceof Application) && this.f16618c != null) {
            ((Application) this.f17008a.mo17856O().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f16618c);
        }
    }

    /* renamed from: l */
    public final /* synthetic */ void m18220l(Bundle bundle) {
        if (bundle == null) {
            this.f17008a.m18546A().f16516w.m18554b(new Bundle());
            return;
        }
        Bundle m18555a = this.f17008a.m18546A().f16516w.m18555a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.f17008a.m18538K().m18191T(obj)) {
                    this.f17008a.m18538K().m18151v(this.f16631p, null, 27, null, null, 0);
                }
                this.f17008a.mo17858F().m18012s().m18040c("Invalid default event parameter type. Name, value", str, obj);
            } else if (C3700ia.m18189V(str)) {
                this.f17008a.mo17858F().m18012s().m18041b("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                m18555a.remove(str);
            } else {
                C3700ia m18538K = this.f17008a.m18538K();
                this.f17008a.m18513u();
                if (m18538K.m18197K("param", str, 100, obj)) {
                    this.f17008a.m18538K().m18149w(m18555a, str, obj);
                }
            }
        }
        this.f17008a.m18538K();
        int m18371h = this.f17008a.m18513u().m18371h();
        if (m18555a.size() > m18371h) {
            int i = 0;
            for (String str2 : new TreeSet(m18555a.keySet())) {
                i++;
                if (i > m18371h) {
                    m18555a.remove(str2);
                }
            }
            this.f17008a.m18538K().m18151v(this.f16631p, null, 26, null, null, 0);
            this.f17008a.mo17858F().m18012s().m18042a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.f17008a.m18546A().f16516w.m18554b(m18555a);
        this.f17008a.m18540I().m17872q(m18555a);
    }

    /* renamed from: m */
    public final void m18219m(String str, String str2, Bundle bundle) {
        m18218n(str, str2, bundle, true, true, this.f17008a.mo17854Q().mo24763a());
    }

    /* renamed from: t */
    public final void m18212t(long j) {
        this.f16622g.set(null);
        this.f17008a.mo17855P().m17826u(new RunnableC3780p6(this, j));
    }

    /* renamed from: v */
    public final void m18210v(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                        i++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i < list.size()) {
                        Object obj2 = list.get(i);
                        if (obj2 instanceof Bundle) {
                            list.set(i, new Bundle((Bundle) obj2));
                        }
                        i++;
                    }
                }
            }
        }
        this.f17008a.mo17855P().m17826u(new RunnableC3756n6(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    /* renamed from: w */
    public final void m18209w(String str, String str2, long j, Object obj) {
        this.f17008a.mo17855P().m17826u(new RunnableC3768o6(this, str, str2, obj, j));
    }

    /* renamed from: y */
    public final void m18207y(Bundle bundle) {
        m18206z(bundle, this.f17008a.mo17854Q().mo24763a());
    }

    /* renamed from: z */
    public final void m18206z(Bundle bundle, long j) {
        C7297q.m1883j(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.f17008a.mo17858F().m18013r().m18042a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        C7297q.m1883j(bundle2);
        C3887y5.m17821a(bundle2, "app_id", String.class, null);
        C3887y5.m17821a(bundle2, "origin", String.class, null);
        C3887y5.m17821a(bundle2, "name", String.class, null);
        C3887y5.m17821a(bundle2, "value", Object.class, null);
        C3887y5.m17821a(bundle2, "trigger_event_name", String.class, null);
        C3887y5.m17821a(bundle2, "trigger_timeout", Long.class, 0L);
        C3887y5.m17821a(bundle2, "timed_out_event_name", String.class, null);
        C3887y5.m17821a(bundle2, "timed_out_event_params", Bundle.class, null);
        C3887y5.m17821a(bundle2, "triggered_event_name", String.class, null);
        C3887y5.m17821a(bundle2, "triggered_event_params", Bundle.class, null);
        C3887y5.m17821a(bundle2, "time_to_live", Long.class, 0L);
        C3887y5.m17821a(bundle2, "expired_event_name", String.class, null);
        C3887y5.m17821a(bundle2, "expired_event_params", Bundle.class, null);
        C7297q.m1887f(bundle2.getString("name"));
        C7297q.m1887f(bundle2.getString("origin"));
        C7297q.m1883j(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (this.f17008a.m18538K().m18166n0(string) == 0) {
            if (this.f17008a.m18538K().m18174j0(string, obj) == 0) {
                Object m18173k = this.f17008a.m18538K().m18173k(string, obj);
                if (m18173k == null) {
                    this.f17008a.mo17858F().m18018m().m18040c("Unable to normalize conditional user property value", this.f17008a.m18509y().m18071f(string), obj);
                    return;
                }
                C3887y5.m17820b(bundle2, m18173k);
                long j2 = bundle2.getLong("trigger_timeout");
                if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
                    this.f17008a.m18513u();
                    if (j2 > 15552000000L || j2 < 1) {
                        this.f17008a.mo17858F().m18018m().m18040c("Invalid conditional user property timeout", this.f17008a.m18509y().m18071f(string), Long.valueOf(j2));
                        return;
                    }
                }
                long j3 = bundle2.getLong("time_to_live");
                this.f17008a.m18513u();
                if (j3 <= 15552000000L && j3 >= 1) {
                    this.f17008a.mo17855P().m17826u(new RunnableC3792q6(this, bundle2));
                    return;
                } else {
                    this.f17008a.mo17858F().m18018m().m18040c("Invalid conditional user property time to live", this.f17008a.m18509y().m18071f(string), Long.valueOf(j3));
                    return;
                }
            }
            this.f17008a.mo17858F().m18018m().m18040c("Invalid conditional user property value", this.f17008a.m18509y().m18071f(string), obj);
            return;
        }
        this.f17008a.mo17858F().m18018m().m18041b("Invalid conditional user property name", this.f17008a.m18509y().m18071f(string));
    }

    public C3697i7(C3611b5 c3611b5) {
        super(c3611b5);
        this.f16620e = new CopyOnWriteArraySet();
        this.f16623h = new Object();
        this.f16630o = true;
        this.f16631p = new C3852v6(this);
        this.f16622g = new AtomicReference<>();
        this.f16624i = new C3677h(null, null);
        this.f16625j = 100;
        this.f16627l = -1L;
        this.f16628m = 100;
        this.f16626k = new AtomicLong(0L);
        this.f16629n = new C3808ra(c3611b5);
    }

    /* renamed from: d0 */
    public static /* bridge */ /* synthetic */ void m18227d0(C3697i7 c3697i7, C3677h c3677h, int i, long j, boolean z, boolean z2) {
        c3697i7.mo17839c();
        c3697i7.m18384d();
        if (j <= c3697i7.f16627l && C3677h.m18269l(c3697i7.f16628m, i)) {
            c3697i7.f17008a.mo17858F().m18015p().m18041b("Dropped out-of-date consent setting, proposed settings", c3677h);
            return;
        }
        C3670g4 m18546A = c3697i7.f17008a.m18546A();
        C3611b5 c3611b5 = m18546A.f17008a;
        m18546A.mo17839c();
        if (m18546A.m18344r(i)) {
            SharedPreferences.Editor edit = m18546A.m18352j().edit();
            edit.putString("consent_settings", c3677h.m18272i());
            edit.putInt("consent_source", i);
            edit.apply();
            c3697i7.f16627l = j;
            c3697i7.f16628m = i;
            c3697i7.f17008a.m18540I().m17874o(z);
            if (z2) {
                c3697i7.f17008a.m18540I().m17885S(new AtomicReference<>());
                return;
            }
            return;
        }
        c3697i7.f17008a.mo17858F().m18015p().m18041b("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
    }

    /* renamed from: A */
    public final void m18251A(Bundle bundle, int i, long j) {
        m18384d();
        String m18273h = C3677h.m18273h(bundle);
        if (m18273h != null) {
            this.f17008a.mo17858F().m18012s().m18041b("Ignoring invalid consent setting", m18273h);
            this.f17008a.mo17858F().m18012s().m18042a("Valid consent values are 'granted', 'denied'");
        }
        m18250B(C3677h.m18280a(bundle), i, j);
    }

    /* renamed from: C */
    public final void m18249C(final Bundle bundle, final long j) {
        C0654fd.m25939b();
        if (this.f17008a.m18513u().m18356w(null, C3621c3.f16400w0)) {
            this.f17008a.mo17855P().m17825v(new Runnable() { // from class: g5.j6
                @Override // java.lang.Runnable
                public final void run() {
                    C3697i7.this.m18221k(bundle, j);
                }
            });
        } else {
            m18221k(bundle, j);
        }
    }

    /* renamed from: D */
    public final void m18248D(InterfaceC3624c6 interfaceC3624c6) {
        InterfaceC3624c6 interfaceC3624c62;
        boolean z;
        mo17839c();
        m18384d();
        if (interfaceC3624c6 != null && interfaceC3624c6 != (interfaceC3624c62 = this.f16619d)) {
            if (interfaceC3624c62 == null) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1879n(z, "EventInterceptor already set.");
        }
        this.f16619d = interfaceC3624c6;
    }

    /* renamed from: E */
    public final void m18247E(Boolean bool) {
        m18384d();
        this.f17008a.mo17855P().m17826u(new RunnableC3601a7(this, bool));
    }

    /* renamed from: H */
    public final void m18246H(C3677h c3677h) {
        boolean z;
        Boolean bool;
        mo17839c();
        if ((c3677h.m18270k() && c3677h.m18271j()) || this.f17008a.m18540I().m17867v()) {
            z = true;
        } else {
            z = false;
        }
        if (z != this.f17008a.m18523k()) {
            this.f17008a.m18527g(z);
            C3670g4 m18546A = this.f17008a.m18546A();
            C3611b5 c3611b5 = m18546A.f17008a;
            m18546A.mo17839c();
            if (m18546A.m18352j().contains("measurement_enabled_from_api")) {
                bool = Boolean.valueOf(m18546A.m18352j().getBoolean("measurement_enabled_from_api", true));
            } else {
                bool = null;
            }
            if (!z || bool == null || bool.booleanValue()) {
                m18240N(Boolean.valueOf(z), false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18243K(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            p220x3.C7297q.m1887f(r9)
            p220x3.C7297q.m1887f(r10)
            r8.mo17839c()
            r8.m18384d()
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L64
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L52
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L52
            r10 = 1
            java.util.Locale r11 = java.util.Locale.ENGLISH
            java.lang.String r11 = r0.toLowerCase(r11)
            java.lang.String r0 = "false"
            boolean r11 = r0.equals(r11)
            r2 = 1
            if (r10 == r11) goto L37
            r10 = 0
            goto L38
        L37:
            r10 = r2
        L38:
            java.lang.Long r11 = java.lang.Long.valueOf(r10)
            g5.b5 r10 = r8.f17008a
            g5.g4 r10 = r10.m18546A()
            g5.e4 r10 = r10.f16506m
            long r4 = r11.longValue()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L4e
            java.lang.String r0 = "true"
        L4e:
            r10.m18387b(r0)
            goto L61
        L52:
            if (r11 != 0) goto L64
            g5.b5 r10 = r8.f17008a
            g5.g4 r10 = r10.m18546A()
            g5.e4 r10 = r10.f16506m
            java.lang.String r0 = "unset"
            r10.m18387b(r0)
        L61:
            r6 = r11
            r3 = r1
            goto L66
        L64:
            r3 = r10
            r6 = r11
        L66:
            g5.b5 r10 = r8.f17008a
            boolean r10 = r10.m18524j()
            if (r10 != 0) goto L7e
            g5.b5 r9 = r8.f17008a
            g5.q3 r9 = r9.mo17858F()
            g5.o3 r9 = r9.m18014q()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.m18042a(r10)
            return
        L7e:
            g5.b5 r10 = r8.f17008a
            boolean r10 = r10.m18521m()
            if (r10 != 0) goto L87
            return
        L87:
            g5.ea r10 = new g5.ea
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            g5.b5 r9 = r8.f17008a
            g5.w8 r9 = r9.m18540I()
            r9.m17869t(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3697i7.m18243K(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    /* renamed from: L */
    public final void m18242L(InterfaceC3636d6 interfaceC3636d6) {
        m18384d();
        C7297q.m1883j(interfaceC3636d6);
        if (!this.f16620e.remove(interfaceC3636d6)) {
            this.f17008a.mo17858F().m18013r().m18042a("OnEventListener had not been registered");
        }
    }

    /* renamed from: M */
    public final void m18221k(Bundle bundle, long j) {
        C0654fd.m25939b();
        if (this.f17008a.m18513u().m18356w(null, C3621c3.f16398v0) && !TextUtils.isEmpty(this.f17008a.m18511w().m18256p())) {
            this.f17008a.mo17858F().m18012s().m18042a("Using developer consent only; google app id found");
        } else {
            m18251A(bundle, 0, j);
        }
    }

    /* renamed from: N */
    public final void m18240N(Boolean bool, boolean z) {
        mo17839c();
        m18384d();
        this.f17008a.mo17858F().m18019l().m18041b("Setting app measurement enabled (FE)", bool);
        this.f17008a.m18546A().m18348n(bool);
        if (z) {
            C3670g4 m18546A = this.f17008a.m18546A();
            C3611b5 c3611b5 = m18546A.f17008a;
            m18546A.mo17839c();
            SharedPreferences.Editor edit = m18546A.m18352j().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        if (!this.f17008a.m18523k() && (bool == null || bool.booleanValue())) {
            return;
        }
        m18239R();
    }

    /* renamed from: R */
    public final void m18239R() {
        long j;
        mo17839c();
        String m18388a = this.f17008a.m18546A().f16506m.m18388a();
        if (m18388a != null) {
            if ("unset".equals(m18388a)) {
                m18243K("app", "_npa", null, this.f17008a.mo17854Q().mo24763a());
            } else {
                if (true != "true".equals(m18388a)) {
                    j = 0;
                } else {
                    j = 1;
                }
                m18243K("app", "_npa", Long.valueOf(j), this.f17008a.mo17854Q().mo24763a());
            }
        }
        if (this.f17008a.m18524j() && this.f16630o) {
            this.f17008a.mo17858F().m18019l().m18042a("Recording app launch after enabling measurement for the first time (FE)");
            m18224g0();
            C0756ld.m25682b();
            if (this.f17008a.m18513u().m18356w(null, C3621c3.f16378l0)) {
                this.f17008a.m18539J().f16736d.m18066a();
            }
            this.f17008a.mo17855P().m17826u(new RunnableC3732l6(this));
            return;
        }
        this.f17008a.mo17858F().m18019l().m18042a("Updating Scion state (FE)");
        this.f17008a.m18540I().m17871r();
    }

    /* renamed from: S */
    public final int m18238S(String str) {
        C7297q.m1887f(str);
        this.f17008a.m18513u();
        return 25;
    }

    /* renamed from: g0 */
    public final void m18224g0() {
        mo17839c();
        m18384d();
        if (this.f17008a.m18521m()) {
            if (this.f17008a.m18513u().m18356w(null, C3621c3.f16358b0)) {
                C3665g m18513u = this.f17008a.m18513u();
                m18513u.f17008a.mo17857G();
                Boolean m18364o = m18513u.m18364o("google_analytics_deferred_deep_link_enabled");
                if (m18364o != null && m18364o.booleanValue()) {
                    this.f17008a.mo17858F().m18019l().m18042a("Deferred Deep Link feature enabled.");
                    this.f17008a.mo17855P().m17826u(new Runnable() { // from class: g5.g6
                        @Override // java.lang.Runnable
                        public final void run() {
                            C3697i7 c3697i7 = C3697i7.this;
                            c3697i7.mo17839c();
                            if (!c3697i7.f17008a.m18546A().f16511r.m17813b()) {
                                long m18548a = c3697i7.f17008a.m18546A().f16512s.m18548a();
                                c3697i7.f17008a.m18546A().f16512s.m18547b(1 + m18548a);
                                c3697i7.f17008a.m18513u();
                                if (m18548a >= 5) {
                                    c3697i7.f17008a.mo17858F().m18013r().m18042a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                    c3697i7.f17008a.m18546A().f16511r.m17814a(true);
                                    return;
                                }
                                c3697i7.f17008a.m18529e();
                                return;
                            }
                            c3697i7.f17008a.mo17858F().m18019l().m18042a("Deferred Deep Link already retrieved. Not fetching again.");
                        }
                    });
                }
            }
            this.f17008a.m18540I().m17889L();
            this.f16630o = false;
            C3670g4 m18546A = this.f17008a.m18546A();
            m18546A.mo17839c();
            String string = m18546A.m18352j().getString("previous_os_version", null);
            m18546A.f17008a.m18512v().m17922f();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = m18546A.m18352j().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (!TextUtils.isEmpty(string)) {
                this.f17008a.m18512v().m17922f();
                if (!string.equals(str)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", string);
                    m18216p("auto", "_ou", bundle);
                }
            }
        }
    }

    /* renamed from: o */
    public final void m18217o(String str, String str2, Bundle bundle, String str3) {
        C3611b5.m18519o();
        m18210v("auto", str2, this.f17008a.mo17854Q().mo24763a(), bundle, false, true, true, str3);
    }

    /* renamed from: p */
    public final void m18216p(String str, String str2, Bundle bundle) {
        mo17839c();
        m18215q(str, str2, this.f17008a.mo17854Q().mo24763a(), bundle);
    }

    /* renamed from: q */
    public final void m18215q(String str, String str2, long j, Bundle bundle) {
        boolean z;
        mo17839c();
        if (this.f16619d != null && !C3700ia.m18189V(str2)) {
            z = false;
        } else {
            z = true;
        }
        m18214r(str, str2, j, bundle, true, z, true, null);
    }

    /* renamed from: s */
    public final void m18213s(InterfaceC3636d6 interfaceC3636d6) {
        m18384d();
        C7297q.m1883j(interfaceC3636d6);
        if (!this.f16620e.add(interfaceC3636d6)) {
            this.f17008a.mo17858F().m18013r().m18042a("OnEventListener already registered");
        }
    }

    /* renamed from: u */
    public final void m18211u(long j, boolean z) {
        mo17839c();
        m18384d();
        this.f17008a.mo17858F().m18019l().m18042a("Resetting analytics data (FE)");
        C3747m9 m18539J = this.f17008a.m18539J();
        m18539J.mo17839c();
        m18539J.f16737e.m18082a();
        boolean m18524j = this.f17008a.m18524j();
        C3670g4 m18546A = this.f17008a.m18546A();
        m18546A.f16498e.m18547b(j);
        if (!TextUtils.isEmpty(m18546A.f17008a.m18546A().f16513t.m18388a())) {
            m18546A.f16513t.m18387b(null);
        }
        C0756ld.m25682b();
        C3665g m18513u = m18546A.f17008a.m18513u();
        C3609b3<Boolean> c3609b3 = C3621c3.f16378l0;
        if (m18513u.m18356w(null, c3609b3)) {
            m18546A.f16508o.m18547b(0L);
        }
        if (!m18546A.f17008a.m18513u().m18353z()) {
            m18546A.m18347o(!m18524j);
        }
        m18546A.f16514u.m18387b(null);
        m18546A.f16515v.m18547b(0L);
        m18546A.f16516w.m18554b(null);
        if (z) {
            this.f17008a.m18540I().m17877l();
        }
        C0756ld.m25682b();
        if (this.f17008a.m18513u().m18356w(null, c3609b3)) {
            this.f17008a.m18539J().f16736d.m18066a();
        }
        this.f16630o = !m18524j;
    }
}
