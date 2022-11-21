package p168r4;

import android.content.Context;
import p016b3.AbstractC0467d0;
import p235z2.C7601t;
/* renamed from: r4.kl0 */
/* loaded from: classes2.dex */
public final class kl0 extends AbstractC0467d0 {

    /* renamed from: c */
    public final /* synthetic */ nl0 f26475c;

    public kl0(nl0 nl0Var) {
        this.f26475c = nl0Var;
    }

    @Override // p016b3.AbstractC0467d0
    /* renamed from: a */
    public final void mo10004a() {
        Context context;
        im0 im0Var;
        Object obj;
        C6410wz c6410wz;
        context = this.f26475c.f28322e;
        im0Var = this.f26475c.f28323f;
        C6336uz c6336uz = new C6336uz(context, im0Var.f25171a);
        obj = this.f26475c.f28318a;
        synchronized (obj) {
            try {
                C7601t.m930m();
                c6410wz = this.f26475c.f28324g;
                C6447xz.m4946a(c6410wz, c6336uz);
            } catch (IllegalArgumentException e) {
                cm0.m12436g("Cannot config CSI reporter.", e);
            }
        }
    }
}
