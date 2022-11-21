package p070g5;
/* renamed from: g5.d7 */
/* loaded from: classes2.dex */
public final class RunnableC3637d7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3677h f16432a;

    /* renamed from: b */
    public final /* synthetic */ int f16433b;

    /* renamed from: d */
    public final /* synthetic */ long f16434d;

    /* renamed from: k */
    public final /* synthetic */ boolean f16435k;

    /* renamed from: p */
    public final /* synthetic */ C3697i7 f16436p;

    public RunnableC3637d7(C3697i7 c3697i7, C3677h c3677h, int i, long j, boolean z) {
        this.f16436p = c3697i7;
        this.f16432a = c3677h;
        this.f16433b = i;
        this.f16434d = j;
        this.f16435k = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16436p.m18246H(this.f16432a);
        C3697i7.m18227d0(this.f16436p, this.f16432a, this.f16433b, this.f16434d, false, this.f16435k);
    }
}
