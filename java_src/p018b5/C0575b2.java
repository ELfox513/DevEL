package p018b5;

import p220x3.C7297q;
/* renamed from: b5.b2 */
/* loaded from: classes2.dex */
public final class C0575b2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ BinderC0574b1 f1742p;

    /* renamed from: q */
    public final /* synthetic */ C0966y2 f1743q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0575b2(C0966y2 c0966y2, BinderC0574b1 binderC0574b1) {
        super(c0966y2, true);
        this.f1743q = c0966y2;
        this.f1742p = binderC0574b1;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f1743q.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).generateEventId(this.f1742p);
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: b */
    public final void mo24897b() {
        this.f1742p.mo25817C0(null);
    }
}
