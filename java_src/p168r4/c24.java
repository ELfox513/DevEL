package p168r4;
/* renamed from: r4.c24 */
/* loaded from: classes2.dex */
public final class c24 extends o04 {

    /* renamed from: b */
    public final long f21322b;

    @Override // p168r4.o04, p168r4.b04
    /* renamed from: l */
    public final long mo5958l() {
        return super.mo5958l() - this.f21322b;
    }

    @Override // p168r4.o04, p168r4.b04
    /* renamed from: p */
    public final long mo5954p() {
        return super.mo5954p() - this.f21322b;
    }

    @Override // p168r4.o04, p168r4.b04
    /* renamed from: q */
    public final long mo5953q() {
        return super.mo5953q() - this.f21322b;
    }

    public c24(b04 b04Var, long j) {
        super(b04Var);
        boolean z;
        if (b04Var.mo5954p() >= j) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10374a(z);
        this.f21322b = j;
    }
}
