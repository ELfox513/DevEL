package p168r4;
/* renamed from: r4.bo0 */
/* loaded from: classes2.dex */
public final class bo0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f21130a;

    /* renamed from: b */
    public final /* synthetic */ co0 f21131b;

    public bo0(co0 co0Var, boolean z) {
        this.f21131b = co0Var;
        this.f21130a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f21131b.m12388s("windowVisibilityChanged", "isVisible", String.valueOf(this.f21130a));
    }
}
