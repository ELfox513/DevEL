package p168r4;

import java.util.Map;
/* renamed from: r4.xx0 */
/* loaded from: classes2.dex */
public final class xx0 implements vr3<wx0> {

    /* renamed from: a */
    public final is3<Map<String, zx0>> f33794a;

    /* renamed from: b */
    public final is3<Map<String, yx0>> f33795b;

    public xx0(is3<Map<String, zx0>> is3Var, is3<Map<String, yx0>> is3Var2) {
        this.f33794a = is3Var;
        this.f33795b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final wx0 mo4079a() {
        return new wx0(((zr3) this.f33794a).mo4079a(), ((zr3) this.f33795b).mo4079a());
    }
}
