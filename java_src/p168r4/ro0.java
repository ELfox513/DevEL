package p168r4;

import p016b3.C0497k2;
/* renamed from: r4.ro0 */
/* loaded from: classes2.dex */
public final class ro0 implements Runnable {

    /* renamed from: a */
    public final co0 f30638a;

    /* renamed from: b */
    public boolean f30639b = false;

    public ro0(co0 co0Var) {
        this.f30638a = co0Var;
    }

    /* renamed from: a */
    public final void m7418a() {
        this.f30639b = true;
        this.f30638a.m12392o();
    }

    /* renamed from: b */
    public final void m7417b() {
        this.f30639b = false;
        m7416c();
    }

    /* renamed from: c */
    public final void m7416c() {
        c03 c03Var = C0497k2.f1630i;
        c03Var.removeCallbacks(this);
        c03Var.postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f30639b) {
            this.f30638a.m12392o();
            m7416c();
        }
    }
}
