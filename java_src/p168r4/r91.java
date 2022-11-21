package p168r4;

import java.util.Set;
import p004a3.InterfaceC0076q;
/* renamed from: r4.r91 */
/* loaded from: classes2.dex */
public final class r91 extends yc1<InterfaceC0076q> implements InterfaceC0076q {
    public r91(Set<ve1<InterfaceC0076q>> set) {
        super(set);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: A2 */
    public final synchronized void mo4171A2() {
        m4757S0(o91.f28933a);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: C6 */
    public final synchronized void mo4170C6(final int i) {
        m4757S0(new xc1(i) { // from class: r4.l91

            /* renamed from: a */
            public final int f27135a;

            {
                this.f27135a = i;
            }

            @Override // p168r4.xc1
            /* renamed from: a */
            public final void mo4278a(Object obj) {
                ((InterfaceC0076q) obj).mo4170C6(this.f27135a);
            }
        });
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: c */
    public final synchronized void mo4168c() {
        m4757S0(n91.f28229a);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e */
    public final synchronized void mo4166e() {
        m4757S0(m91.f27544a);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e3 */
    public final synchronized void mo4165e3() {
        m4757S0(p91.f29397a);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: j0 */
    public final synchronized void mo4163j0() {
        m4757S0(q91.f30053a);
    }
}
