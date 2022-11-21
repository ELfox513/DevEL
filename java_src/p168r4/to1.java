package p168r4;
/* renamed from: r4.to1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class to1 implements Runnable {

    /* renamed from: a */
    public final cs0 f31938a;

    public to1(cs0 cs0Var) {
        this.f31938a = cs0Var;
    }

    /* renamed from: a */
    public static Runnable m6768a(cs0 cs0Var) {
        return new to1(cs0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31938a.destroy();
    }
}
