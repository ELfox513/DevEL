package p168r4;
/* renamed from: r4.qs0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class qs0 implements Runnable {

    /* renamed from: a */
    public final cs0 f30307a;

    public qs0(cs0 cs0Var) {
        this.f30307a = cs0Var;
    }

    /* renamed from: a */
    public static Runnable m7682a(cs0 cs0Var) {
        return new qs0(cs0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f30307a.destroy();
    }
}
