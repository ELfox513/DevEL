package p070g5;

import android.os.Bundle;
import android.os.RemoteException;
import p220x3.C7297q;
/* renamed from: g5.e8 */
/* loaded from: classes2.dex */
public final class RunnableC3650e8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f16457a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f16458b;

    /* renamed from: d */
    public final /* synthetic */ C3866w8 f16459d;

    public RunnableC3650e8(C3866w8 c3866w8, C3784pa c3784pa, Bundle bundle) {
        this.f16459d = c3866w8;
        this.f16457a = c3784pa;
        this.f16458b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        interfaceC3669g3 = this.f16459d.f17044d;
        if (interfaceC3669g3 == null) {
            this.f16459d.f17008a.mo17858F().m18018m().m18042a("Failed to send default event parameters to service");
            return;
        }
        try {
            C7297q.m1883j(this.f16457a);
            interfaceC3669g3.mo17939j5(this.f16458b, this.f16457a);
        } catch (RemoteException e) {
            this.f16459d.f17008a.mo17858F().m18018m().m18041b("Failed to send default event parameters to service", e);
        }
    }
}
