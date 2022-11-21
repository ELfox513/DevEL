package p185t3;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import p060f4.BinderC3514b;
import p220x3.AbstractBinderC7313v0;
import p220x3.C7297q;
import p220x3.InterfaceC7316w0;
/* renamed from: t3.c0 */
/* loaded from: classes.dex */
public final class C6737c0 {

    /* renamed from: e */
    public static volatile InterfaceC7316w0 f35400e;

    /* renamed from: g */
    public static Context f35402g;

    /* renamed from: a */
    public static final AbstractBinderC6733a0 f35396a = new BinderC6765u(AbstractBinderC6769y.m3454L0("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b */
    public static final AbstractBinderC6733a0 f35397b = new BinderC6766v(AbstractBinderC6769y.m3454L0("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c */
    public static final AbstractBinderC6733a0 f35398c = new BinderC6767w(AbstractBinderC6769y.m3454L0("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));

    /* renamed from: d */
    public static final AbstractBinderC6733a0 f35399d = new BinderC6768x(AbstractBinderC6769y.m3454L0("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f */
    public static final Object f35401f = new Object();

    /* renamed from: e */
    public static final /* synthetic */ String m3517e(boolean z, String str, AbstractBinderC6769y abstractBinderC6769y) {
        boolean z2 = true;
        return C6757m0.m3465g(str, abstractBinderC6769y, z, (z || !m3515g(str, abstractBinderC6769y, true, false).f35433a) ? false : false);
    }

    /* renamed from: a */
    public static synchronized void m3521a(Context context) {
        synchronized (C6737c0.class) {
            if (f35402g == null) {
                if (context != null) {
                    f35402g = context.getApplicationContext();
                    return;
                }
                return;
            }
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [f4.a, android.os.IBinder] */
    /* renamed from: b */
    public static C6757m0 m3520b(String str, boolean z, boolean z2, boolean z3) {
        String str2;
        C6757m0 m3467e;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            C7297q.m1883j(f35402g);
            try {
                m3516f();
                try {
                    C6745g0 mo1849C2 = f35400e.mo1849C2(new C6739d0(str, z, false, BinderC3514b.m18741L0(f35402g), false));
                    if (mo1849C2.zza()) {
                        m3467e = C6757m0.m3470b();
                    } else {
                        String m3497X0 = mo1849C2.m3497X0();
                        if (m3497X0 == null) {
                            m3497X0 = "error checking package certificate";
                        }
                        if (mo1849C2.m3496Y0() == 4) {
                            m3467e = C6757m0.m3467e(m3497X0, new PackageManager.NameNotFoundException());
                        } else {
                            m3467e = C6757m0.m3468d(m3497X0);
                        }
                    }
                } catch (RemoteException e) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                    m3467e = C6757m0.m3467e("module call", e);
                }
            } catch (DynamiteModule.C1414a e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                String valueOf = String.valueOf(e2.getMessage());
                if (valueOf.length() != 0) {
                    str2 = "module init: ".concat(valueOf);
                } else {
                    str2 = new String("module init: ");
                }
                m3467e = C6757m0.m3467e(str2, e2);
            }
            return m3467e;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: f */
    public static void m3516f() {
        if (f35400e != null) {
            return;
        }
        C7297q.m1883j(f35402g);
        synchronized (f35401f) {
            if (f35400e == null) {
                f35400e = AbstractBinderC7313v0.m1851o0(DynamiteModule.m23003e(f35402g, DynamiteModule.f7766f, "com.google.android.gms.googlecertificates").m23004d("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }

    /* renamed from: g */
    public static C6757m0 m3515g(final String str, final AbstractBinderC6769y abstractBinderC6769y, final boolean z, boolean z2) {
        String str2;
        try {
            m3516f();
            C7297q.m1883j(f35402g);
            try {
                if (f35400e.mo1848X6(new C6749i0(str, abstractBinderC6769y, z, z2), BinderC3514b.m18741L0(f35402g.getPackageManager()))) {
                    return C6757m0.m3470b();
                }
                return C6757m0.m3469c(new Callable(z, str, abstractBinderC6769y) { // from class: t3.t

                    /* renamed from: a */
                    public final boolean f35445a;

                    /* renamed from: b */
                    public final String f35446b;

                    /* renamed from: c */
                    public final AbstractBinderC6769y f35447c;

                    {
                        this.f35445a = z;
                        this.f35446b = str;
                        this.f35447c = abstractBinderC6769y;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C6737c0.m3517e(this.f35445a, this.f35446b, this.f35447c);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return C6757m0.m3467e("module call", e);
            }
        } catch (DynamiteModule.C1414a e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                str2 = "module init: ".concat(valueOf);
            } else {
                str2 = new String("module init: ");
            }
            return C6757m0.m3467e(str2, e2);
        }
    }

    /* renamed from: c */
    public static C6757m0 m3519c(String str, AbstractBinderC6769y abstractBinderC6769y, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m3515g(str, abstractBinderC6769y, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: d */
    public static boolean m3518d() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                m3516f();
                return f35400e.mo1847g();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.C1414a e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        }
    }
}
