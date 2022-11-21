package p039d1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager$NetworkCallback;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import p014b1.C0425b;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
import p224y.C7396a;
/* renamed from: d1.i */
/* loaded from: classes.dex */
public class C3278i extends AbstractC3272d<C0425b> {

    /* renamed from: j */
    public static final String f15586j = AbstractC7114j.m2489f("NetworkStateTracker");

    /* renamed from: g */
    public final ConnectivityManager f15587g;

    /* renamed from: h */
    public C3280b f15588h;

    /* renamed from: i */
    public C3279a f15589i;

    /* renamed from: d1.i$a */
    /* loaded from: classes.dex */
    public class C3279a extends BroadcastReceiver {
        public C3279a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                AbstractC7114j.m2491c().mo2488a(C3278i.f15586j, "Network broadcast received", new Throwable[0]);
                C3278i c3278i = C3278i.this;
                c3278i.m19216d(c3278i.m19209g());
            }
        }
    }

    /* renamed from: j */
    public static boolean m19206j() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Override // p039d1.AbstractC3272d
    /* renamed from: h */
    public C0425b mo19205b() {
        return m19209g();
    }

    /* renamed from: d1.i$b */
    /* loaded from: classes.dex */
    public class C3280b extends ConnectivityManager$NetworkCallback {
        public C3280b() {
        }

        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            AbstractC7114j.m2491c().mo2488a(C3278i.f15586j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            C3278i c3278i = C3278i.this;
            c3278i.m19216d(c3278i.m19209g());
        }

        public void onLost(Network network) {
            AbstractC7114j.m2491c().mo2488a(C3278i.f15586j, "Network connection lost", new Throwable[0]);
            C3278i c3278i = C3278i.this;
            c3278i.m19216d(c3278i.m19209g());
        }
    }

    /* renamed from: g */
    public C0425b m19209g() {
        boolean z;
        NetworkInfo activeNetworkInfo = this.f15587g.getActiveNetworkInfo();
        boolean z2 = true;
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            z = true;
        } else {
            z = false;
        }
        return new C0425b(z, m19207i(), C7396a.m1580a(this.f15587g), (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) ? false : false);
    }

    /* renamed from: i */
    public boolean m19207i() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            activeNetwork = this.f15587g.getActiveNetwork();
            networkCapabilities = this.f15587g.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities == null) {
                return false;
            }
            if (!networkCapabilities.hasCapability(16)) {
                return false;
            }
            return true;
        } catch (SecurityException e) {
            AbstractC7114j.m2491c().mo2487b(f15586j, "Unable to validate active network", e);
            return false;
        }
    }

    public C3278i(Context context, InterfaceC4086a interfaceC4086a) {
        super(context, interfaceC4086a);
        this.f15587g = (ConnectivityManager) this.f15580b.getSystemService("connectivity");
        if (m19206j()) {
            this.f15588h = new C3280b();
        } else {
            this.f15589i = new C3279a();
        }
    }

    @Override // p039d1.AbstractC3272d
    /* renamed from: e */
    public void mo19211e() {
        if (m19206j()) {
            try {
                AbstractC7114j.m2491c().mo2488a(f15586j, "Registering network callback", new Throwable[0]);
                this.f15587g.registerDefaultNetworkCallback(this.f15588h);
                return;
            } catch (IllegalArgumentException | SecurityException e) {
                AbstractC7114j.m2491c().mo2487b(f15586j, "Received exception while registering network callback", e);
                return;
            }
        }
        AbstractC7114j.m2491c().mo2488a(f15586j, "Registering broadcast receiver", new Throwable[0]);
        this.f15580b.registerReceiver(this.f15589i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // p039d1.AbstractC3272d
    /* renamed from: f */
    public void mo19210f() {
        if (m19206j()) {
            try {
                AbstractC7114j.m2491c().mo2488a(f15586j, "Unregistering network callback", new Throwable[0]);
                this.f15587g.unregisterNetworkCallback(this.f15588h);
                return;
            } catch (IllegalArgumentException | SecurityException e) {
                AbstractC7114j.m2491c().mo2487b(f15586j, "Received exception while unregistering network callback", e);
                return;
            }
        }
        AbstractC7114j.m2491c().mo2488a(f15586j, "Unregistering broadcast receiver", new Throwable[0]);
        this.f15580b.unregisterReceiver(this.f15589i);
    }
}
