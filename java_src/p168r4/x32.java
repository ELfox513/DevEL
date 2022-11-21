package p168r4;

import android.content.Context;
import p060f4.BinderC3514b;
/* renamed from: r4.x32 */
/* loaded from: classes2.dex */
public final class x32 implements dh1 {

    /* renamed from: a */
    public final no2 f33429a;

    /* renamed from: b */
    public final ed0 f33430b;

    /* renamed from: c */
    public final boolean f33431c;

    /* renamed from: d */
    public b81 f33432d = null;

    public x32(no2 no2Var, ed0 ed0Var, boolean z) {
        this.f33429a = no2Var;
        this.f33430b = ed0Var;
        this.f33431c = z;
    }

    /* renamed from: b */
    public final void m5510b(b81 b81Var) {
        this.f33432d = b81Var;
    }

    @Override // p168r4.dh1
    /* renamed from: a */
    public final void mo4920a(boolean z, Context context, w71 w71Var) {
        boolean mo8343s0;
        try {
            if (this.f33431c) {
                mo8343s0 = this.f33430b.mo8342u3(BinderC3514b.m18741L0(context));
            } else {
                mo8343s0 = this.f33430b.mo8343s0(BinderC3514b.m18741L0(context));
            }
            if (mo8343s0) {
                if (this.f33432d == null) {
                    return;
                }
                if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30968a1)).booleanValue() && this.f33429a.f28398U == 2) {
                    this.f33432d.zza();
                    return;
                }
                return;
            }
            throw new ch1("Adapter failed to show.");
        } catch (Throwable th) {
            throw new ch1(th);
        }
    }
}
