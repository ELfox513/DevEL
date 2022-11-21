package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.n14 */
/* loaded from: classes2.dex */
public final class n14 implements qz3 {

    /* renamed from: a */
    public final n04 f28094a;

    /* renamed from: b */
    public final int f28095b;

    /* renamed from: c */
    public final h04 f28096c = new h04();

    public /* synthetic */ n14(n04 n04Var, int i, o14 o14Var) {
        this.f28094a = n04Var;
        this.f28095b = i;
    }

    @Override // p168r4.qz3
    /* renamed from: a */
    public final void mo7637a() {
    }

    /* renamed from: c */
    public final long m9204c(b04 b04Var) {
        while (b04Var.mo5958l() < b04Var.mo5953q() - 6) {
            n04 n04Var = this.f28094a;
            int i = this.f28095b;
            h04 h04Var = this.f28096c;
            long mo5958l = b04Var.mo5958l();
            byte[] bArr = new byte[2];
            vz3 vz3Var = (vz3) b04Var;
            vz3Var.mo5960i(bArr, 0, 2, false);
            if ((((bArr[0] & DefaultClassResolver.NAME) << 8) | (bArr[1] & DefaultClassResolver.NAME)) != i) {
                b04Var.mo5959k();
                vz3Var.m5955o((int) (mo5958l - b04Var.mo5954p()), false);
            } else {
                C6423xb c6423xb = new C6423xb(16);
                System.arraycopy(bArr, 0, c6423xb.m5402q(), 0, 2);
                c6423xb.m5405n(e04.m11888b(b04Var, c6423xb.m5402q(), 2, 14));
                b04Var.mo5959k();
                vz3Var.m5955o((int) (mo5958l - b04Var.mo5954p()), false);
                if (i04.m10750a(c6423xb, n04Var, i, h04Var)) {
                    break;
                }
            }
            vz3Var.m5955o(1, false);
        }
        if (b04Var.mo5958l() >= b04Var.mo5953q() - 6) {
            ((vz3) b04Var).m5955o((int) (b04Var.mo5953q() - b04Var.mo5958l()), false);
            return this.f28094a.f28069j;
        }
        return this.f28096c.f24391a;
    }

    @Override // p168r4.qz3
    /* renamed from: b */
    public final pz3 mo7636b(b04 b04Var, long j) {
        long mo5954p = b04Var.mo5954p();
        long m9204c = m9204c(b04Var);
        long mo5958l = b04Var.mo5958l();
        ((vz3) b04Var).m5955o(Math.max(6, this.f28094a.f28062c), false);
        long m9204c2 = m9204c(b04Var);
        long mo5958l2 = b04Var.mo5958l();
        if (m9204c <= j && m9204c2 > j) {
            return pz3.m8087f(mo5958l);
        }
        if (m9204c2 <= j) {
            return pz3.m8088e(m9204c2, mo5958l2);
        }
        return pz3.m8089d(m9204c, mo5954p);
    }
}
