package p070g5;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: g5.j5 */
/* loaded from: classes2.dex */
public final class CallableC3707j5 implements Callable<List<C3617c>> {

    /* renamed from: a */
    public final /* synthetic */ String f16654a;

    /* renamed from: b */
    public final /* synthetic */ String f16655b;

    /* renamed from: c */
    public final /* synthetic */ String f16656c;

    /* renamed from: d */
    public final /* synthetic */ BinderC3839u5 f16657d;

    public CallableC3707j5(BinderC3839u5 binderC3839u5, String str, String str2, String str3) {
        this.f16657d = binderC3839u5;
        this.f16654a = str;
        this.f16655b = str2;
        this.f16656c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C3617c> call() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        c3616ba = this.f16657d.f16983a;
        c3616ba.m18483a();
        c3616ba2 = this.f16657d.f16983a;
        return c3616ba2.m18488V().m18110c0(this.f16654a, this.f16655b, this.f16656c);
    }
}
