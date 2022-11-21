package p018b5;

import android.app.Activity;
import p060f4.BinderC3514b;
import p220x3.C7297q;
/* renamed from: b5.r2 */
/* loaded from: classes2.dex */
public final class C0847r2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ Activity f2237p;

    /* renamed from: q */
    public final /* synthetic */ C0949x2 f2238q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0847r2(C0949x2 c0949x2, Activity activity) {
        super(c0949x2.f2388a, true);
        this.f2238q = c0949x2;
        this.f2237p = activity;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f2238q.f2388a.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).onActivityResumed(BinderC3514b.m18741L0(this.f2237p), this.f2053b);
    }
}
