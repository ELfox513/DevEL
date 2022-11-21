package p170r6;

import p097j5.C4348j;
import p188t6.AbstractC6804d;
/* renamed from: r6.j */
/* loaded from: classes2.dex */
public class C6542j implements InterfaceC6547n {

    /* renamed from: a */
    public final C6548o f34851a;

    /* renamed from: b */
    public final C4348j<AbstractC6544l> f34852b;

    @Override // p170r6.InterfaceC6547n
    public boolean onException(Exception exc) {
        this.f34852b.m16772d(exc);
        return true;
    }

    public C6542j(C6548o c6548o, C4348j<AbstractC6544l> c4348j) {
        this.f34851a = c6548o;
        this.f34852b = c4348j;
    }

    @Override // p170r6.InterfaceC6547n
    /* renamed from: a */
    public boolean mo3948a(AbstractC6804d abstractC6804d) {
        if (abstractC6804d.m3396k() && !this.f34851a.m3942f(abstractC6804d)) {
            this.f34852b.m16773c(AbstractC6544l.m3959a().mo3954b(abstractC6804d.mo3405b()).mo3952d(abstractC6804d.mo3404c()).mo3953c(abstractC6804d.mo3399h()).mo3955a());
            return true;
        }
        return false;
    }
}
