package p168r4;

import java.util.Map;
import p016b3.C0543w1;
/* renamed from: r4.a90 */
/* loaded from: classes2.dex */
public final class a90 implements u50<q90> {

    /* renamed from: a */
    public final /* synthetic */ o90 f20420a;

    /* renamed from: b */
    public final /* synthetic */ j80 f20421b;

    /* renamed from: c */
    public final /* synthetic */ p90 f20422c;

    public a90(p90 p90Var, o90 o90Var, j80 j80Var) {
        this.f20422c = p90Var;
        this.f20420a = o90Var;
        this.f20421b = j80Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(q90 q90Var, Map map) {
        Object obj;
        obj = this.f20422c.f29389a;
        synchronized (obj) {
            if (this.f20420a.m12408e() != -1 && this.f20420a.m12408e() != 1) {
                this.f20422c.f29396h = 0;
                j80 j80Var = this.f20421b;
                j80Var.mo7573A0("/log", t50.f31695g);
                j80Var.mo7573A0("/result", t50.f31703o);
                this.f20420a.m12410c(this.f20421b);
                this.f20422c.f29395g = this.f20420a;
                C0543w1.m26251k("Successfully loaded JS Engine.");
            }
        }
    }
}
