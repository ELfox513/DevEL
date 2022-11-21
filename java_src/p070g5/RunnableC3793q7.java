package p070g5;

import android.os.Bundle;
/* renamed from: g5.q7 */
/* loaded from: classes2.dex */
public final class RunnableC3793q7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Bundle f16893a;

    /* renamed from: b */
    public final /* synthetic */ C3781p7 f16894b;

    /* renamed from: d */
    public final /* synthetic */ C3781p7 f16895d;

    /* renamed from: k */
    public final /* synthetic */ long f16896k;

    /* renamed from: p */
    public final /* synthetic */ C3865w7 f16897p;

    public RunnableC3793q7(C3865w7 c3865w7, Bundle bundle, C3781p7 c3781p7, C3781p7 c3781p72, long j) {
        this.f16897p = c3865w7;
        this.f16893a = bundle;
        this.f16894b = c3781p7;
        this.f16895d = c3781p72;
        this.f16896k = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3865w7.m17906s(this.f16897p, this.f16893a, this.f16894b, this.f16895d, this.f16896k);
    }
}
