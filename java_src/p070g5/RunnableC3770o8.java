package p070g5;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import p018b5.InterfaceC0693i1;
import p220x3.C7297q;
/* renamed from: g5.o8 */
/* loaded from: classes2.dex */
public final class RunnableC3770o8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f16799a;

    /* renamed from: b */
    public final /* synthetic */ String f16800b;

    /* renamed from: d */
    public final /* synthetic */ C3784pa f16801d;

    /* renamed from: k */
    public final /* synthetic */ InterfaceC0693i1 f16802k;

    /* renamed from: p */
    public final /* synthetic */ C3866w8 f16803p;

    public RunnableC3770o8(C3866w8 c3866w8, String str, String str2, C3784pa c3784pa, InterfaceC0693i1 interfaceC0693i1) {
        this.f16803p = c3866w8;
        this.f16799a = str;
        this.f16800b = str2;
        this.f16801d = c3784pa;
        this.f16802k = interfaceC0693i1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3611b5 c3611b5;
        InterfaceC3669g3 interfaceC3669g3;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            try {
                interfaceC3669g3 = this.f16803p.f17044d;
                if (interfaceC3669g3 == null) {
                    this.f16803p.f17008a.mo17858F().m18018m().m18040c("Failed to get conditional properties; not connected to service", this.f16799a, this.f16800b);
                    c3611b5 = this.f16803p.f17008a;
                } else {
                    C7297q.m1883j(this.f16801d);
                    arrayList = C3700ia.m18163p(interfaceC3669g3.mo17948Y5(this.f16799a, this.f16800b, this.f16801d));
                    this.f16803p.m17863z();
                    c3611b5 = this.f16803p.f17008a;
                }
            } catch (RemoteException e) {
                this.f16803p.f17008a.mo17858F().m18018m().m18039d("Failed to get conditional properties; remote exception", this.f16799a, this.f16800b, e);
                c3611b5 = this.f16803p.f17008a;
            }
            c3611b5.m18538K().m18146y(this.f16802k, arrayList);
        } catch (Throwable th) {
            this.f16803p.f17008a.m18538K().m18146y(this.f16802k, arrayList);
            throw th;
        }
    }
}
