package p097j5;
/* renamed from: j5.p */
/* loaded from: classes2.dex */
public final class RunnableC4356p implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC4346i f18237a;

    /* renamed from: b */
    public final /* synthetic */ C4357q f18238b;

    public RunnableC4356p(C4357q c4357q, AbstractC4346i abstractC4346i) {
        this.f18238b = c4357q;
        this.f18237a = abstractC4346i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4347i0 c4347i0;
        C4347i0 c4347i02;
        C4347i0 c4347i03;
        InterfaceC4330a interfaceC4330a;
        C4347i0 c4347i04;
        C4347i0 c4347i05;
        if (this.f18237a.mo16788n()) {
            c4347i05 = this.f18238b.f18241c;
            c4347i05.m16779w();
            return;
        }
        try {
            interfaceC4330a = this.f18238b.f18240b;
            Object mo1688a = interfaceC4330a.mo1688a(this.f18237a);
            c4347i04 = this.f18238b.f18241c;
            c4347i04.m16783s(mo1688a);
        } catch (C4342g e) {
            if (e.getCause() instanceof Exception) {
                c4347i03 = this.f18238b.f18241c;
                c4347i03.m16781u((Exception) e.getCause());
                return;
            }
            c4347i02 = this.f18238b.f18241c;
            c4347i02.m16781u(e);
        } catch (Exception e2) {
            c4347i0 = this.f18238b.f18241c;
            c4347i0.m16781u(e2);
        }
    }
}
