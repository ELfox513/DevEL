package p097j5;

import p220x3.C7297q;
/* renamed from: j5.x */
/* loaded from: classes2.dex */
public final class RunnableC4364x implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC4346i f18256a;

    /* renamed from: b */
    public final /* synthetic */ C4365y f18257b;

    public RunnableC4364x(C4365y c4365y, AbstractC4346i abstractC4346i) {
        this.f18257b = c4365y;
        this.f18256a = abstractC4346i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        InterfaceC4338e interfaceC4338e;
        InterfaceC4338e interfaceC4338e2;
        obj = this.f18257b.f18259b;
        synchronized (obj) {
            interfaceC4338e = this.f18257b.f18260c;
            if (interfaceC4338e != null) {
                interfaceC4338e2 = this.f18257b.f18260c;
                interfaceC4338e2.mo0e((Exception) C7297q.m1883j(this.f18256a.mo16791k()));
            }
        }
    }
}
