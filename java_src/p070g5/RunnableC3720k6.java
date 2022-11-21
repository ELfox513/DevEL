package p070g5;
/* renamed from: g5.k6 */
/* loaded from: classes2.dex */
public final class RunnableC3720k6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f16683a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f16684b;

    public RunnableC3720k6(C3697i7 c3697i7, boolean z) {
        this.f16684b = c3697i7;
        this.f16683a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean m18524j = this.f16684b.f17008a.m18524j();
        boolean m18525i = this.f16684b.f17008a.m18525i();
        this.f16684b.f17008a.m18528f(this.f16683a);
        if (m18525i == this.f16683a) {
            this.f16684b.f17008a.mo17858F().m18014q().m18041b("Default data collection state already set to", Boolean.valueOf(this.f16683a));
        }
        if (this.f16684b.f17008a.m18524j() == m18524j || this.f16684b.f17008a.m18524j() != this.f16684b.f17008a.m18525i()) {
            this.f16684b.f17008a.mo17858F().m18012s().m18040c("Default data collection is different than actual status", Boolean.valueOf(this.f16683a), Boolean.valueOf(m18524j));
        }
        this.f16684b.m18239R();
    }
}
