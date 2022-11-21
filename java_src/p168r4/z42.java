package p168r4;

import android.os.Bundle;
import android.view.ViewGroup;
/* renamed from: r4.z42 */
/* loaded from: classes2.dex */
public final class z42 extends y42<h11> {

    /* renamed from: a */
    public final bu0 f34326a;

    /* renamed from: b */
    public final s61 f34327b;

    /* renamed from: c */
    public final j72 f34328c;

    /* renamed from: d */
    public final bd1 f34329d;

    /* renamed from: e */
    public final mh1 f34330e;

    /* renamed from: f */
    public final aa1 f34331f;

    /* renamed from: g */
    public final ViewGroup f34332g;

    public z42(bu0 bu0Var, s61 s61Var, j72 j72Var, bd1 bd1Var, mh1 mh1Var, aa1 aa1Var, ViewGroup viewGroup) {
        this.f34326a = bu0Var;
        this.f34327b = s61Var;
        this.f34328c = j72Var;
        this.f34329d = bd1Var;
        this.f34330e = mh1Var;
        this.f34331f = aa1Var;
        this.f34332g = viewGroup;
    }

    @Override // p168r4.y42
    /* renamed from: c */
    public final h83<h11> mo4453c(hp2 hp2Var, Bundle bundle) {
        e21 mo8601n = this.f34326a.mo8601n();
        s61 s61Var = this.f34327b;
        s61Var.m7196f(hp2Var);
        s61Var.m7195g(bundle);
        mo8601n.mo8659s(s61Var.m7194h());
        mo8601n.mo8658t(this.f34329d);
        mo8601n.mo8660o(this.f34328c);
        mo8601n.mo8661k(this.f34330e);
        mo8601n.mo8663g(new c31(this.f34331f));
        mo8601n.mo8662h(new e11(this.f34332g));
        m41<h11> mo8154b = mo8601n.zza().mo8154b();
        return mo8154b.m9501d(mo8154b.m9502c());
    }
}
