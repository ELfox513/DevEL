package p168r4;

import java.util.concurrent.Callable;
/* renamed from: r4.w83 */
/* loaded from: classes2.dex */
public final class w83 extends g83 {

    /* renamed from: d */
    public final Callable f33137d;

    /* renamed from: k */
    public final /* synthetic */ x83 f33138k;

    @Override // p168r4.g83
    /* renamed from: a */
    public final Object mo5804a() {
        return this.f33137d.call();
    }

    @Override // p168r4.g83
    /* renamed from: c */
    public final String mo5803c() {
        return this.f33137d.toString();
    }

    @Override // p168r4.g83
    /* renamed from: d */
    public final boolean mo5802d() {
        return this.f33138k.isDone();
    }

    @Override // p168r4.g83
    /* renamed from: e */
    public final void mo5801e(Object obj) {
        this.f33138k.mo8450u(obj);
    }

    @Override // p168r4.g83
    /* renamed from: f */
    public final void mo5800f(Throwable th) {
        this.f33138k.mo8449v(th);
    }

    public w83(x83 x83Var, Callable callable) {
        this.f33138k = x83Var;
        callable.getClass();
        this.f33137d = callable;
    }
}
