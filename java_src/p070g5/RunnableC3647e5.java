package p070g5;
/* renamed from: g5.e5 */
/* loaded from: classes2.dex */
public final class RunnableC3647e5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3617c f16449a;

    /* renamed from: b */
    public final /* synthetic */ BinderC3839u5 f16450b;

    public RunnableC3647e5(BinderC3839u5 binderC3839u5, C3617c c3617c) {
        this.f16450b = binderC3839u5;
        this.f16449a = c3617c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        C3616ba c3616ba3;
        c3616ba = this.f16450b.f16983a;
        c3616ba.m18483a();
        if (this.f16449a.f16311d.m18386X0() == null) {
            c3616ba3 = this.f16450b.f16983a;
            c3616ba3.m18460m(this.f16449a);
            return;
        }
        c3616ba2 = this.f16450b.f16983a;
        c3616ba2.m18455r(this.f16449a);
    }
}
