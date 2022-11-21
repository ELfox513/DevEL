package p097j5;

import java.util.concurrent.Executor;
/* renamed from: j5.r */
/* loaded from: classes2.dex */
public final class RunnableC4358r implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC4346i f18242a;

    /* renamed from: b */
    public final /* synthetic */ C4359s f18243b;

    public RunnableC4358r(C4359s c4359s, AbstractC4346i abstractC4346i) {
        this.f18243b = c4359s;
        this.f18242a = abstractC4346i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4347i0 c4347i0;
        C4347i0 c4347i02;
        C4347i0 c4347i03;
        InterfaceC4330a interfaceC4330a;
        try {
            interfaceC4330a = this.f18243b.f18245b;
            AbstractC4346i abstractC4346i = (AbstractC4346i) interfaceC4330a.mo1688a(this.f18242a);
            if (abstractC4346i == null) {
                this.f18243b.mo0e(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = C4350k.f18226b;
            abstractC4346i.mo16796f(executor, this.f18243b);
            abstractC4346i.mo16797e(executor, this.f18243b);
            abstractC4346i.mo16801a(executor, this.f18243b);
        } catch (C4342g e) {
            if (e.getCause() instanceof Exception) {
                c4347i03 = this.f18243b.f18246c;
                c4347i03.m16781u((Exception) e.getCause());
                return;
            }
            c4347i02 = this.f18243b.f18246c;
            c4347i02.m16781u(e);
        } catch (Exception e2) {
            c4347i0 = this.f18243b.f18246c;
            c4347i0.m16781u(e2);
        }
    }
}
