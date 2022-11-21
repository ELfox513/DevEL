package p168r4;

import java.io.IOException;
/* renamed from: r4.mi */
/* loaded from: classes2.dex */
public final class RunnableC6022mi implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ IOException f27735a;

    /* renamed from: b */
    public final /* synthetic */ C6171qi f27736b;

    public RunnableC6022mi(C6171qi c6171qi, IOException iOException) {
        this.f27736b = c6171qi;
        this.f27735a = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC6208ri interfaceC6208ri;
        interfaceC6208ri = this.f27736b.f30140p;
        interfaceC6208ri.mo5208c(this.f27735a);
    }
}
