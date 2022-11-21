package p168r4;

import java.util.ArrayDeque;
/* renamed from: r4.mr2 */
/* loaded from: classes2.dex */
public final class mr2 implements t73<Void> {

    /* renamed from: a */
    public final /* synthetic */ pr2 f27861a;

    /* renamed from: b */
    public final /* synthetic */ qr2 f27862b;

    public mr2(qr2 qr2Var, pr2 pr2Var) {
        this.f27862b = qr2Var;
        this.f27861a = pr2Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        synchronized (this.f27862b) {
            this.f27862b.f30303e = null;
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(Void r3) {
        ArrayDeque arrayDeque;
        int i;
        synchronized (this.f27862b) {
            this.f27862b.f30303e = null;
            arrayDeque = this.f27862b.f30302d;
            arrayDeque.addFirst(this.f27861a);
            i = this.f27862b.f30304f;
            if (i == 1) {
                this.f27862b.m7685h();
            }
        }
    }
}
