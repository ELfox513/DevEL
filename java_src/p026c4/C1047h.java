package p026c4;

import android.content.Context;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import p220x3.C7297q;
/* renamed from: c4.h */
/* loaded from: classes.dex */
public final class C1047h {

    /* renamed from: a */
    public static final String[] f2950a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    /* renamed from: a */
    public static boolean m24764a(@RecentlyNonNull Context context, @RecentlyNonNull Throwable th) {
        try {
            C7297q.m1883j(context);
            C7297q.m1883j(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
