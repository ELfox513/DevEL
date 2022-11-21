package p070g5;
/* renamed from: g5.b7 */
/* loaded from: classes2.dex */
public final class RunnableC3613b7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3677h f16271a;

    /* renamed from: b */
    public final /* synthetic */ long f16272b;

    /* renamed from: d */
    public final /* synthetic */ int f16273d;

    /* renamed from: k */
    public final /* synthetic */ long f16274k;

    /* renamed from: p */
    public final /* synthetic */ boolean f16275p;

    /* renamed from: q */
    public final /* synthetic */ C3697i7 f16276q;

    public RunnableC3613b7(C3697i7 c3697i7, C3677h c3677h, long j, int i, long j2, boolean z) {
        this.f16276q = c3697i7;
        this.f16271a = c3677h;
        this.f16272b = j;
        this.f16273d = i;
        this.f16274k = j2;
        this.f16275p = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16276q.m18246H(this.f16271a);
        this.f16276q.m18211u(this.f16272b, false);
        C3697i7.m18227d0(this.f16276q, this.f16271a, this.f16273d, this.f16274k, true, this.f16275p);
    }
}
