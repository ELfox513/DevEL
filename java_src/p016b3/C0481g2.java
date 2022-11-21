package p016b3;

import android.net.ConnectivityManager$NetworkCallback;
import android.net.Network;
/* renamed from: b3.g2 */
/* loaded from: classes.dex */
public final class C0481g2 extends ConnectivityManager$NetworkCallback {
    public C0481g2(C0497k2 c0497k2) {
    }

    public final void onAvailable(Network network) {
        synchronized (C0497k2.class) {
            boolean unused = C0497k2.f1631j = true;
        }
    }

    public final void onLost(Network network) {
        synchronized (C0497k2.class) {
            boolean unused = C0497k2.f1631j = false;
        }
    }
}
