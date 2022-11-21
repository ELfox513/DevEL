package p018b5;

import android.os.Bundle;
import p220x3.C7297q;
/* renamed from: b5.g2 */
/* loaded from: classes2.dex */
public final class C0660g2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ Bundle f1830p;

    /* renamed from: q */
    public final /* synthetic */ BinderC0574b1 f1831q;

    /* renamed from: r */
    public final /* synthetic */ C0966y2 f1832r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0660g2(C0966y2 c0966y2, Bundle bundle, BinderC0574b1 binderC0574b1) {
        super(c0966y2, true);
        this.f1832r = c0966y2;
        this.f1830p = bundle;
        this.f1831q = binderC0574b1;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f1832r.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).performAction(this.f1830p, this.f1831q, this.f2052a);
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: b */
    public final void mo24897b() {
        this.f1831q.mo25817C0(null);
    }
}
