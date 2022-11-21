package p168r4;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
/* renamed from: r4.x */
/* loaded from: classes2.dex */
public final class C6411x {

    /* renamed from: a */
    public NetworkCapabilities f33388a;

    /* renamed from: b */
    public static C6411x m5532b(Context context) {
        if (context != null) {
            return new C6411x((ConnectivityManager) context.getSystemService("connectivity"));
        }
        return null;
    }

    /* renamed from: c */
    public final NetworkCapabilities m5531c() {
        return this.f33388a;
    }

    /* renamed from: d */
    public final long m5530d() {
        synchronized (C6411x.class) {
            NetworkCapabilities networkCapabilities = this.f33388a;
            if (networkCapabilities != null) {
                if (networkCapabilities.hasTransport(4)) {
                    return 2L;
                }
                if (this.f33388a.hasTransport(1)) {
                    return 1L;
                }
                if (this.f33388a.hasTransport(0)) {
                    return 0L;
                }
            }
            return -1L;
        }
    }

    public C6411x(ConnectivityManager connectivityManager) {
        if (connectivityManager != null && Build.VERSION.SDK_INT >= 24) {
            try {
                connectivityManager.registerDefaultNetworkCallback(new C6374w(this));
            } catch (RuntimeException unused) {
                synchronized (C6411x.class) {
                    this.f33388a = null;
                }
            }
        }
    }
}
