package p070g5;

import android.os.RemoteException;
import p018b5.InterfaceC0693i1;
/* renamed from: g5.g8 */
/* loaded from: classes2.dex */
public final class RunnableC3674g8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3833u f16551a;

    /* renamed from: b */
    public final /* synthetic */ String f16552b;

    /* renamed from: d */
    public final /* synthetic */ InterfaceC0693i1 f16553d;

    /* renamed from: k */
    public final /* synthetic */ C3866w8 f16554k;

    public RunnableC3674g8(C3866w8 c3866w8, C3833u c3833u, String str, InterfaceC0693i1 interfaceC0693i1) {
        this.f16554k = c3866w8;
        this.f16551a = c3833u;
        this.f16552b = str;
        this.f16553d = interfaceC0693i1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3611b5 c3611b5;
        InterfaceC3669g3 interfaceC3669g3;
        byte[] bArr = null;
        try {
            try {
                interfaceC3669g3 = this.f16554k.f17044d;
                if (interfaceC3669g3 == null) {
                    this.f16554k.f17008a.mo17858F().m18018m().m18042a("Discarding data. Failed to send event to service to bundle");
                    c3611b5 = this.f16554k.f17008a;
                } else {
                    bArr = interfaceC3669g3.mo17949V1(this.f16551a, this.f16552b);
                    this.f16554k.m17863z();
                    c3611b5 = this.f16554k.f17008a;
                }
            } catch (RemoteException e) {
                this.f16554k.f17008a.mo17858F().m18018m().m18041b("Failed to send event to the service to bundle", e);
                c3611b5 = this.f16554k.f17008a;
            }
            c3611b5.m18538K().m18205A(this.f16553d, bArr);
        } catch (Throwable th) {
            this.f16554k.f17008a.m18538K().m18205A(this.f16553d, bArr);
            throw th;
        }
    }
}
