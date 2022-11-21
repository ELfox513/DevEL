package p168r4;

import android.content.Context;
/* renamed from: r4.g82 */
/* loaded from: classes2.dex */
public final class g82 extends AbstractBinderC6073nv {

    /* renamed from: a */
    public final o92 f23941a;

    @Override // p168r4.InterfaceC6110ov
    /* renamed from: U6 */
    public final void mo8668U6(C6293tt c6293tt) {
        this.f23941a.m8859c(c6293tt, 1);
    }

    @Override // p168r4.InterfaceC6110ov
    /* renamed from: V2 */
    public final synchronized void mo8667V2(C6293tt c6293tt, int i) {
        this.f23941a.m8859c(c6293tt, i);
    }

    @Override // p168r4.InterfaceC6110ov
    /* renamed from: d */
    public final synchronized String mo8666d() {
        return this.f23941a.m8858d();
    }

    @Override // p168r4.InterfaceC6110ov
    /* renamed from: f */
    public final synchronized String mo8665f() {
        return this.f23941a.m8857e();
    }

    @Override // p168r4.InterfaceC6110ov
    /* renamed from: g */
    public final synchronized boolean mo8664g() {
        return this.f23941a.m8860b();
    }

    public g82(Context context, bu0 bu0Var, fp2 fp2Var, pj1 pj1Var, InterfaceC5887iv interfaceC5887iv) {
        q92 q92Var = new q92(pj1Var, bu0Var.mo8615g());
        q92Var.m7929a(interfaceC5887iv);
        this.f23941a = new o92(new da2(bu0Var, context, q92Var, fp2Var), fp2Var.m11427M());
    }
}
