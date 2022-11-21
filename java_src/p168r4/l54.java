package p168r4;

import java.util.Collections;
import java.util.List;
/* renamed from: r4.l54 */
/* loaded from: classes2.dex */
public final class l54 implements m54 {

    /* renamed from: a */
    public final List<w64> f27099a;

    /* renamed from: b */
    public final d14[] f27100b;

    /* renamed from: c */
    public boolean f27101c;

    /* renamed from: d */
    public int f27102d;

    /* renamed from: e */
    public int f27103e;

    /* renamed from: f */
    public long f27104f = -9223372036854775807L;

    public l54(List<w64> list) {
        this.f27099a = list;
        this.f27100b = new d14[list.size()];
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        for (int i = 0; i < this.f27100b.length; i++) {
            w64 w64Var = this.f27099a.get(i);
            z64Var.m4416a();
            d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 3);
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12579d(z64Var.m4414c());
            c5639c5.m12564n("application/dvbsubs");
            c5639c5.m12562p(Collections.singletonList(w64Var.f33127b));
            c5639c5.m12573g(w64Var.f33126a);
            mo10795r.mo4004f(c5639c5.m12603I());
            this.f27100b[i] = mo10795r;
        }
    }

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f27101c = true;
        if (j != -9223372036854775807L) {
            this.f27104f = j;
        }
        this.f27103e = 0;
        this.f27102d = 2;
    }

    /* renamed from: e */
    public final boolean m9789e(C6423xb c6423xb, int i) {
        if (c6423xb.m5407l() == 0) {
            return false;
        }
        if (c6423xb.m5397v() != i) {
            this.f27101c = false;
        }
        this.f27102d--;
        return this.f27101c;
    }

    @Override // p168r4.m54
    public final void zza() {
        this.f27101c = false;
        this.f27104f = -9223372036854775807L;
    }

    @Override // p168r4.m54
    /* renamed from: b */
    public final void mo4424b(C6423xb c6423xb) {
        d14[] d14VarArr;
        if (this.f27101c) {
            if (this.f27102d == 2 && !m9789e(c6423xb, 32)) {
                return;
            }
            if (this.f27102d == 1 && !m9789e(c6423xb, 0)) {
                return;
            }
            int m5404o = c6423xb.m5404o();
            int m5407l = c6423xb.m5407l();
            for (d14 d14Var : this.f27100b) {
                c6423xb.m5403p(m5404o);
                d14Var.mo4009a(c6423xb, m5407l);
            }
            this.f27103e += m5407l;
        }
    }

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
        if (this.f27101c) {
            if (this.f27104f != -9223372036854775807L) {
                for (d14 d14Var : this.f27100b) {
                    d14Var.mo4005e(this.f27104f, 1, this.f27103e, 0, null);
                }
            }
            this.f27101c = false;
        }
    }
}
