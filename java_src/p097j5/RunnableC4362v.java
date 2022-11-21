package p097j5;
/* renamed from: j5.v */
/* loaded from: classes2.dex */
public final class RunnableC4362v implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC4346i f18251a;

    /* renamed from: b */
    public final /* synthetic */ C4363w f18252b;

    public RunnableC4362v(C4363w c4363w, AbstractC4346i abstractC4346i) {
        this.f18252b = c4363w;
        this.f18251a = abstractC4346i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        InterfaceC4336d interfaceC4336d;
        InterfaceC4336d interfaceC4336d2;
        obj = this.f18252b.f18254b;
        synchronized (obj) {
            interfaceC4336d = this.f18252b.f18255c;
            if (interfaceC4336d != null) {
                interfaceC4336d2 = this.f18252b.f18255c;
                interfaceC4336d2.mo2639a(this.f18251a);
            }
        }
    }
}
