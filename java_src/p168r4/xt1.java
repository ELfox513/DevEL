package p168r4;

import android.content.Context;
import p060f4.BinderC3514b;
/* renamed from: r4.xt1 */
/* loaded from: classes2.dex */
public final class xt1 implements lt1 {

    /* renamed from: a */
    public final long f33767a;

    /* renamed from: b */
    public final l92 f33768b;

    @Override // p168r4.lt1
    /* renamed from: a */
    public final void mo4989a() {
        this.f33768b.mo984L1(BinderC3514b.m18741L0(null));
    }

    @Override // p168r4.lt1
    /* renamed from: b */
    public final void mo4988b() {
        this.f33768b.mo973h();
    }

    @Override // p168r4.lt1
    /* renamed from: c */
    public final void mo4987c(C6293tt c6293tt) {
        this.f33768b.mo948w5(c6293tt);
    }

    public xt1(long j, Context context, qt1 qt1Var, bu0 bu0Var, String str) {
        this.f33767a = j;
        rm2 mo8589t = bu0Var.mo8589t();
        mo8589t.mo7434b(context);
        mo8589t.mo7435a(new C6478yt());
        mo8589t.mo7436A(str);
        l92 zza = mo8589t.zza().zza();
        this.f33768b = zza;
        zza.mo980S1(new wt1(this, qt1Var));
    }
}
