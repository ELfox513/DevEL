package p168r4;

import p016b3.C0543w1;
/* renamed from: r4.e90 */
/* loaded from: classes2.dex */
public final class e90 implements zm0<j80> {

    /* renamed from: a */
    public final /* synthetic */ o90 f22912a;

    /* renamed from: b */
    public final /* synthetic */ p90 f22913b;

    public e90(p90 p90Var, o90 o90Var) {
        this.f22913b = p90Var;
        this.f22912a = o90Var;
    }

    @Override // p168r4.zm0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4185a(j80 j80Var) {
        Object obj;
        o90 o90Var;
        o90 o90Var2;
        o90 o90Var3;
        obj = this.f22913b.f29389a;
        synchronized (obj) {
            this.f22913b.f29396h = 0;
            o90Var = this.f22913b.f29395g;
            if (o90Var != null) {
                o90 o90Var4 = this.f22912a;
                o90Var2 = this.f22913b.f29395g;
                if (o90Var4 != o90Var2) {
                    C0543w1.m26251k("New JS engine is loaded, marking previous one as destroyable.");
                    o90Var3 = this.f22913b.f29395g;
                    o90Var3.m8863h();
                }
            }
            this.f22913b.f29395g = this.f22912a;
        }
    }
}
