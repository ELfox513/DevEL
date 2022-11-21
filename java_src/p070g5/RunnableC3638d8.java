package p070g5;

import android.os.RemoteException;
/* renamed from: g5.d8 */
/* loaded from: classes2.dex */
public final class RunnableC3638d8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3781p7 f16437a;

    /* renamed from: b */
    public final /* synthetic */ C3866w8 f16438b;

    public RunnableC3638d8(C3866w8 c3866w8, C3781p7 c3781p7) {
        this.f16438b = c3866w8;
        this.f16437a = c3781p7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        interfaceC3669g3 = this.f16438b.f17044d;
        if (interfaceC3669g3 == null) {
            this.f16438b.f17008a.mo17858F().m18018m().m18042a("Failed to send current screen to service");
            return;
        }
        try {
            C3781p7 c3781p7 = this.f16437a;
            if (c3781p7 == null) {
                interfaceC3669g3.mo17953L3(0L, null, null, this.f16438b.f17008a.mo17856O().getPackageName());
            } else {
                interfaceC3669g3.mo17953L3(c3781p7.f16826c, c3781p7.f16824a, c3781p7.f16825b, this.f16438b.f17008a.mo17856O().getPackageName());
            }
            this.f16438b.m17863z();
        } catch (RemoteException e) {
            this.f16438b.f17008a.mo17858F().m18018m().m18041b("Failed to send current screen to the service", e);
        }
    }
}
