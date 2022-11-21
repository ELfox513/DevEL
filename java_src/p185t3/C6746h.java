package p185t3;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p026c4.C1049j;
import p042d4.C3325e;
import p220x3.C7302r1;
/* renamed from: t3.h */
/* loaded from: classes.dex */
public class C6746h {

    /* renamed from: a */
    public static final int f35418a = C6756m.f35427a;

    /* renamed from: b */
    public static final C6746h f35419b = new C6746h();

    @RecentlyNonNull
    /* renamed from: f */
    public static C6746h m3490f() {
        return f35419b;
    }

    /* renamed from: a */
    public int m3495a(@RecentlyNonNull Context context) {
        return C6756m.m3482a(context);
    }

    @RecentlyNullable
    /* renamed from: b */
    public Intent mo3494b(Context context, int i, String str) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            return C7302r1.m1871a("com.google.android.gms");
        } else if (context != null && C1049j.m24752h(context)) {
            return C7302r1.m1869c();
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("gcore_");
            sb.append(f35418a);
            sb.append("-");
            if (!TextUtils.isEmpty(str)) {
                sb.append(str);
            }
            sb.append("-");
            if (context != null) {
                sb.append(context.getPackageName());
            }
            sb.append("-");
            if (context != null) {
                try {
                    sb.append(C3325e.m19140a(context).m19143f(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            return C7302r1.m1870b("com.google.android.gms", sb.toString());
        }
    }

    @RecentlyNullable
    /* renamed from: c */
    public PendingIntent mo3493c(@RecentlyNonNull Context context, int i, int i2) {
        return m3492d(context, i, i2, null);
    }

    /* renamed from: e */
    public String mo3491e(int i) {
        return C6756m.m3481b(i);
    }

    /* renamed from: g */
    public int mo3489g(@RecentlyNonNull Context context) {
        return mo3488h(context, f35418a);
    }

    /* renamed from: i */
    public boolean m3487i(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        return C6756m.m3472k(context, str);
    }

    /* renamed from: j */
    public boolean mo3486j(int i) {
        return C6756m.m3474i(i);
    }

    @RecentlyNullable
    /* renamed from: d */
    public PendingIntent m3492d(@RecentlyNonNull Context context, int i, int i2, String str) {
        Intent mo3494b = mo3494b(context, i, str);
        if (mo3494b == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, mo3494b, 134217728);
    }

    /* renamed from: h */
    public int mo3488h(@RecentlyNonNull Context context, int i) {
        int m3477f = C6756m.m3477f(context, i);
        if (C6756m.m3476g(context, m3477f)) {
            return 18;
        }
        return m3477f;
    }
}
