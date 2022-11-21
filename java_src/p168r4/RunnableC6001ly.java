package p168r4;

import android.os.RemoteException;
/* renamed from: r4.ly */
/* loaded from: classes2.dex */
public final class RunnableC6001ly implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BinderC6038my f27416a;

    public RunnableC6001ly(BinderC6038my binderC6038my) {
        this.f27416a = binderC6038my;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC5887iv interfaceC5887iv;
        InterfaceC5887iv interfaceC5887iv2;
        interfaceC5887iv = this.f27416a.f28010a;
        if (interfaceC5887iv != null) {
            try {
                interfaceC5887iv2 = this.f27416a.f28010a;
                interfaceC5887iv2.mo5598D(1);
            } catch (RemoteException e) {
                cm0.m12436g("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
