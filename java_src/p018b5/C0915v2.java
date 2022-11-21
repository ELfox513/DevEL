package p018b5;

import android.app.Activity;
import p060f4.BinderC3514b;
import p220x3.C7297q;
/* renamed from: b5.v2 */
/* loaded from: classes2.dex */
public final class C0915v2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ Activity f2352p;

    /* renamed from: q */
    public final /* synthetic */ BinderC0574b1 f2353q;

    /* renamed from: r */
    public final /* synthetic */ C0949x2 f2354r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0915v2(C0949x2 c0949x2, Activity activity, BinderC0574b1 binderC0574b1) {
        super(c0949x2.f2388a, true);
        this.f2354r = c0949x2;
        this.f2352p = activity;
        this.f2353q = binderC0574b1;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f2354r.f2388a.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).onActivitySaveInstanceState(BinderC3514b.m18741L0(this.f2352p), this.f2353q, this.f2053b);
    }
}
