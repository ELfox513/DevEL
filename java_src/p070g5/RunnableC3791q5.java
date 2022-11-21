package p070g5;
/* renamed from: g5.q5 */
/* loaded from: classes2.dex */
public final class RunnableC3791q5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3652ea f16888a;

    /* renamed from: b */
    public final /* synthetic */ C3784pa f16889b;

    /* renamed from: d */
    public final /* synthetic */ BinderC3839u5 f16890d;

    public RunnableC3791q5(BinderC3839u5 binderC3839u5, C3652ea c3652ea, C3784pa c3784pa) {
        this.f16890d = binderC3839u5;
        this.f16888a = c3652ea;
        this.f16889b = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        C3616ba c3616ba3;
        c3616ba = this.f16890d.f16983a;
        c3616ba.m18483a();
        if (this.f16888a.m18386X0() == null) {
            c3616ba3 = this.f16890d.f16983a;
            c3616ba3.m18458o(this.f16888a, this.f16889b);
            return;
        }
        c3616ba2 = this.f16890d.f16983a;
        c3616ba2.m18452u(this.f16888a, this.f16889b);
    }
}
