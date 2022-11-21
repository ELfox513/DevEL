package p185t3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import p220x3.C7297q;
/* renamed from: t3.n */
/* loaded from: classes.dex */
public class C6758n {

    /* renamed from: c */
    public static C6758n f35436c;

    /* renamed from: a */
    public final Context f35437a;

    /* renamed from: b */
    public volatile String f35438b;

    public C6758n(@RecentlyNonNull Context context) {
        this.f35437a = context.getApplicationContext();
    }

    /* renamed from: e */
    public static final boolean m3460e(@RecentlyNonNull PackageInfo packageInfo, boolean z) {
        AbstractBinderC6769y m3461d;
        if (packageInfo != null && packageInfo.signatures != null) {
            if (z) {
                m3461d = m3461d(packageInfo, C6735b0.f35392a);
            } else {
                m3461d = m3461d(packageInfo, C6735b0.f35392a[0]);
            }
            if (m3461d != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m3463b(@RecentlyNonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (m3460e(packageInfo, false)) {
            return true;
        }
        if (m3460e(packageInfo, true)) {
            if (C6756m.m3478e(this.f35437a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    /* renamed from: d */
    public static final AbstractBinderC6769y m3461d(PackageInfo packageInfo, AbstractBinderC6769y... abstractBinderC6769yArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        BinderC6770z binderC6770z = new BinderC6770z(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < abstractBinderC6769yArr.length; i++) {
            if (abstractBinderC6769yArr[i].equals(binderC6770z)) {
                return abstractBinderC6769yArr[i];
            }
        }
        return null;
    }

    /* renamed from: c */
    public boolean m3462c(int i) {
        C6757m0 m3468d;
        int length;
        String[] packagesForUid = this.f35437a.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            m3468d = null;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    m3468d = m3459f(packagesForUid[i2], false, false);
                    if (m3468d.f35433a) {
                        break;
                    }
                    i2++;
                } else {
                    C7297q.m1883j(m3468d);
                    break;
                }
            }
        } else {
            m3468d = C6757m0.m3468d("no pkgs");
        }
        m3468d.m3466f();
        return m3468d.f35433a;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    /* renamed from: f */
    public final C6757m0 m3459f(String str, boolean z, boolean z2) {
        String str2;
        C6757m0 m3468d;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return C6757m0.m3468d("null pkg");
        }
        if (!str.equals(this.f35438b)) {
            if (C6737c0.m3518d()) {
                m3468d = C6737c0.m3520b(str, C6756m.m3478e(this.f35437a), false, false);
            } else {
                try {
                    PackageInfo packageInfo = this.f35437a.getPackageManager().getPackageInfo(str, 64);
                    boolean m3478e = C6756m.m3478e(this.f35437a);
                    if (packageInfo == null) {
                        m3468d = C6757m0.m3468d("null pkg");
                    } else {
                        Signature[] signatureArr = packageInfo.signatures;
                        if (signatureArr != null && signatureArr.length == 1) {
                            BinderC6770z binderC6770z = new BinderC6770z(packageInfo.signatures[0].toByteArray());
                            String str3 = packageInfo.packageName;
                            C6757m0 m3519c = C6737c0.m3519c(str3, binderC6770z, m3478e, false);
                            if (m3519c.f35433a && (applicationInfo = packageInfo.applicationInfo) != null && (applicationInfo.flags & 2) != 0 && C6737c0.m3519c(str3, binderC6770z, false, true).f35433a) {
                                m3468d = C6757m0.m3468d("debuggable release cert app rejected");
                            } else {
                                m3468d = m3519c;
                            }
                        } else {
                            m3468d = C6757m0.m3468d("single cert required");
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    if (str.length() != 0) {
                        str2 = "no pkg ".concat(str);
                    } else {
                        str2 = new String("no pkg ");
                    }
                    return C6757m0.m3467e(str2, e);
                }
            }
            if (m3468d.f35433a) {
                this.f35438b = str;
            }
            return m3468d;
        }
        return C6757m0.m3470b();
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static C6758n m3464a(@RecentlyNonNull Context context) {
        C7297q.m1883j(context);
        synchronized (C6758n.class) {
            if (f35436c == null) {
                C6737c0.m3521a(context);
                f35436c = new C6758n(context);
            }
        }
        return f35436c;
    }
}
