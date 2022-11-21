package p168r4;
/* renamed from: r4.o44 */
/* loaded from: classes2.dex */
public final class o44 implements a04 {

    /* renamed from: d */
    public static final g04 f28850d = n44.f28154a;

    /* renamed from: a */
    public d04 f28851a;

    /* renamed from: b */
    public w44 f28852b;

    /* renamed from: c */
    public boolean f28853c;

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        try {
            return m8889a(b04Var);
        } catch (C5973l6 unused) {
            return false;
        }
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f28851a = d04Var;
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        w44 w44Var = this.f28852b;
        if (w44Var != null) {
            w44Var.m5876e(j, j2);
        }
    }

    /* renamed from: a */
    public final boolean m8889a(b04 b04Var) {
        q44 q44Var = new q44();
        if (q44Var.m8026c(b04Var, true) && (q44Var.f29971a & 2) == 2) {
            int min = Math.min(q44Var.f29975e, 8);
            C6423xb c6423xb = new C6423xb(min);
            ((vz3) b04Var).mo5960i(c6423xb.m5402q(), 0, min, false);
            c6423xb.m5403p(0);
            if (c6423xb.m5407l() >= 5 && c6423xb.m5397v() == 127 && c6423xb.m5425B() == 1179402563) {
                this.f28852b = new m44();
            } else {
                c6423xb.m5403p(0);
                try {
                    if (j14.m10436c(1, c6423xb, true)) {
                        this.f28852b = new y44();
                    }
                } catch (C5973l6 unused) {
                }
                c6423xb.m5403p(0);
                if (s44.m7207j(c6423xb)) {
                    this.f28852b = new s44();
                }
            }
            return true;
        }
        return false;
    }

    @Override // p168r4.a04
    /* renamed from: f */
    public final int mo4474f(b04 b04Var, w04 w04Var) {
        C5903ja.m10370e(this.f28851a);
        if (this.f28852b == null) {
            if (m8889a(b04Var)) {
                b04Var.mo5959k();
            } else {
                throw C5973l6.m9787b("Failed to determine bitstream type", null);
            }
        }
        if (!this.f28853c) {
            d14 mo10795r = this.f28851a.mo10795r(0, 1);
            this.f28851a.mo10788y();
            this.f28852b.m5877d(this.f28851a, mo10795r);
            this.f28853c = true;
        }
        return this.f28852b.m5875f(b04Var, w04Var);
    }
}
