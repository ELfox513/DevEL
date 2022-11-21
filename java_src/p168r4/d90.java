package p168r4;

import p016b3.C0543w1;
/* renamed from: r4.d90 */
/* loaded from: classes2.dex */
public final class d90 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ o90 f22179a;

    /* renamed from: b */
    public final /* synthetic */ j80 f22180b;

    /* renamed from: d */
    public final /* synthetic */ p90 f22181d;

    public d90(p90 p90Var, o90 o90Var, j80 j80Var) {
        this.f22181d = p90Var;
        this.f22179a = o90Var;
        this.f22180b = j80Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.f22181d.f29389a;
        synchronized (obj) {
            if (this.f22179a.m12408e() != -1 && this.f22179a.m12408e() != 1) {
                this.f22179a.m12409d();
                qm0.f30194e.execute(c90.m12508a(this.f22180b));
                C0543w1.m26251k("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
