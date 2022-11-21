package p018b5;

import android.app.Activity;
import p060f4.BinderC3514b;
import p220x3.C7297q;
/* renamed from: b5.u2 */
/* loaded from: classes2.dex */
public final class C0898u2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ Activity f2328p;

    /* renamed from: q */
    public final /* synthetic */ C0949x2 f2329q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0898u2(C0949x2 c0949x2, Activity activity) {
        super(c0949x2.f2388a, true);
        this.f2329q = c0949x2;
        this.f2328p = activity;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f2329q.f2388a.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).onActivityStopped(BinderC3514b.m18741L0(this.f2328p), this.f2053b);
    }
}
