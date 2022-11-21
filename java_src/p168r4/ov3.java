package p168r4;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
/* renamed from: r4.ov3 */
/* loaded from: classes2.dex */
public final class ov3 extends n84 {

    /* renamed from: N */
    public static final ov3 f29164N;
    @Deprecated

    /* renamed from: O */
    public static final ov3 f29165O;

    /* renamed from: P */
    public static final InterfaceC5674d3<ov3> f29166P;

    /* renamed from: A */
    public final int f29167A;

    /* renamed from: B */
    public final boolean f29168B;

    /* renamed from: C */
    public final boolean f29169C;

    /* renamed from: D */
    public final boolean f29170D;

    /* renamed from: E */
    public final boolean f29171E;

    /* renamed from: F */
    public final boolean f29172F;

    /* renamed from: G */
    public final boolean f29173G;

    /* renamed from: H */
    public final boolean f29174H;

    /* renamed from: I */
    public final boolean f29175I;

    /* renamed from: J */
    public final boolean f29176J;

    /* renamed from: K */
    public final boolean f29177K;

    /* renamed from: L */
    public final SparseArray<Map<j44, rv3>> f29178L;

    /* renamed from: M */
    public final SparseBooleanArray f29179M;

    public ov3(pv3 pv3Var) {
        super(pv3Var);
        this.f29168B = pv3.m8114l(pv3Var);
        this.f29169C = false;
        this.f29170D = pv3.m8113m(pv3Var);
        this.f29171E = pv3.m8112n(pv3Var);
        this.f29172F = false;
        this.f29173G = false;
        this.f29174H = false;
        this.f29167A = 0;
        this.f29175I = pv3.m8111o(pv3Var);
        this.f29176J = false;
        this.f29177K = pv3.m8110p(pv3Var);
        this.f29178L = pv3.m8109q(pv3Var);
        this.f29179M = pv3.m8108r(pv3Var);
    }

    /* renamed from: d */
    public final boolean m8654d(int i) {
        return this.f29179M.get(i);
    }

    @Override // p168r4.n84
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ov3.class == obj.getClass()) {
            ov3 ov3Var = (ov3) obj;
            if (super.equals(ov3Var) && this.f29168B == ov3Var.f29168B && this.f29170D == ov3Var.f29170D && this.f29171E == ov3Var.f29171E && this.f29175I == ov3Var.f29175I && this.f29177K == ov3Var.f29177K) {
                SparseBooleanArray sparseBooleanArray = this.f29179M;
                SparseBooleanArray sparseBooleanArray2 = ov3Var.f29179M;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i = 0;
                    while (true) {
                        if (i < size) {
                            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                                break;
                            }
                            i++;
                        } else {
                            SparseArray<Map<j44, rv3>> sparseArray = this.f29178L;
                            SparseArray<Map<j44, rv3>> sparseArray2 = ov3Var.f29178L;
                            int size2 = sparseArray.size();
                            if (sparseArray2.size() == size2) {
                                for (int i2 = 0; i2 < size2; i2++) {
                                    int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                                    if (indexOfKey >= 0) {
                                        Map<j44, rv3> valueAt = sparseArray.valueAt(i2);
                                        Map<j44, rv3> valueAt2 = sparseArray2.valueAt(indexOfKey);
                                        if (valueAt2.size() == valueAt.size()) {
                                            for (Map.Entry<j44, rv3> entry : valueAt.entrySet()) {
                                                j44 key = entry.getKey();
                                                if (valueAt2.containsKey(key)) {
                                                    if (!C5979lc.m9729H(entry.getValue(), valueAt2.get(key))) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: g */
    public final pv3 m8651g() {
        return new pv3(this, null);
    }

    @Override // p168r4.n84
    public final int hashCode() {
        return ((((((((((super.hashCode() + 31) * 31) + (this.f29168B ? 1 : 0)) * 961) + (this.f29170D ? 1 : 0)) * 31) + (this.f29171E ? 1 : 0)) * 28629151) + (this.f29175I ? 1 : 0)) * 961) + (this.f29177K ? 1 : 0);
    }

    static {
        ov3 ov3Var = new ov3(new pv3());
        f29164N = ov3Var;
        f29165O = ov3Var;
        f29166P = nv3.f28612a;
    }

    /* renamed from: c */
    public static ov3 m8655c(Context context) {
        return new ov3(new pv3(context));
    }

    /* renamed from: e */
    public final boolean m8653e(int i, j44 j44Var) {
        Map<j44, rv3> map = this.f29178L.get(i);
        if (map != null && map.containsKey(j44Var)) {
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public final rv3 m8652f(int i, j44 j44Var) {
        Map<j44, rv3> map = this.f29178L.get(i);
        if (map != null) {
            return map.get(j44Var);
        }
        return null;
    }
}
