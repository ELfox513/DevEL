package p070g5;
/* renamed from: g5.o6 */
/* loaded from: classes2.dex */
public final class RunnableC3768o6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f16794a;

    /* renamed from: b */
    public final /* synthetic */ String f16795b;

    /* renamed from: d */
    public final /* synthetic */ Object f16796d;

    /* renamed from: k */
    public final /* synthetic */ long f16797k;

    /* renamed from: p */
    public final /* synthetic */ C3697i7 f16798p;

    public RunnableC3768o6(C3697i7 c3697i7, String str, String str2, Object obj, long j) {
        this.f16798p = c3697i7;
        this.f16794a = str;
        this.f16795b = str2;
        this.f16796d = obj;
        this.f16797k = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16798p.m18243K(this.f16794a, this.f16795b, this.f16796d, this.f16797k);
    }
}
