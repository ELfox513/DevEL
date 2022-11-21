package p070g5;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: g5.u6 */
/* loaded from: classes2.dex */
public final class RunnableC3840u6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f16986a;

    /* renamed from: b */
    public final /* synthetic */ String f16987b;

    /* renamed from: d */
    public final /* synthetic */ String f16988d;

    /* renamed from: k */
    public final /* synthetic */ boolean f16989k;

    /* renamed from: p */
    public final /* synthetic */ C3697i7 f16990p;

    public RunnableC3840u6(C3697i7 c3697i7, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f16990p = c3697i7;
        this.f16986a = atomicReference;
        this.f16987b = str2;
        this.f16988d = str3;
        this.f16989k = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16990p.f17008a.m18540I().m17881W(this.f16986a, null, this.f16987b, this.f16988d, this.f16989k);
    }
}
