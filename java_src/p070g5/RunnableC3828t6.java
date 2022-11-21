package p070g5;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: g5.t6 */
/* loaded from: classes2.dex */
public final class RunnableC3828t6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f16953a;

    /* renamed from: b */
    public final /* synthetic */ String f16954b;

    /* renamed from: d */
    public final /* synthetic */ String f16955d;

    /* renamed from: k */
    public final /* synthetic */ C3697i7 f16956k;

    public RunnableC3828t6(C3697i7 c3697i7, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f16956k = c3697i7;
        this.f16953a = atomicReference;
        this.f16954b = str2;
        this.f16955d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16956k.f17008a.m18540I().m17883U(this.f16953a, null, this.f16954b, this.f16955d);
    }
}
