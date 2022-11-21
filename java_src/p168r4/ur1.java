package p168r4;

import java.util.Map;
/* renamed from: r4.ur1 */
/* loaded from: classes2.dex */
public final class ur1 implements vr3<tr1> {

    /* renamed from: a */
    public final is3<C5882ip> f32356a;

    /* renamed from: b */
    public final is3<Map<gt2, sr1>> f32357b;

    public ur1(is3<C5882ip> is3Var, is3<Map<gt2, sr1>> is3Var2) {
        this.f32356a = is3Var;
        this.f32357b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final tr1 mo4079a() {
        return new tr1(this.f32356a.mo4079a(), ((zr3) this.f32357b).mo4079a());
    }
}
