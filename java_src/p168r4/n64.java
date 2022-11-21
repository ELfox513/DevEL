package p168r4;
/* renamed from: r4.n64 */
/* loaded from: classes2.dex */
public final class n64 implements a74 {

    /* renamed from: a */
    public final m64 f28181a;

    /* renamed from: b */
    public final C6423xb f28182b = new C6423xb(32);

    /* renamed from: c */
    public int f28183c;

    /* renamed from: d */
    public int f28184d;

    /* renamed from: e */
    public boolean f28185e;

    /* renamed from: f */
    public boolean f28186f;

    public n64(m64 m64Var) {
        this.f28181a = m64Var;
    }

    @Override // p168r4.a74
    /* renamed from: a */
    public final void mo9145a() {
        this.f28186f = true;
    }

    @Override // p168r4.a74
    /* renamed from: b */
    public final void mo9144b(C5758fc c5758fc, d04 d04Var, z64 z64Var) {
        this.f28181a.mo6603b(c5758fc, d04Var, z64Var);
        this.f28186f = true;
    }

    @Override // p168r4.a74
    /* renamed from: c */
    public final void mo9143c(C6423xb c6423xb, int i) {
        int i2;
        boolean z;
        int i3 = i & 1;
        if (i3 != 0) {
            i2 = c6423xb.m5404o() + c6423xb.m5397v();
        } else {
            i2 = -1;
        }
        if (this.f28186f) {
            if (i3 == 0) {
                return;
            }
            this.f28186f = false;
            c6423xb.m5403p(i2);
            this.f28184d = 0;
        }
        while (c6423xb.m5407l() > 0) {
            int i4 = this.f28184d;
            if (i4 < 3) {
                if (i4 == 0) {
                    int m5397v = c6423xb.m5397v();
                    c6423xb.m5403p(c6423xb.m5404o() - 1);
                    if (m5397v == 255) {
                        this.f28186f = true;
                        return;
                    }
                }
                int min = Math.min(c6423xb.m5407l(), 3 - this.f28184d);
                c6423xb.m5398u(this.f28182b.m5402q(), this.f28184d, min);
                int i5 = this.f28184d + min;
                this.f28184d = i5;
                if (i5 == 3) {
                    this.f28182b.m5403p(0);
                    this.f28182b.m5405n(3);
                    this.f28182b.m5400s(1);
                    int m5397v2 = this.f28182b.m5397v();
                    int m5397v3 = this.f28182b.m5397v();
                    if ((m5397v2 & 128) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.f28185e = z;
                    this.f28183c = (((m5397v2 & 15) << 8) | m5397v3) + 3;
                    int m5401r = this.f28182b.m5401r();
                    int i6 = this.f28183c;
                    if (m5401r < i6) {
                        int m5401r2 = this.f28182b.m5401r();
                        this.f28182b.m5408k(Math.min(4098, Math.max(i6, m5401r2 + m5401r2)));
                    }
                }
            } else {
                int min2 = Math.min(c6423xb.m5407l(), this.f28183c - this.f28184d);
                c6423xb.m5398u(this.f28182b.m5402q(), this.f28184d, min2);
                int i7 = this.f28184d + min2;
                this.f28184d = i7;
                int i8 = this.f28183c;
                if (i7 != i8) {
                    continue;
                } else {
                    if (this.f28185e) {
                        if (C5979lc.m9684v(this.f28182b.m5402q(), 0, this.f28183c, -1) != 0) {
                            this.f28186f = true;
                            return;
                        }
                        this.f28182b.m5405n(this.f28183c - 4);
                    } else {
                        this.f28182b.m5405n(i8);
                    }
                    this.f28182b.m5403p(0);
                    this.f28181a.mo6602c(this.f28182b);
                    this.f28184d = 0;
                }
            }
        }
    }
}
