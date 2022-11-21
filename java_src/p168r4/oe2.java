package p168r4;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
/* renamed from: r4.oe2 */
/* loaded from: classes2.dex */
public final class oe2 implements eg2, dg2 {

    /* renamed from: a */
    public final ApplicationInfo f28963a;

    /* renamed from: b */
    public final PackageInfo f28964b;

    public oe2(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.f28963a = applicationInfo;
        this.f28964b = packageInfo;
    }

    @Override // p168r4.eg2
    public final h83<dg2<Bundle>> zza() {
        return y73.m4814a(this);
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Object obj) {
        Integer valueOf;
        Bundle bundle = (Bundle) obj;
        String str = this.f28963a.packageName;
        PackageInfo packageInfo = this.f28964b;
        String str2 = null;
        if (packageInfo == null) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(packageInfo.versionCode);
        }
        bundle.putString("pn", str);
        if (valueOf != null) {
            bundle.putInt("vc", valueOf.intValue());
        }
        PackageInfo packageInfo2 = this.f28964b;
        if (packageInfo2 != null) {
            str2 = packageInfo2.versionName;
        }
        if (str2 != null) {
            bundle.putString("vnm", str2);
        }
    }
}
