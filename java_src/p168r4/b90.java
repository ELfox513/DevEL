package p168r4;

import java.util.Map;
import p016b3.C0488i1;
/* renamed from: r4.b90 */
/* loaded from: classes2.dex */
public final class b90 implements u50<q90> {

    /* renamed from: a */
    public final /* synthetic */ j80 f20919a;

    /* renamed from: b */
    public final /* synthetic */ C0488i1 f20920b;

    /* renamed from: c */
    public final /* synthetic */ p90 f20921c;

    public b90(p90 p90Var, C6300u c6300u, j80 j80Var, C0488i1 c0488i1) {
        this.f20921c = p90Var;
        this.f20919a = j80Var;
        this.f20920b = c0488i1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, r4.u50] */
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(q90 q90Var, Map map) {
        Object obj;
        int i;
        obj = this.f20921c.f29389a;
        synchronized (obj) {
            cm0.m12438e("JS Engine is requesting an update");
            i = this.f20921c.f29396h;
            if (i == 0) {
                cm0.m12438e("Starting reload.");
                this.f20921c.f29396h = 2;
                this.f20921c.m8441f(null);
            }
            this.f20919a.mo7572U("/requestReload", this.f20920b.m26363a());
        }
    }
}
