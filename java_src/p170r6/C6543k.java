package p170r6;

import p097j5.C4348j;
import p188t6.AbstractC6804d;
/* renamed from: r6.k */
/* loaded from: classes2.dex */
public class C6543k implements InterfaceC6547n {

    /* renamed from: a */
    public final C4348j<String> f34853a;

    @Override // p170r6.InterfaceC6547n
    public boolean onException(Exception exc) {
        return false;
    }

    public C6543k(C4348j<String> c4348j) {
        this.f34853a = c4348j;
    }

    @Override // p170r6.InterfaceC6547n
    /* renamed from: a */
    public boolean mo3948a(AbstractC6804d abstractC6804d) {
        if (!abstractC6804d.m3395l() && !abstractC6804d.m3396k() && !abstractC6804d.m3398i()) {
            return false;
        }
        this.f34853a.m16771e(abstractC6804d.mo3403d());
        return true;
    }
}
