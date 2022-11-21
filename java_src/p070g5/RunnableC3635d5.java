package p070g5;
/* renamed from: g5.d5 */
/* loaded from: classes2.dex */
public final class RunnableC3635d5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3617c f16429a;

    /* renamed from: b */
    public final /* synthetic */ C3784pa f16430b;

    /* renamed from: d */
    public final /* synthetic */ BinderC3839u5 f16431d;

    public RunnableC3635d5(BinderC3839u5 binderC3839u5, C3617c c3617c, C3784pa c3784pa) {
        this.f16431d = binderC3839u5;
        this.f16429a = c3617c;
        this.f16430b = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        C3616ba c3616ba3;
        c3616ba = this.f16431d.f16983a;
        c3616ba.m18483a();
        if (this.f16429a.f16311d.m18386X0() == null) {
            c3616ba3 = this.f16431d.f16983a;
            c3616ba3.m18459n(this.f16429a, this.f16430b);
            return;
        }
        c3616ba2 = this.f16431d.f16983a;
        c3616ba2.m18454s(this.f16429a, this.f16430b);
    }
}
