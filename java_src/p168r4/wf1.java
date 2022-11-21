package p168r4;
/* renamed from: r4.wf1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class wf1 implements Runnable {

    /* renamed from: a */
    public final cs0 f33183a;

    public wf1(cs0 cs0Var) {
        this.f33183a = cs0Var;
    }

    /* renamed from: a */
    public static Runnable m5738a(cs0 cs0Var) {
        return new wf1(cs0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33183a.destroy();
    }
}
