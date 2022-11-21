package p172s;

import android.content.Context;
import android.os.Process;
import p163r.C5461g;
/* renamed from: s.k */
/* loaded from: classes.dex */
public final class C6565k {
    /* renamed from: a */
    public static int m3909a(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String m13263b = C5461g.m13263b(str);
        if (m13263b == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        if (C5461g.m13264a(context, m13263b, str2) == 0) {
            return 0;
        }
        return -2;
    }

    /* renamed from: b */
    public static int m3908b(Context context, String str) {
        return m3909a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
