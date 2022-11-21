package p185t3;

import android.util.Log;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
import p026c4.C1040a;
import p026c4.C1051l;
import p220x3.C7297q;
/* renamed from: t3.m0 */
/* loaded from: classes.dex */
public class C6757m0 {

    /* renamed from: d */
    public static final C6757m0 f35432d = new C6757m0(true, null, null);

    /* renamed from: a */
    public final boolean f35433a;

    /* renamed from: b */
    public final String f35434b;

    /* renamed from: c */
    public final Throwable f35435c;

    public C6757m0(boolean z, String str, Throwable th) {
        this.f35433a = z;
        this.f35434b = str;
        this.f35435c = th;
    }

    /* renamed from: b */
    public static C6757m0 m3470b() {
        return f35432d;
    }

    /* renamed from: c */
    public static C6757m0 m3469c(Callable<String> callable) {
        return new C6755l0(callable, null);
    }

    /* renamed from: d */
    public static C6757m0 m3468d(String str) {
        return new C6757m0(false, str, null);
    }

    /* renamed from: e */
    public static C6757m0 m3467e(String str, Throwable th) {
        return new C6757m0(false, str, th);
    }

    /* renamed from: g */
    public static String m3465g(String str, AbstractBinderC6769y abstractBinderC6769y, boolean z, boolean z2) {
        String str2;
        if (true != z2) {
            str2 = "not allowed";
        } else {
            str2 = "debug cert rejected";
        }
        MessageDigest m24780b = C1040a.m24780b("SHA-1");
        C7297q.m1883j(m24780b);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, C1051l.m24748a(m24780b.digest(abstractBinderC6769y.mo3453t0())), Boolean.valueOf(z), "12451000.false");
    }

    /* renamed from: a */
    public String mo3471a() {
        return this.f35434b;
    }

    /* renamed from: f */
    public final void m3466f() {
        if (!this.f35433a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.f35435c != null) {
                Log.d("GoogleCertificatesRslt", mo3471a(), this.f35435c);
            } else {
                Log.d("GoogleCertificatesRslt", mo3471a());
            }
        }
    }
}
