package p070g5;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: g5.h5 */
/* loaded from: classes2.dex */
public final class CallableC3683h5 implements Callable<List<C3676ga>> {

    /* renamed from: a */
    public final /* synthetic */ String f16584a;

    /* renamed from: b */
    public final /* synthetic */ String f16585b;

    /* renamed from: c */
    public final /* synthetic */ String f16586c;

    /* renamed from: d */
    public final /* synthetic */ BinderC3839u5 f16587d;

    public CallableC3683h5(BinderC3839u5 binderC3839u5, String str, String str2, String str3) {
        this.f16587d = binderC3839u5;
        this.f16584a = str;
        this.f16585b = str2;
        this.f16586c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C3676ga> call() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        c3616ba = this.f16587d.f16983a;
        c3616ba.m18483a();
        c3616ba2 = this.f16587d.f16983a;
        return c3616ba2.m18488V().m18107f0(this.f16584a, this.f16585b, this.f16586c);
    }
}
