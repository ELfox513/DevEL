package p222x5;

import android.content.Context;
import android.content.pm.PackageInfo;
import p089i6.InterfaceC4141b;
/* renamed from: x5.a */
/* loaded from: classes2.dex */
public class C7329a {

    /* renamed from: a */
    public final String f36815a;

    /* renamed from: b */
    public final String f36816b;

    /* renamed from: c */
    public final String f36817c;

    /* renamed from: d */
    public final String f36818d;

    /* renamed from: e */
    public final String f36819e;

    /* renamed from: f */
    public final String f36820f;

    /* renamed from: g */
    public final InterfaceC4141b f36821g;

    public C7329a(String str, String str2, String str3, String str4, String str5, String str6, InterfaceC4141b interfaceC4141b) {
        this.f36815a = str;
        this.f36816b = str2;
        this.f36817c = str3;
        this.f36818d = str4;
        this.f36819e = str5;
        this.f36820f = str6;
        this.f36821g = interfaceC4141b;
    }

    /* renamed from: a */
    public static C7329a m1831a(Context context, C7386v c7386v, String str, String str2, InterfaceC4141b interfaceC4141b) {
        String packageName = context.getPackageName();
        String m1609g = c7386v.m1609g();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String num = Integer.toString(packageInfo.versionCode);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new C7329a(str, str2, m1609g, packageName, num, str3, interfaceC4141b);
    }
}
