package p070g5;

import android.os.Bundle;
/* renamed from: g5.g9 */
/* loaded from: classes2.dex */
public final class RunnableC3675g9 implements Runnable {

    /* renamed from: a */
    public final long f16555a;

    /* renamed from: b */
    public final long f16556b;

    /* renamed from: d */
    public final /* synthetic */ C3687h9 f16557d;

    public RunnableC3675g9(C3687h9 c3687h9, long j, long j2) {
        this.f16557d = c3687h9;
        this.f16555a = j;
        this.f16556b = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16557d.f16600b.f17008a.mo17855P().m17826u(new Runnable() { // from class: g5.f9
            @Override // java.lang.Runnable
            public final void run() {
                RunnableC3675g9 runnableC3675g9 = RunnableC3675g9.this;
                C3687h9 c3687h9 = runnableC3675g9.f16557d;
                long j = runnableC3675g9.f16555a;
                long j2 = runnableC3675g9.f16556b;
                c3687h9.f16600b.mo17839c();
                c3687h9.f16600b.f17008a.mo17858F().m18019l().m18042a("Application going to the background");
                boolean z = true;
                c3687h9.f16600b.f17008a.m18546A().f16510q.m17814a(true);
                Bundle bundle = new Bundle();
                if (!c3687h9.f16600b.f17008a.m18513u().m18354y()) {
                    c3687h9.f16600b.f16737e.m18081b(j2);
                    if (c3687h9.f16600b.f17008a.m18513u().m18356w(null, C3621c3.f16372i0)) {
                        C3723k9 c3723k9 = c3687h9.f16600b.f16737e;
                        long j3 = c3723k9.f16693b;
                        c3723k9.f16693b = j2;
                        bundle.putLong("_et", j2 - j3);
                        C3700ia.m18157s(c3687h9.f16600b.f17008a.m18541H().m17910o(true), bundle, true);
                    } else {
                        z = false;
                    }
                    c3687h9.f16600b.f16737e.m18079d(false, z, j2);
                }
                c3687h9.f16600b.f17008a.m18543D().m18215q("auto", "_ab", j, bundle);
            }
        });
    }
}
