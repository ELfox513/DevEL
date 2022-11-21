package p168r4;

import java.util.List;
/* renamed from: r4.en */
/* loaded from: classes2.dex */
public final class RunnableC5732en implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C5769fn f23088a;

    public RunnableC5732en(C5769fn c5769fn) {
        this.f23088a = c5769fn;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<InterfaceC5806gn> list;
        obj = this.f23088a.f23563d;
        synchronized (obj) {
            z = this.f23088a.f23564k;
            if (z) {
                z2 = this.f23088a.f23565p;
                if (z2) {
                    this.f23088a.f23564k = false;
                    cm0.m12442a("App went background");
                    list = this.f23088a.f23566q;
                    for (InterfaceC5806gn interfaceC5806gn : list) {
                        try {
                            interfaceC5806gn.mo7475R(false);
                        } catch (Exception e) {
                            cm0.m12439d("", e);
                        }
                    }
                }
            }
            cm0.m12442a("App is still foreground");
        }
    }
}
