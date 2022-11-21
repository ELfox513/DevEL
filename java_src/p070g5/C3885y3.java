package p070g5;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p220x3.C7297q;
/* renamed from: g5.y3 */
/* loaded from: classes2.dex */
public final class C3885y3 extends BroadcastReceiver {

    /* renamed from: d */
    public static final String f17093d = C3885y3.class.getName();

    /* renamed from: a */
    public final C3616ba f17094a;

    /* renamed from: b */
    public boolean f17095b;

    /* renamed from: c */
    public boolean f17096c;

    /* renamed from: b */
    public final void m17842b() {
        this.f17094a.m18481b();
        this.f17094a.mo17855P().mo17839c();
        if (this.f17095b) {
            return;
        }
        this.f17094a.mo17856O().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f17096c = this.f17094a.m18486X().m17924i();
        this.f17094a.mo17858F().m18014q().m18041b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f17096c));
        this.f17095b = true;
    }

    /* renamed from: c */
    public final void m17841c() {
        this.f17094a.m18481b();
        this.f17094a.mo17855P().mo17839c();
        this.f17094a.mo17855P().mo17839c();
        if (this.f17095b) {
            this.f17094a.mo17858F().m18014q().m18042a("Unregistering connectivity change receiver");
            this.f17095b = false;
            this.f17096c = false;
            try {
                this.f17094a.mo17856O().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f17094a.mo17858F().m18018m().m18041b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f17094a.m18481b();
        String action = intent.getAction();
        this.f17094a.mo17858F().m18014q().m18041b("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean m17924i = this.f17094a.m18486X().m17924i();
            if (this.f17096c != m17924i) {
                this.f17096c = m17924i;
                this.f17094a.mo17855P().m17826u(new RunnableC3873x3(this, m17924i));
                return;
            }
            return;
        }
        this.f17094a.mo17858F().m18013r().m18041b("NetworkBroadcastReceiver received unknown action", action);
    }

    public C3885y3(C3616ba c3616ba) {
        C7297q.m1883j(c3616ba);
        this.f17094a = c3616ba;
    }
}
