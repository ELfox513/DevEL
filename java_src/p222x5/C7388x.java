package p222x5;

import android.content.Context;
/* renamed from: x5.x */
/* loaded from: classes2.dex */
public class C7388x {

    /* renamed from: a */
    public String f36978a;

    /* renamed from: a */
    public synchronized String m1601a(Context context) {
        String str;
        if (this.f36978a == null) {
            this.f36978a = m1600b(context);
        }
        if ("".equals(this.f36978a)) {
            str = null;
        } else {
            str = this.f36978a;
        }
        return str;
    }

    /* renamed from: b */
    public static String m1600b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        if (installerPackageName == null) {
            return "";
        }
        return installerPackageName;
    }
}
