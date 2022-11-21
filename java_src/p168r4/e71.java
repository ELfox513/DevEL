package p168r4;

import android.content.Context;
/* renamed from: r4.e71 */
/* loaded from: classes2.dex */
public final class e71 implements vr3<ej0> {

    /* renamed from: a */
    public final d71 f22881a;

    /* renamed from: b */
    public final is3<Context> f22882b;

    /* renamed from: c */
    public final is3<im0> f22883c;

    /* renamed from: d */
    public final is3<no2> f22884d;

    /* renamed from: e */
    public final is3<aj0> f22885e;

    public e71(d71 d71Var, is3<Context> is3Var, is3<im0> is3Var2, is3<no2> is3Var3, is3<aj0> is3Var4) {
        this.f22881a = d71Var;
        this.f22882b = is3Var;
        this.f22883c = is3Var2;
        this.f22884d = is3Var3;
        this.f22885e = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Context mo4079a = this.f22882b.mo4079a();
        im0 m8207b = ((pu0) this.f22883c).m8207b();
        no2 m4921b = ((y31) this.f22884d).m4921b();
        aj0 aj0Var = new aj0();
        bj0 bj0Var = m4921b.f28378A;
        if (bj0Var != null) {
            return new yi0(mo4079a, m8207b, bj0Var, m4921b.f28432s.f32343b, aj0Var, null);
        }
        return null;
    }
}
