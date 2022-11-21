package p070g5;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.lang.reflect.InvocationTargetException;
import p026c4.C1056q;
import p042d4.C3325e;
import p220x3.C7297q;
/* renamed from: g5.g */
/* loaded from: classes2.dex */
public final class C3665g extends C3851v5 {

    /* renamed from: b */
    public Boolean f16489b;

    /* renamed from: c */
    public InterfaceC3653f f16490c;

    /* renamed from: d */
    public Boolean f16491d;

    public C3665g(C3611b5 c3611b5) {
        super(c3611b5);
        this.f16490c = C3641e.f16441a;
    }

    /* renamed from: D */
    public static final long m18376D() {
        return C3621c3.f16363e.m18550a(null).longValue();
    }

    /* renamed from: d */
    public static final long m18375d() {
        return C3621c3.f16332E.m18550a(null).longValue();
    }

    /* renamed from: A */
    public final boolean m18379A(String str) {
        return Config.SITE_API_VERSION.equals(this.f16490c.mo17984a(str, "measurement.event_sampling_enabled"));
    }

    /* renamed from: f */
    public final double m18373f(String str, C3609b3<Double> c3609b3) {
        if (str == null) {
            return c3609b3.m18550a(null).doubleValue();
        }
        String mo17984a = this.f16490c.mo17984a(str, c3609b3.m18549b());
        if (TextUtils.isEmpty(mo17984a)) {
            return c3609b3.m18550a(null).doubleValue();
        }
        try {
            return c3609b3.m18550a(Double.valueOf(Double.parseDouble(mo17984a))).doubleValue();
        } catch (NumberFormatException unused) {
            return c3609b3.m18550a(null).doubleValue();
        }
    }

    /* renamed from: g */
    public final int m18372g(String str) {
        return m18368k(str, C3621c3.f16337I, 500, 2000);
    }

    /* renamed from: i */
    public final int m18370i(String str) {
        return m18368k(str, C3621c3.f16338J, 25, 100);
    }

    /* renamed from: j */
    public final int m18369j(String str, C3609b3<Integer> c3609b3) {
        if (str == null) {
            return c3609b3.m18550a(null).intValue();
        }
        String mo17984a = this.f16490c.mo17984a(str, c3609b3.m18549b());
        if (TextUtils.isEmpty(mo17984a)) {
            return c3609b3.m18550a(null).intValue();
        }
        try {
            return c3609b3.m18550a(Integer.valueOf(Integer.parseInt(mo17984a))).intValue();
        } catch (NumberFormatException unused) {
            return c3609b3.m18550a(null).intValue();
        }
    }

    /* renamed from: l */
    public final long m18367l() {
        this.f17008a.mo17857G();
        return 43042L;
    }

    /* renamed from: m */
    public final long m18366m(String str, C3609b3<Long> c3609b3) {
        if (str == null) {
            return c3609b3.m18550a(null).longValue();
        }
        String mo17984a = this.f16490c.mo17984a(str, c3609b3.m18549b());
        if (TextUtils.isEmpty(mo17984a)) {
            return c3609b3.m18550a(null).longValue();
        }
        try {
            return c3609b3.m18550a(Long.valueOf(Long.parseLong(mo17984a))).longValue();
        } catch (NumberFormatException unused) {
            return c3609b3.m18550a(null).longValue();
        }
    }

