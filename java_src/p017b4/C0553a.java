package p017b4;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import p042d4.C3325e;
import p220x3.C7297q;
import p220x3.InterfaceC7299q1;
/* renamed from: b4.a */
/* loaded from: classes.dex */
public class C0553a {

    /* renamed from: b */
    public static final Object f1719b = new Object();

    /* renamed from: c */
    public static volatile C0553a f1720c;
    @RecentlyNonNull

    /* renamed from: a */
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> f1721a = new ConcurrentHashMap<>();

    /* renamed from: f */
    public static boolean m26184f(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof InterfaceC7299q1);
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: g */
    public static void m26183g(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
        }
    }

    /* renamed from: d */
    public final boolean m26186d(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull Intent intent, @RecentlyNonNull ServiceConnection serviceConnection, int i) {
        return m26185e(context, str, intent, serviceConnection, i, true);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static C0553a m26188b() {
        if (f1720c == null) {
            synchronized (f1719b) {
                if (f1720c == null) {
                    f1720c = new C0553a();
                }
            }
        }
        C0553a c0553a = f1720c;
        C7297q.m1883j(c0553a);
        return c0553a;
    }

    /* renamed from: a */
    public boolean m26189a(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent, @RecentlyNonNull ServiceConnection serviceConnection, int i) {
        return m26185e(context, context.getClass().getName(), intent, serviceConnection, i, true);
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: c */
    public void m26187c(@RecentlyNonNull Context context, @RecentlyNonNull ServiceConnection serviceConnection) {
        if (m26184f(serviceConnection) && this.f1721a.containsKey(serviceConnection)) {
            try {
                m26183g(context, this.f1721a.get(serviceConnection));
                return;
            } finally {
                this.f1721a.remove(serviceConnection);
            }
        }
        m26183g(context, serviceConnection);
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: e */
    public final boolean m26185e(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((C3325e.m19140a(context).m19146c(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (m26184f(serviceConnection)) {
            ServiceConnection putIfAbsent = this.f1721a.putIfAbsent(serviceConnection, serviceConnection);
            if (putIfAbsent != null && serviceConnection != putIfAbsent) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                boolean bindService = context.bindService(intent, serviceConnection, i);
                if (!bindService) {
                    return false;
                }
                return bindService;
            } finally {
                this.f1721a.remove(serviceConnection, serviceConnection);
            }
        }
        return context.bindService(intent, serviceConnection, i);
    }
}
