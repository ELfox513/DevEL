package p070g5;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: g5.f5 */
/* loaded from: classes2.dex */
public final class CallableC3659f5 implements Callable<List<C3676ga>> {

    /* renamed from: a */
    public final /* synthetic */ String f16473a;

    /* renamed from: b */
    public final /* synthetic */ String f16474b;

    /* renamed from: c */
    public final /* synthetic */ String f16475c;

    /* renamed from: d */
    public final /* synthetic */ BinderC3839u5 f16476d;

    public CallableC3659f5(BinderC3839u5 binderC3839u5, String str, String str2, String str3) {
        this.f16476d = binderC3839u5;
        this.f16473a = str;
        this.f16474b = str2;
        this.f16475c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C3676ga> call() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        c3616ba = this.f16476d.f16983a;
        c3616ba.m18483a();
        c3616ba2 = this.f16476d.f16983a;
        return c3616ba2.m18488V().m18107f0(this.f16473a, this.f16474b, this.f16475c);
    }
}
