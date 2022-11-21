package p168r4;
/* renamed from: r4.qs3 */
/* loaded from: classes2.dex */
public final class qs3 implements xu3 {

    /* renamed from: a */
    public final xu3[] f30309a;

    public qs3(xu3[] xu3VarArr) {
        this.f30309a = xu3VarArr;
    }

    @Override // p168r4.xu3
    /* renamed from: a */
    public final void mo4969a(long j) {
        for (xu3 xu3Var : this.f30309a) {
            xu3Var.mo4969a(j);
        }
    }

    @Override // p168r4.xu3
    /* renamed from: c */
    public final boolean mo4968c(long j) {
        xu3[] xu3VarArr;
        boolean z;
        boolean z2;
        boolean z3 = false;
        do {
            long mo4966i = mo4966i();
            if (mo4966i == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (xu3 xu3Var : this.f30309a) {
                long mo4966i2 = xu3Var.mo4966i();
                if (mo4966i2 != Long.MIN_VALUE && mo4966i2 <= j) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (mo4966i2 == mo4966i || z2) {
                    z |= xu3Var.mo4968c(j);
                }
            }
            z3 |= z;
        } while (z);
        return z3;
    }

    @Override // p168r4.xu3
    /* renamed from: f */
    public final long mo4967f() {
        long j = Long.MAX_VALUE;
        for (xu3 xu3Var : this.f30309a) {
            long mo4967f = xu3Var.mo4967f();
            if (mo4967f != Long.MIN_VALUE) {
                j = Math.min(j, mo4967f);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // p168r4.xu3
    /* renamed from: i */
    public final long mo4966i() {
        long j = Long.MAX_VALUE;
        for (xu3 xu3Var : this.f30309a) {
            long mo4966i = xu3Var.mo4966i();
            if (mo4966i != Long.MIN_VALUE) {
                j = Math.min(j, mo4966i);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // p168r4.xu3
    /* renamed from: l */
    public final boolean mo4965l() {
        for (xu3 xu3Var : this.f30309a) {
            if (xu3Var.mo4965l()) {
                return true;
            }
        }
        return false;
    }
}
