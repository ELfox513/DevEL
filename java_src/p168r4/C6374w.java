package p168r4;

import android.net.ConnectivityManager$NetworkCallback;
import android.net.Network;
import android.net.NetworkCapabilities;
/* renamed from: r4.w */
/* loaded from: classes2.dex */
public final class C6374w extends ConnectivityManager$NetworkCallback {

    /* renamed from: a */
    public final /* synthetic */ C6411x f32997a;

    public C6374w(C6411x c6411x) {
        this.f32997a = c6411x;
    }

    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        synchronized (C6411x.class) {
            this.f32997a.f33388a = networkCapabilities;
        }
    }

    public final void onLost(Network network) {
        synchronized (C6411x.class) {
            this.f32997a.f33388a = null;
        }
    }
}
