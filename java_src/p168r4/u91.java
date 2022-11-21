package p168r4;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: r4.u91 */
/* loaded from: classes2.dex */
public final class u91 extends yc1<w91> implements d81, k91 {

    /* renamed from: b */
    public final no2 f32231b;

    /* renamed from: d */
    public final AtomicBoolean f32232d;

    /* renamed from: T0 */
    public final /* synthetic */ void m6596T0(w91 w91Var) {
        w91Var.mo5377u(this.f32231b.f28407b0);
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final void mo5385g() {
        int i = this.f32231b.f28406b;
        if (i == 2 || i == 5 || i == 4 || i == 6 || i == 7) {
            m6595a();
        }
    }

    @Override // p168r4.k91
    /* renamed from: o0 */
    public final void mo5380o0() {
        if (this.f32231b.f28406b == 1) {
            m6595a();
        }
    }

    /* renamed from: a */
    public final void m6595a() {
        C5591au c5591au;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30764A5)).booleanValue() && this.f32232d.compareAndSet(false, true) && (c5591au = this.f32231b.f28407b0) != null && c5591au.f20613a == 3) {
            m4757S0(new xc1(this) { // from class: r4.t91

                /* renamed from: a */
                public final u91 f31748a;

                {
                    this.f31748a = this;
                }

                @Override // p168r4.xc1
                /* renamed from: a */
                public final void mo4278a(Object obj) {
                    this.f31748a.m6596T0((w91) obj);
                }
            });
        }
    }

    public u91(Set<ve1<w91>> set, no2 no2Var) {
        super(set);
        this.f32232d = new AtomicBoolean();
        this.f32231b = no2Var;
    }
}
