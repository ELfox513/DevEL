package p070g5;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import p220x3.C7297q;
/* renamed from: g5.n8 */
/* loaded from: classes2.dex */
public final class RunnableC3758n8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f16768a;

    /* renamed from: b */
    public final /* synthetic */ String f16769b;

    /* renamed from: d */
    public final /* synthetic */ String f16770d;

    /* renamed from: k */
    public final /* synthetic */ C3784pa f16771k;

    /* renamed from: p */
    public final /* synthetic */ C3866w8 f16772p;

    public RunnableC3758n8(C3866w8 c3866w8, AtomicReference atomicReference, String str, String str2, String str3, C3784pa c3784pa) {
        this.f16772p = c3866w8;
        this.f16768a = atomicReference;
        this.f16769b = str2;
        this.f16770d = str3;
        this.f16771k = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        InterfaceC3669g3 interfaceC3669g3;
        synchronized (this.f16768a) {
            try {
                interfaceC3669g3 = this.f16772p.f17044d;
            } catch (RemoteException e) {
                this.f16772p.f17008a.mo17858F().m18018m().m18039d("(legacy) Failed to get conditional properties; remote exception", null, this.f16769b, e);
                this.f16768a.set(Collections.emptyList());
                atomicReference = this.f16768a;
            }
            if (interfaceC3669g3 == null) {
                this.f16772p.f17008a.mo17858F().m18018m().m18039d("(legacy) Failed to get conditional properties; not connected to service", null, this.f16769b, this.f16770d);
                this.f16768a.set(Collections.emptyList());
                this.f16768a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                C7297q.m1883j(this.f16771k);
                this.f16768a.set(interfaceC3669g3.mo17948Y5(this.f16769b, this.f16770d, this.f16771k));
            } else {
                this.f16768a.set(interfaceC3669g3.mo17937p2(null, this.f16769b, this.f16770d));
            }
            this.f16772p.m17863z();
            atomicReference = this.f16768a;
            atomicReference.notify();
        }
    }
}
