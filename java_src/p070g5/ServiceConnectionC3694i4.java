package p070g5;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import p018b5.AbstractBinderC0862s0;
import p018b5.InterfaceC0879t0;
/* renamed from: g5.i4 */
/* loaded from: classes2.dex */
public final class ServiceConnectionC3694i4 implements ServiceConnection {

    /* renamed from: a */
    public final String f16610a;

    /* renamed from: b */
    public final /* synthetic */ C3706j4 f16611b;

    public ServiceConnectionC3694i4(C3706j4 c3706j4, String str) {
        this.f16611b = c3706j4;
        this.f16610a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f16611b.f16653a.mo17858F().m18014q().m18042a("Install Referrer Service disconnected");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder != null) {
            try {
                InterfaceC0879t0 m25332o0 = AbstractBinderC0862s0.m25332o0(iBinder);
                if (m25332o0 == null) {
                    this.f16611b.f16653a.mo17858F().m18013r().m18042a("Install Referrer Service implementation was not found");
                    return;
                }
                this.f16611b.f16653a.mo17858F().m18014q().m18042a("Install Referrer Service connected");
                this.f16611b.f16653a.mo17855P().m17826u(new RunnableC3682h4(this, m25332o0, this));
                return;
            } catch (RuntimeException e) {
                this.f16611b.f16653a.mo17858F().m18013r().m18041b("Exception occurred while calling Install Referrer API", e);
                return;
            }
        }
        this.f16611b.f16653a.mo17858F().m18013r().m18042a("Install Referrer connection returned with null binder");
    }
}
