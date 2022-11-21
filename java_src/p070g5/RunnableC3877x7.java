package p070g5;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;
import p018b5.InterfaceC0693i1;
import p220x3.C7297q;
/* renamed from: g5.x7 */
/* loaded from: classes2.dex */
public final class RunnableC3877x7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f17066a;

    /* renamed from: b */
    public final /* synthetic */ String f17067b;

    /* renamed from: d */
    public final /* synthetic */ C3784pa f17068d;

    /* renamed from: k */
    public final /* synthetic */ boolean f17069k;

    /* renamed from: p */
    public final /* synthetic */ InterfaceC0693i1 f17070p;

    /* renamed from: q */
    public final /* synthetic */ C3866w8 f17071q;

    public RunnableC3877x7(C3866w8 c3866w8, String str, String str2, C3784pa c3784pa, boolean z, InterfaceC0693i1 interfaceC0693i1) {
        this.f17071q = c3866w8;
        this.f17066a = str;
        this.f17067b = str2;
        this.f17068d = c3784pa;
        this.f17069k = z;
        this.f17070p = interfaceC0693i1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        RemoteException e;
        InterfaceC3669g3 interfaceC3669g3;
        Bundle bundle2 = new Bundle();
        try {
            interfaceC3669g3 = this.f17071q.f17044d;
            if (interfaceC3669g3 == null) {
                this.f17071q.f17008a.mo17858F().m18018m().m18040c("Failed to get user properties; not connected to service", this.f17066a, this.f17067b);
                this.f17071q.f17008a.m18538K().m18145z(this.f17070p, bundle2);
                return;
            }
            C7297q.m1883j(this.f17068d);
            List<C3652ea> mo17955H1 = interfaceC3669g3.mo17955H1(this.f17066a, this.f17067b, this.f17069k, this.f17068d);
            bundle = new Bundle();
            if (mo17955H1 != null) {
                for (C3652ea c3652ea : mo17955H1) {
                    String str = c3652ea.f16466p;
                    if (str != null) {
                        bundle.putString(c3652ea.f16463b, str);
                    } else {
                        Long l = c3652ea.f16465k;
                        if (l != null) {
                            bundle.putLong(c3652ea.f16463b, l.longValue());
                        } else {
                            Double d = c3652ea.f16468r;
                            if (d != null) {
                                bundle.putDouble(c3652ea.f16463b, d.doubleValue());
                            }
                        }
                    }
                }
            }
            try {
                try {
                    this.f17071q.m17863z();
                    this.f17071q.f17008a.m18538K().m18145z(this.f17070p, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    this.f17071q.f17008a.mo17858F().m18018m().m18040c("Failed to get user properties; remote exception", this.f17066a, e);
                    this.f17071q.f17008a.m18538K().m18145z(this.f17070p, bundle);
                }
            } catch (Throwable th) {
                th = th;
                bundle2 = bundle;
                this.f17071q.f17008a.m18538K().m18145z(this.f17070p, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            bundle = bundle2;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            this.f17071q.f17008a.m18538K().m18145z(this.f17070p, bundle2);
            throw th;
        }
    }
}
