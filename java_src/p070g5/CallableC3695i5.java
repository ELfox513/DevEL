package p070g5;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: g5.i5 */
/* loaded from: classes2.dex */
public final class CallableC3695i5 implements Callable<List<C3617c>> {

    /* renamed from: a */
    public final /* synthetic */ String f16612a;

    /* renamed from: b */
    public final /* synthetic */ String f16613b;

    /* renamed from: c */
    public final /* synthetic */ String f16614c;

    /* renamed from: d */
    public final /* synthetic */ BinderC3839u5 f16615d;

    public CallableC3695i5(BinderC3839u5 binderC3839u5, String str, String str2, String str3) {
        this.f16615d = binderC3839u5;
        this.f16612a = str;
        this.f16613b = str2;
        this.f16614c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C3617c> call() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        c3616ba = this.f16615d.f16983a;
        c3616ba.m18483a();
        c3616ba2 = this.f16615d.f16983a;
        return c3616ba2.m18488V().m18110c0(this.f16612a, this.f16613b, this.f16614c);
    }
}
