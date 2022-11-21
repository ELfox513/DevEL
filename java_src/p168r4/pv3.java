package p168r4;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.pv3 */
/* loaded from: classes2.dex */
public final class pv3 extends m74 {

    /* renamed from: j */
    public boolean f29828j;

    /* renamed from: k */
    public boolean f29829k;

    /* renamed from: l */
    public boolean f29830l;

    /* renamed from: m */
    public boolean f29831m;

    /* renamed from: n */
    public boolean f29832n;

    /* renamed from: o */
    public final SparseArray<Map<j44, rv3>> f29833o;

    /* renamed from: p */
    public final SparseBooleanArray f29834p;

    @Deprecated
    public pv3() {
        this.f29833o = new SparseArray<>();
        this.f29834p = new SparseBooleanArray();
        m8106t();
    }

    /* renamed from: l */
    public static /* synthetic */ boolean m8114l(pv3 pv3Var) {
        return pv3Var.f29828j;
    }

    /* renamed from: m */
    public static /* synthetic */ boolean m8113m(pv3 pv3Var) {
        return pv3Var.f29829k;
    }

    /* renamed from: n */
    public static /* synthetic */ boolean m8112n(pv3 pv3Var) {
        return pv3Var.f29830l;
    }

    /* renamed from: o */
    public static /* synthetic */ boolean m8111o(pv3 pv3Var) {
        return pv3Var.f29831m;
    }

    /* renamed from: p */
    public static /* synthetic */ boolean m8110p(pv3 pv3Var) {
        return pv3Var.f29832n;
    }

    /* renamed from: q */
    public static /* synthetic */ SparseArray m8109q(pv3 pv3Var) {
        return pv3Var.f29833o;
    }

    /* renamed from: r */
    public static /* synthetic */ SparseBooleanArray m8108r(pv3 pv3Var) {
        return pv3Var.f29834p;
    }

    @Override // p168r4.m74
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ m74 mo8115j(int i, int i2, boolean z) {
        super.mo8115j(i, i2, true);
        return this;
    }

    /* renamed from: t */
    public final void m8106t() {
        this.f29828j = true;
        this.f29829k = true;
        this.f29830l = true;
        this.f29831m = true;
        this.f29832n = true;
    }

    /* renamed from: s */
    public final pv3 m8107s(int i, boolean z) {
        if (this.f29834p.get(i) == z) {
            return this;
        }
        if (z) {
            this.f29834p.put(i, true);
        } else {
            this.f29834p.delete(i);
        }
        return this;
    }

    public pv3(Context context) {
        super.m9459k(context);
        Point m9735B = C5979lc.m9735B(context);
        mo8115j(m9735B.x, m9735B.y, true);
        this.f29833o = new SparseArray<>();
        this.f29834p = new SparseBooleanArray();
        m8106t();
    }

    public /* synthetic */ pv3(ov3 ov3Var, lv3 lv3Var) {
        super(ov3Var);
        SparseArray sparseArray;
        SparseBooleanArray sparseBooleanArray;
        this.f29828j = ov3Var.f29168B;
        this.f29829k = ov3Var.f29170D;
        this.f29830l = ov3Var.f29171E;
        this.f29831m = ov3Var.f29175I;
        this.f29832n = ov3Var.f29177K;
        sparseArray = ov3Var.f29178L;
        SparseArray<Map<j44, rv3>> sparseArray2 = new SparseArray<>();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
        }
        this.f29833o = sparseArray2;
        sparseBooleanArray = ov3Var.f29179M;
        this.f29834p = sparseBooleanArray.clone();
    }
}
