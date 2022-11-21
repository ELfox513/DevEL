package p097j5;
/* renamed from: j5.z */
/* loaded from: classes2.dex */
public final class RunnableC4366z implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC4346i f18261a;

    /* renamed from: b */
    public final /* synthetic */ C4331a0 f18262b;

    public RunnableC4366z(C4331a0 c4331a0, AbstractC4346i abstractC4346i) {
        this.f18262b = c4331a0;
        this.f18261a = abstractC4346i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        InterfaceC4340f interfaceC4340f;
        InterfaceC4340f interfaceC4340f2;
        obj = this.f18262b.f18204b;
        synchronized (obj) {
            interfaceC4340f = this.f18262b.f18205c;
            if (interfaceC4340f != null) {
                interfaceC4340f2 = this.f18262b.f18205c;
                interfaceC4340f2.mo1c(this.f18261a.mo16790l());
            }
        }
    }
}
