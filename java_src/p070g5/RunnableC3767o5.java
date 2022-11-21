package p070g5;
/* renamed from: g5.o5 */
/* loaded from: classes2.dex */
public final class RunnableC3767o5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3833u f16791a;

    /* renamed from: b */
    public final /* synthetic */ String f16792b;

    /* renamed from: d */
    public final /* synthetic */ BinderC3839u5 f16793d;

    public RunnableC3767o5(BinderC3839u5 binderC3839u5, C3833u c3833u, String str) {
        this.f16793d = binderC3839u5;
        this.f16791a = c3833u;
        this.f16792b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        c3616ba = this.f16793d.f16983a;
        c3616ba.m18483a();
        c3616ba2 = this.f16793d.f16983a;
        c3616ba2.m18475e(this.f16791a, this.f16792b);
    }
}
