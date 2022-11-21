package p070g5;

import java.util.concurrent.Callable;
import p220x3.C7297q;
/* renamed from: g5.w9 */
/* loaded from: classes2.dex */
public final class CallableC3867w9 implements Callable<String> {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f17050a;

    /* renamed from: b */
    public final /* synthetic */ C3616ba f17051b;

    public CallableC3867w9(C3616ba c3616ba, C3784pa c3784pa) {
        this.f17051b = c3616ba;
        this.f17050a = c3784pa;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        if (this.f17051b.m18489U((String) C7297q.m1883j(this.f17050a.f16846a)).m18270k() && C3677h.m18279b(this.f17050a.f16845G).m18270k()) {
            return this.f17051b.m18492R(this.f17050a).m18306f0();
        }
        this.f17051b.mo17858F().m18014q().m18042a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
