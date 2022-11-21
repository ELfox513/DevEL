package p070g5;
/* renamed from: g5.m */
/* loaded from: classes2.dex */
public final class RunnableC3737m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC3875x5 f16719a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC3749n f16720b;

    public RunnableC3737m(AbstractC3749n abstractC3749n, InterfaceC3875x5 interfaceC3875x5) {
        this.f16720b = abstractC3749n;
        this.f16719a = interfaceC3875x5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16719a.mo17857G();
        if (C3605b.m18551a()) {
            this.f16719a.mo17855P().m17826u(this);
            return;
        }
        boolean m18054e = this.f16720b.m18054e();
        this.f16720b.f16744c = 0L;
        if (m18054e) {
            this.f16720b.mo18035c();
        }
    }
}
