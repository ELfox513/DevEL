package p168r4;
/* renamed from: r4.f84 */
/* loaded from: classes2.dex */
public final class f84 implements Runnable {

    /* renamed from: a */
    public final q84 f23414a;

    /* renamed from: b */
    public final w84 f23415b;

    /* renamed from: d */
    public final Runnable f23416d;

    public f84(q84 q84Var, w84 w84Var, Runnable runnable) {
        this.f23414a = q84Var;
        this.f23415b = w84Var;
        this.f23416d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f23414a.m7953A();
        if (this.f23415b.m5797c()) {
            this.f23414a.mo7947I(this.f23415b.f33139a);
        } else {
            this.f23414a.m7946J(this.f23415b.f33141c);
        }
        if (this.f23415b.f33142d) {
            this.f23414a.m7938h("intermediate-response");
        } else {
            this.f23414a.m7937j("done");
        }
        Runnable runnable = this.f23416d;
        if (runnable != null) {
            runnable.run();
        }
    }
}
