package p070g5;

import android.os.Handler;
/* renamed from: g5.h9 */
/* loaded from: classes2.dex */
public final class C3687h9 {

    /* renamed from: a */
    public RunnableC3675g9 f16599a;

    /* renamed from: b */
    public final /* synthetic */ C3747m9 f16600b;

    public C3687h9(C3747m9 c3747m9) {
        this.f16600b = c3747m9;
    }

    /* renamed from: a */
    public final void m18254a(long j) {
        Handler handler;
        this.f16599a = new RunnableC3675g9(this, this.f16600b.f17008a.mo17854Q().mo24763a(), j);
        handler = this.f16600b.f16735c;
        handler.postDelayed(this.f16599a, 2000L);
    }

    /* renamed from: b */
    public final void m18253b() {
        Handler handler;
        this.f16600b.mo17839c();
        if (this.f16599a != null) {
            handler = this.f16600b.f16735c;
            handler.removeCallbacks(this.f16599a);
        }
        this.f16600b.f17008a.m18546A().f16510q.m17814a(false);
    }
}
