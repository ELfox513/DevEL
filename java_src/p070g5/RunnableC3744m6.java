package p070g5;
/* renamed from: g5.m6 */
/* loaded from: classes2.dex */
public final class RunnableC3744m6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f16727a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f16728b;

    public RunnableC3744m6(C3697i7 c3697i7, long j) {
        this.f16728b = c3697i7;
        this.f16727a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16728b.f17008a.m18546A().f16504k.m18547b(this.f16727a);
        this.f16728b.f17008a.mo17858F().m18019l().m18041b("Session timeout duration set", Long.valueOf(this.f16727a));
    }
}
