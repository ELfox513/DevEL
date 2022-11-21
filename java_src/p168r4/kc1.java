package p168r4;

import java.util.Set;
/* renamed from: r4.kc1 */
/* loaded from: classes2.dex */
public final class kc1 extends yc1<InterfaceC6165qc> implements v40 {
    public kc1(Set<ve1<InterfaceC6165qc>> set) {
        super(set);
    }

    @Override // p168r4.v40
    /* renamed from: n0 */
    public final synchronized void mo4162n0(final String str, final String str2) {
        m4757S0(new xc1(str, str2) { // from class: r4.jc1

            /* renamed from: a */
            public final String f25994a;

            /* renamed from: b */
            public final String f25995b;

            {
                this.f25994a = str;
                this.f25995b = str2;
            }

            @Override // p168r4.xc1
            /* renamed from: a */
            public final void mo4278a(Object obj) {
                ((InterfaceC6165qc) obj).mo5379p(this.f25994a, this.f25995b);
            }
        });
    }
}
