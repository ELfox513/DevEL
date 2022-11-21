package p168r4;
/* renamed from: r4.ur3 */
/* loaded from: classes2.dex */
public final class ur3 implements vu3 {

    /* renamed from: a */
    public final vu3 f32362a;

    /* renamed from: b */
    public boolean f32363b;

    /* renamed from: c */
    public final /* synthetic */ ls3 f32364c;

    public ur3(ls3 ls3Var, vu3 vu3Var) {
        this.f32364c = ls3Var;
        this.f32362a = vu3Var;
    }

    @Override // p168r4.vu3
    /* renamed from: a */
    public final boolean mo6000a() {
        return !this.f32364c.m9569n() && this.f32362a.mo6000a();
    }

    @Override // p168r4.vu3
    /* renamed from: b */
    public final void mo5999b() {
        this.f32362a.mo5999b();
    }

    @Override // p168r4.vu3
    /* renamed from: c */
    public final int mo5998c(long j) {
        if (this.f32364c.m9569n()) {
            return -3;
        }
        return this.f32362a.mo5998c(j);
    }

    /* renamed from: e */
    public final void m6390e() {
        this.f32363b = false;
    }

    @Override // p168r4.vu3
    /* renamed from: d */
    public final int mo5997d(C5751f5 c5751f5, C5861i4 c5861i4, int i) {
        if (this.f32364c.m9569n()) {
            return -3;
        }
        if (this.f32363b) {
            c5861i4.m7887f(4);
            return -4;
        }
        int mo5997d = this.f32362a.mo5997d(c5751f5, c5861i4, i);
        if (mo5997d == -5) {
            C5713e5 c5713e5 = c5751f5.f23299a;
            c5713e5.getClass();
            int i2 = c5713e5.f22798B;
            int i3 = 0;
            if (i2 == 0) {
                if (c5713e5.f22799C != 0) {
                    i2 = 0;
                }
                return -5;
            }
            if (this.f32364c.f27360p == Long.MIN_VALUE) {
                i3 = c5713e5.f22799C;
            }
            C5639c5 m11856a = c5713e5.m11856a();
            m11856a.m12607E(i2);
            m11856a.m12606F(i3);
            c5751f5.f23299a = m11856a.m12603I();
            return -5;
        }
        ls3 ls3Var = this.f32364c;
        long j = ls3Var.f27360p;
        if (j != Long.MIN_VALUE && ((mo5997d == -4 && c5861i4.f24960e >= j) || (mo5997d == -3 && ls3Var.mo4967f() == Long.MIN_VALUE && !c5861i4.f24959d))) {
            c5861i4.mo4041a();
            c5861i4.m7887f(4);
            this.f32363b = true;
            return -4;
        }
        return mo5997d;
    }
}
