package p070g5;
/* renamed from: g5.c7 */
/* loaded from: classes2.dex */
public final class RunnableC3625c7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3677h f16410a;

    /* renamed from: b */
    public final /* synthetic */ int f16411b;

    /* renamed from: d */
    public final /* synthetic */ long f16412d;

    /* renamed from: k */
    public final /* synthetic */ boolean f16413k;

    /* renamed from: p */
    public final /* synthetic */ C3697i7 f16414p;

    public RunnableC3625c7(C3697i7 c3697i7, C3677h c3677h, int i, long j, boolean z) {
        this.f16414p = c3697i7;
        this.f16410a = c3677h;
        this.f16411b = i;
        this.f16412d = j;
        this.f16413k = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16414p.m18246H(this.f16410a);
        C3697i7.m18227d0(this.f16414p, this.f16410a, this.f16411b, this.f16412d, false, this.f16413k);
    }
}
