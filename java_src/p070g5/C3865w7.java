package p070g5;

import android.app.Activity;
import android.os.Bundle;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p220x3.C7297q;
/* renamed from: g5.w7 */
/* loaded from: classes2.dex */
public final class C3865w7 extends AbstractC3658f4 {

    /* renamed from: c */
    public volatile C3781p7 f17031c;

    /* renamed from: d */
    public volatile C3781p7 f17032d;

    /* renamed from: e */
    public C3781p7 f17033e;

    /* renamed from: f */
    public final Map<Activity, C3781p7> f17034f;

    /* renamed from: g */
    public Activity f17035g;

    /* renamed from: h */
    public volatile boolean f17036h;

    /* renamed from: i */
    public volatile C3781p7 f17037i;

    /* renamed from: j */
    public C3781p7 f17038j;

    /* renamed from: k */
    public boolean f17039k;

    /* renamed from: l */
    public final Object f17040l;

    /* renamed from: m */
    public C3781p7 f17041m;

    /* renamed from: n */
    public String f17042n;

    @Override // p070g5.AbstractC3658f4
    /* renamed from: i */
    public final boolean mo17880i() {
        return false;
    }

    /* renamed from: k */
    public final void m17914k(C3781p7 c3781p7, C3781p7 c3781p72, long j, boolean z, Bundle bundle) {
        boolean z2;
        Bundle bundle2;
        String str;
        long j2;
        long j3;
        mo17839c();
        boolean z3 = false;
        if (c3781p72 != null && c3781p72.f16826c == c3781p7.f16826c && C3700ia.m18185Z(c3781p72.f16825b, c3781p7.f16825b) && C3700ia.m18185Z(c3781p72.f16824a, c3781p7.f16824a)) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z && this.f17033e != null) {
            z3 = true;
        }
        if (z2) {
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            Bundle bundle3 = bundle2;
            C3700ia.m18157s(c3781p7, bundle3, true);
            if (c3781p72 != null) {
                String str2 = c3781p72.f16824a;
                if (str2 != null) {
                    bundle3.putString("_pn", str2);
                }
                String str3 = c3781p72.f16825b;
                if (str3 != null) {
                    bundle3.putString("_pc", str3);
                }
                bundle3.putLong("_pi", c3781p72.f16826c);
            }
            if (z3) {
                C3723k9 c3723k9 = this.f17008a.m18539J().f16737e;
                long j4 = j - c3723k9.f16693b;
                c3723k9.f16693b = j;
                if (j4 > 0) {
                    this.f17008a.m18538K().m18161q(bundle3, j4);
                }
            }
            if (!this.f17008a.m18513u().m18354y()) {
                bundle3.putLong("_mst", 1L);
            }
            if (true != c3781p7.f16828e) {
                str = "auto";
            } else {
                str = "app";
            }
            String str4 = str;
            long mo24763a = this.f17008a.mo17854Q().mo24763a();
            if (c3781p7.f16828e) {
                j2 = mo24763a;
                long j5 = c3781p7.f16829f;
                if (j5 != 0) {
                    j3 = j5;
                    this.f17008a.m18543D().m18215q(str4, "_vs", j3, bundle3);
                }
            } else {
                j2 = mo24763a;
            }
            j3 = j2;
            this.f17008a.m18543D().m18215q(str4, "_vs", j3, bundle3);
        }
        if (z3) {
            m17913l(this.f17033e, true, j);
        }
        this.f17033e = c3781p7;
        if (c3781p7.f16828e) {
            this.f17038j = c3781p7;
        }
        this.f17008a.m18540I().m17873p(c3781p7);
    }

    /* renamed from: n */
    public final C3781p7 m17911n() {
        return this.f17031c;
    }

    /* renamed from: s */
    public static /* bridge */ /* synthetic */ void m17906s(C3865w7 c3865w7, Bundle bundle, C3781p7 c3781p7, C3781p7 c3781p72, long j) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        c3865w7.m17914k(c3781p7, c3781p72, j, true, c3865w7.f17008a.m18538K().m18150v0(null, "screen_view", bundle, null, false));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (r2 > 100) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
        if (r4 > 100) goto L25;
     */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17918A(android.os.Bundle r13, long r14) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3865w7.m17918A(android.os.Bundle, long):void");
    }

    /* renamed from: j */
    public final void m17915j(Activity activity, C3781p7 c3781p7, boolean z) {
        C3781p7 c3781p72;
        C3781p7 c3781p73;
        String str;
        if (this.f17031c == null) {
            c3781p72 = this.f17032d;
        } else {
            c3781p72 = this.f17031c;
        }
        C3781p7 c3781p74 = c3781p72;
        if (c3781p7.f16825b == null) {
            if (activity != null) {
                str = m17909p(activity.getClass(), "Activity");
            } else {
                str = null;
            }
            c3781p73 = new C3781p7(c3781p7.f16824a, str, c3781p7.f16826c, c3781p7.f16828e, c3781p7.f16829f);
        } else {
            c3781p73 = c3781p7;
        }
        this.f17032d = this.f17031c;
        this.f17031c = c3781p73;
        this.f17008a.mo17855P().m17826u(new RunnableC3805r7(this, c3781p73, c3781p74, this.f17008a.mo17854Q().mo24762b(), z));
    }

    /* renamed from: l */
    public final void m17913l(C3781p7 c3781p7, boolean z, long j) {
        boolean z2;
        this.f17008a.m18514t().m18427i(this.f17008a.mo17854Q().mo24762b());
        if (c3781p7 != null && c3781p7.f16827d) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.f17008a.m18539J().f16737e.m18079d(z2, z, j) && c3781p7 != null) {
            c3781p7.f16827d = false;
        }
    }

    /* renamed from: u */
    public final void m17904u(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.f17008a.m18513u().m18354y() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f17034f.put(activity, new C3781p7(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    /* renamed from: v */
    public final void m17903v(Activity activity) {
        synchronized (this.f17040l) {
            if (activity == this.f17035g) {
                this.f17035g = null;
            }
        }
        if (!this.f17008a.m18513u().m18354y()) {
            return;
        }
        this.f17034f.remove(activity);
    }

    /* renamed from: w */
    public final void m17902w(Activity activity) {
        synchronized (this.f17040l) {
            this.f17039k = false;
            this.f17036h = true;
        }
        long mo24762b = this.f17008a.mo17854Q().mo24762b();
        if (!this.f17008a.m18513u().m18354y()) {
            this.f17031c = null;
            this.f17008a.mo17855P().m17826u(new RunnableC3829t7(this, mo24762b));
            return;
        }
        C3781p7 m17916C = m17916C(activity);
        this.f17032d = this.f17031c;
        this.f17031c = null;
        this.f17008a.mo17855P().m17826u(new RunnableC3841u7(this, m17916C, mo24762b));
    }

    /* renamed from: x */
    public final void m17901x(Activity activity) {
        synchronized (this.f17040l) {
            this.f17039k = true;
            if (activity != this.f17035g) {
                synchronized (this.f17040l) {
                    this.f17035g = activity;
                    this.f17036h = false;
                }
                if (this.f17008a.m18513u().m18354y()) {
                    this.f17037i = null;
                    this.f17008a.mo17855P().m17826u(new RunnableC3853v7(this));
                }
            }
        }
        if (!this.f17008a.m18513u().m18354y()) {
            this.f17031c = this.f17037i;
            this.f17008a.mo17855P().m17826u(new RunnableC3817s7(this));
            return;
        }
        m17915j(activity, m17916C(activity), false);
        C3632d2 m18514t = this.f17008a.m18514t();
        m18514t.f17008a.mo17855P().m17826u(new RunnableC3619c1(m18514t, m18514t.f17008a.mo17854Q().mo24762b()));
    }

    /* renamed from: y */
    public final void m17900y(Activity activity, Bundle bundle) {
        C3781p7 c3781p7;
        if (!this.f17008a.m18513u().m18354y() || bundle == null || (c3781p7 = this.f17034f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", c3781p7.f16826c);
        bundle2.putString("name", c3781p7.f16824a);
        bundle2.putString("referrer_name", c3781p7.f16825b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        if (r1 <= 100) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b4, code lost:
        if (r1 <= 100) goto L36;
     */
    @java.lang.Deprecated
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17899z(android.app.Activity r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            g5.b5 r0 = r3.f17008a
            g5.g r0 = r0.m18513u()
            boolean r0 = r0.m18354y()
            if (r0 != 0) goto L1c
            g5.b5 r4 = r3.f17008a
            g5.q3 r4 = r4.mo17858F()
            g5.o3 r4 = r4.m18012s()
            java.lang.String r5 = "setCurrentScreen cannot be called while screen reporting is disabled."
            r4.m18042a(r5)
            return
        L1c:
            g5.p7 r0 = r3.f17031c
            if (r0 != 0) goto L30
            g5.b5 r4 = r3.f17008a
            g5.q3 r4 = r4.mo17858F()
            g5.o3 r4 = r4.m18012s()
            java.lang.String r5 = "setCurrentScreen cannot be called while no activity active"
            r4.m18042a(r5)
            return
        L30:
            java.util.Map<android.app.Activity, g5.p7> r1 = r3.f17034f
            java.lang.Object r1 = r1.get(r4)
            if (r1 != 0) goto L48
            g5.b5 r4 = r3.f17008a
            g5.q3 r4 = r4.mo17858F()
            g5.o3 r4 = r4.m18012s()
            java.lang.String r5 = "setCurrentScreen must be called with an activity in the activity lifecycle"
            r4.m18042a(r5)
            return
        L48:
            if (r6 != 0) goto L54
            java.lang.Class r6 = r4.getClass()
            java.lang.String r1 = "Activity"
            java.lang.String r6 = r3.m17909p(r6, r1)
        L54:
            java.lang.String r1 = r0.f16825b
            boolean r1 = p070g5.C3700ia.m18185Z(r1, r6)
            java.lang.String r0 = r0.f16824a
            boolean r0 = p070g5.C3700ia.m18185Z(r0, r5)
            if (r1 == 0) goto L75
            if (r0 != 0) goto L65
            goto L75
        L65:
            g5.b5 r4 = r3.f17008a
            g5.q3 r4 = r4.mo17858F()
            g5.o3 r4 = r4.m18012s()
            java.lang.String r5 = "setCurrentScreen cannot be called with the same class and name"
            r4.m18042a(r5)
            return
        L75:
            r0 = 100
            if (r5 == 0) goto La3
            int r1 = r5.length()
            if (r1 <= 0) goto L8b
            int r1 = r5.length()
            g5.b5 r2 = r3.f17008a
            r2.m18513u()
            if (r1 > r0) goto L8b
            goto La3
        L8b:
            g5.b5 r4 = r3.f17008a
            g5.q3 r4 = r4.mo17858F()
            g5.o3 r4 = r4.m18012s()
            int r5 = r5.length()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.String r6 = "Invalid screen name length in setCurrentScreen. Length"
            r4.m18041b(r6, r5)
            return
        La3:
            if (r6 == 0) goto Lcf
            int r1 = r6.length()
            if (r1 <= 0) goto Lb7
            int r1 = r6.length()
            g5.b5 r2 = r3.f17008a
            r2.m18513u()
            if (r1 > r0) goto Lb7
            goto Lcf
        Lb7:
            g5.b5 r4 = r3.f17008a
            g5.q3 r4 = r4.mo17858F()
            g5.o3 r4 = r4.m18012s()
            int r5 = r6.length()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.String r6 = "Invalid class name length in setCurrentScreen. Length"
            r4.m18041b(r6, r5)
            return
        Lcf:
            g5.b5 r0 = r3.f17008a
            g5.q3 r0 = r0.mo17858F()
            g5.o3 r0 = r0.m18014q()
            if (r5 != 0) goto Lde
            java.lang.String r1 = "null"
            goto Ldf
        Lde:
            r1 = r5
        Ldf:
            java.lang.String r2 = "Setting current screen to name, class"
            r0.m18040c(r2, r1, r6)
            g5.p7 r0 = new g5.p7
            g5.b5 r1 = r3.f17008a
            g5.ia r1 = r1.m18538K()
            long r1 = r1.m18158r0()
            r0.<init>(r5, r6, r1)
            java.util.Map<android.app.Activity, g5.p7> r5 = r3.f17034f
            r5.put(r4, r0)
            r5 = 1
            r3.m17915j(r4, r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3865w7.m17899z(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    public C3865w7(C3611b5 c3611b5) {
        super(c3611b5);
        this.f17040l = new Object();
        this.f17034f = new ConcurrentHashMap();
    }

    /* renamed from: B */
    public final void m17917B(String str, C3781p7 c3781p7) {
        mo17839c();
        synchronized (this) {
            String str2 = this.f17042n;
            if (str2 == null || str2.equals(str) || c3781p7 != null) {
                this.f17042n = str;
                this.f17041m = c3781p7;
            }
        }
    }

    /* renamed from: C */
    public final C3781p7 m17916C(Activity activity) {
        C7297q.m1883j(activity);
        C3781p7 c3781p7 = this.f17034f.get(activity);
        if (c3781p7 == null) {
            C3781p7 c3781p72 = new C3781p7(null, m17909p(activity.getClass(), "Activity"), this.f17008a.m18538K().m18158r0());
            this.f17034f.put(activity, c3781p72);
            c3781p7 = c3781p72;
        }
        if (this.f17037i != null) {
            return this.f17037i;
        }
        return c3781p7;
    }

    /* renamed from: o */
    public final C3781p7 m17910o(boolean z) {
        m18384d();
        mo17839c();
        if (!z) {
            return this.f17033e;
        }
        C3781p7 c3781p7 = this.f17033e;
        if (c3781p7 != null) {
            return c3781p7;
        }
        return this.f17038j;
    }

    /* renamed from: p */
    public final String m17909p(Class<?> cls, String str) {
        String str2;
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        if (length > 0) {
            str2 = split[length - 1];
        } else {
            str2 = "";
        }
        int length2 = str2.length();
        this.f17008a.m18513u();
        if (length2 > 100) {
            this.f17008a.m18513u();
            return str2.substring(0, 100);
        }
        return str2;
    }
}
