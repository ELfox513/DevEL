package p168r4;
/* renamed from: r4.j90 */
/* loaded from: classes2.dex */
public final class j90 extends cn0<q90> {

    /* renamed from: c */
    public final Object f25960c = new Object();

    /* renamed from: d */
    public final o90 f25961d;

    /* renamed from: e */
    public boolean f25962e;

    public j90(o90 o90Var) {
        this.f25961d = o90Var;
    }

    /* renamed from: g */
    public final void m10378g() {
        synchronized (this.f25960c) {
            if (this.f25962e) {
                return;
            }
            this.f25962e = true;
            m12411b(new g90(this), new ym0());
            m12411b(new h90(this), new i90(this));
        }
    }
}
