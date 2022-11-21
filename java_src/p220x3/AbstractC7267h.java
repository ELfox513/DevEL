package p220x3;

import android.content.Context;
import android.content.ServiceConnection;
import androidx.annotation.RecentlyNonNull;
/* renamed from: x3.h */
/* loaded from: classes.dex */
public abstract class AbstractC7267h {

    /* renamed from: a */
    public static int f36728a = 4225;

    /* renamed from: b */
    public static final Object f36729b = new Object();

    /* renamed from: c */
    public static AbstractC7267h f36730c;

    /* renamed from: a */
    public static int m1939a() {
        return f36728a;
    }

    /* renamed from: c */
    public final void m1937c(@RecentlyNonNull String str, @RecentlyNonNull String str2, int i, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str3, boolean z) {
        mo1898e(new C7282l1(str, str2, i, z), serviceConnection, str3);
    }

    /* renamed from: d */
    public abstract boolean mo1899d(C7282l1 c7282l1, ServiceConnection serviceConnection, String str);

    /* renamed from: e */
    public abstract void mo1898e(C7282l1 c7282l1, ServiceConnection serviceConnection, String str);

    @RecentlyNonNull
    /* renamed from: b */
    public static AbstractC7267h m1938b(@RecentlyNonNull Context context) {
        synchronized (f36729b) {
            if (f36730c == null) {
                f36730c = new C7296p1(context.getApplicationContext());
            }
        }
        return f36730c;
    }
}
