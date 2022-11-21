package p168r4;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import p016b3.C0543w1;
/* renamed from: r4.sl2 */
/* loaded from: classes.dex */
public final class sl2 implements p03<yx1, vl2> {

    /* renamed from: a */
    public final /* synthetic */ wl2 f31405a;

    public sl2(wl2 wl2Var) {
        this.f31405a = wl2Var;
    }

    @Override // p168r4.p03
    @NullableDecl
    public final /* bridge */ /* synthetic */ vl2 apply(@NullableDecl yx1 yx1Var) {
        er2 m5678e;
        vl2 vl2Var;
        cm0.m12439d("", yx1Var);
        C0543w1.m26251k("Failed to get a cache key, reverting to legacy flow.");
        wl2 wl2Var = this.f31405a;
        m5678e = wl2Var.m5678e();
        wl2Var.f33253d = new vl2(null, m5678e, null);
        vl2Var = this.f31405a.f33253d;
        return vl2Var;
    }
}
