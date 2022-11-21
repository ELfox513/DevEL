package p168r4;

import p016b3.C0543w1;
/* renamed from: r4.f90 */
/* loaded from: classes2.dex */
public final class f90 implements xm0 {

    /* renamed from: a */
    public final /* synthetic */ o90 f23420a;

    /* renamed from: b */
    public final /* synthetic */ p90 f23421b;

    public f90(p90 p90Var, o90 o90Var) {
        this.f23421b = p90Var;
        this.f23420a = o90Var;
    }

    @Override // p168r4.xm0
    public final void zza() {
        Object obj;
        obj = this.f23421b.f29389a;
        synchronized (obj) {
            this.f23421b.f29396h = 1;
            C0543w1.m26251k("Failed loading new engine. Marking new engine destroyable.");
            this.f23420a.m8863h();
        }
    }
}