    /* renamed from: n */
    public final Bundle m18365n() {
        try {
            if (this.f17008a.mo17856O().getPackageManager() == null) {
                this.f17008a.mo17858F().m18018m().m18042a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo m19146c = C3325e.m19140a(this.f17008a.mo17856O()).m19146c(this.f17008a.mo17856O().getPackageName(), 128);
            if (m19146c == null) {
                this.f17008a.mo17858F().m18018m().m18042a("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            return m19146c.metaData;
        } catch (PackageManager.NameNotFoundException e) {
            this.f17008a.mo17858F().m18018m().m18041b("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    /* renamed from: p */
    public final String m18363p() {
        return m18374e("debug.firebase.analytics.app", "");
    }

    /* renamed from: q */
    public final String m18362q() {
        return m18374e("debug.deferred.deeplink", "");
    }

    /* renamed from: r */
    public final String m18361r() {
        this.f17008a.mo17857G();
        return "FA";
    }

    /* renamed from: u */
    public final void m18358u(InterfaceC3653f interfaceC3653f) {
        this.f16490c = interfaceC3653f;
    }

    /* renamed from: w */
    public final boolean m18356w(String str, C3609b3<Boolean> c3609b3) {
        boolean parseBoolean;
        if (str == null) {
            return c3609b3.m18550a(null).booleanValue();
        }
        String mo17984a = this.f16490c.mo17984a(str, c3609b3.m18549b());
        if (!TextUtils.isEmpty(mo17984a)) {
            if (this.f17008a.m18513u().m18356w(null, C3621c3.f16333E0)) {
                parseBoolean = Config.SITE_API_VERSION.equals(mo17984a);
            } else {
                parseBoolean = Boolean.parseBoolean(mo17984a);
            }
            return c3609b3.m18550a(Boolean.valueOf(parseBoolean)).booleanValue();
        }
        return c3609b3.m18550a(null).booleanValue();
    }

    /* renamed from: x */
    public final boolean m18355x(String str) {
        return Config.SITE_API_VERSION.equals(this.f16490c.mo17984a(str, "gaia_collection_enabled"));
    }

    /* renamed from: B */
    public final boolean m18378B() {
        if (this.f16489b == null) {
            Boolean m18364o = m18364o("app_measurement_lite");
            this.f16489b = m18364o;
            if (m18364o == null) {
                this.f16489b = Boolean.FALSE;
            }
        }
        if (!this.f16489b.booleanValue() && this.f17008a.m18520n()) {
            return false;
        }
        return true;
    }

    /* renamed from: C */
    public final boolean m18377C() {
        if (this.f16491d == null) {
            synchronized (this) {
                if (this.f16491d == null) {
                    ApplicationInfo applicationInfo = this.f17008a.mo17856O().getApplicationInfo();
                    String m24728a = C1056q.m24728a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = false;
                        if (str != null && str.equals(m24728a)) {
                            z = true;
                        }
                        this.f16491d = Boolean.valueOf(z);
                    }
                    if (this.f16491d == null) {
                        this.f16491d = Boolean.TRUE;
                        this.f17008a.mo17858F().m18018m().m18042a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f16491d.booleanValue();
    }

    /* renamed from: e */
    public final String m18374e(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            C7297q.m1883j(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            this.f17008a.mo17858F().m18018m().m18041b("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            this.f17008a.mo17858F().m18018m().m18041b("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            this.f17008a.mo17858F().m18018m().m18041b("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            this.f17008a.mo17858F().m18018m().m18041b("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    /* renamed from: h */
    public final int m18371h() {
        C3700ia m18538K = this.f17008a.m18538K();
        Boolean m17894E = m18538K.f17008a.m18540I().m17894E();
        if (m18538K.m18164o0() < 201500) {
            if (m17894E == null || m17894E.booleanValue()) {
                return 25;
            }
            return 100;
        }
        return 100;
    }

    /* renamed from: s */
    public final String m18360s(String str, C3609b3<String> c3609b3) {
        if (str == null) {
            return c3609b3.m18550a(null);
        }
        return c3609b3.m18550a(this.f16490c.mo17984a(str, c3609b3.m18549b()));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m18359t(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r4 = "analytics.safelisted_events"
            p220x3.C7297q.m1887f(r4)
            android.os.Bundle r0 = r3.m18365n()
            r1 = 0
            if (r0 != 0) goto L1d
            g5.b5 r4 = r3.f17008a
            g5.q3 r4 = r4.mo17858F()
            g5.o3 r4 = r4.m18018m()
            java.lang.String r0 = "Failed to load metadata: Metadata bundle is null"
            r4.m18042a(r0)
        L1b:
            r4 = r1
            goto L2c
        L1d:
            boolean r2 = r0.containsKey(r4)
            if (r2 != 0) goto L24
            goto L1b
        L24:
            int r4 = r0.getInt(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
        L2c:
            if (r4 == 0) goto L58
            g5.b5 r0 = r3.f17008a     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.Context r0 = r0.mo17856O()     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L48
            int r4 = r4.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L48
            java.lang.String[] r4 = r0.getStringArray(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            if (r4 != 0) goto L43
            return r1
        L43:
            java.util.List r4 = java.util.Arrays.asList(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            return r4
        L48:
            r4 = move-exception
            g5.b5 r0 = r3.f17008a
            g5.q3 r0 = r0.mo17858F()
            g5.o3 r0 = r0.m18018m()
            java.lang.String r2 = "Failed to load string array from metadata: resource not found"
            r0.m18041b(r2, r4)
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3665g.m18359t(java.lang.String):java.util.List");
    }

    /* renamed from: v */
    public final boolean m18357v() {
        Boolean m18364o = m18364o("google_analytics_adid_collection_enabled");
        if (m18364o != null && !m18364o.booleanValue()) {
            return false;
        }
        return true;
    }

    /* renamed from: y */
    public final boolean m18354y() {
        Boolean m18364o = m18364o("google_analytics_automatic_screen_reporting_enabled");
        if (m18364o != null && !m18364o.booleanValue()) {
            return false;
        }
        return true;
    }

    /* renamed from: z */
    public final boolean m18353z() {
        this.f17008a.mo17857G();
        Boolean m18364o = m18364o("firebase_analytics_collection_deactivated");
        if (m18364o != null && m18364o.booleanValue()) {
            return true;
        }
        return false;
    }

    /* renamed from: k */
    public final int m18368k(String str, C3609b3<Integer> c3609b3, int i, int i2) {
        return Math.max(Math.min(m18369j(str, c3609b3), i2), i);
    }

    /* renamed from: o */
    public final Boolean m18364o(String str) {
        C7297q.m1887f(str);
        Bundle m18365n = m18365n();
        if (m18365n == null) {
            this.f17008a.mo17858F().m18018m().m18042a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (!m18365n.containsKey(str)) {
            return null;
        } else {
            return Boolean.valueOf(m18365n.getBoolean(str));
        }
    }
}
