package p070g5;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import p220x3.C7297q;
/* renamed from: g5.p8 */
/* loaded from: classes2.dex */
public final class RunnableC3782p8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f16830a;

    /* renamed from: b */
    public final /* synthetic */ String f16831b;

    /* renamed from: d */
    public final /* synthetic */ String f16832d;

    /* renamed from: k */
    public final /* synthetic */ C3784pa f16833k;

    /* renamed from: p */
    public final /* synthetic */ boolean f16834p;

    /* renamed from: q */
    public final /* synthetic */ C3866w8 f16835q;

    public RunnableC3782p8(C3866w8 c3866w8, AtomicReference atomicReference, String str, String str2, String str3, C3784pa c3784pa, boolean z) {
        this.f16835q = c3866w8;
        this.f16830a = atomicReference;
        this.f16831b = str2;
        this.f16832d = str3;
        this.f16833k = c3784pa;
        this.f16834p = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        InterfaceC3669g3 interfaceC3669g3;
        synchronized (this.f16830a) {
            try {
                interfaceC3669g3 = this.f16835q.f17044d;
            } catch (RemoteException e) {
                this.f16835q.f17008a.mo17858F().m18018m().m18039d("(legacy) Failed to get user properties; remote exception", null, this.f16831b, e);
                this.f16830a.set(Collections.emptyList());
                atomicReference = this.f16830a;
            }
            if (interfaceC3669g3 == null) {
                this.f16835q.f17008a.mo17858F().m18018m().m18039d("(legacy) Failed to get user properties; not connected to service", null, this.f16831b, this.f16832d);
                this.f16830a.set(Collections.emptyList());
                this.f16830a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                C7297q.m1883j(this.f16833k);
                this.f16830a.set(interfaceC3669g3.mo17955H1(this.f16831b, this.f16832d, this.f16834p, this.f16833k));
            } else {
                this.f16830a.set(interfaceC3669g3.mo17933v1(null, this.f16831b, this.f16832d, this.f16834p));
            }
            this.f16835q.m17863z();
            atomicReference = this.f16830a;
            atomicReference.notify();
        }
    }
}
