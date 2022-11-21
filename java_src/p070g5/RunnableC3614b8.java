package p070g5;

import android.os.RemoteException;
import p018b5.InterfaceC0693i1;
import p220x3.C7297q;
/* renamed from: g5.b8 */
/* loaded from: classes2.dex */
public final class RunnableC3614b8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f16277a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC0693i1 f16278b;

    /* renamed from: d */
    public final /* synthetic */ C3866w8 f16279d;

    public RunnableC3614b8(C3866w8 c3866w8, C3784pa c3784pa, InterfaceC0693i1 interfaceC0693i1) {
        this.f16279d = c3866w8;
        this.f16277a = c3784pa;
        this.f16278b = interfaceC0693i1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3611b5 c3611b5;
        InterfaceC3669g3 interfaceC3669g3;
        String str = null;
        try {
            try {
                if (!this.f16279d.f17008a.m18546A().m18350l().m18270k()) {
                    this.f16279d.f17008a.mo17858F().m18012s().m18042a("Analytics storage consent denied; will not get app instance id");
                    this.f16279d.f17008a.m18543D().m18208x(null);
                    this.f16279d.f17008a.m18546A().f16500g.m18387b(null);
                    c3611b5 = this.f16279d.f17008a;
                } else {
                    interfaceC3669g3 = this.f16279d.f17044d;
                    if (interfaceC3669g3 == null) {
                        this.f16279d.f17008a.mo17858F().m18018m().m18042a("Failed to get app instance id");
                        c3611b5 = this.f16279d.f17008a;
                    } else {
                        C7297q.m1883j(this.f16277a);
                        str = interfaceC3669g3.mo17940g6(this.f16277a);
                        if (str != null) {
                            this.f16279d.f17008a.m18543D().m18208x(str);
                            this.f16279d.f17008a.m18546A().f16500g.m18387b(str);
                        }
                        this.f16279d.m17863z();
                        c3611b5 = this.f16279d.f17008a;
                    }
                }
            } catch (RemoteException e) {
                this.f16279d.f17008a.mo17858F().m18018m().m18041b("Failed to get app instance id", e);
                c3611b5 = this.f16279d.f17008a;
            }
            c3611b5.m18538K().m18202D(this.f16278b, str);
        } catch (Throwable th) {
            this.f16279d.f17008a.m18538K().m18202D(this.f16278b, null);
            throw th;
        }
    }
}
