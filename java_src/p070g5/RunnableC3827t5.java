package p070g5;
/* renamed from: g5.t5 */
/* loaded from: classes2.dex */
public final class RunnableC3827t5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f16948a;

    /* renamed from: b */
    public final /* synthetic */ String f16949b;

    /* renamed from: d */
    public final /* synthetic */ String f16950d;

    /* renamed from: k */
    public final /* synthetic */ long f16951k;

    /* renamed from: p */
    public final /* synthetic */ BinderC3839u5 f16952p;

    public RunnableC3827t5(BinderC3839u5 binderC3839u5, String str, String str2, String str3, long j) {
        this.f16952p = binderC3839u5;
        this.f16948a = str;
        this.f16949b = str2;
        this.f16950d = str3;
        this.f16951k = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        String str = this.f16948a;
        if (str == null) {
            c3616ba2 = this.f16952p.f16983a;
            c3616ba2.m18480b0().m18541H().m17917B(this.f16949b, null);
            return;
        }
        C3781p7 c3781p7 = new C3781p7(this.f16950d, str, this.f16951k);
        c3616ba = this.f16952p.f16983a;
        c3616ba.m18480b0().m18541H().m17917B(this.f16949b, c3781p7);
    }
}
