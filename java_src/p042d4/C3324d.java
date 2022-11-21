package p042d4;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.RecentlyNonNull;
import p022c0.C1023f;
import p026c4.C1054o;
/* renamed from: d4.d */
/* loaded from: classes.dex */
public class C3324d {
    @RecentlyNonNull

    /* renamed from: a */
    public final Context f15647a;

    public C3324d(@RecentlyNonNull Context context) {
        this.f15647a = context;
    }

    /* renamed from: a */
    public int m19148a(@RecentlyNonNull String str) {
        return this.f15647a.checkCallingOrSelfPermission(str);
    }

    /* renamed from: b */
    public int m19147b(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        return this.f15647a.getPackageManager().checkPermission(str, str2);
    }

    @RecentlyNonNull
    /* renamed from: c */
    public ApplicationInfo m19146c(@RecentlyNonNull String str, int i) {
        return this.f15647a.getPackageManager().getApplicationInfo(str, i);
    }

    @RecentlyNonNull
    /* renamed from: f */
    public PackageInfo m19143f(@RecentlyNonNull String str, int i) {
        return this.f15647a.getPackageManager().getPackageInfo(str, i);
    }

    @RecentlyNonNull
    /* renamed from: d */
    public CharSequence m19145d(@RecentlyNonNull String str) {
        return this.f15647a.getPackageManager().getApplicationLabel(this.f15647a.getPackageManager().getApplicationInfo(str, 0));
    }

    @RecentlyNonNull
    /* renamed from: e */
    public C1023f<CharSequence, Drawable> m19144e(@RecentlyNonNull String str) {
        ApplicationInfo applicationInfo = this.f15647a.getPackageManager().getApplicationInfo(str, 0);
        return C1023f.m24811a(this.f15647a.getPackageManager().getApplicationLabel(applicationInfo), this.f15647a.getPackageManager().getApplicationIcon(applicationInfo));
    }

    /* renamed from: g */
    public boolean m19142g() {
        String nameForUid;
        boolean isInstantApp;
        if (Binder.getCallingUid() == Process.myUid()) {
            return C3322b.m19150a(this.f15647a);
        }
        if (C1054o.m24730k() && (nameForUid = this.f15647a.getPackageManager().getNameForUid(Binder.getCallingUid())) != null) {
            isInstantApp = this.f15647a.getPackageManager().isInstantApp(nameForUid);
            return isInstantApp;
        }
        return false;
    }

    @TargetApi(19)
    /* renamed from: h */
    public final boolean m19141h(int i, @RecentlyNonNull String str) {
        if (C1054o.m24735f()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.f15647a.getSystemService("appops");
                if (appOpsManager != null) {
                    appOpsManager.checkPackage(i, str);
                    return true;
                }
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = this.f15647a.getPackageManager().getPackagesForUid(i);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
