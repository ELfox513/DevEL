package p168r4;

import android.util.SparseArray;
/* renamed from: r4.t64 */
/* loaded from: classes2.dex */
public final class t64 implements m64 {

    /* renamed from: a */
    public final C6386wb f31722a = new C6386wb(new byte[4], 4);

    /* renamed from: b */
    public final /* synthetic */ v64 f31723b;

    public t64(v64 v64Var) {
        this.f31723b = v64Var;
    }

    @Override // p168r4.m64
    /* renamed from: b */
    public final void mo6603b(C5758fc c5758fc, d04 d04Var, z64 z64Var) {
    }

    @Override // p168r4.m64
    /* renamed from: c */
    public final void mo6602c(C6423xb c6423xb) {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int i;
        if (c6423xb.m5397v() != 0 || (c6423xb.m5397v() & 128) == 0) {
            return;
        }
        c6423xb.m5400s(6);
        int m5407l = c6423xb.m5407l() / 4;
        for (int i2 = 0; i2 < m5407l; i2++) {
            c6423xb.m5399t(this.f31722a, 4);
            int m5785h = this.f31722a.m5785h(16);
            this.f31722a.m5787f(3);
            if (m5785h == 0) {
                this.f31722a.m5787f(13);
            } else {
                int m5785h2 = this.f31722a.m5785h(13);
                sparseArray2 = this.f31723b.f32626e;
                if (sparseArray2.get(m5785h2) == null) {
                    sparseArray3 = this.f31723b.f32626e;
                    sparseArray3.put(m5785h2, new n64(new u64(this.f31723b, m5785h2)));
                    v64 v64Var = this.f31723b;
                    i = v64Var.f32632k;
                    v64Var.f32632k = i + 1;
                }
            }
        }
        sparseArray = this.f31723b.f32626e;
        sparseArray.remove(0);
    }
}
