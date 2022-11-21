package p070g5;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: g5.r5 */
/* loaded from: classes2.dex */
public final class CallableC3803r5 implements Callable<List<C3676ga>> {

    /* renamed from: a */
    public final /* synthetic */ String f16911a;

    /* renamed from: b */
    public final /* synthetic */ BinderC3839u5 f16912b;

    public CallableC3803r5(BinderC3839u5 binderC3839u5, String str) {
        this.f16912b = binderC3839u5;
        this.f16911a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C3676ga> call() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        c3616ba = this.f16912b.f16983a;
        c3616ba.m18483a();
        c3616ba2 = this.f16912b.f16983a;
        return c3616ba2.m18488V().m18108e0(this.f16911a);
    }
}
